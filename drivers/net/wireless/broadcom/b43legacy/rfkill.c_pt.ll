; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43legacy/rfkill.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43legacy/rfkill.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ssb_device = type { ptr, ptr, ptr, ptr, %struct.ssb_device_id, i8, i32, ptr, ptr }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.ssb_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.b43legacy_wldev = type { ptr, ptr, %struct.atomic_t, i32, i8, i8, i8, i8, i8, %struct.b43legacy_phy, %union.anon.131, %struct.b43legacy_stats, %struct.b43legacy_led, %struct.b43legacy_led, %struct.b43legacy_led, %struct.b43legacy_led, i32, [6 x i32], i32, %struct.b43legacy_noise_calculation, i32, %struct.tasklet_struct, %struct.delayed_work, i32, %struct.work_struct, i16, i8, [58 x %struct.b43legacy_key], %struct.b43legacy_firmware, ptr, %struct.completion, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.b43legacy_phy = type { i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, %struct.anon.128, [2 x i16], [2 x i16], ptr, ptr, i8, i32, i32, ptr, i16, i16, i16, i16, i16, i8, [2 x i16], %struct.anon.129, %struct.anon.130, i32, [26 x i32], [2 x i16], i32, [64 x i8], i8, i16, i16, %struct.atomic_t, i8, i8 }
%struct.anon.128 = type { i8, i16, i16 }
%struct.anon.129 = type { i16, i16, i16, i16 }
%struct.anon.130 = type { i16 }
%union.anon.131 = type { %struct.b43legacy_dma }
%struct.b43legacy_dma = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.b43legacy_stats = type { i8, i32, i32 }
%struct.b43legacy_led = type { ptr, %struct.led_classdev, i8, i8, [32 x i8] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43legacy_noise_calculation = type { i8, i8, i8, [8 x [4 x i8]] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.132, i32 }
%union.anon.132 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43legacy_key = type { ptr, i8, i8 }
%struct.b43legacy_firmware = type { ptr, ptr, ptr, ptr, i16, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.124, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.124 = type { i32, i16 }
%struct.b43legacy_wl = type { ptr, ptr, %struct.spinlock, %struct.mutex, %struct.spinlock, %struct.work_struct, ptr, [6 x i8], [6 x i8], i32, i8, i32, %struct.ieee80211_low_level_stats, %struct.hwrng, i8, [31 x i8], %struct.list_head, i8, i8, i8, ptr, i8, i8, i8, %struct.work_struct, [4 x %struct.b43legacy_qos_params], %struct.work_struct, [4 x %struct.sk_buff_head], [4 x i8] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.b43legacy_qos_params = type { %struct.ieee80211_tx_queue_params }
%struct.ieee80211_tx_queue_params = type { i16, i16, i16, i8, i8, i8, i8, %struct.ieee80211_he_mu_edca_param_ac_rec }
%struct.ieee80211_he_mu_edca_param_ac_rec = type { i8, i8, i8 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Radio hardware status changed to %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ENABLED\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DISABLED\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 61, i32 21 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 62, i32 14 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [52 x i8] c"../drivers/net/wireless/broadcom/b43legacy/rfkill.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 62, i32 26 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @b43legacy_is_hw_radio_enabled(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %revision = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp ugt i8 %3, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %read32.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i.i, align 4
  %call.i.i19 = tail call i32 %7(ptr noundef %1, i16 noundef zeroext 344) #2
  %and = and i32 %call.i.i19, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.return_crit_edge, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end15

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.else:                                          ; preds = %entry
  %__init_status = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #2
  %8 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp5 = icmp slt i32 %9, 2
  br i1 %cmp5, label %if.else.return_crit_edge, label %if.end8

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end8:                                          ; preds = %if.else
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %read16.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read16.i.i, align 4
  %call.i.i20 = tail call zeroext i16 %15(ptr noundef %11, i16 noundef zeroext 1178) #2
  %16 = and i16 %call.i.i20, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool12.not = icmp eq i16 %16, 0
  br i1 %tobool12.not, label %if.end8.if.end15_crit_edge, label %if.end8.return_crit_edge

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end15

if.end15:                                         ; preds = %if.end8.if.end15_crit_edge, %if.then.if.end15_crit_edge
  br label %return

return:                                           ; preds = %if.end15, %if.end8.return_crit_edge, %if.else.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end15 ], [ true, %if.then.return_crit_edge ], [ true, %if.else.return_crit_edge ], [ true, %if.end8.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_rfkill_poll(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bus2 = getelementptr inbounds %struct.ssb_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %bus2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus2, align 4
  %mutex = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #2
  %__init_status = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #2
  %8 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp slt i32 %9, 1
  br i1 %cmp, label %if.then, label %entry.if.end10_crit_edge, !prof !15

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end10

if.then:                                          ; preds = %entry
  %call5 = tail call i32 @ssb_bus_powerup(ptr noundef %7, i1 noundef zeroext false) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  tail call void @ssb_device_enable(ptr noundef %11, i32 noundef 0) #2
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry.if.end10_crit_edge
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %revision.i = getelementptr inbounds %struct.ssb_device, ptr %13, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp.i = icmp ugt i8 %15, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end10
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %read32.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %read32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read32.i.i.i, align 4
  %call.i.i19.i = tail call i32 %19(ptr noundef %13, i16 noundef zeroext 344) #2
  %and.i = and i32 %call.i.i19.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.b43legacy_is_hw_radio_enabled.exit_crit_edge, label %if.then.i.if.end15.i_crit_edge

if.then.i.if.end15.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end15.i

if.then.i.b43legacy_is_hw_radio_enabled.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %b43legacy_is_hw_radio_enabled.exit

if.else.i:                                        ; preds = %if.end10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #2
  %20 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp5.i = icmp slt i32 %21, 2
  br i1 %cmp5.i, label %if.else.i.b43legacy_is_hw_radio_enabled.exit_crit_edge, label %if.end8.i

if.else.i.b43legacy_is_hw_radio_enabled.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %b43legacy_is_hw_radio_enabled.exit

if.end8.i:                                        ; preds = %if.else.i
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %read16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i20.i = tail call zeroext i16 %27(ptr noundef %23, i16 noundef zeroext 1178) #2
  %28 = and i16 %call.i.i20.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool12.not.i = icmp eq i16 %28, 0
  br i1 %tobool12.not.i, label %if.end8.i.if.end15.i_crit_edge, label %if.end8.i.b43legacy_is_hw_radio_enabled.exit_crit_edge

if.end8.i.b43legacy_is_hw_radio_enabled.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %b43legacy_is_hw_radio_enabled.exit

if.end8.i.if.end15.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end8.i.if.end15.i_crit_edge, %if.then.i.if.end15.i_crit_edge
  br label %b43legacy_is_hw_radio_enabled.exit

b43legacy_is_hw_radio_enabled.exit:               ; preds = %if.end15.i, %if.end8.i.b43legacy_is_hw_radio_enabled.exit_crit_edge, %if.else.i.b43legacy_is_hw_radio_enabled.exit_crit_edge, %if.then.i.b43legacy_is_hw_radio_enabled.exit_crit_edge
  %retval.0.i = phi i1 [ false, %if.end15.i ], [ true, %if.then.i.b43legacy_is_hw_radio_enabled.exit_crit_edge ], [ true, %if.else.i.b43legacy_is_hw_radio_enabled.exit_crit_edge ], [ true, %if.end8.i.b43legacy_is_hw_radio_enabled.exit_crit_edge ]
  %radio_hw_enable = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 8
  %29 = ptrtoint ptr %radio_hw_enable to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %radio_hw_enable, align 4, !range !16
  %31 = zext i1 %retval.0.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %31)
  %cmp15.not = icmp eq i8 %30, %31
  br i1 %cmp15.not, label %b43legacy_is_hw_radio_enabled.exit.if.end43_crit_edge, label %if.then23, !prof !17

b43legacy_is_hw_radio_enabled.exit.if.end43_crit_edge: ; preds = %b43legacy_is_hw_radio_enabled.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end43

if.then23:                                        ; preds = %b43legacy_is_hw_radio_enabled.exit
  %32 = ptrtoint ptr %radio_hw_enable to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %radio_hw_enable, align 4
  %cond = select i1 %retval.0.i, ptr @.str.1, ptr @.str.2
  tail call void (ptr, ptr, ...) @b43legacyinfo(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %cond) #2
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %33 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wiphy, align 8
  %lnot30 = xor i1 %retval.0.i, true
  tail call void @wiphy_rfkill_set_hw_state_reason(ptr noundef %34, i1 noundef zeroext %lnot30, i32 noundef 1) #2
  %radio_on = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 9, i32 15
  %35 = ptrtoint ptr %radio_on to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %radio_on, align 4, !range !16
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %31)
  %cmp36.not = icmp eq i8 %36, %31
  br i1 %cmp36.not, label %if.then23.if.end43_crit_edge, label %if.then38

if.then23.if.end43_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end43

if.then38:                                        ; preds = %if.then23
  br i1 %retval.0.i, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @b43legacy_radio_turn_on(ptr noundef %3) #2
  br label %if.end43

if.else:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @b43legacy_radio_turn_off(ptr noundef %3, i1 noundef zeroext false) #2
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then40, %if.then23.if.end43_crit_edge, %b43legacy_is_hw_radio_enabled.exit.if.end43_crit_edge
  br i1 %cmp, label %if.then45, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #4
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 4
  tail call void @ssb_device_disable(ptr noundef %38, i32 noundef 0) #2
  %call47 = tail call i32 @ssb_bus_may_powerdown(ptr noundef %7) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end43.cleanup_crit_edge, %if.then.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_bus_powerup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssb_device_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacyinfo(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_radio_turn_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacy_radio_turn_off(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssb_device_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_bus_may_powerdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wiphy_rfkill_set_hw_state_reason(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
!1 = !{!"../drivers/net/wireless/broadcom/b43legacy/rfkill.c", i32 61, i32 21}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/b43legacy/rfkill.c", i32 62, i32 14}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/b43legacy/rfkill.c", i32 62, i32 26}
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
