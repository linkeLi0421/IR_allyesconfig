; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43/sysfs.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43/sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.b43_bus_dev = type { i32, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, i16, i16, i16, i16, i8, i8, ptr, i16, i8 }
%union.anon = type { ptr }
%struct.b43_wldev = type { ptr, ptr, %struct.completion, %struct.atomic_t, i8, i8, i8, i8, i8, i8, %struct.b43_phy, %union.anon.137, i8, %struct.b43_stats, i32, [6 x i32], i32, %struct.b43_noise_calculation, i32, %struct.delayed_work, i32, %struct.work_struct, i16, [58 x %struct.b43_key], %struct.b43_firmware, %struct.list_head, ptr, i32, [32 x i32], i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.b43_phy = type { ptr, %struct.anon.135, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i32, i8, i32, ptr, i32, %struct.atomic_t, i8, i8 }
%struct.anon.135 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.137 = type { %struct.b43_dma }
%struct.b43_dma = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.b43_stats = type { i8 }
%struct.b43_noise_calculation = type { i8, i8, [8 x [4 x i8]] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43_key = type { ptr, i8 }
%struct.b43_firmware = type { %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, i16, i16, i32, i8, i8 }
%struct.b43_firmware_file = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.__ssb_dev_wrapper = type { %struct.device, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.ssb_device = type { ptr, ptr, ptr, ptr, %struct.ssb_device_id, i8, i32, ptr, ptr }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.b43_wl = type { ptr, ptr, %struct.mutex, %struct.spinlock, i8, ptr, [6 x i8], [6 x i8], i32, i8, i32, %struct.ieee80211_low_level_stats, %struct.hwrng, i8, [31 x i8], i8, i8, ptr, i8, i8, i8, %struct.work_struct, %struct.spinlock, [4 x %struct.b43_qos_params], %struct.work_struct, %struct.work_struct, [4 x %struct.sk_buff_head], [4 x i8], %struct.work_struct, %struct.b43_leds, [118 x i8], [2 x i8], [4 x i8], [4 x i8] }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.b43_qos_params = type { %struct.ieee80211_tx_queue_params }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.b43_leds = type { %struct.b43_led, %struct.b43_led, %struct.b43_led, %struct.b43_led, i8, %struct.work_struct }
%struct.b43_led = type { ptr, %struct.led_classdev, i8, i8, [32 x i8], %struct.atomic_t, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43_phy_g = type { i8, i8, i8, i8, %struct.anon.136, [2 x i16], [2 x i16], ptr, i8, i32, i32, i8, %struct.b43_bbatt, %struct.b43_rfatt, i8, i32, i32, ptr, i16, i16, i16, i16, i16, i32, [26 x i32], [2 x i16], i32, [64 x i8], i16, i16, i16, i32 }
%struct.anon.136 = type { i8, i16, i16 }
%struct.b43_bbatt = type { i8 }
%struct.b43_rfatt = type { i8, i8 }
%struct.b43_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/wireless/broadcom/b43/sysfs.c\00", [54 x i8] zeroinitializer }, align 32
@dev_attr_interference = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @b43_attr_interfmode_show, ptr @b43_attr_interfmode_store }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"interference\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"0 (No Interference Mitigation)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"1 (Non-WLAN Interference Mitigation)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"2 (WLAN Interference Mitigation)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Interference Mitigation not supported by device\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 131, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [22 x i8] c"dev_attr_interference\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 124, i32 8 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 58, i32 9 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 63, i32 9 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 68, i32 9 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [45 x i8] c"../drivers/net/wireless/broadcom/b43/sysfs.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 113, i32 22 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @dev_attr_interference, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_interference to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @b43_sysfs_register(ptr noundef %wldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wldev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wldev, align 4
  %dev2 = getelementptr inbounds %struct.b43_bus_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %__init_status = getelementptr inbounds %struct.b43_wldev, ptr %wldev, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #4
  %4 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !22

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 131, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call21 = tail call i32 @device_create_file(ptr noundef %3, ptr noundef nonnull @dev_attr_interference) #4
  ret i32 %call21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_sysfs_unregister(ptr nocapture noundef readonly %wldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wldev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wldev, align 4
  %dev2 = getelementptr inbounds %struct.b43_bus_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  tail call void @device_remove_file(ptr noundef %3, ptr noundef nonnull @dev_attr_interference) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43_attr_interfmode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev.i.i = getelementptr inbounds %struct.__ssb_dev_wrapper, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %sdev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev.i.i, align 8
  %drvdata.i.i = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %drvdata.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata.i.i, align 4
  %call1 = tail call zeroext i1 @capable(i32 noundef 12) #4
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wl, align 4
  %mutex = getelementptr inbounds %struct.b43_wl, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %type = getelementptr inbounds %struct.b43_wldev, ptr %3, i32 0, i32 10, i32 7
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp.not = icmp eq i8 %7, 2
  br i1 %cmp.not, label %if.end6, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %8 = getelementptr inbounds %struct.b43_wldev, ptr %3, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %interfmode = getelementptr inbounds %struct.b43_phy_g, ptr %10, i32 0, i32 23
  %11 = ptrtoint ptr %interfmode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %interfmode, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %14 = call ptr @memcpy(ptr %buf, ptr @.str.2, i32 32)
  br label %cleanup.sink.split

sw.bb9:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %15 = call ptr @memcpy(ptr %buf, ptr @.str.3, i32 38)
  br label %cleanup.sink.split

sw.bb11:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %16 = call ptr @memcpy(ptr %buf, ptr @.str.4, i32 34)
  br label %cleanup.sink.split

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef null) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end, %sw.bb11, %sw.bb9, %sw.bb, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -38, %if.end.cleanup.sink.split_crit_edge ], [ 0, %do.end ], [ 33, %sw.bb11 ], [ 37, %sw.bb9 ], [ 31, %sw.bb ]
  %17 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wl, align 4
  %mutex30 = getelementptr inbounds %struct.b43_wl, ptr %18, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %mutex30) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b43_attr_interfmode_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %tmp.i = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev.i.i = getelementptr inbounds %struct.__ssb_dev_wrapper, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %sdev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev.i.i, align 8
  %drvdata.i.i = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %drvdata.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata.i.i, align 4
  %call1 = tail call zeroext i1 @capable(i32 noundef 12) #4
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %tmp.i) #4
  %4 = call ptr @memset(ptr %tmp.i, i32 0, i32 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.i = icmp eq i32 %count, 0
  br i1 %cmp.i, label %get_integer.exit.thread, label %get_integer.exit

get_integer.exit.thread:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %tmp.i) #4
  br label %cleanup

get_integer.exit:                                 ; preds = %if.end
  %5 = tail call i32 @llvm.umin.i32(i32 %count, i32 10) #4
  %6 = call ptr @memcpy(ptr %tmp.i, ptr %buf, i32 %5)
  %call.i = call i32 @simple_strtol(ptr noundef nonnull %tmp.i, ptr noundef null, i32 noundef 10) #4
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %tmp.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %switch = icmp ult i32 %call.i, 4
  br i1 %switch, label %sw.epilog, label %get_integer.exit.cleanup_crit_edge

get_integer.exit.cleanup_crit_edge:               ; preds = %get_integer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.epilog:                                        ; preds = %get_integer.exit
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wl, align 4
  %mutex = getelementptr inbounds %struct.b43_wl, ptr %8, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %phy = getelementptr inbounds %struct.b43_wldev, ptr %3, i32 0, i32 10
  %9 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy, align 4
  %interf_mitigation = getelementptr inbounds %struct.b43_phy_operations, ptr %10, i32 0, i32 17
  %11 = ptrtoint ptr %interf_mitigation to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %interf_mitigation, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %sw.epilog.if.end15_crit_edge, label %if.then6

sw.epilog.if.end15_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then6:                                         ; preds = %sw.epilog
  %call10 = call i32 %12(ptr noundef %3, i32 noundef %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then6.if.end15_crit_edge, label %if.then12

if.then6.if.end15_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then12:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wl, align 4
  call void (ptr, ptr, ...) @b43err(ptr noundef %14, ptr noundef nonnull @.str.5) #4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then6.if.end15_crit_edge, %sw.epilog.if.end15_crit_edge
  %err.0 = phi i32 [ %call10, %if.then12 ], [ 0, %if.then6.if.end15_crit_edge ], [ -38, %sw.epilog.if.end15_crit_edge ]
  %15 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wl, align 4
  %mutex17 = getelementptr inbounds %struct.b43_wl, ptr %16, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %mutex17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool18.not = icmp eq i32 %err.0, 0
  %spec.select = select i1 %tobool18.not, i32 %count, i32 %err.0
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %get_integer.exit.cleanup_crit_edge, %get_integer.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -22, %get_integer.exit.cleanup_crit_edge ], [ -22, %get_integer.exit.thread ], [ %spec.select, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43/sysfs.c", i32 131, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/b43/sysfs.c", i32 124, i32 8}
!4 = !{ptr @dev_attr_interference, !3, !"dev_attr_interference", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/broadcom/b43/sysfs.c", i32 58, i32 9}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/broadcom/b43/sysfs.c", i32 63, i32 9}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/broadcom/b43/sysfs.c", i32 68, i32 9}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/broadcom/b43/sysfs.c", i32 113, i32 22}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 2000, i32 1}
