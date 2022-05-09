; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43/leds.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43/leds.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.b43_wl = type { ptr, ptr, %struct.mutex, %struct.spinlock, i8, ptr, [6 x i8], [6 x i8], i32, i8, i32, %struct.ieee80211_low_level_stats, %struct.hwrng, i8, [31 x i8], i8, i8, ptr, i8, i8, i8, %struct.work_struct, %struct.spinlock, [4 x %struct.b43_qos_params], %struct.work_struct, %struct.work_struct, [4 x %struct.sk_buff_head], [4 x i8], %struct.work_struct, %struct.b43_leds, [118 x i8], [2 x i8], [4 x i8], [4 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%struct.b43_bus_dev = type { i32, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, i16, i16, i16, i16, i8, i8, ptr, i16, i8 }
%union.anon = type { ptr }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.102, %struct.anon.103, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.102 = type { i8, i8, i8, i8 }
%struct.anon.103 = type { %struct.anon.104, %struct.anon.105 }
%struct.anon.104 = type { i8, i8, i8, i8, i8 }
%struct.anon.105 = type { i8, i8, i8, i8, i8 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.131, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.131 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.130, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.130 = type { i64, i64, i8 }

@b43_leds_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&dev->wl->leds.work)\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/broadcom/b43/leds.c\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"b43-%s::tx\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"b43-%s::rx\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"b43-%s::radio\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"b43-%s::assoc\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"LEDs: Unknown behaviour 0x%02X\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"LEDs: Failed to register %s\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@___asan_gen_.11 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 333, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 236, i32 4 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 165, i32 5 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 170, i32 5 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 180, i32 5 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 188, i32 5 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 194, i32 20 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [44 x i8] c"../drivers/net/wireless/broadcom/b43/leds.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 130, i32 20 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @b43_leds_register.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_leds_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_leds_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %sprom.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl, align 4
  %led_radio = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 29, i32 2
  %2 = ptrtoint ptr %led_radio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %led_radio, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then:                                          ; preds = %entry
  %radio_on = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 13
  %4 = ptrtoint ptr %radio_on to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %radio_on, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then.if.else_crit_edge, label %land.lhs.true

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %call = tail call zeroext i1 @b43_is_hw_radio_enabled(ptr noundef %dev) #5
  br i1 %call, label %if.then3, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %index = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 29, i32 2, i32 2
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %index, align 4
  %activelow4 = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 29, i32 2, i32 3
  %8 = ptrtoint ptr %activelow4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %activelow4, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %read16.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read16.i.i, align 4
  %call.i.i96 = tail call zeroext i16 %13(ptr noundef %11, i16 noundef zeroext 1180) #5
  %conv.i = zext i8 %7 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %14 = trunc i32 %shl.i to i16
  %15 = xor i16 %14, -1
  %conv2.i = and i16 %call.i.i96, %15
  %conv6.i = or i16 %call.i.i96, %14
  %ctl.0.i = select i1 %tobool5.not, i16 %conv6.i, i16 %conv2.i
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %write16.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write16.i.i, align 4
  tail call void %19(ptr noundef %17, i16 noundef zeroext 1180, i16 noundef zeroext %ctl.0.i) #5
  %hw_state = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 29, i32 2, i32 6
  %20 = ptrtoint ptr %hw_state to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %hw_state, align 4
  %state = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 29, i32 2, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #5
  %21 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 1, ptr %state, align 4
  br label %if.end11

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  %index6 = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 29, i32 2, i32 2
  %22 = ptrtoint ptr %index6 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %index6, align 4
  %activelow7 = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 29, i32 2, i32 3
  %24 = ptrtoint ptr %activelow7 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %activelow7, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool8.not = icmp eq i8 %25, 0
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %read16.i.i97 = getelementptr inbounds %struct.b43_bus_dev, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %read16.i.i97 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read16.i.i97, align 4
  %call.i.i98 = tail call zeroext i16 %29(ptr noundef %27, i16 noundef zeroext 1180) #5
  %conv.i99 = zext i8 %23 to i32
  %shl.i100 = shl nuw i32 1, %conv.i99
  %30 = trunc i32 %shl.i100 to i16
  %conv2.i101 = or i16 %call.i.i98, %30
  %31 = xor i16 %30, -1
  %conv6.i102 = and i16 %call.i.i98, %31
  %ctl.0.i103 = select i1 %tobool8.not, i16 %conv6.i102, i16 %conv2.i101
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %write16.i.i104 = getelementptr inbounds %struct.b43_bus_dev, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %write16.i.i104 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write16.i.i104, align 4
  tail call void %35(ptr noundef %33, i16 noundef zeroext 1180, i16 noundef zeroext %ctl.0.i103) #5
  %hw_state9 = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 29, i32 2, i32 6
  %36 = ptrtoint ptr %hw_state9 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %hw_state9, align 4
  %state10 = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 29, i32 2, i32 5
  %call.i.i92 = tail call zeroext i1 @__kasan_check_write(ptr noundef %state10, i32 noundef 4) #5
  %37 = ptrtoint ptr %state10 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 0, ptr %state10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then3, %entry.if.end11_crit_edge
  %38 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wl, align 4
  %leds13 = getelementptr inbounds %struct.b43_wl, ptr %39, i32 0, i32 29
  %40 = ptrtoint ptr %leds13 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %leds13, align 4
  %tobool15.not = icmp eq ptr %41, null
  br i1 %tobool15.not, label %if.end11.if.end22_crit_edge, label %if.then16

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %index17 = getelementptr inbounds %struct.b43_wl, ptr %39, i32 0, i32 29, i32 0, i32 2
  %42 = ptrtoint ptr %index17 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %index17, align 4
  %activelow18 = getelementptr inbounds %struct.b43_wl, ptr %39, i32 0, i32 29, i32 0, i32 3
  %44 = ptrtoint ptr %activelow18 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %activelow18, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool19.not = icmp eq i8 %45, 0
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  %read16.i.i105 = getelementptr inbounds %struct.b43_bus_dev, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %read16.i.i105 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read16.i.i105, align 4
  %call.i.i106 = tail call zeroext i16 %49(ptr noundef %47, i16 noundef zeroext 1180) #5
  %conv.i107 = zext i8 %43 to i32
  %shl.i108 = shl nuw i32 1, %conv.i107
  %50 = trunc i32 %shl.i108 to i16
  %conv2.i109 = or i16 %call.i.i106, %50
  %51 = xor i16 %50, -1
  %conv6.i110 = and i16 %call.i.i106, %51
  %ctl.0.i111 = select i1 %tobool19.not, i16 %conv6.i110, i16 %conv2.i109
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  %write16.i.i112 = getelementptr inbounds %struct.b43_bus_dev, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %write16.i.i112 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write16.i.i112, align 4
  tail call void %55(ptr noundef %53, i16 noundef zeroext 1180, i16 noundef zeroext %ctl.0.i111) #5
  %hw_state20 = getelementptr inbounds %struct.b43_wl, ptr %39, i32 0, i32 29, i32 0, i32 6
  %56 = ptrtoint ptr %hw_state20 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %hw_state20, align 4
  %state21 = getelementptr inbounds %struct.b43_wl, ptr %39, i32 0, i32 29, i32 0, i32 5
  %call.i.i93 = tail call zeroext i1 @__kasan_check_write(ptr noundef %state21, i32 noundef 4) #5
  %57 = ptrtoint ptr %state21 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 0, ptr %state21, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %if.end11.if.end22_crit_edge
  %58 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %wl, align 4
  %led_rx = getelementptr inbounds %struct.b43_wl, ptr %59, i32 0, i32 29, i32 1
  %60 = ptrtoint ptr %led_rx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %led_rx, align 4
  %tobool26.not = icmp eq ptr %61, null
  br i1 %tobool26.not, label %if.end22.if.end33_crit_edge, label %if.then27

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %index28 = getelementptr inbounds %struct.b43_wl, ptr %59, i32 0, i32 29, i32 1, i32 2
  %62 = ptrtoint ptr %index28 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %index28, align 4
  %activelow29 = getelementptr inbounds %struct.b43_wl, ptr %59, i32 0, i32 29, i32 1, i32 3
  %64 = ptrtoint ptr %activelow29 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %activelow29, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool30.not = icmp eq i8 %65, 0
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 4
  %read16.i.i113 = getelementptr inbounds %struct.b43_bus_dev, ptr %67, i32 0, i32 7
  %68 = ptrtoint ptr %read16.i.i113 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read16.i.i113, align 4
  %call.i.i114 = tail call zeroext i16 %69(ptr noundef %67, i16 noundef zeroext 1180) #5
  %conv.i115 = zext i8 %63 to i32
  %shl.i116 = shl nuw i32 1, %conv.i115
  %70 = trunc i32 %shl.i116 to i16
  %conv2.i117 = or i16 %call.i.i114, %70
  %71 = xor i16 %70, -1
  %conv6.i118 = and i16 %call.i.i114, %71
  %ctl.0.i119 = select i1 %tobool30.not, i16 %conv6.i118, i16 %conv2.i117
  %72 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev, align 4
  %write16.i.i120 = getelementptr inbounds %struct.b43_bus_dev, ptr %73, i32 0, i32 9
  %74 = ptrtoint ptr %write16.i.i120 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write16.i.i120, align 4
  tail call void %75(ptr noundef %73, i16 noundef zeroext 1180, i16 noundef zeroext %ctl.0.i119) #5
  %hw_state31 = getelementptr inbounds %struct.b43_wl, ptr %59, i32 0, i32 29, i32 1, i32 6
  %76 = ptrtoint ptr %hw_state31 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %hw_state31, align 4
  %state32 = getelementptr inbounds %struct.b43_wl, ptr %59, i32 0, i32 29, i32 1, i32 5
  %call.i.i94 = tail call zeroext i1 @__kasan_check_write(ptr noundef %state32, i32 noundef 4) #5
  %77 = ptrtoint ptr %state32 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile i32 0, ptr %state32, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %if.end22.if.end33_crit_edge
  %78 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %wl, align 4
  %led_assoc = getelementptr inbounds %struct.b43_wl, ptr %79, i32 0, i32 29, i32 3
  %80 = ptrtoint ptr %led_assoc to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %led_assoc, align 4
  %tobool37.not = icmp eq ptr %81, null
  br i1 %tobool37.not, label %if.end33.if.end44_crit_edge, label %if.then38

if.end33.if.end44_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %index39 = getelementptr inbounds %struct.b43_wl, ptr %79, i32 0, i32 29, i32 3, i32 2
  %82 = ptrtoint ptr %index39 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %index39, align 4
  %activelow40 = getelementptr inbounds %struct.b43_wl, ptr %79, i32 0, i32 29, i32 3, i32 3
  %84 = ptrtoint ptr %activelow40 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %activelow40, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool41.not = icmp eq i8 %85, 0
  %86 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev, align 4
  %read16.i.i121 = getelementptr inbounds %struct.b43_bus_dev, ptr %87, i32 0, i32 7
  %88 = ptrtoint ptr %read16.i.i121 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %read16.i.i121, align 4
  %call.i.i122 = tail call zeroext i16 %89(ptr noundef %87, i16 noundef zeroext 1180) #5
  %conv.i123 = zext i8 %83 to i32
  %shl.i124 = shl nuw i32 1, %conv.i123
  %90 = trunc i32 %shl.i124 to i16
  %conv2.i125 = or i16 %call.i.i122, %90
  %91 = xor i16 %90, -1
  %conv6.i126 = and i16 %call.i.i122, %91
  %ctl.0.i127 = select i1 %tobool41.not, i16 %conv6.i126, i16 %conv2.i125
  %92 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev, align 4
  %write16.i.i128 = getelementptr inbounds %struct.b43_bus_dev, ptr %93, i32 0, i32 9
  %94 = ptrtoint ptr %write16.i.i128 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write16.i.i128, align 4
  tail call void %95(ptr noundef %93, i16 noundef zeroext 1180, i16 noundef zeroext %ctl.0.i127) #5
  %hw_state42 = getelementptr inbounds %struct.b43_wl, ptr %79, i32 0, i32 29, i32 3, i32 6
  %96 = ptrtoint ptr %hw_state42 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %hw_state42, align 4
  %state43 = getelementptr inbounds %struct.b43_wl, ptr %79, i32 0, i32 29, i32 3, i32 5
  %call.i.i95 = tail call zeroext i1 @__kasan_check_write(ptr noundef %state43, i32 noundef 4) #5
  %97 = ptrtoint ptr %state43 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile i32 0, ptr %state43, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then38, %if.end33.if.end44_crit_edge
  %98 = getelementptr inbounds [4 x i8], ptr %sprom.i, i32 0, i32 1
  %99 = getelementptr inbounds [4 x i8], ptr %sprom.i, i32 0, i32 2
  %100 = getelementptr inbounds [4 x i8], ptr %sprom.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end44
  %i.0154 = phi i32 [ 0, %if.end44 ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sprom.i) #5
  %101 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev, align 4
  %bus_sprom.i = getelementptr inbounds %struct.b43_bus_dev, ptr %102, i32 0, i32 23
  %103 = ptrtoint ptr %bus_sprom.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bus_sprom.i, align 4
  %gpio0.i = getelementptr inbounds %struct.ssb_sprom, ptr %104, i32 0, i32 34
  %105 = ptrtoint ptr %gpio0.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %gpio0.i, align 4
  %107 = ptrtoint ptr %sprom.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %sprom.i, align 1
  %gpio1.i = getelementptr inbounds %struct.ssb_sprom, ptr %104, i32 0, i32 35
  %108 = ptrtoint ptr %gpio1.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %gpio1.i, align 1
  %110 = ptrtoint ptr %98 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %98, align 1
  %gpio2.i = getelementptr inbounds %struct.ssb_sprom, ptr %104, i32 0, i32 36
  %111 = ptrtoint ptr %gpio2.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %gpio2.i, align 2
  %113 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %99, align 1
  %gpio3.i = getelementptr inbounds %struct.ssb_sprom, ptr %104, i32 0, i32 37
  %114 = ptrtoint ptr %gpio3.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %gpio3.i, align 1
  %116 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %100, align 1
  %and90.i = and i8 %109, %106
  %and1691.i = and i8 %and90.i, %112
  %and1992.i = and i8 %and1691.i, %115
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %and1992.i)
  %cmp.i = icmp eq i8 %and1992.i, -1
  br i1 %cmp.i, label %if.then.i, label %b43_led_get_sprominfo.exit

if.then.i:                                        ; preds = %for.body
  %117 = zext i32 %i.0154 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.0154, label %sw.default.i [
    i32 0, label %if.then.i.b43_led_get_sprominfo.exit.thread_crit_edge
    i32 1, label %if.then.i.b43_led_get_sprominfo.exit.thread_crit_edge156
    i32 2, label %if.then.i.b43_led_get_sprominfo.exit.thread_crit_edge157
    i32 3, label %if.then.i.b43_led_get_sprominfo.exit.thread149_crit_edge
  ]

if.then.i.b43_led_get_sprominfo.exit.thread149_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43_led_get_sprominfo.exit.thread149

if.then.i.b43_led_get_sprominfo.exit.thread_crit_edge157: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43_led_get_sprominfo.exit.thread

if.then.i.b43_led_get_sprominfo.exit.thread_crit_edge156: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43_led_get_sprominfo.exit.thread

if.then.i.b43_led_get_sprominfo.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43_led_get_sprominfo.exit.thread

sw.default.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 236, i32 noundef 9, ptr noundef null) #5
  br label %b43_led_get_sprominfo.exit.thread149

b43_led_get_sprominfo.exit.thread:                ; preds = %if.then.i.b43_led_get_sprominfo.exit.thread_crit_edge, %if.then.i.b43_led_get_sprominfo.exit.thread_crit_edge156, %if.then.i.b43_led_get_sprominfo.exit.thread_crit_edge157
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sprom.i) #5
  br label %for.inc

b43_led_get_sprominfo.exit.thread149:             ; preds = %sw.default.i, %if.then.i.b43_led_get_sprominfo.exit.thread149_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sprom.i) #5
  br label %sw.bb

b43_led_get_sprominfo.exit:                       ; preds = %for.body
  %arrayidx52.i = getelementptr [4 x i8], ptr %sprom.i, i32 0, i32 %i.0154
  %118 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx52.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %119)
  %cmp54.i = icmp eq i8 %119, -1
  %120 = and i8 %119, 127
  %narrow.i = select i1 %cmp54.i, i8 0, i8 %120
  %storemerge.i = zext i8 %narrow.i to i32
  %.lobit.i = lshr i8 %119, 7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sprom.i) #5
  %121 = zext i32 %storemerge.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %storemerge.i, label %b43_led_get_sprominfo.exit.for.inc_crit_edge [
    i32 0, label %b43_led_get_sprominfo.exit.sw.bb_crit_edge
    i32 1, label %sw.bb46
  ]

b43_led_get_sprominfo.exit.sw.bb_crit_edge:       ; preds = %b43_led_get_sprominfo.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

b43_led_get_sprominfo.exit.for.inc_crit_edge:     ; preds = %b43_led_get_sprominfo.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.bb:                                            ; preds = %b43_led_get_sprominfo.exit.sw.bb_crit_edge, %b43_led_get_sprominfo.exit.thread149
  %activelow.0152 = phi i8 [ 0, %b43_led_get_sprominfo.exit.thread149 ], [ %.lobit.i, %b43_led_get_sprominfo.exit.sw.bb_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %activelow.0152)
  %tobool45.not = icmp eq i8 %activelow.0152, 0
  %122 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev, align 4
  %read16.i.i129 = getelementptr inbounds %struct.b43_bus_dev, ptr %123, i32 0, i32 7
  %124 = ptrtoint ptr %read16.i.i129 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %read16.i.i129, align 4
  %call.i.i130 = tail call zeroext i16 %125(ptr noundef %123, i16 noundef zeroext 1180) #5
  %shl.i132 = shl nuw nsw i32 1, %i.0154
  %126 = trunc i32 %shl.i132 to i16
  %conv2.i133 = or i16 %call.i.i130, %126
  %127 = xor i16 %126, -1
  %conv6.i134 = and i16 %call.i.i130, %127
  %spec.select = select i1 %tobool45.not, i16 %conv6.i134, i16 %conv2.i133
  %128 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev, align 4
  %write16.i.i136 = getelementptr inbounds %struct.b43_bus_dev, ptr %129, i32 0, i32 9
  %130 = ptrtoint ptr %write16.i.i136 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %write16.i.i136, align 4
  tail call void %131(ptr noundef %129, i16 noundef zeroext 1180, i16 noundef zeroext %spec.select) #5
  br label %for.inc

sw.bb46:                                          ; preds = %b43_led_get_sprominfo.exit
  call void @__sanitizer_cov_trace_pc() #7
  %132 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev, align 4
  %read16.i.i137 = getelementptr inbounds %struct.b43_bus_dev, ptr %133, i32 0, i32 7
  %134 = ptrtoint ptr %read16.i.i137 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %read16.i.i137, align 4
  %call.i.i138 = tail call zeroext i16 %135(ptr noundef %133, i16 noundef zeroext 1180) #5
  %shl.i140 = shl nuw nsw i32 1, %i.0154
  %136 = trunc i32 %shl.i140 to i16
  %137 = xor i16 %136, -1
  %conv2.i141 = and i16 %call.i.i138, %137
  %conv6.i142 = or i16 %call.i.i138, %136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool48.not153 = icmp slt i8 %119, 0
  %ctl.0.i143 = select i1 %tobool48.not153, i16 %conv2.i141, i16 %conv6.i142
  %138 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev, align 4
  %write16.i.i144 = getelementptr inbounds %struct.b43_bus_dev, ptr %139, i32 0, i32 9
  %140 = ptrtoint ptr %write16.i.i144 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %write16.i.i144, align 4
  tail call void %141(ptr noundef %139, i16 noundef zeroext 1180, i16 noundef zeroext %ctl.0.i143) #5
  br label %for.inc

for.inc:                                          ; preds = %sw.bb46, %sw.bb, %b43_led_get_sprominfo.exit.for.inc_crit_edge, %b43_led_get_sprominfo.exit.thread
  %inc = add nuw nsw i32 %i.0154, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %142 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %wl, align 4
  %stop = getelementptr inbounds %struct.b43_wl, ptr %143, i32 0, i32 29, i32 4
  %144 = ptrtoint ptr %stop to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %stop, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @b43_is_hw_radio_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_leds_exit(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl, align 4
  %index = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 29, i32 0, i32 2
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  %activelow = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 29, i32 0, i32 3
  %4 = ptrtoint ptr %activelow to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %activelow, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %read16.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read16.i.i, align 4
  %call.i.i = tail call zeroext i16 %9(ptr noundef %7, i16 noundef zeroext 1180) #5
  %conv.i = zext i8 %3 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %10 = trunc i32 %shl.i to i16
  %conv2.i = or i16 %call.i.i, %10
  %11 = xor i16 %10, -1
  %conv6.i = and i16 %call.i.i, %11
  %ctl.0.i = select i1 %tobool.not, i16 %conv6.i, i16 %conv2.i
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %write16.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write16.i.i, align 4
  tail call void %15(ptr noundef %13, i16 noundef zeroext 1180, i16 noundef zeroext %ctl.0.i) #5
  %index3 = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 29, i32 1, i32 2
  %16 = ptrtoint ptr %index3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %index3, align 4
  %activelow5 = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 29, i32 1, i32 3
  %18 = ptrtoint ptr %activelow5 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %activelow5, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool6.not = icmp eq i8 %19, 0
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %read16.i.i26 = getelementptr inbounds %struct.b43_bus_dev, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %read16.i.i26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read16.i.i26, align 4
  %call.i.i27 = tail call zeroext i16 %23(ptr noundef %21, i16 noundef zeroext 1180) #5
  %conv.i28 = zext i8 %17 to i32
  %shl.i29 = shl nuw i32 1, %conv.i28
  %24 = trunc i32 %shl.i29 to i16
  %conv2.i30 = or i16 %call.i.i27, %24
  %25 = xor i16 %24, -1
  %conv6.i31 = and i16 %call.i.i27, %25
  %ctl.0.i32 = select i1 %tobool6.not, i16 %conv6.i31, i16 %conv2.i30
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %write16.i.i33 = getelementptr inbounds %struct.b43_bus_dev, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %write16.i.i33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write16.i.i33, align 4
  tail call void %29(ptr noundef %27, i16 noundef zeroext 1180, i16 noundef zeroext %ctl.0.i32) #5
  %index7 = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 29, i32 3, i32 2
  %30 = ptrtoint ptr %index7 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %index7, align 4
  %activelow9 = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 29, i32 3, i32 3
  %32 = ptrtoint ptr %activelow9 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %activelow9, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool10.not = icmp eq i8 %33, 0
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  %read16.i.i34 = getelementptr inbounds %struct.b43_bus_dev, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %read16.i.i34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read16.i.i34, align 4
  %call.i.i35 = tail call zeroext i16 %37(ptr noundef %35, i16 noundef zeroext 1180) #5
  %conv.i36 = zext i8 %31 to i32
  %shl.i37 = shl nuw i32 1, %conv.i36
  %38 = trunc i32 %shl.i37 to i16
  %conv2.i38 = or i16 %call.i.i35, %38
  %39 = xor i16 %38, -1
  %conv6.i39 = and i16 %call.i.i35, %39
  %ctl.0.i40 = select i1 %tobool10.not, i16 %conv6.i39, i16 %conv2.i38
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %write16.i.i41 = getelementptr inbounds %struct.b43_bus_dev, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %write16.i.i41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write16.i.i41, align 4
  tail call void %43(ptr noundef %41, i16 noundef zeroext 1180, i16 noundef zeroext %ctl.0.i40) #5
  %index11 = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 29, i32 2, i32 2
  %44 = ptrtoint ptr %index11 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %index11, align 4
  %activelow13 = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 29, i32 2, i32 3
  %46 = ptrtoint ptr %activelow13 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %activelow13, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool14.not = icmp eq i8 %47, 0
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  %read16.i.i42 = getelementptr inbounds %struct.b43_bus_dev, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %read16.i.i42 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read16.i.i42, align 4
  %call.i.i43 = tail call zeroext i16 %51(ptr noundef %49, i16 noundef zeroext 1180) #5
  %conv.i44 = zext i8 %45 to i32
  %shl.i45 = shl nuw i32 1, %conv.i44
  %52 = trunc i32 %shl.i45 to i16
  %conv2.i46 = or i16 %call.i.i43, %52
  %53 = xor i16 %52, -1
  %conv6.i47 = and i16 %call.i.i43, %53
  %ctl.0.i48 = select i1 %tobool14.not, i16 %conv6.i47, i16 %conv2.i46
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  %write16.i.i49 = getelementptr inbounds %struct.b43_bus_dev, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %write16.i.i49 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write16.i.i49, align 4
  tail call void %57(ptr noundef %55, i16 noundef zeroext 1180, i16 noundef zeroext %ctl.0.i48) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_leds_stop(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl, align 4
  %stop = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 29, i32 4
  %2 = ptrtoint ptr %stop to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %stop, align 4
  %work = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 29, i32 5
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_leds_register(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  %name.i = alloca [32 x i8], align 1
  %sprom.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wl = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl, align 4
  %work = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 29, i32 5
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #5
  %2 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wl, align 4
  %work3 = getelementptr inbounds %struct.b43_wl, ptr %3, i32 0, i32 29, i32 5
  %4 = ptrtoint ptr %work3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %work3, align 4
  %5 = load ptr, ptr %wl, align 4
  %lockdep_map = getelementptr inbounds %struct.b43_wl, ptr %5, i32 0, i32 29, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @b43_leds_register.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %6 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wl, align 4
  %entry10 = getelementptr inbounds %struct.b43_wl, ptr %7, i32 0, i32 29, i32 5, i32 1
  %8 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry10, ptr %entry10, align 4
  %prev.i = getelementptr inbounds %struct.b43_wl, ptr %7, i32 0, i32 29, i32 5, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry10, ptr %prev.i, align 4
  %10 = load ptr, ptr %wl, align 4
  %func = getelementptr inbounds %struct.b43_wl, ptr %10, i32 0, i32 29, i32 5, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @b43_leds_work, ptr %func, align 4
  %12 = getelementptr inbounds [4 x i8], ptr %sprom.i, i32 0, i32 1
  %13 = getelementptr inbounds [4 x i8], ptr %sprom.i, i32 0, i32 2
  %14 = getelementptr inbounds [4 x i8], ptr %sprom.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %b43_map_led.exit.for.body_crit_edge, %entry
  %i.056 = phi i32 [ 0, %entry ], [ %inc, %b43_map_led.exit.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sprom.i) #5
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %bus_sprom.i = getelementptr inbounds %struct.b43_bus_dev, ptr %16, i32 0, i32 23
  %17 = ptrtoint ptr %bus_sprom.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus_sprom.i, align 4
  %gpio0.i = getelementptr inbounds %struct.ssb_sprom, ptr %18, i32 0, i32 34
  %19 = ptrtoint ptr %gpio0.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %gpio0.i, align 4
  %21 = ptrtoint ptr %sprom.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %sprom.i, align 1
  %gpio1.i = getelementptr inbounds %struct.ssb_sprom, ptr %18, i32 0, i32 35
  %22 = ptrtoint ptr %gpio1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %gpio1.i, align 1
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %12, align 1
  %gpio2.i = getelementptr inbounds %struct.ssb_sprom, ptr %18, i32 0, i32 36
  %25 = ptrtoint ptr %gpio2.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %gpio2.i, align 2
  %27 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %13, align 1
  %gpio3.i = getelementptr inbounds %struct.ssb_sprom, ptr %18, i32 0, i32 37
  %28 = ptrtoint ptr %gpio3.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %gpio3.i, align 1
  %30 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %14, align 1
  %and90.i = and i8 %23, %20
  %and1691.i = and i8 %and90.i, %26
  %and1992.i = and i8 %and1691.i, %29
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %and1992.i)
  %cmp.i = icmp eq i8 %and1992.i, -1
  br i1 %cmp.i, label %if.then.i, label %b43_led_get_sprominfo.exit

if.then.i:                                        ; preds = %for.body
  %31 = zext i32 %i.056 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %i.056, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb26.i
    i32 2, label %if.then.i.b43_led_get_sprominfo.exit.thread_crit_edge
    i32 3, label %if.then.i.b43_led_get_sprominfo.exit.thread34_crit_edge
  ]

if.then.i.b43_led_get_sprominfo.exit.thread34_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43_led_get_sprominfo.exit.thread34

if.then.i.b43_led_get_sprominfo.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43_led_get_sprominfo.exit.thread

sw.bb.i:                                          ; preds = %if.then.i
  %board_vendor.i = getelementptr inbounds %struct.b43_bus_dev, ptr %16, i32 0, i32 17
  %32 = ptrtoint ptr %board_vendor.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %board_vendor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3601, i16 %33)
  %cmp23.i = icmp eq i16 %33, 3601
  br i1 %cmp23.i, label %sw.bb.i.b43_led_get_sprominfo.exit.thread_crit_edge, label %b43_led_get_sprominfo.exit.thread40

sw.bb.i.b43_led_get_sprominfo.exit.thread_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43_led_get_sprominfo.exit.thread

b43_led_get_sprominfo.exit.thread40:              ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sprom.i) #5
  %34 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wl, align 4
  %hw1.i45 = getelementptr inbounds %struct.b43_wl, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %hw1.i45 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw1.i45, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i) #5
  %38 = call ptr @memset(ptr %name.i, i32 255, i32 32)
  br label %sw.bb2.i

sw.bb26.i:                                        ; preds = %if.then.i
  %board_vendor28.i = getelementptr inbounds %struct.b43_bus_dev, ptr %16, i32 0, i32 17
  %39 = ptrtoint ptr %board_vendor28.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %board_vendor28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4163, i16 %40)
  %cmp30.i = icmp eq i16 %40, 4163
  br i1 %cmp30.i, label %b43_led_get_sprominfo.exit.thread48, label %sw.bb26.i.b43_led_get_sprominfo.exit.thread_crit_edge

sw.bb26.i.b43_led_get_sprominfo.exit.thread_crit_edge: ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43_led_get_sprominfo.exit.thread

sw.default.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 236, i32 noundef 9, ptr noundef null) #5
  br label %b43_led_get_sprominfo.exit.thread34

b43_led_get_sprominfo.exit.thread48:              ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sprom.i) #5
  %41 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wl, align 4
  %hw1.i53 = getelementptr inbounds %struct.b43_wl, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %hw1.i53 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw1.i53, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i) #5
  %45 = call ptr @memset(ptr %name.i, i32 255, i32 32)
  br label %sw.bb29.i

b43_led_get_sprominfo.exit.thread:                ; preds = %sw.bb26.i.b43_led_get_sprominfo.exit.thread_crit_edge, %sw.bb.i.b43_led_get_sprominfo.exit.thread_crit_edge, %if.then.i.b43_led_get_sprominfo.exit.thread_crit_edge
  %tobool27 = phi i1 [ false, %sw.bb26.i.b43_led_get_sprominfo.exit.thread_crit_edge ], [ false, %if.then.i.b43_led_get_sprominfo.exit.thread_crit_edge ], [ true, %sw.bb.i.b43_led_get_sprominfo.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sprom.i) #5
  %conv26 = trunc i32 %i.056 to i8
  %46 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wl, align 4
  %hw1.i28 = getelementptr inbounds %struct.b43_wl, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %hw1.i28 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw1.i28, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i) #5
  %50 = call ptr @memset(ptr %name.i, i32 255, i32 32)
  br label %sw.bb18.i

b43_led_get_sprominfo.exit.thread34:              ; preds = %sw.default.i, %if.then.i.b43_led_get_sprominfo.exit.thread34_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sprom.i) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i) #5
  br label %b43_map_led.exit

b43_led_get_sprominfo.exit:                       ; preds = %for.body
  %arrayidx52.i = getelementptr [4 x i8], ptr %sprom.i, i32 0, i32 %i.056
  %51 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx52.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %52)
  %cmp54.i = icmp eq i8 %52, -1
  %53 = and i8 %52, 127
  %narrow.i = select i1 %cmp54.i, i8 0, i8 %53
  %storemerge.i = zext i8 %narrow.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sprom.i) #5
  %conv = trunc i32 %i.056 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool = icmp slt i8 %52, 0
  %54 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wl, align 4
  %hw1.i = getelementptr inbounds %struct.b43_wl, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw1.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i) #5
  %58 = call ptr @memset(ptr %name.i, i32 255, i32 32)
  %59 = zext i32 %storemerge.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %storemerge.i, label %sw.default.i23 [
    i32 11, label %b43_led_get_sprominfo.exit.b43_map_led.exit_crit_edge
    i32 0, label %b43_led_get_sprominfo.exit.b43_map_led.exit_crit_edge61
    i32 1, label %b43_led_get_sprominfo.exit.b43_map_led.exit_crit_edge62
    i32 2, label %b43_led_get_sprominfo.exit.sw.bb2.i_crit_edge
    i32 7, label %b43_led_get_sprominfo.exit.sw.bb2.i_crit_edge63
    i32 8, label %b43_led_get_sprominfo.exit.sw.bb2.i_crit_edge64
    i32 3, label %b43_led_get_sprominfo.exit.sw.bb18.i_crit_edge
    i32 4, label %b43_led_get_sprominfo.exit.sw.bb18.i_crit_edge65
    i32 5, label %b43_led_get_sprominfo.exit.sw.bb18.i_crit_edge66
    i32 6, label %b43_led_get_sprominfo.exit.sw.bb18.i_crit_edge67
    i32 9, label %b43_led_get_sprominfo.exit.sw.bb29.i_crit_edge
    i32 10, label %b43_led_get_sprominfo.exit.sw.bb29.i_crit_edge68
  ]

b43_led_get_sprominfo.exit.sw.bb29.i_crit_edge68: ; preds = %b43_led_get_sprominfo.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb29.i

b43_led_get_sprominfo.exit.sw.bb29.i_crit_edge:   ; preds = %b43_led_get_sprominfo.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb29.i

b43_led_get_sprominfo.exit.sw.bb18.i_crit_edge67: ; preds = %b43_led_get_sprominfo.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb18.i

b43_led_get_sprominfo.exit.sw.bb18.i_crit_edge66: ; preds = %b43_led_get_sprominfo.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb18.i

b43_led_get_sprominfo.exit.sw.bb18.i_crit_edge65: ; preds = %b43_led_get_sprominfo.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb18.i

b43_led_get_sprominfo.exit.sw.bb18.i_crit_edge:   ; preds = %b43_led_get_sprominfo.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb18.i

b43_led_get_sprominfo.exit.sw.bb2.i_crit_edge64:  ; preds = %b43_led_get_sprominfo.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

b43_led_get_sprominfo.exit.sw.bb2.i_crit_edge63:  ; preds = %b43_led_get_sprominfo.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

b43_led_get_sprominfo.exit.sw.bb2.i_crit_edge:    ; preds = %b43_led_get_sprominfo.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

b43_led_get_sprominfo.exit.b43_map_led.exit_crit_edge62: ; preds = %b43_led_get_sprominfo.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43_map_led.exit

b43_led_get_sprominfo.exit.b43_map_led.exit_crit_edge61: ; preds = %b43_led_get_sprominfo.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43_map_led.exit

b43_led_get_sprominfo.exit.b43_map_led.exit_crit_edge: ; preds = %b43_led_get_sprominfo.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43_map_led.exit

sw.bb2.i:                                         ; preds = %b43_led_get_sprominfo.exit.sw.bb2.i_crit_edge, %b43_led_get_sprominfo.exit.sw.bb2.i_crit_edge63, %b43_led_get_sprominfo.exit.sw.bb2.i_crit_edge64, %b43_led_get_sprominfo.exit.thread40
  %60 = phi ptr [ %37, %b43_led_get_sprominfo.exit.thread40 ], [ %57, %b43_led_get_sprominfo.exit.sw.bb2.i_crit_edge ], [ %57, %b43_led_get_sprominfo.exit.sw.bb2.i_crit_edge63 ], [ %57, %b43_led_get_sprominfo.exit.sw.bb2.i_crit_edge64 ]
  %tobool47 = phi i1 [ true, %b43_led_get_sprominfo.exit.thread40 ], [ %tobool, %b43_led_get_sprominfo.exit.sw.bb2.i_crit_edge ], [ %tobool, %b43_led_get_sprominfo.exit.sw.bb2.i_crit_edge63 ], [ %tobool, %b43_led_get_sprominfo.exit.sw.bb2.i_crit_edge64 ]
  %conv46 = phi i8 [ 0, %b43_led_get_sprominfo.exit.thread40 ], [ %conv, %b43_led_get_sprominfo.exit.sw.bb2.i_crit_edge ], [ %conv, %b43_led_get_sprominfo.exit.sw.bb2.i_crit_edge63 ], [ %conv, %b43_led_get_sprominfo.exit.sw.bb2.i_crit_edge64 ]
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wiphy.i, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.wiphy, ptr %62, i32 0, i32 56, i32 3
  %63 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %64, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %sw.bb2.i.wiphy_name.exit.i_crit_edge

sw.bb2.i.wiphy_name.exit.i_crit_edge:             ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wiphy_name.exit.i

if.end.i.i.i:                                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i = getelementptr inbounds %struct.wiphy, ptr %62, i32 0, i32 56
  %65 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i.i, align 4
  br label %wiphy_name.exit.i

wiphy_name.exit.i:                                ; preds = %if.end.i.i.i, %sw.bb2.i.wiphy_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %66, %if.end.i.i.i ], [ %64, %sw.bb2.i.wiphy_name.exit.i_crit_edge ]
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef %retval.0.i.i.i) #5
  %67 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %wl, align 4
  %leds.i = getelementptr inbounds %struct.b43_wl, ptr %68, i32 0, i32 29
  %call.i.i = call ptr @__ieee80211_get_tx_led_name(ptr noundef %60) #5
  %69 = ptrtoint ptr %leds.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %leds.i, align 4
  %tobool.not.i.i = icmp ne ptr %70, null
  %tobool1.not.i.i = icmp eq ptr %call.i.i, null
  %or.cond.i.i = or i1 %tobool1.not.i.i, %tobool.not.i.i
  br i1 %or.cond.i.i, label %wiphy_name.exit.i.b43_register_led.exit.i_crit_edge, label %if.end3.i.i

wiphy_name.exit.i.b43_register_led.exit.i_crit_edge: ; preds = %wiphy_name.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43_register_led.exit.i

if.end3.i.i:                                      ; preds = %wiphy_name.exit.i
  %frombool.i.i = zext i1 %tobool47 to i8
  %71 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %wl, align 4
  %73 = ptrtoint ptr %leds.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %leds.i, align 4
  %index.i.i = getelementptr inbounds %struct.b43_wl, ptr %68, i32 0, i32 29, i32 0, i32 2
  %74 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv46, ptr %index.i.i, align 4
  %activelow7.i.i = getelementptr inbounds %struct.b43_wl, ptr %68, i32 0, i32 29, i32 0, i32 3
  %75 = ptrtoint ptr %activelow7.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %frombool.i.i, ptr %activelow7.i.i, align 1
  %name9.i.i = getelementptr inbounds %struct.b43_wl, ptr %68, i32 0, i32 29, i32 0, i32 4
  %call.i64.i = call i32 @strlcpy(ptr noundef %name9.i.i, ptr noundef nonnull %name.i, i32 noundef 32) #5
  %state.i.i = getelementptr inbounds %struct.b43_wl, ptr %68, i32 0, i32 29, i32 0, i32 5
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %state.i.i, i32 noundef 4) #5
  %76 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 0, ptr %state.i.i, align 4
  %led_dev.i.i = getelementptr inbounds %struct.b43_wl, ptr %68, i32 0, i32 29, i32 0, i32 1
  %77 = ptrtoint ptr %led_dev.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %name9.i.i, ptr %led_dev.i.i, align 4
  %default_trigger14.i.i = getelementptr inbounds %struct.b43_wl, ptr %68, i32 0, i32 29, i32 0, i32 1, i32 14
  %78 = ptrtoint ptr %default_trigger14.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i.i, ptr %default_trigger14.i.i, align 4
  %brightness_set.i.i = getelementptr inbounds %struct.b43_wl, ptr %68, i32 0, i32 29, i32 0, i32 1, i32 5
  %79 = ptrtoint ptr %brightness_set.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @b43_led_brightness_set, ptr %brightness_set.i.i, align 4
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 4
  %dev17.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %81, i32 0, i32 14
  %82 = ptrtoint ptr %dev17.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev17.i.i, align 4
  %call.i.i.i = call i32 @led_classdev_register_ext(ptr noundef %83, ptr noundef %led_dev.i.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool20.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end3.i.i.b43_register_led.exit.i_crit_edge, label %if.then21.i.i

if.end3.i.i.b43_register_led.exit.i_crit_edge:    ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43_register_led.exit.i

if.then21.i.i:                                    ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %wl, align 4
  call void (ptr, ptr, ...) @b43warn(ptr noundef %85, ptr noundef nonnull @.str.7, ptr noundef nonnull %name.i) #5
  %86 = ptrtoint ptr %leds.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %leds.i, align 4
  br label %b43_register_led.exit.i

b43_register_led.exit.i:                          ; preds = %if.then21.i.i, %if.end3.i.i.b43_register_led.exit.i_crit_edge, %wiphy_name.exit.i.b43_register_led.exit.i_crit_edge
  %87 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %wiphy.i, align 8
  %init_name.i.i65.i = getelementptr inbounds %struct.wiphy, ptr %88, i32 0, i32 56, i32 3
  %89 = ptrtoint ptr %init_name.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %init_name.i.i65.i, align 8
  %tobool.not.i.i66.i = icmp eq ptr %90, null
  br i1 %tobool.not.i.i66.i, label %if.end.i.i68.i, label %b43_register_led.exit.i.wiphy_name.exit70.i_crit_edge

b43_register_led.exit.i.wiphy_name.exit70.i_crit_edge: ; preds = %b43_register_led.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wiphy_name.exit70.i

if.end.i.i68.i:                                   ; preds = %b43_register_led.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i67.i = getelementptr inbounds %struct.wiphy, ptr %88, i32 0, i32 56
  %91 = ptrtoint ptr %dev.i67.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i67.i, align 4
  br label %wiphy_name.exit70.i

wiphy_name.exit70.i:                              ; preds = %if.end.i.i68.i, %b43_register_led.exit.i.wiphy_name.exit70.i_crit_edge
  %retval.0.i.i69.i = phi ptr [ %92, %if.end.i.i68.i ], [ %90, %b43_register_led.exit.i.wiphy_name.exit70.i_crit_edge ]
  %call11.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef %retval.0.i.i69.i) #5
  %93 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %wl, align 4
  %led_rx.i = getelementptr inbounds %struct.b43_wl, ptr %94, i32 0, i32 29, i32 1
  %call.i71.i = call ptr @__ieee80211_get_rx_led_name(ptr noundef %60) #5
  %95 = ptrtoint ptr %led_rx.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %led_rx.i, align 4
  %tobool.not.i72.i = icmp ne ptr %96, null
  %tobool1.not.i73.i = icmp eq ptr %call.i71.i, null
  %or.cond.i74.i = or i1 %tobool1.not.i73.i, %tobool.not.i72.i
  br i1 %or.cond.i74.i, label %wiphy_name.exit70.i.b43_map_led.exit_crit_edge, label %if.end3.i89.i

wiphy_name.exit70.i.b43_map_led.exit_crit_edge:   ; preds = %wiphy_name.exit70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43_map_led.exit

if.end3.i89.i:                                    ; preds = %wiphy_name.exit70.i
  %frombool.i75.i = zext i1 %tobool47 to i8
  %97 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %wl, align 4
  %99 = ptrtoint ptr %led_rx.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %98, ptr %led_rx.i, align 4
  %index.i77.i = getelementptr inbounds %struct.b43_wl, ptr %94, i32 0, i32 29, i32 1, i32 2
  %100 = ptrtoint ptr %index.i77.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv46, ptr %index.i77.i, align 4
  %activelow7.i78.i = getelementptr inbounds %struct.b43_wl, ptr %94, i32 0, i32 29, i32 1, i32 3
  %101 = ptrtoint ptr %activelow7.i78.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %frombool.i75.i, ptr %activelow7.i78.i, align 1
  %name9.i79.i = getelementptr inbounds %struct.b43_wl, ptr %94, i32 0, i32 29, i32 1, i32 4
  %call.i80.i = call i32 @strlcpy(ptr noundef %name9.i79.i, ptr noundef nonnull %name.i, i32 noundef 32) #5
  %state.i81.i = getelementptr inbounds %struct.b43_wl, ptr %94, i32 0, i32 29, i32 1, i32 5
  %call.i.i.i82.i = call zeroext i1 @__kasan_check_write(ptr noundef %state.i81.i, i32 noundef 4) #5
  %102 = ptrtoint ptr %state.i81.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile i32 0, ptr %state.i81.i, align 4
  %led_dev.i83.i = getelementptr inbounds %struct.b43_wl, ptr %94, i32 0, i32 29, i32 1, i32 1
  %103 = ptrtoint ptr %led_dev.i83.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %name9.i79.i, ptr %led_dev.i83.i, align 4
  %default_trigger14.i84.i = getelementptr inbounds %struct.b43_wl, ptr %94, i32 0, i32 29, i32 1, i32 1, i32 14
  %104 = ptrtoint ptr %default_trigger14.i84.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call.i71.i, ptr %default_trigger14.i84.i, align 4
  %brightness_set.i85.i = getelementptr inbounds %struct.b43_wl, ptr %94, i32 0, i32 29, i32 1, i32 1, i32 5
  %105 = ptrtoint ptr %brightness_set.i85.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @b43_led_brightness_set, ptr %brightness_set.i85.i, align 4
  %106 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev, align 4
  %dev17.i86.i = getelementptr inbounds %struct.b43_bus_dev, ptr %107, i32 0, i32 14
  %108 = ptrtoint ptr %dev17.i86.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev17.i86.i, align 4
  %call.i.i87.i = call i32 @led_classdev_register_ext(ptr noundef %109, ptr noundef %led_dev.i83.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i87.i)
  %tobool20.not.i88.i = icmp eq i32 %call.i.i87.i, 0
  br i1 %tobool20.not.i88.i, label %if.end3.i89.i.b43_map_led.exit_crit_edge, label %if.then21.i90.i

if.end3.i89.i.b43_map_led.exit_crit_edge:         ; preds = %if.end3.i89.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43_map_led.exit

if.then21.i90.i:                                  ; preds = %if.end3.i89.i
  call void @__sanitizer_cov_trace_pc() #7
  %110 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %wl, align 4
  call void (ptr, ptr, ...) @b43warn(ptr noundef %111, ptr noundef nonnull @.str.7, ptr noundef nonnull %name.i) #5
  %112 = ptrtoint ptr %led_rx.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %led_rx.i, align 4
  br label %b43_map_led.exit

sw.bb18.i:                                        ; preds = %b43_led_get_sprominfo.exit.sw.bb18.i_crit_edge, %b43_led_get_sprominfo.exit.sw.bb18.i_crit_edge65, %b43_led_get_sprominfo.exit.sw.bb18.i_crit_edge66, %b43_led_get_sprominfo.exit.sw.bb18.i_crit_edge67, %b43_led_get_sprominfo.exit.thread
  %113 = phi ptr [ %49, %b43_led_get_sprominfo.exit.thread ], [ %57, %b43_led_get_sprominfo.exit.sw.bb18.i_crit_edge ], [ %57, %b43_led_get_sprominfo.exit.sw.bb18.i_crit_edge65 ], [ %57, %b43_led_get_sprominfo.exit.sw.bb18.i_crit_edge66 ], [ %57, %b43_led_get_sprominfo.exit.sw.bb18.i_crit_edge67 ]
  %tobool31 = phi i1 [ %tobool27, %b43_led_get_sprominfo.exit.thread ], [ %tobool, %b43_led_get_sprominfo.exit.sw.bb18.i_crit_edge ], [ %tobool, %b43_led_get_sprominfo.exit.sw.bb18.i_crit_edge65 ], [ %tobool, %b43_led_get_sprominfo.exit.sw.bb18.i_crit_edge66 ], [ %tobool, %b43_led_get_sprominfo.exit.sw.bb18.i_crit_edge67 ]
  %conv29 = phi i8 [ %conv26, %b43_led_get_sprominfo.exit.thread ], [ %conv, %b43_led_get_sprominfo.exit.sw.bb18.i_crit_edge ], [ %conv, %b43_led_get_sprominfo.exit.sw.bb18.i_crit_edge65 ], [ %conv, %b43_led_get_sprominfo.exit.sw.bb18.i_crit_edge66 ], [ %conv, %b43_led_get_sprominfo.exit.sw.bb18.i_crit_edge67 ]
  %wiphy20.i = getelementptr inbounds %struct.ieee80211_hw, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %wiphy20.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %wiphy20.i, align 8
  %init_name.i.i92.i = getelementptr inbounds %struct.wiphy, ptr %115, i32 0, i32 56, i32 3
  %116 = ptrtoint ptr %init_name.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %init_name.i.i92.i, align 8
  %tobool.not.i.i93.i = icmp eq ptr %117, null
  br i1 %tobool.not.i.i93.i, label %if.end.i.i95.i, label %sw.bb18.i.wiphy_name.exit97.i_crit_edge

sw.bb18.i.wiphy_name.exit97.i_crit_edge:          ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wiphy_name.exit97.i

if.end.i.i95.i:                                   ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i94.i = getelementptr inbounds %struct.wiphy, ptr %115, i32 0, i32 56
  %118 = ptrtoint ptr %dev.i94.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev.i94.i, align 4
  br label %wiphy_name.exit97.i

wiphy_name.exit97.i:                              ; preds = %if.end.i.i95.i, %sw.bb18.i.wiphy_name.exit97.i_crit_edge
  %retval.0.i.i96.i = phi ptr [ %119, %if.end.i.i95.i ], [ %117, %sw.bb18.i.wiphy_name.exit97.i_crit_edge ]
  %call22.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 32, ptr noundef nonnull @.str.4, ptr noundef %retval.0.i.i96.i) #5
  %120 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %wl, align 4
  %led_radio.i = getelementptr inbounds %struct.b43_wl, ptr %121, i32 0, i32 29, i32 2
  %call.i98.i = call ptr @__ieee80211_get_radio_led_name(ptr noundef %113) #5
  %122 = ptrtoint ptr %led_radio.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %led_radio.i, align 4
  %tobool.not.i99.i = icmp ne ptr %123, null
  %tobool1.not.i100.i = icmp eq ptr %call.i98.i, null
  %or.cond.i101.i = or i1 %tobool1.not.i100.i, %tobool.not.i99.i
  br i1 %or.cond.i101.i, label %wiphy_name.exit97.i.b43_map_led.exit_crit_edge, label %if.end3.i116.i

wiphy_name.exit97.i.b43_map_led.exit_crit_edge:   ; preds = %wiphy_name.exit97.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43_map_led.exit

if.end3.i116.i:                                   ; preds = %wiphy_name.exit97.i
  %frombool.i102.i = zext i1 %tobool31 to i8
  %124 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %wl, align 4
  %126 = ptrtoint ptr %led_radio.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %125, ptr %led_radio.i, align 4
  %index.i104.i = getelementptr inbounds %struct.b43_wl, ptr %121, i32 0, i32 29, i32 2, i32 2
  %127 = ptrtoint ptr %index.i104.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv29, ptr %index.i104.i, align 4
  %activelow7.i105.i = getelementptr inbounds %struct.b43_wl, ptr %121, i32 0, i32 29, i32 2, i32 3
  %128 = ptrtoint ptr %activelow7.i105.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %frombool.i102.i, ptr %activelow7.i105.i, align 1
  %name9.i106.i = getelementptr inbounds %struct.b43_wl, ptr %121, i32 0, i32 29, i32 2, i32 4
  %call.i107.i = call i32 @strlcpy(ptr noundef %name9.i106.i, ptr noundef nonnull %name.i, i32 noundef 32) #5
  %state.i108.i = getelementptr inbounds %struct.b43_wl, ptr %121, i32 0, i32 29, i32 2, i32 5
  %call.i.i.i109.i = call zeroext i1 @__kasan_check_write(ptr noundef %state.i108.i, i32 noundef 4) #5
  %129 = ptrtoint ptr %state.i108.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile i32 0, ptr %state.i108.i, align 4
  %led_dev.i110.i = getelementptr inbounds %struct.b43_wl, ptr %121, i32 0, i32 29, i32 2, i32 1
  %130 = ptrtoint ptr %led_dev.i110.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %name9.i106.i, ptr %led_dev.i110.i, align 4
  %default_trigger14.i111.i = getelementptr inbounds %struct.b43_wl, ptr %121, i32 0, i32 29, i32 2, i32 1, i32 14
  %131 = ptrtoint ptr %default_trigger14.i111.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call.i98.i, ptr %default_trigger14.i111.i, align 4
  %brightness_set.i112.i = getelementptr inbounds %struct.b43_wl, ptr %121, i32 0, i32 29, i32 2, i32 1, i32 5
  %132 = ptrtoint ptr %brightness_set.i112.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @b43_led_brightness_set, ptr %brightness_set.i112.i, align 4
  %133 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev, align 4
  %dev17.i113.i = getelementptr inbounds %struct.b43_bus_dev, ptr %134, i32 0, i32 14
  %135 = ptrtoint ptr %dev17.i113.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev17.i113.i, align 4
  %call.i.i114.i = call i32 @led_classdev_register_ext(ptr noundef %136, ptr noundef %led_dev.i110.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i114.i)
  %tobool20.not.i115.i = icmp eq i32 %call.i.i114.i, 0
  br i1 %tobool20.not.i115.i, label %if.end3.i116.i.b43_map_led.exit_crit_edge, label %if.then21.i117.i

if.end3.i116.i.b43_map_led.exit_crit_edge:        ; preds = %if.end3.i116.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43_map_led.exit

if.then21.i117.i:                                 ; preds = %if.end3.i116.i
  call void @__sanitizer_cov_trace_pc() #7
  %137 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %wl, align 4
  call void (ptr, ptr, ...) @b43warn(ptr noundef %138, ptr noundef nonnull @.str.7, ptr noundef nonnull %name.i) #5
  %139 = ptrtoint ptr %led_radio.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %led_radio.i, align 4
  br label %b43_map_led.exit

sw.bb29.i:                                        ; preds = %b43_led_get_sprominfo.exit.sw.bb29.i_crit_edge, %b43_led_get_sprominfo.exit.sw.bb29.i_crit_edge68, %b43_led_get_sprominfo.exit.thread48
  %140 = phi ptr [ %44, %b43_led_get_sprominfo.exit.thread48 ], [ %57, %b43_led_get_sprominfo.exit.sw.bb29.i_crit_edge ], [ %57, %b43_led_get_sprominfo.exit.sw.bb29.i_crit_edge68 ]
  %tobool55 = phi i1 [ false, %b43_led_get_sprominfo.exit.thread48 ], [ %tobool, %b43_led_get_sprominfo.exit.sw.bb29.i_crit_edge ], [ %tobool, %b43_led_get_sprominfo.exit.sw.bb29.i_crit_edge68 ]
  %conv54 = phi i8 [ 1, %b43_led_get_sprominfo.exit.thread48 ], [ %conv, %b43_led_get_sprominfo.exit.sw.bb29.i_crit_edge ], [ %conv, %b43_led_get_sprominfo.exit.sw.bb29.i_crit_edge68 ]
  %wiphy31.i = getelementptr inbounds %struct.ieee80211_hw, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %wiphy31.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %wiphy31.i, align 8
  %init_name.i.i119.i = getelementptr inbounds %struct.wiphy, ptr %142, i32 0, i32 56, i32 3
  %143 = ptrtoint ptr %init_name.i.i119.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %init_name.i.i119.i, align 8
  %tobool.not.i.i120.i = icmp eq ptr %144, null
  br i1 %tobool.not.i.i120.i, label %if.end.i.i122.i, label %sw.bb29.i.wiphy_name.exit124.i_crit_edge

sw.bb29.i.wiphy_name.exit124.i_crit_edge:         ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wiphy_name.exit124.i

if.end.i.i122.i:                                  ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i121.i = getelementptr inbounds %struct.wiphy, ptr %142, i32 0, i32 56
  %145 = ptrtoint ptr %dev.i121.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev.i121.i, align 4
  br label %wiphy_name.exit124.i

wiphy_name.exit124.i:                             ; preds = %if.end.i.i122.i, %sw.bb29.i.wiphy_name.exit124.i_crit_edge
  %retval.0.i.i123.i = phi ptr [ %146, %if.end.i.i122.i ], [ %144, %sw.bb29.i.wiphy_name.exit124.i_crit_edge ]
  %call33.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef %retval.0.i.i123.i) #5
  %147 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %wl, align 4
  %led_assoc.i = getelementptr inbounds %struct.b43_wl, ptr %148, i32 0, i32 29, i32 3
  %call.i125.i = call ptr @__ieee80211_get_assoc_led_name(ptr noundef %140) #5
  %149 = ptrtoint ptr %led_assoc.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %led_assoc.i, align 4
  %tobool.not.i126.i = icmp ne ptr %150, null
  %tobool1.not.i127.i = icmp eq ptr %call.i125.i, null
  %or.cond.i128.i = or i1 %tobool1.not.i127.i, %tobool.not.i126.i
  br i1 %or.cond.i128.i, label %wiphy_name.exit124.i.b43_map_led.exit_crit_edge, label %if.end3.i143.i

wiphy_name.exit124.i.b43_map_led.exit_crit_edge:  ; preds = %wiphy_name.exit124.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43_map_led.exit

if.end3.i143.i:                                   ; preds = %wiphy_name.exit124.i
  %frombool.i129.i = zext i1 %tobool55 to i8
  %151 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %wl, align 4
  %153 = ptrtoint ptr %led_assoc.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %152, ptr %led_assoc.i, align 4
  %index.i131.i = getelementptr inbounds %struct.b43_wl, ptr %148, i32 0, i32 29, i32 3, i32 2
  %154 = ptrtoint ptr %index.i131.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %conv54, ptr %index.i131.i, align 4
  %activelow7.i132.i = getelementptr inbounds %struct.b43_wl, ptr %148, i32 0, i32 29, i32 3, i32 3
  %155 = ptrtoint ptr %activelow7.i132.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %frombool.i129.i, ptr %activelow7.i132.i, align 1
  %name9.i133.i = getelementptr inbounds %struct.b43_wl, ptr %148, i32 0, i32 29, i32 3, i32 4
  %call.i134.i = call i32 @strlcpy(ptr noundef %name9.i133.i, ptr noundef nonnull %name.i, i32 noundef 32) #5
  %state.i135.i = getelementptr inbounds %struct.b43_wl, ptr %148, i32 0, i32 29, i32 3, i32 5
  %call.i.i.i136.i = call zeroext i1 @__kasan_check_write(ptr noundef %state.i135.i, i32 noundef 4) #5
  %156 = ptrtoint ptr %state.i135.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile i32 0, ptr %state.i135.i, align 4
  %led_dev.i137.i = getelementptr inbounds %struct.b43_wl, ptr %148, i32 0, i32 29, i32 3, i32 1
  %157 = ptrtoint ptr %led_dev.i137.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %name9.i133.i, ptr %led_dev.i137.i, align 4
  %default_trigger14.i138.i = getelementptr inbounds %struct.b43_wl, ptr %148, i32 0, i32 29, i32 3, i32 1, i32 14
  %158 = ptrtoint ptr %default_trigger14.i138.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %call.i125.i, ptr %default_trigger14.i138.i, align 4
  %brightness_set.i139.i = getelementptr inbounds %struct.b43_wl, ptr %148, i32 0, i32 29, i32 3, i32 1, i32 5
  %159 = ptrtoint ptr %brightness_set.i139.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr @b43_led_brightness_set, ptr %brightness_set.i139.i, align 4
  %160 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dev, align 4
  %dev17.i140.i = getelementptr inbounds %struct.b43_bus_dev, ptr %161, i32 0, i32 14
  %162 = ptrtoint ptr %dev17.i140.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev17.i140.i, align 4
  %call.i.i141.i = call i32 @led_classdev_register_ext(ptr noundef %163, ptr noundef %led_dev.i137.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i141.i)
  %tobool20.not.i142.i = icmp eq i32 %call.i.i141.i, 0
  br i1 %tobool20.not.i142.i, label %if.end3.i143.i.b43_map_led.exit_crit_edge, label %if.then21.i144.i

if.end3.i143.i.b43_map_led.exit_crit_edge:        ; preds = %if.end3.i143.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43_map_led.exit

if.then21.i144.i:                                 ; preds = %if.end3.i143.i
  call void @__sanitizer_cov_trace_pc() #7
  %164 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %wl, align 4
  call void (ptr, ptr, ...) @b43warn(ptr noundef %165, ptr noundef nonnull @.str.7, ptr noundef nonnull %name.i) #5
  %166 = ptrtoint ptr %led_assoc.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %led_assoc.i, align 4
  br label %b43_map_led.exit

sw.default.i23:                                   ; preds = %b43_led_get_sprominfo.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @b43warn(ptr noundef %55, ptr noundef nonnull @.str.6, i32 noundef %storemerge.i) #5
  br label %b43_map_led.exit

b43_map_led.exit:                                 ; preds = %sw.default.i23, %if.then21.i144.i, %if.end3.i143.i.b43_map_led.exit_crit_edge, %wiphy_name.exit124.i.b43_map_led.exit_crit_edge, %if.then21.i117.i, %if.end3.i116.i.b43_map_led.exit_crit_edge, %wiphy_name.exit97.i.b43_map_led.exit_crit_edge, %if.then21.i90.i, %if.end3.i89.i.b43_map_led.exit_crit_edge, %wiphy_name.exit70.i.b43_map_led.exit_crit_edge, %b43_led_get_sprominfo.exit.b43_map_led.exit_crit_edge, %b43_led_get_sprominfo.exit.b43_map_led.exit_crit_edge61, %b43_led_get_sprominfo.exit.b43_map_led.exit_crit_edge62, %b43_led_get_sprominfo.exit.thread34
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i) #5
  %inc = add nuw nsw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %b43_map_led.exit.for.body_crit_edge

b43_map_led.exit.for.body_crit_edge:              ; preds = %b43_map_led.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %b43_map_led.exit
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43_leds_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -2636
  %mutex = getelementptr i8, ptr %work, i32 -2628
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %0 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr3, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_unlock_crit_edge, label %lor.rhs, !prof !27

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

lor.rhs:                                          ; preds = %entry
  %__init_status = getelementptr inbounds %struct.b43_wldev, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %__init_status, i32 noundef 4) #5
  %2 = ptrtoint ptr %__init_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %__init_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp slt i32 %3, 2
  br i1 %cmp, label %lor.rhs.out_unlock_crit_edge, label %if.end, !prof !27

lor.rhs.out_unlock_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unlock

if.end:                                           ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  %leds6 = getelementptr i8, ptr %work, i32 -1796
  tail call fastcc void @b43_led_update(ptr noundef nonnull %1, ptr noundef %leds6)
  %led_rx = getelementptr i8, ptr %work, i32 -1348
  tail call fastcc void @b43_led_update(ptr noundef nonnull %1, ptr noundef %led_rx)
  %led_radio = getelementptr i8, ptr %work, i32 -900
  tail call fastcc void @b43_led_update(ptr noundef nonnull %1, ptr noundef %led_radio)
  %led_assoc = getelementptr i8, ptr %work, i32 -452
  tail call fastcc void @b43_led_update(ptr noundef nonnull %1, ptr noundef %led_assoc)
  br label %out_unlock

out_unlock:                                       ; preds = %if.end, %lor.rhs.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_leds_unregister(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %leds1 = getelementptr inbounds %struct.b43_wl, ptr %wl, i32 0, i32 29
  %0 = ptrtoint ptr %leds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %leds1, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.b43_unregister_led.exit_crit_edge, label %if.end.i

entry.b43_unregister_led.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43_unregister_led.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %led_dev.i = getelementptr inbounds %struct.b43_wl, ptr %wl, i32 0, i32 29, i32 0, i32 1
  tail call void @led_classdev_unregister(ptr noundef %led_dev.i) #5
  %2 = ptrtoint ptr %leds1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %leds1, align 4
  br label %b43_unregister_led.exit

b43_unregister_led.exit:                          ; preds = %if.end.i, %entry.b43_unregister_led.exit_crit_edge
  %led_rx = getelementptr inbounds %struct.b43_wl, ptr %wl, i32 0, i32 29, i32 1
  %3 = ptrtoint ptr %led_rx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %led_rx, align 4
  %tobool.not.i5 = icmp eq ptr %4, null
  br i1 %tobool.not.i5, label %b43_unregister_led.exit.b43_unregister_led.exit8_crit_edge, label %if.end.i7

b43_unregister_led.exit.b43_unregister_led.exit8_crit_edge: ; preds = %b43_unregister_led.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43_unregister_led.exit8

if.end.i7:                                        ; preds = %b43_unregister_led.exit
  call void @__sanitizer_cov_trace_pc() #7
  %led_dev.i6 = getelementptr inbounds %struct.b43_wl, ptr %wl, i32 0, i32 29, i32 1, i32 1
  tail call void @led_classdev_unregister(ptr noundef %led_dev.i6) #5
  %5 = ptrtoint ptr %led_rx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %led_rx, align 4
  br label %b43_unregister_led.exit8

b43_unregister_led.exit8:                         ; preds = %if.end.i7, %b43_unregister_led.exit.b43_unregister_led.exit8_crit_edge
  %led_assoc = getelementptr inbounds %struct.b43_wl, ptr %wl, i32 0, i32 29, i32 3
  %6 = ptrtoint ptr %led_assoc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %led_assoc, align 4
  %tobool.not.i9 = icmp eq ptr %7, null
  br i1 %tobool.not.i9, label %b43_unregister_led.exit8.b43_unregister_led.exit12_crit_edge, label %if.end.i11

b43_unregister_led.exit8.b43_unregister_led.exit12_crit_edge: ; preds = %b43_unregister_led.exit8
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43_unregister_led.exit12

if.end.i11:                                       ; preds = %b43_unregister_led.exit8
  call void @__sanitizer_cov_trace_pc() #7
  %led_dev.i10 = getelementptr inbounds %struct.b43_wl, ptr %wl, i32 0, i32 29, i32 3, i32 1
  tail call void @led_classdev_unregister(ptr noundef %led_dev.i10) #5
  %8 = ptrtoint ptr %led_assoc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %led_assoc, align 4
  br label %b43_unregister_led.exit12

b43_unregister_led.exit12:                        ; preds = %if.end.i11, %b43_unregister_led.exit8.b43_unregister_led.exit12_crit_edge
  %led_radio = getelementptr inbounds %struct.b43_wl, ptr %wl, i32 0, i32 29, i32 2
  %9 = ptrtoint ptr %led_radio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %led_radio, align 4
  %tobool.not.i13 = icmp eq ptr %10, null
  br i1 %tobool.not.i13, label %b43_unregister_led.exit12.b43_unregister_led.exit16_crit_edge, label %if.end.i15

b43_unregister_led.exit12.b43_unregister_led.exit16_crit_edge: ; preds = %b43_unregister_led.exit12
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43_unregister_led.exit16

if.end.i15:                                       ; preds = %b43_unregister_led.exit12
  call void @__sanitizer_cov_trace_pc() #7
  %led_dev.i14 = getelementptr inbounds %struct.b43_wl, ptr %wl, i32 0, i32 29, i32 2, i32 1
  tail call void @led_classdev_unregister(ptr noundef %led_dev.i14) #5
  %11 = ptrtoint ptr %led_radio to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %led_radio, align 4
  br label %b43_unregister_led.exit16

b43_unregister_led.exit16:                        ; preds = %if.end.i15, %b43_unregister_led.exit12.b43_unregister_led.exit16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43_led_update(ptr nocapture noundef readonly %dev, ptr noundef %led) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %led, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %radio_on = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 10, i32 13
  %2 = ptrtoint ptr %radio_on to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %radio_on, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %land.rhs

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

land.rhs:                                         ; preds = %if.end
  %radio_hw_enable = getelementptr inbounds %struct.b43_wldev, ptr %dev, i32 0, i32 6
  %4 = ptrtoint ptr %radio_hw_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %radio_hw_enable, align 2, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %land.rhs.if.end6_crit_edge, label %if.then4

land.rhs.if.end6_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then4:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  %state = getelementptr inbounds %struct.b43_led, ptr %led, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %state, i32 noundef 4) #5
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp ne i32 %7, 0
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %land.rhs.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %turn_on.0.off0 = phi i1 [ %cmp, %if.then4 ], [ false, %if.end.if.end6_crit_edge ], [ false, %land.rhs.if.end6_crit_edge ]
  %hw_state = getelementptr inbounds %struct.b43_led, ptr %led, i32 0, i32 6
  %8 = ptrtoint ptr %hw_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hw_state, align 4, !range !26
  %10 = zext i1 %turn_on.0.off0 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %10)
  %cmp10 = icmp eq i8 %9, %10
  br i1 %cmp10, label %if.end6.cleanup_crit_edge, label %if.end13

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %hw_state to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %hw_state, align 4
  %index = getelementptr inbounds %struct.b43_led, ptr %led, i32 0, i32 2
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %index, align 4
  %activelow = getelementptr inbounds %struct.b43_led, ptr %led, i32 0, i32 3
  %14 = ptrtoint ptr %activelow to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %activelow, align 1, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool19.not = icmp eq i8 %15, 0
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %read16.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %read16.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read16.i.i, align 4
  %call.i.i38 = tail call zeroext i16 %19(ptr noundef %17, i16 noundef zeroext 1180) #5
  %conv.i = zext i8 %13 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %20 = trunc i32 %shl.i to i16
  br i1 %turn_on.0.off0, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %21 = xor i16 %20, -1
  %conv2.i = and i16 %call.i.i38, %21
  %conv6.i = or i16 %call.i.i38, %20
  %ctl.0.i = select i1 %tobool19.not, i16 %conv6.i, i16 %conv2.i
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %write16.i.i = getelementptr inbounds %struct.b43_bus_dev, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %write16.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write16.i.i, align 4
  tail call void %25(ptr noundef %23, i16 noundef zeroext 1180, i16 noundef zeroext %ctl.0.i) #5
  br label %cleanup

if.else20:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %conv2.i43 = or i16 %call.i.i38, %20
  %26 = xor i16 %20, -1
  %conv6.i44 = and i16 %call.i.i38, %26
  %ctl.0.i45 = select i1 %tobool19.not, i16 %conv6.i44, i16 %conv2.i43
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %write16.i.i46 = getelementptr inbounds %struct.b43_bus_dev, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %write16.i.i46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write16.i.i46, align 4
  tail call void %30(ptr noundef %28, i16 noundef zeroext 1180, i16 noundef zeroext %ctl.0.i45) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else20, %if.then18, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43_led_brightness_set(ptr noundef %led_dev, i32 noundef %brightness) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_dev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %stop = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 29, i32 4
  %2 = ptrtoint ptr %stop to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stop, align 8, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge, !prof !28

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %state = getelementptr i8, ptr %led_dev, i32 436
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %brightness, ptr %state, align 4
  %hw = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %work = getelementptr inbounds %struct.b43_wl, ptr %1, i32 0, i32 29, i32 5
  tail call void @ieee80211_queue_work(ptr noundef %6, ptr noundef %work) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ieee80211_get_tx_led_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ieee80211_get_rx_led_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ieee80211_get_radio_led_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ieee80211_get_assoc_led_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @b43_leds_register.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43/leds.c", i32 333, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/broadcom/b43/leds.c", i32 236, i32 4}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/broadcom/b43/leds.c", i32 165, i32 5}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/broadcom/b43/leds.c", i32 170, i32 5}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/broadcom/b43/leds.c", i32 180, i32 5}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/broadcom/b43/leds.c", i32 188, i32 5}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/broadcom/b43/leds.c", i32 194, i32 20}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/broadcom/b43/leds.c", i32 130, i32 20}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i8 0, i8 2}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{!"branch_weights", i32 2000, i32 1}
