; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43legacy/leds.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43legacy/leds.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ssb_device = type { ptr, ptr, ptr, ptr, %struct.ssb_device_id, i8, i32, ptr, ptr }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.ssb_bus = type { ptr, ptr, ptr, %union.anon.133, %struct.spinlock, i32, %union.anon.134, i32, %struct.mutex, i16, i8, i16, i16, i8, [16 x %struct.ssb_device], i8, i32, %struct.ssb_chipcommon, %struct.ssb_pcicore, %struct.ssb_mipscore, %struct.ssb_extif, %struct.ssb_boardinfo, %struct.ssb_sprom, i8, %struct.gpio_chip, ptr, %struct.list_head, i8, i32 }
%union.anon.133 = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.134 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_chipcommon = type { ptr, i32, i32, i16, %struct.spinlock, %struct.ssb_chipcommon_pmu, i32, i32 }
%struct.ssb_chipcommon_pmu = type { i8, i32 }
%struct.ssb_pcicore = type { ptr, i8 }
%struct.ssb_mipscore = type {}
%struct.ssb_extif = type {}
%struct.ssb_boardinfo = type { i16, i16 }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.136, %struct.anon.137, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.136 = type { i8, i8, i8, i8 }
%struct.anon.137 = type { %struct.anon.138, %struct.anon.139 }
%struct.anon.138 = type { i8, i8, i8, i8, i8 }
%struct.anon.139 = type { i8, i8, i8, i8, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.140, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.140 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.b43legacy_wldev = type { ptr, ptr, %struct.atomic_t, i32, i8, i8, i8, i8, i8, %struct.b43legacy_phy, %union.anon.131, %struct.b43legacy_stats, %struct.b43legacy_led, %struct.b43legacy_led, %struct.b43legacy_led, %struct.b43legacy_led, i32, [6 x i32], i32, %struct.b43legacy_noise_calculation, i32, %struct.tasklet_struct, %struct.delayed_work, i32, %struct.work_struct, i16, i8, [58 x %struct.b43legacy_key], %struct.b43legacy_firmware, ptr, %struct.completion, %struct.list_head, ptr }
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
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43legacy_noise_calculation = type { i8, i8, i8, [8 x [4 x i8]] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.132, i32 }
%union.anon.132 = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.b43legacy_key = type { ptr, i8, i8 }
%struct.b43legacy_firmware = type { ptr, ptr, ptr, ptr, i16, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.b43legacy_wl = type { ptr, ptr, %struct.spinlock, %struct.mutex, %struct.spinlock, %struct.work_struct, ptr, [6 x i8], [6 x i8], i32, i8, i32, %struct.ieee80211_low_level_stats, %struct.hwrng, i8, [31 x i8], %struct.list_head, i8, i8, i8, ptr, i8, i8, i8, %struct.work_struct, [4 x %struct.b43legacy_qos_params], %struct.work_struct, [4 x %struct.sk_buff_head], [4 x i8] }
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
%struct.ssb_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.124, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.124 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.123, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
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
%struct.anon.123 = type { i64, i64, i8 }

@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/broadcom/b43legacy/leds.c\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"b43legacy-%s::tx\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"b43legacy-%s::rx\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"b43legacy-%s::radio\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"b43legacy-%s::assoc\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"LEDs: Unknown behaviour 0x%02X\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"LEDs: Failed to register %s\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 213, i32 5 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 138, i32 5 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 143, i32 5 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 153, i32 5 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 164, i32 5 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 170, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [50 x i8] c"../drivers/net/wireless/broadcom/b43legacy/leds.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 99, i32 26 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_leds_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %name.i = alloca [32 x i8], align 1
  %sprom = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %bus2 = getelementptr inbounds %struct.ssb_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bus2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sprom) #5
  %4 = getelementptr inbounds [4 x i8], ptr %sprom, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %sprom, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %sprom, i32 0, i32 3
  %gpio0 = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 22, i32 34
  %7 = ptrtoint ptr %gpio0 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %gpio0, align 4
  %9 = ptrtoint ptr %sprom to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %sprom, align 1
  %gpio1 = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 22, i32 35
  %10 = ptrtoint ptr %gpio1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %gpio1, align 1
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %4, align 1
  %gpio2 = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 22, i32 36
  %13 = ptrtoint ptr %gpio2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %gpio2, align 2
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %5, align 1
  %gpio3 = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 22, i32 37
  %16 = ptrtoint ptr %gpio3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %gpio3, align 1
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %6, align 1
  %wl.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %boardinfo18 = getelementptr inbounds %struct.ssb_bus, ptr %3, i32 0, i32 21
  %led_assoc.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 14
  %led_tx.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 12
  %led_rx.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 13
  %led_radio.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 15
  %radio_on.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 9, i32 15
  br label %for.body

for.body:                                         ; preds = %b43legacy_map_led.exit.for.body_crit_edge, %entry
  %i.0106 = phi i32 [ 0, %entry ], [ %inc, %b43legacy_map_led.exit.for.body_crit_edge ]
  %arrayidx10 = getelementptr [4 x i8], ptr %sprom, i32 0, i32 %i.0106
  %19 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp11 = icmp eq i8 %20, -1
  br i1 %cmp11, label %if.then, label %if.end53

if.then:                                          ; preds = %for.body
  %21 = zext i32 %i.0106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.0106, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb17
    i32 2, label %if.then.if.end53.thread_crit_edge
    i32 3, label %if.end53.thread82
  ]

if.then.if.end53.thread_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.thread

sw.bb:                                            ; preds = %if.then
  %22 = ptrtoint ptr %boardinfo18 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %boardinfo18, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3601, i16 %23)
  %cmp14 = icmp eq i16 %23, 3601
  br i1 %cmp14, label %sw.bb.if.end53.thread_crit_edge, label %if.end53.thread90

sw.bb.if.end53.thread_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.thread

if.end53.thread90:                                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wl.i, align 4
  %hw1.i95 = getelementptr inbounds %struct.b43legacy_wl, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %hw1.i95 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw1.i95, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i) #5
  %28 = call ptr @memset(ptr %name.i, i32 255, i32 32)
  br label %sw.bb4.i

sw.bb17:                                          ; preds = %if.then
  %29 = ptrtoint ptr %boardinfo18 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %boardinfo18, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4163, i16 %30)
  %cmp21 = icmp eq i16 %30, 4163
  br i1 %cmp21, label %if.end53.thread98, label %sw.bb17.if.end53.thread_crit_edge

sw.bb17.if.end53.thread_crit_edge:                ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53.thread

if.end53.thread82:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wl.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i) #5
  %33 = call ptr @memset(ptr %name.i, i32 255, i32 32)
  br label %sw.bb.i

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end53.thread98:                                ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wl.i, align 4
  %hw1.i103 = getelementptr inbounds %struct.b43legacy_wl, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %hw1.i103 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw1.i103, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i) #5
  %38 = call ptr @memset(ptr %name.i, i32 255, i32 32)
  br label %sw.bb30.i

if.end53.thread:                                  ; preds = %sw.bb17.if.end53.thread_crit_edge, %sw.bb.if.end53.thread_crit_edge, %if.then.if.end53.thread_crit_edge
  %activelow.0.off0.ph = phi i1 [ false, %if.then.if.end53.thread_crit_edge ], [ false, %sw.bb17.if.end53.thread_crit_edge ], [ true, %sw.bb.if.end53.thread_crit_edge ]
  %conv5476 = trunc i32 %i.0106 to i8
  %39 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wl.i, align 4
  %hw1.i78 = getelementptr inbounds %struct.b43legacy_wl, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %hw1.i78 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw1.i78, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i) #5
  %43 = call ptr @memset(ptr %name.i, i32 255, i32 32)
  br label %sw.bb18.i

if.end53:                                         ; preds = %for.body
  %44 = and i8 %20, 127
  %and = zext i8 %44 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %extract.t = icmp slt i8 %20, 0
  %conv54 = trunc i32 %i.0106 to i8
  %45 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wl.i, align 4
  %hw1.i = getelementptr inbounds %struct.b43legacy_wl, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw1.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i) #5
  %49 = call ptr @memset(ptr %name.i, i32 255, i32 32)
  %50 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %and, label %sw.default.i [
    i32 11, label %if.end53.b43legacy_map_led.exit_crit_edge
    i32 0, label %if.end53.sw.bb.i_crit_edge
    i32 1, label %sw.bb2.i
    i32 2, label %if.end53.sw.bb4.i_crit_edge
    i32 7, label %if.end53.sw.bb4.i_crit_edge112
    i32 8, label %if.end53.sw.bb4.i_crit_edge113
    i32 3, label %if.end53.sw.bb18.i_crit_edge
    i32 4, label %if.end53.sw.bb18.i_crit_edge114
    i32 5, label %if.end53.sw.bb18.i_crit_edge115
    i32 6, label %if.end53.sw.bb18.i_crit_edge116
    i32 9, label %if.end53.sw.bb30.i_crit_edge
    i32 10, label %if.end53.sw.bb30.i_crit_edge117
  ]

if.end53.sw.bb30.i_crit_edge117:                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb30.i

if.end53.sw.bb30.i_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb30.i

if.end53.sw.bb18.i_crit_edge116:                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb18.i

if.end53.sw.bb18.i_crit_edge115:                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb18.i

if.end53.sw.bb18.i_crit_edge114:                  ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb18.i

if.end53.sw.bb18.i_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb18.i

if.end53.sw.bb4.i_crit_edge113:                   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4.i

if.end53.sw.bb4.i_crit_edge112:                   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4.i

if.end53.sw.bb4.i_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4.i

if.end53.sw.bb.i_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.end53.b43legacy_map_led.exit_crit_edge:        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43legacy_map_led.exit

sw.bb.i:                                          ; preds = %if.end53.sw.bb.i_crit_edge, %if.end53.thread82
  %51 = phi ptr [ %32, %if.end53.thread82 ], [ %46, %if.end53.sw.bb.i_crit_edge ]
  %activelow.0.off088 = phi i1 [ false, %if.end53.thread82 ], [ %extract.t, %if.end53.sw.bb.i_crit_edge ]
  %leds_lock.i.i = getelementptr inbounds %struct.b43legacy_wl, ptr %51, i32 0, i32 4
  %call3.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %leds_lock.i.i) #5
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %read16.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %read16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %read16.i.i.i.i, align 4
  %call.i.i.i.i = call zeroext i16 %57(ptr noundef %53, i16 noundef zeroext 1180) #5
  %conv7.i.i = and i32 %i.0106, 255
  %shl.i.i = shl nuw i32 1, %conv7.i.i
  %58 = trunc i32 %shl.i.i to i16
  %conv9.i.i = or i16 %call.i.i.i.i, %58
  %59 = xor i16 %58, -1
  %conv13.i.i = and i16 %call.i.i.i.i, %59
  %spec.select = select i1 %activelow.0.off088, i16 %conv9.i.i, i16 %conv13.i.i
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %write16.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %write16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write16.i.i.i.i, align 4
  call void %65(ptr noundef %61, i16 noundef zeroext 1180, i16 noundef zeroext %spec.select) #5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %leds_lock.i.i, i32 noundef %call3.i.i) #5
  br label %b43legacy_map_led.exit

sw.bb2.i:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %leds_lock.i75.i = getelementptr inbounds %struct.b43legacy_wl, ptr %46, i32 0, i32 4
  %call3.i76.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %leds_lock.i75.i) #5
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %read16.i.i.i77.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %read16.i.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read16.i.i.i77.i, align 4
  %call.i.i.i78.i = call zeroext i16 %71(ptr noundef %67, i16 noundef zeroext 1180) #5
  %shl.i80.i = shl nuw i32 1, %i.0106
  %72 = trunc i32 %shl.i80.i to i16
  %73 = xor i16 %72, -1
  %conv9.i81.i = and i16 %call.i.i.i78.i, %73
  %conv13.i82.i = or i16 %call.i.i.i78.i, %72
  %ctl.0.i83.i = select i1 %extract.t, i16 %conv9.i81.i, i16 %conv13.i82.i
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %write16.i.i.i84.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %write16.i.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write16.i.i.i84.i, align 4
  call void %79(ptr noundef %75, i16 noundef zeroext 1180, i16 noundef zeroext %ctl.0.i83.i) #5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %leds_lock.i75.i, i32 noundef %call3.i76.i) #5
  br label %b43legacy_map_led.exit

sw.bb4.i:                                         ; preds = %if.end53.sw.bb4.i_crit_edge, %if.end53.sw.bb4.i_crit_edge112, %if.end53.sw.bb4.i_crit_edge113, %if.end53.thread90
  %80 = phi ptr [ %27, %if.end53.thread90 ], [ %48, %if.end53.sw.bb4.i_crit_edge ], [ %48, %if.end53.sw.bb4.i_crit_edge112 ], [ %48, %if.end53.sw.bb4.i_crit_edge113 ]
  %conv5497 = phi i8 [ 0, %if.end53.thread90 ], [ %conv54, %if.end53.sw.bb4.i_crit_edge ], [ %conv54, %if.end53.sw.bb4.i_crit_edge112 ], [ %conv54, %if.end53.sw.bb4.i_crit_edge113 ]
  %activelow.0.off096 = phi i1 [ true, %if.end53.thread90 ], [ %extract.t, %if.end53.sw.bb4.i_crit_edge ], [ %extract.t, %if.end53.sw.bb4.i_crit_edge112 ], [ %extract.t, %if.end53.sw.bb4.i_crit_edge113 ]
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %wiphy.i, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.wiphy, ptr %82, i32 0, i32 56, i32 3
  %83 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %84, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %sw.bb4.i.wiphy_name.exit.i_crit_edge

sw.bb4.i.wiphy_name.exit.i_crit_edge:             ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wiphy_name.exit.i

if.end.i.i.i:                                     ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i = getelementptr inbounds %struct.wiphy, ptr %82, i32 0, i32 56
  %85 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev.i.i, align 4
  br label %wiphy_name.exit.i

wiphy_name.exit.i:                                ; preds = %if.end.i.i.i, %sw.bb4.i.wiphy_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %86, %if.end.i.i.i ], [ %84, %sw.bb4.i.wiphy_name.exit.i_crit_edge ]
  %call5.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i.i.i) #5
  %call.i.i = call ptr @__ieee80211_get_tx_led_name(ptr noundef %80) #5
  call fastcc void @b43legacy_register_led(ptr noundef %dev, ptr noundef %led_tx.i, ptr noundef nonnull %name.i, ptr noundef %call.i.i, i8 noundef zeroext %conv5497, i1 noundef zeroext %activelow.0.off096) #5
  %87 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %wiphy.i, align 8
  %init_name.i.i85.i = getelementptr inbounds %struct.wiphy, ptr %88, i32 0, i32 56, i32 3
  %89 = ptrtoint ptr %init_name.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %init_name.i.i85.i, align 8
  %tobool.not.i.i86.i = icmp eq ptr %90, null
  br i1 %tobool.not.i.i86.i, label %if.end.i.i88.i, label %wiphy_name.exit.i.wiphy_name.exit90.i_crit_edge

wiphy_name.exit.i.wiphy_name.exit90.i_crit_edge:  ; preds = %wiphy_name.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wiphy_name.exit90.i

if.end.i.i88.i:                                   ; preds = %wiphy_name.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i87.i = getelementptr inbounds %struct.wiphy, ptr %88, i32 0, i32 56
  %91 = ptrtoint ptr %dev.i87.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i87.i, align 4
  br label %wiphy_name.exit90.i

wiphy_name.exit90.i:                              ; preds = %if.end.i.i88.i, %wiphy_name.exit.i.wiphy_name.exit90.i_crit_edge
  %retval.0.i.i89.i = phi ptr [ %92, %if.end.i.i88.i ], [ %90, %wiphy_name.exit.i.wiphy_name.exit90.i_crit_edge ]
  %call13.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef %retval.0.i.i89.i) #5
  %call.i91.i = call ptr @__ieee80211_get_rx_led_name(ptr noundef %80) #5
  call fastcc void @b43legacy_register_led(ptr noundef %dev, ptr noundef %led_rx.i, ptr noundef nonnull %name.i, ptr noundef %call.i91.i, i8 noundef zeroext %conv5497, i1 noundef zeroext %activelow.0.off096) #5
  br label %b43legacy_map_led.exit

sw.bb18.i:                                        ; preds = %if.end53.sw.bb18.i_crit_edge, %if.end53.sw.bb18.i_crit_edge114, %if.end53.sw.bb18.i_crit_edge115, %if.end53.sw.bb18.i_crit_edge116, %if.end53.thread
  %93 = phi ptr [ %42, %if.end53.thread ], [ %48, %if.end53.sw.bb18.i_crit_edge ], [ %48, %if.end53.sw.bb18.i_crit_edge114 ], [ %48, %if.end53.sw.bb18.i_crit_edge115 ], [ %48, %if.end53.sw.bb18.i_crit_edge116 ]
  %conv5480 = phi i8 [ %conv5476, %if.end53.thread ], [ %conv54, %if.end53.sw.bb18.i_crit_edge ], [ %conv54, %if.end53.sw.bb18.i_crit_edge114 ], [ %conv54, %if.end53.sw.bb18.i_crit_edge115 ], [ %conv54, %if.end53.sw.bb18.i_crit_edge116 ]
  %activelow.0.off079 = phi i1 [ %activelow.0.off0.ph, %if.end53.thread ], [ %extract.t, %if.end53.sw.bb18.i_crit_edge ], [ %extract.t, %if.end53.sw.bb18.i_crit_edge114 ], [ %extract.t, %if.end53.sw.bb18.i_crit_edge115 ], [ %extract.t, %if.end53.sw.bb18.i_crit_edge116 ]
  %wiphy20.i = getelementptr inbounds %struct.ieee80211_hw, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %wiphy20.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %wiphy20.i, align 8
  %init_name.i.i92.i = getelementptr inbounds %struct.wiphy, ptr %95, i32 0, i32 56, i32 3
  %96 = ptrtoint ptr %init_name.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %init_name.i.i92.i, align 8
  %tobool.not.i.i93.i = icmp eq ptr %97, null
  br i1 %tobool.not.i.i93.i, label %if.end.i.i95.i, label %sw.bb18.i.wiphy_name.exit97.i_crit_edge

sw.bb18.i.wiphy_name.exit97.i_crit_edge:          ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wiphy_name.exit97.i

if.end.i.i95.i:                                   ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i94.i = getelementptr inbounds %struct.wiphy, ptr %95, i32 0, i32 56
  %98 = ptrtoint ptr %dev.i94.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev.i94.i, align 4
  br label %wiphy_name.exit97.i

wiphy_name.exit97.i:                              ; preds = %if.end.i.i95.i, %sw.bb18.i.wiphy_name.exit97.i_crit_edge
  %retval.0.i.i96.i = phi ptr [ %99, %if.end.i.i95.i ], [ %97, %sw.bb18.i.wiphy_name.exit97.i_crit_edge ]
  %call22.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef %retval.0.i.i96.i) #5
  %call.i98.i = call ptr @__ieee80211_get_radio_led_name(ptr noundef %93) #5
  call fastcc void @b43legacy_register_led(ptr noundef %dev, ptr noundef %led_radio.i, ptr noundef nonnull %name.i, ptr noundef %call.i98.i, i8 noundef zeroext %conv5480, i1 noundef zeroext %activelow.0.off079) #5
  %100 = ptrtoint ptr %radio_on.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %radio_on.i, align 4, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool27.not.i = icmp eq i8 %101, 0
  br i1 %tobool27.not.i, label %wiphy_name.exit97.i.b43legacy_map_led.exit_crit_edge, label %land.lhs.true.i

wiphy_name.exit97.i.b43legacy_map_led.exit_crit_edge: ; preds = %wiphy_name.exit97.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43legacy_map_led.exit

land.lhs.true.i:                                  ; preds = %wiphy_name.exit97.i
  %call28.i = call zeroext i1 @b43legacy_is_hw_radio_enabled(ptr noundef %dev) #5
  br i1 %call28.i, label %if.then.i, label %land.lhs.true.i.b43legacy_map_led.exit_crit_edge

land.lhs.true.i.b43legacy_map_led.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43legacy_map_led.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %102 = ptrtoint ptr %wl.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %wl.i, align 4
  %leds_lock.i100.i = getelementptr inbounds %struct.b43legacy_wl, ptr %103, i32 0, i32 4
  %call3.i101.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %leds_lock.i100.i) #5
  %104 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %read16.i.i.i102.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %read16.i.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %read16.i.i.i102.i, align 4
  %call.i.i.i103.i = call zeroext i16 %109(ptr noundef %105, i16 noundef zeroext 1180) #5
  %conv7.i104.i = zext i8 %conv5480 to i32
  %shl.i105.i = shl nuw i32 1, %conv7.i104.i
  %110 = trunc i32 %shl.i105.i to i16
  %111 = xor i16 %110, -1
  %conv9.i106.i = and i16 %call.i.i.i103.i, %111
  %conv13.i107.i = or i16 %call.i.i.i103.i, %110
  %ctl.0.i108.i = select i1 %activelow.0.off079, i16 %conv9.i106.i, i16 %conv13.i107.i
  %112 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 4
  %write16.i.i.i109.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %115, i32 0, i32 4
  %116 = ptrtoint ptr %write16.i.i.i109.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %write16.i.i.i109.i, align 4
  call void %117(ptr noundef %113, i16 noundef zeroext 1180, i16 noundef zeroext %ctl.0.i108.i) #5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %leds_lock.i100.i, i32 noundef %call3.i101.i) #5
  br label %b43legacy_map_led.exit

sw.bb30.i:                                        ; preds = %if.end53.sw.bb30.i_crit_edge, %if.end53.sw.bb30.i_crit_edge117, %if.end53.thread98
  %118 = phi ptr [ %37, %if.end53.thread98 ], [ %48, %if.end53.sw.bb30.i_crit_edge ], [ %48, %if.end53.sw.bb30.i_crit_edge117 ]
  %conv54105 = phi i8 [ 1, %if.end53.thread98 ], [ %conv54, %if.end53.sw.bb30.i_crit_edge ], [ %conv54, %if.end53.sw.bb30.i_crit_edge117 ]
  %activelow.0.off0104 = phi i1 [ false, %if.end53.thread98 ], [ %extract.t, %if.end53.sw.bb30.i_crit_edge ], [ %extract.t, %if.end53.sw.bb30.i_crit_edge117 ]
  %wiphy32.i = getelementptr inbounds %struct.ieee80211_hw, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %wiphy32.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %wiphy32.i, align 8
  %init_name.i.i110.i = getelementptr inbounds %struct.wiphy, ptr %120, i32 0, i32 56, i32 3
  %121 = ptrtoint ptr %init_name.i.i110.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %init_name.i.i110.i, align 8
  %tobool.not.i.i111.i = icmp eq ptr %122, null
  br i1 %tobool.not.i.i111.i, label %if.end.i.i113.i, label %sw.bb30.i.wiphy_name.exit115.i_crit_edge

sw.bb30.i.wiphy_name.exit115.i_crit_edge:         ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %wiphy_name.exit115.i

if.end.i.i113.i:                                  ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i112.i = getelementptr inbounds %struct.wiphy, ptr %120, i32 0, i32 56
  %123 = ptrtoint ptr %dev.i112.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev.i112.i, align 4
  br label %wiphy_name.exit115.i

wiphy_name.exit115.i:                             ; preds = %if.end.i.i113.i, %sw.bb30.i.wiphy_name.exit115.i_crit_edge
  %retval.0.i.i114.i = phi ptr [ %124, %if.end.i.i113.i ], [ %122, %sw.bb30.i.wiphy_name.exit115.i_crit_edge ]
  %call34.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 32, ptr noundef nonnull @.str.4, ptr noundef %retval.0.i.i114.i) #5
  %call.i116.i = call ptr @__ieee80211_get_assoc_led_name(ptr noundef %118) #5
  call fastcc void @b43legacy_register_led(ptr noundef %dev, ptr noundef %led_assoc.i, ptr noundef nonnull %name.i, ptr noundef %call.i116.i, i8 noundef zeroext %conv54105, i1 noundef zeroext %activelow.0.off0104) #5
  br label %b43legacy_map_led.exit

sw.default.i:                                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @b43legacywarn(ptr noundef %46, ptr noundef nonnull @.str.5, i32 noundef %and) #5
  br label %b43legacy_map_led.exit

b43legacy_map_led.exit:                           ; preds = %sw.default.i, %wiphy_name.exit115.i, %if.then.i, %land.lhs.true.i.b43legacy_map_led.exit_crit_edge, %wiphy_name.exit97.i.b43legacy_map_led.exit_crit_edge, %wiphy_name.exit90.i, %sw.bb2.i, %sw.bb.i, %if.end53.b43legacy_map_led.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i) #5
  %inc = add nuw nsw i32 %i.0106, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %b43legacy_map_led.exit.cleanup_crit_edge, label %b43legacy_map_led.exit.for.body_crit_edge

b43legacy_map_led.exit.for.body_crit_edge:        ; preds = %b43legacy_map_led.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

b43legacy_map_led.exit.cleanup_crit_edge:         ; preds = %b43legacy_map_led.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %b43legacy_map_led.exit.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sprom) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43legacy_leds_exit(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %led_tx = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %led_tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %led_tx, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.b43legacy_unregister_led.exit_crit_edge, label %if.end.i

entry.b43legacy_unregister_led.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43legacy_unregister_led.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %led_dev.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 12, i32 1
  tail call void @led_classdev_unregister(ptr noundef %led_dev.i) #5
  %2 = ptrtoint ptr %led_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %led_tx, align 4
  %index.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 12, i32 2
  %4 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index.i, align 4
  %activelow.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 12, i32 3
  %6 = ptrtoint ptr %activelow.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %activelow.i, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not.i = icmp eq i8 %7, 0
  %wl1.i.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %wl1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wl1.i.i, align 4
  %leds_lock.i.i = getelementptr inbounds %struct.b43legacy_wl, ptr %9, i32 0, i32 4
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %leds_lock.i.i) #5
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %read16.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %read16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read16.i.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i16 %15(ptr noundef %11, i16 noundef zeroext 1180) #5
  %conv7.i.i = zext i8 %5 to i32
  %shl.i.i = shl nuw i32 1, %conv7.i.i
  %16 = trunc i32 %shl.i.i to i16
  %conv9.i.i = or i16 %call.i.i.i.i, %16
  %17 = xor i16 %16, -1
  %conv13.i.i = and i16 %call.i.i.i.i, %17
  %ctl.0.i.i = select i1 %tobool2.not.i, i16 %conv13.i.i, i16 %conv9.i.i
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %write16.i.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %write16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write16.i.i.i.i, align 4
  tail call void %23(ptr noundef %19, i16 noundef zeroext 1180, i16 noundef zeroext %ctl.0.i.i) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %leds_lock.i.i, i32 noundef %call3.i.i) #5
  %24 = ptrtoint ptr %led_tx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %led_tx, align 4
  br label %b43legacy_unregister_led.exit

b43legacy_unregister_led.exit:                    ; preds = %if.end.i, %entry.b43legacy_unregister_led.exit_crit_edge
  %led_rx = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 13
  %25 = ptrtoint ptr %led_rx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %led_rx, align 4
  %tobool.not.i4 = icmp eq ptr %26, null
  br i1 %tobool.not.i4, label %b43legacy_unregister_led.exit.b43legacy_unregister_led.exit21_crit_edge, label %if.end.i20

b43legacy_unregister_led.exit.b43legacy_unregister_led.exit21_crit_edge: ; preds = %b43legacy_unregister_led.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43legacy_unregister_led.exit21

if.end.i20:                                       ; preds = %b43legacy_unregister_led.exit
  call void @__sanitizer_cov_trace_pc() #7
  %led_dev.i5 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 13, i32 1
  tail call void @led_classdev_unregister(ptr noundef %led_dev.i5) #5
  %27 = ptrtoint ptr %led_rx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %led_rx, align 4
  %index.i6 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 13, i32 2
  %29 = ptrtoint ptr %index.i6 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %index.i6, align 4
  %activelow.i7 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 13, i32 3
  %31 = ptrtoint ptr %activelow.i7 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %activelow.i7, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool2.not.i8 = icmp eq i8 %32, 0
  %wl1.i.i9 = getelementptr inbounds %struct.b43legacy_wldev, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %wl1.i.i9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wl1.i.i9, align 4
  %leds_lock.i.i10 = getelementptr inbounds %struct.b43legacy_wl, ptr %34, i32 0, i32 4
  %call3.i.i11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %leds_lock.i.i10) #5
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %28, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %read16.i.i.i.i12 = getelementptr inbounds %struct.ssb_bus_ops, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %read16.i.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read16.i.i.i.i12, align 4
  %call.i.i.i.i13 = tail call zeroext i16 %40(ptr noundef %36, i16 noundef zeroext 1180) #5
  %conv7.i.i14 = zext i8 %30 to i32
  %shl.i.i15 = shl nuw i32 1, %conv7.i.i14
  %41 = trunc i32 %shl.i.i15 to i16
  %conv9.i.i16 = or i16 %call.i.i.i.i13, %41
  %42 = xor i16 %41, -1
  %conv13.i.i17 = and i16 %call.i.i.i.i13, %42
  %ctl.0.i.i18 = select i1 %tobool2.not.i8, i16 %conv13.i.i17, i16 %conv9.i.i16
  %43 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %28, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %write16.i.i.i.i19 = getelementptr inbounds %struct.ssb_bus_ops, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %write16.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write16.i.i.i.i19, align 4
  tail call void %48(ptr noundef %44, i16 noundef zeroext 1180, i16 noundef zeroext %ctl.0.i.i18) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %leds_lock.i.i10, i32 noundef %call3.i.i11) #5
  %49 = ptrtoint ptr %led_rx to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %led_rx, align 4
  br label %b43legacy_unregister_led.exit21

b43legacy_unregister_led.exit21:                  ; preds = %if.end.i20, %b43legacy_unregister_led.exit.b43legacy_unregister_led.exit21_crit_edge
  %led_assoc = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 14
  %50 = ptrtoint ptr %led_assoc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %led_assoc, align 4
  %tobool.not.i22 = icmp eq ptr %51, null
  br i1 %tobool.not.i22, label %b43legacy_unregister_led.exit21.b43legacy_unregister_led.exit39_crit_edge, label %if.end.i38

b43legacy_unregister_led.exit21.b43legacy_unregister_led.exit39_crit_edge: ; preds = %b43legacy_unregister_led.exit21
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43legacy_unregister_led.exit39

if.end.i38:                                       ; preds = %b43legacy_unregister_led.exit21
  call void @__sanitizer_cov_trace_pc() #7
  %led_dev.i23 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 14, i32 1
  tail call void @led_classdev_unregister(ptr noundef %led_dev.i23) #5
  %52 = ptrtoint ptr %led_assoc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %led_assoc, align 4
  %index.i24 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 14, i32 2
  %54 = ptrtoint ptr %index.i24 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %index.i24, align 4
  %activelow.i25 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 14, i32 3
  %56 = ptrtoint ptr %activelow.i25 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %activelow.i25, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool2.not.i26 = icmp eq i8 %57, 0
  %wl1.i.i27 = getelementptr inbounds %struct.b43legacy_wldev, ptr %53, i32 0, i32 1
  %58 = ptrtoint ptr %wl1.i.i27 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %wl1.i.i27, align 4
  %leds_lock.i.i28 = getelementptr inbounds %struct.b43legacy_wl, ptr %59, i32 0, i32 4
  %call3.i.i29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %leds_lock.i.i28) #5
  %60 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %53, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %read16.i.i.i.i30 = getelementptr inbounds %struct.ssb_bus_ops, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %read16.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read16.i.i.i.i30, align 4
  %call.i.i.i.i31 = tail call zeroext i16 %65(ptr noundef %61, i16 noundef zeroext 1180) #5
  %conv7.i.i32 = zext i8 %55 to i32
  %shl.i.i33 = shl nuw i32 1, %conv7.i.i32
  %66 = trunc i32 %shl.i.i33 to i16
  %conv9.i.i34 = or i16 %call.i.i.i.i31, %66
  %67 = xor i16 %66, -1
  %conv13.i.i35 = and i16 %call.i.i.i.i31, %67
  %ctl.0.i.i36 = select i1 %tobool2.not.i26, i16 %conv13.i.i35, i16 %conv9.i.i34
  %68 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %53, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %write16.i.i.i.i37 = getelementptr inbounds %struct.ssb_bus_ops, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %write16.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write16.i.i.i.i37, align 4
  tail call void %73(ptr noundef %69, i16 noundef zeroext 1180, i16 noundef zeroext %ctl.0.i.i36) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %leds_lock.i.i28, i32 noundef %call3.i.i29) #5
  %74 = ptrtoint ptr %led_assoc to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %led_assoc, align 4
  br label %b43legacy_unregister_led.exit39

b43legacy_unregister_led.exit39:                  ; preds = %if.end.i38, %b43legacy_unregister_led.exit21.b43legacy_unregister_led.exit39_crit_edge
  %led_radio = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 15
  %75 = ptrtoint ptr %led_radio to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %led_radio, align 4
  %tobool.not.i40 = icmp eq ptr %76, null
  br i1 %tobool.not.i40, label %b43legacy_unregister_led.exit39.b43legacy_unregister_led.exit57_crit_edge, label %if.end.i56

b43legacy_unregister_led.exit39.b43legacy_unregister_led.exit57_crit_edge: ; preds = %b43legacy_unregister_led.exit39
  call void @__sanitizer_cov_trace_pc() #7
  br label %b43legacy_unregister_led.exit57

if.end.i56:                                       ; preds = %b43legacy_unregister_led.exit39
  call void @__sanitizer_cov_trace_pc() #7
  %led_dev.i41 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 15, i32 1
  tail call void @led_classdev_unregister(ptr noundef %led_dev.i41) #5
  %77 = ptrtoint ptr %led_radio to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %led_radio, align 4
  %index.i42 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 15, i32 2
  %79 = ptrtoint ptr %index.i42 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %index.i42, align 4
  %activelow.i43 = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 15, i32 3
  %81 = ptrtoint ptr %activelow.i43 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %activelow.i43, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool2.not.i44 = icmp eq i8 %82, 0
  %wl1.i.i45 = getelementptr inbounds %struct.b43legacy_wldev, ptr %78, i32 0, i32 1
  %83 = ptrtoint ptr %wl1.i.i45 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %wl1.i.i45, align 4
  %leds_lock.i.i46 = getelementptr inbounds %struct.b43legacy_wl, ptr %84, i32 0, i32 4
  %call3.i.i47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %leds_lock.i.i46) #5
  %85 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %78, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 4
  %read16.i.i.i.i48 = getelementptr inbounds %struct.ssb_bus_ops, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %read16.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %read16.i.i.i.i48, align 4
  %call.i.i.i.i49 = tail call zeroext i16 %90(ptr noundef %86, i16 noundef zeroext 1180) #5
  %conv7.i.i50 = zext i8 %80 to i32
  %shl.i.i51 = shl nuw i32 1, %conv7.i.i50
  %91 = trunc i32 %shl.i.i51 to i16
  %conv9.i.i52 = or i16 %call.i.i.i.i49, %91
  %92 = xor i16 %91, -1
  %conv13.i.i53 = and i16 %call.i.i.i.i49, %92
  %ctl.0.i.i54 = select i1 %tobool2.not.i44, i16 %conv13.i.i53, i16 %conv9.i.i52
  %93 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %78, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %write16.i.i.i.i55 = getelementptr inbounds %struct.ssb_bus_ops, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %write16.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write16.i.i.i.i55, align 4
  tail call void %98(ptr noundef %94, i16 noundef zeroext 1180, i16 noundef zeroext %ctl.0.i.i54) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %leds_lock.i.i46, i32 noundef %call3.i.i47) #5
  %99 = ptrtoint ptr %led_radio to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %led_radio, align 4
  br label %b43legacy_unregister_led.exit57

b43legacy_unregister_led.exit57:                  ; preds = %if.end.i56, %b43legacy_unregister_led.exit39.b43legacy_unregister_led.exit57_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b43legacy_register_led(ptr noundef %dev, ptr noundef %led, ptr noundef %name, ptr noundef %default_trigger, i8 noundef zeroext %led_index, i1 noundef zeroext %activelow) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wl1.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %wl1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wl1.i, align 4
  %leds_lock.i = getelementptr inbounds %struct.b43legacy_wl, ptr %1, i32 0, i32 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %leds_lock.i) #5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %read16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %7(ptr noundef %3, i16 noundef zeroext 1180) #5
  %conv7.i = zext i8 %led_index to i32
  %shl.i = shl nuw i32 1, %conv7.i
  %8 = trunc i32 %shl.i to i16
  %conv9.i = or i16 %call.i.i.i, %8
  %9 = xor i16 %8, -1
  %conv13.i = and i16 %call.i.i.i, %9
  %ctl.0.i = select i1 %activelow, i16 %conv9.i, i16 %conv13.i
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %write16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %15(ptr noundef %11, i16 noundef zeroext 1180, i16 noundef zeroext %ctl.0.i) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %leds_lock.i, i32 noundef %call3.i) #5
  %16 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %led, align 4
  %tobool2.not = icmp ne ptr %17, null
  %tobool3.not = icmp eq ptr %default_trigger, null
  %or.cond = or i1 %tobool3.not, %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %entry
  %frombool = zext i1 %activelow to i8
  %18 = ptrtoint ptr %led to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %led, align 4
  %index = getelementptr inbounds %struct.b43legacy_led, ptr %led, i32 0, i32 2
  %19 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %led_index, ptr %index, align 4
  %activelow8 = getelementptr inbounds %struct.b43legacy_led, ptr %led, i32 0, i32 3
  %20 = ptrtoint ptr %activelow8 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool, ptr %activelow8, align 1
  %name10 = getelementptr inbounds %struct.b43legacy_led, ptr %led, i32 0, i32 4
  %call = tail call i32 @strlcpy(ptr noundef %name10, ptr noundef %name, i32 noundef 32) #5
  %led_dev = getelementptr inbounds %struct.b43legacy_led, ptr %led, i32 0, i32 1
  %21 = ptrtoint ptr %led_dev to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %name10, ptr %led_dev, align 4
  %default_trigger15 = getelementptr inbounds %struct.b43legacy_led, ptr %led, i32 0, i32 1, i32 14
  %22 = ptrtoint ptr %default_trigger15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %default_trigger, ptr %default_trigger15, align 4
  %brightness_set = getelementptr inbounds %struct.b43legacy_led, ptr %led, i32 0, i32 1, i32 5
  %23 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @b43legacy_led_brightness_set, ptr %brightness_set, align 4
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %dev18 = getelementptr inbounds %struct.ssb_device, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev18, align 4
  %call.i = tail call i32 @led_classdev_register_ext(ptr noundef %27, ptr noundef %led_dev, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool21.not = icmp eq i32 %call.i, 0
  br i1 %tobool21.not, label %if.end5.cleanup_crit_edge, label %if.then22

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then22:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %wl1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wl1.i, align 4
  tail call void (ptr, ptr, ...) @b43legacywarn(ptr noundef %29, ptr noundef nonnull @.str.6, ptr noundef %name) #5
  %30 = ptrtoint ptr %led to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %led, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @b43legacy_is_hw_radio_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43legacywarn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b43legacy_led_brightness_set(ptr nocapture noundef readonly %led_dev, i32 noundef %brightness) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_dev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %radio_on = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 9, i32 15
  %2 = ptrtoint ptr %radio_on to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %radio_on, align 4, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %land.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

land.end:                                         ; preds = %entry
  %radio_hw_enable = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %radio_hw_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %radio_hw_enable, align 4, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %cmp = icmp eq i32 %brightness, 0
  %brmerge = select i1 %cmp, i1 true, i1 %tobool2.not
  br i1 %brmerge, label %land.end.if.then_crit_edge, label %if.else

land.end.if.then_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %land.end.if.then_crit_edge, %entry.if.then_crit_edge
  %index = getelementptr i8, ptr %led_dev, i32 400
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %index, align 4
  %activelow = getelementptr i8, ptr %led_dev, i32 401
  %8 = ptrtoint ptr %activelow to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %activelow, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  %wl1.i = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %wl1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wl1.i, align 4
  %leds_lock.i = getelementptr inbounds %struct.b43legacy_wl, ptr %11, i32 0, i32 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %leds_lock.i) #5
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %read16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %read16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read16.i.i.i, align 4
  %call.i.i.i = tail call zeroext i16 %17(ptr noundef %13, i16 noundef zeroext 1180) #5
  %conv7.i = zext i8 %7 to i32
  %shl.i = shl nuw i32 1, %conv7.i
  %18 = trunc i32 %shl.i to i16
  %conv9.i = or i16 %call.i.i.i, %18
  %19 = xor i16 %18, -1
  %conv13.i = and i16 %call.i.i.i, %19
  %ctl.0.i = select i1 %tobool4.not, i16 %conv13.i, i16 %conv9.i
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %write16.i.i.i = getelementptr inbounds %struct.ssb_bus_ops, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %write16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write16.i.i.i, align 4
  tail call void %25(ptr noundef %21, i16 noundef zeroext 1180, i16 noundef zeroext %ctl.0.i) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %leds_lock.i, i32 noundef %call3.i) #5
  br label %if.end

if.else:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  %index5 = getelementptr i8, ptr %led_dev, i32 400
  %26 = ptrtoint ptr %index5 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %index5, align 4
  %activelow6 = getelementptr i8, ptr %led_dev, i32 401
  %28 = ptrtoint ptr %activelow6 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %activelow6, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool7.not = icmp eq i8 %29, 0
  %wl1.i15 = getelementptr inbounds %struct.b43legacy_wldev, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %wl1.i15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wl1.i15, align 4
  %leds_lock.i16 = getelementptr inbounds %struct.b43legacy_wl, ptr %31, i32 0, i32 4
  %call3.i17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %leds_lock.i16) #5
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %read16.i.i.i18 = getelementptr inbounds %struct.ssb_bus_ops, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %read16.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read16.i.i.i18, align 4
  %call.i.i.i19 = tail call zeroext i16 %37(ptr noundef %33, i16 noundef zeroext 1180) #5
  %conv7.i20 = zext i8 %27 to i32
  %shl.i21 = shl nuw i32 1, %conv7.i20
  %38 = trunc i32 %shl.i21 to i16
  %39 = xor i16 %38, -1
  %conv9.i22 = and i16 %call.i.i.i19, %39
  %conv13.i23 = or i16 %call.i.i.i19, %38
  %ctl.0.i24 = select i1 %tobool7.not, i16 %conv13.i23, i16 %conv9.i22
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %write16.i.i.i25 = getelementptr inbounds %struct.ssb_bus_ops, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %write16.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write16.i.i.i25, align 4
  tail call void %45(ptr noundef %41, i16 noundef zeroext 1180, i16 noundef zeroext %ctl.0.i24) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %leds_lock.i16, i32 noundef %call3.i17) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43legacy/leds.c", i32 213, i32 5}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/b43legacy/leds.c", i32 138, i32 5}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/b43legacy/leds.c", i32 143, i32 5}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/b43legacy/leds.c", i32 153, i32 5}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/b43legacy/leds.c", i32 164, i32 5}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/b43legacy/leds.c", i32 170, i32 26}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/b43legacy/leds.c", i32 99, i32 26}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i8 0, i8 2}
