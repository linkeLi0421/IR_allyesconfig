; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43/rfkill.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43/rfkill.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.b43_bus_dev = type { i32, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, i16, i16, i16, i16, i8, i8, ptr, i16, i8 }
%union.anon = type { ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.131, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.131 = type { i32, i16 }
%struct.b43_wl = type { ptr, ptr, %struct.mutex, %struct.spinlock, i8, ptr, [6 x i8], [6 x i8], i32, i8, i32, %struct.ieee80211_low_level_stats, %struct.hwrng, i8, [31 x i8], i8, i8, ptr, i8, i8, i8, %struct.work_struct, %struct.spinlock, [4 x %struct.b43_qos_params], %struct.work_struct, %struct.work_struct, [4 x %struct.sk_buff_head], [4 x i8], %struct.work_struct, %struct.b43_leds, [118 x i8], [2 x i8], [4 x i8], [4 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.b43_qos_params = type { %struct.ieee80211_tx_queue_params }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43_leds = type { %struct.b43_led, %struct.b43_led, %struct.b43_led, %struct.b43_led, i8, %struct.work_struct }
%struct.b43_led = type { ptr, %struct.led_classdev, i8, i8, [32 x i8], %struct.atomic_t, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43_wldev = type { ptr, ptr, %struct.completion, %struct.atomic_t, i8, i8, i8, i8, i8, i8, %struct.b43_phy, %union.anon.137, i8, %struct.b43_stats, i32, [6 x i32], i32, %struct.b43_noise_calculation, i32, %struct.delayed_work, i32, %struct.work_struct, i16, [58 x %struct.b43_key], %struct.b43_firmware, %struct.list_head, ptr, i32, [32 x i32], i32, i32 }
%struct.b43_phy = type { ptr, %struct.anon.135, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i32, i8, i32, ptr, i32, %struct.atomic_t, i8, i8 }
%struct.anon.135 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.137 = type { %struct.b43_dma }
%struct.b43_dma = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.b43_stats = type { i8 }
%struct.b43_noise_calculation = type { i8, i8, [8 x [4 x i8]] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.b43_key = type { ptr, i8 }
%struct.b43_firmware = type { %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, %struct.b43_firmware_file, i16, i16, i32, i8, i8 }
%struct.b43_firmware_file = type { ptr, ptr, i32 }

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Radio hardware status changed to %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ENABLED\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DISABLED\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 44, i32 15 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 45, i32 14 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [46 x i8] c"../drivers/net/wireless/broadcom/b43/rfkill.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 45, i32 26 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @b43_is_hw_radio_enabled(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %read32.i = getelementptr inbounds %struct.b43_bus_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %3(ptr noundef %1, i16 noundef zeroext 344) #2
  %and = and i32 %call.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_rfkill_poll(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %mutex = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #2
  %__init_status = getelementptr inbounds %struct.b43_wldev, ptr %3, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #2
  %4 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp slt i32 %5, 1
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge, !prof !15

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %bus_powerup.i = getelementptr inbounds %struct.b43_bus_dev, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %bus_powerup.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus_powerup.i, align 4
  %call.i = tail call i32 %9(ptr noundef %7, i1 noundef zeroext false) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %device_enable.i = getelementptr inbounds %struct.b43_bus_dev, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %device_enable.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_enable.i, align 4
  tail call void %13(ptr noundef %11, i32 noundef 0) #2
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %read32.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32.i.i, align 4
  %call.i.i68 = tail call i32 %17(ptr noundef %15, i16 noundef zeroext 344) #2
  %and.i = and i32 %call.i.i68, 65536
  %radio_hw_enable = getelementptr inbounds %struct.b43_wldev, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %radio_hw_enable to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %radio_hw_enable, align 2, !range !16
  %and.i.lobit = lshr exact i32 %and.i, 16
  %20 = trunc i32 %and.i.lobit to i8
  %21 = xor i8 %20, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp12.not = icmp eq i8 %19, %21
  br i1 %cmp12.not, label %if.end7.if.end40_crit_edge, label %if.then20, !prof !17

if.end7.if.end40_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end40

if.then20:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %22 = ptrtoint ptr %radio_hw_enable to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %radio_hw_enable, align 2
  %cond = select i1 %tobool.not.i, ptr @.str.1, ptr @.str.2
  tail call void (ptr, ptr, ...) @b43info(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %cond) #2
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %23 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wiphy, align 8
  %lnot27 = xor i1 %tobool.not.i, true
  tail call void @wiphy_rfkill_set_hw_state_reason(ptr noundef %24, i1 noundef zeroext %lnot27, i32 noundef 1) #2
  %radio_on = getelementptr inbounds %struct.b43_wldev, ptr %3, i32 0, i32 10, i32 13
  %25 = ptrtoint ptr %radio_on to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %radio_on, align 1, !range !16
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %21)
  %cmp33.not = icmp eq i8 %26, %21
  br i1 %cmp33.not, label %if.then20.if.end40_crit_edge, label %if.then35

if.then20.if.end40_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end40

if.then35:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @b43_software_rfkill(ptr noundef %3, i1 noundef zeroext %lnot27) #2
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %if.then20.if.end40_crit_edge, %if.end7.if.end40_crit_edge
  br i1 %cmp, label %if.then42, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #4
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %device_disable.i = getelementptr inbounds %struct.b43_bus_dev, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %device_disable.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device_disable.i, align 4
  tail call void %30(ptr noundef %28, i32 noundef 0) #2
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  %bus_may_powerdown.i = getelementptr inbounds %struct.b43_bus_dev, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %bus_may_powerdown.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bus_may_powerdown.i, align 4
  %call.i69 = tail call i32 %34(ptr noundef %32) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end40.cleanup_crit_edge, %if.then.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_software_rfkill(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_rfkill_set_hw_state_reason(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43/rfkill.c", i32 44, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/b43/rfkill.c", i32 45, i32 14}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/b43/rfkill.c", i32 45, i32 26}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i8 0, i8 2}
!17 = !{!"branch_weights", i32 2000, i32 1}
