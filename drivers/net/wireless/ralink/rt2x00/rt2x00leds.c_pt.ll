; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ralink/rt2x00/rt2x00leds.c_pt.bc'
source_filename = "../drivers/net/wireless/ralink/rt2x00/rt2x00leds.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rt2x00_dev = type { ptr, ptr, ptr, ptr, [6 x %struct.ieee80211_supported_band], ptr, i32, i32, ptr, %struct.rt2x00_led, %struct.rt2x00_led, %struct.rt2x00_led, i16, i32, i32, i32, ptr, %struct.rt2x00_chip, %struct.hw_mode_spec, %struct.antenna_setup, %union.csr, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, %struct.ieee80211_iface_limit, [1 x %struct.ieee80211_iface_combination], %struct.link, ptr, ptr, i16, i16, i8, i8, i8, i8, i16, i16, i32, %struct.ieee80211_low_level_stats, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.work_struct, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.140, %struct.hrtimer, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, i32, ptr, i32, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.rt2x00_led = type { ptr, %struct.led_classdev, i32, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rt2x00_chip = type { i16, i16, i16, i32 }
%struct.hw_mode_spec = type { i32, i32, i32, ptr, ptr, %struct.ieee80211_sta_ht_cap }
%struct.antenna_setup = type { i32, i32, i8, i8 }
%union.csr = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ieee80211_iface_limit = type { i16, i16 }
%struct.ieee80211_iface_combination = type { ptr, i32, i16, i8, i8, i8, i8, i32 }
%struct.link = type { i32, %struct.link_qual, %struct.link_ant, %struct.ewma_rssi, %struct.delayed_work, %struct.delayed_work, i32, i8, %struct.delayed_work, %struct.delayed_work }
%struct.link_qual = type { i32, i32, i8, i8, i32, i32, i32, i32 }
%struct.link_ant = type { i32, %struct.antenna_setup, i32, %struct.ewma_rssi }
%struct.ewma_rssi = type { i32 }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.140 = type { %union.anon.141, [0 x i32] }
%union.anon.141 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.99, i32 }
%union.anon.99 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.131, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.131 = type { i32, i16 }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.130, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.130 = type { i64, i64, i8 }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s-%s::radio\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s-%s::assoc\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s-%s::quality\00", [17 x i8] zeroinitializer }, align 32
@rt2x00leds_register_led._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.rt2x00leds_register_led = private unnamed_addr constant [24 x i8] c"rt2x00leds_register_led\00", align 1
@rt2x00leds_register_led._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.rt2x00leds_register_led, ptr @.str.5, i32 103, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Error - Failed to register led handler\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/wireless/ralink/rt2x00/rt2x00leds.c\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt2x00leds_register_led._entry_ptr = internal global ptr @rt2x00leds_register_led._entry, section ".printk_index", align 4
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 121, i32 32 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 132, i32 32 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 143, i32 32 }
@___asan_gen_.17 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [51 x i8] c"../drivers/net/wireless/ralink/rt2x00/rt2x00leds.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 103, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @rt2x00leds_register_led._entry, ptr @rt2x00leds_register_led._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @rt2x00leds_register_led._rs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00leds_register_led._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00leds_register_led._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00leds_led_quality(ptr noundef %rt2x00dev, i32 noundef %rssi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rssi_offset = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 37
  %4 = ptrtoint ptr %rssi_offset to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rssi_offset, align 2
  %conv = zext i8 %5 to i32
  %add = add i32 %conv, %rssi
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %add)
  %cmp1 = icmp slt i32 %add, 31
  br i1 %cmp1, label %if.end.if.end24_crit_edge, label %if.else

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %add)
  %cmp4 = icmp ult i32 %add, 40
  br i1 %cmp4, label %if.else.if.end24_crit_edge, label %if.else7

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %add)
  %cmp8 = icmp ult i32 %add, 50
  br i1 %cmp8, label %if.else7.if.end24_crit_edge, label %if.else11

if.else7.if.end24_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.else11:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %add)
  %cmp12 = icmp ult i32 %add, 54
  br i1 %cmp12, label %if.else11.if.end24_crit_edge, label %if.else15

if.else11.if.end24_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.else15:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add)
  %cmp16 = icmp ult i32 %add, 64
  %. = select i1 %cmp16, i32 169, i32 211
  br label %if.end24

if.end24:                                         ; preds = %if.else15, %if.else11.if.end24_crit_edge, %if.else7.if.end24_crit_edge, %if.else.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %rssi.addr.0 = phi i32 [ 1, %if.end.if.end24_crit_edge ], [ 43, %if.else.if.end24_crit_edge ], [ 85, %if.else7.if.end24_crit_edge ], [ 127, %if.else11.if.end24_crit_edge ], [ %., %if.else15 ]
  %brightness26 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 1, i32 1
  %6 = ptrtoint ptr %brightness26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %brightness26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rssi.addr.0, i32 %7)
  %cmp27.not = icmp eq i32 %rssi.addr.0, %7
  br i1 %cmp27.not, label %if.end24.cleanup_crit_edge, label %if.then29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %led_dev = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 1
  %brightness_set = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 1, i32 5
  %8 = ptrtoint ptr %brightness_set to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %brightness_set, align 4
  tail call void %9(ptr noundef %led_dev, i32 noundef %rssi.addr.0) #5
  %10 = ptrtoint ptr %brightness26 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %rssi.addr.0, ptr %brightness26, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end24.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00led_led_activity(ptr noundef %rt2x00dev, i1 noundef zeroext %enabled) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %flags.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %cond.i = select i1 %enabled, i32 255, i32 0
  %led_dev.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 1
  %brightness_set.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 1, i32 5
  %4 = ptrtoint ptr %brightness_set.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %brightness_set.i, align 4
  tail call void %5(ptr noundef %led_dev.i, i32 noundef %cond.i) #5
  %brightness4.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 1, i32 1
  %6 = ptrtoint ptr %brightness4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond.i, ptr %brightness4.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00leds_led_assoc(ptr noundef %rt2x00dev, i1 noundef zeroext %enabled) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %flags.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %cond.i = select i1 %enabled, i32 255, i32 0
  %led_dev.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10, i32 1
  %brightness_set.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10, i32 1, i32 5
  %4 = ptrtoint ptr %brightness_set.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %brightness_set.i, align 4
  tail call void %5(ptr noundef %led_dev.i, i32 noundef %cond.i) #5
  %brightness4.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10, i32 1, i32 1
  %6 = ptrtoint ptr %brightness4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond.i, ptr %brightness4.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00leds_led_radio(ptr noundef %rt2x00dev, i1 noundef zeroext %enabled) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %flags.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %cond.i = select i1 %enabled, i32 255, i32 0
  %led_dev.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 1
  %brightness_set.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 1, i32 5
  %4 = ptrtoint ptr %brightness_set.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %brightness_set.i, align 4
  tail call void %5(ptr noundef %led_dev.i, i32 noundef %cond.i) #5
  %brightness4.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 1, i32 1
  %6 = ptrtoint ptr %brightness4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond.i, ptr %brightness4.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00leds_register(ptr noundef %rt2x00dev) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [36 x i8], align 1
  %on_period = alloca i32, align 4
  %off_period = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %name) #5
  %0 = call ptr @memset(ptr %name, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %on_period) #5
  %1 = ptrtoint ptr %on_period to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %on_period, align 4, !annotation !25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %off_period) #5
  %hw = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 56, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.wiphy_name.exit_crit_edge

entry.wiphy_name.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 56
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %entry.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %entry.wiphy_name.exit_crit_edge ]
  %flags = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %wiphy_name.exit.if.end8_crit_edge, label %if.then

wiphy_name.exit.if.end8_crit_edge:                ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then:                                          ; preds = %wiphy_name.exit
  %ops = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 36, ptr noundef nonnull @.str, ptr noundef %15, ptr noundef %retval.0.i.i)
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wiphy.i, align 8
  %parent.i.i = getelementptr inbounds %struct.wiphy, ptr %19, i32 0, i32 56, i32 1
  %20 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent.i.i, align 8
  %led_dev.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %led_dev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %name, ptr %led_dev.i, align 4
  %brightness.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 1, i32 1
  %23 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %brightness.i, align 4
  %call.i.i = call i32 @led_classdev_register_ext(ptr noundef %21, ptr noundef %led_dev.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %rt2x00leds_register_led.exit, label %do.body.i

do.body.i:                                        ; preds = %if.then
  %call6.i = call i32 @___ratelimit(ptr noundef nonnull @rt2x00leds_register_led._rs, ptr noundef nonnull @__func__.rt2x00leds_register_led) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %do.body.i.exit_fail_crit_edge, label %do.body.i.exit_fail.sink.split_crit_edge

do.body.i.exit_fail.sink.split_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_fail.sink.split

do.body.i.exit_fail_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_fail

rt2x00leds_register_led.exit:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %or.i = or i32 %25, 2
  store i32 %or.i, ptr %flags, align 4
  br label %if.end8

if.end8:                                          ; preds = %rt2x00leds_register_led.exit, %wiphy_name.exit.if.end8_crit_edge
  %flags9 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10, i32 3
  %26 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags9, align 4
  %and10 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.if.end23_crit_edge, label %if.then12

if.end8.if.end23_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then12:                                        ; preds = %if.end8
  %ops14 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %28 = ptrtoint ptr %ops14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops14, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %call16 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 36, ptr noundef nonnull @.str.1, ptr noundef %31, ptr noundef %retval.0.i.i)
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 4
  %wiphy.i75 = getelementptr inbounds %struct.ieee80211_hw, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %wiphy.i75 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wiphy.i75, align 8
  %parent.i.i76 = getelementptr inbounds %struct.wiphy, ptr %35, i32 0, i32 56, i32 1
  %36 = ptrtoint ptr %parent.i.i76 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent.i.i76, align 8
  %led_dev.i77 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10, i32 1
  %38 = ptrtoint ptr %led_dev.i77 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %name, ptr %led_dev.i77, align 4
  %brightness.i78 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10, i32 1, i32 1
  %39 = ptrtoint ptr %brightness.i78 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %brightness.i78, align 4
  %call.i.i79 = call i32 @led_classdev_register_ext(ptr noundef %37, ptr noundef %led_dev.i77, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i79)
  %tobool.not.i80 = icmp eq i32 %call.i.i79, 0
  br i1 %tobool.not.i80, label %rt2x00leds_register_led.exit90, label %do.body.i83

do.body.i83:                                      ; preds = %if.then12
  %call6.i81 = call i32 @___ratelimit(ptr noundef nonnull @rt2x00leds_register_led._rs, ptr noundef nonnull @__func__.rt2x00leds_register_led) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i81)
  %tobool7.not.i82 = icmp eq i32 %call6.i81, 0
  br i1 %tobool7.not.i82, label %do.body.i83.exit_fail_crit_edge, label %do.body.i83.exit_fail.sink.split_crit_edge

do.body.i83.exit_fail.sink.split_crit_edge:       ; preds = %do.body.i83
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_fail.sink.split

do.body.i83.exit_fail_crit_edge:                  ; preds = %do.body.i83
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_fail

rt2x00leds_register_led.exit90:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags9, align 4
  %or.i88 = or i32 %41, 2
  store i32 %or.i88, ptr %flags9, align 4
  br label %if.end23

if.end23:                                         ; preds = %rt2x00leds_register_led.exit90, %if.end8.if.end23_crit_edge
  %flags24 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 3
  %42 = ptrtoint ptr %flags24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags24, align 8
  %and25 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end23.if.end38_crit_edge, label %if.then27

if.end23.if.end38_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then27:                                        ; preds = %if.end23
  %ops29 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %44 = ptrtoint ptr %ops29 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops29, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %call31 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 36, ptr noundef nonnull @.str.2, ptr noundef %47, ptr noundef %retval.0.i.i)
  %48 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw, align 4
  %wiphy.i92 = getelementptr inbounds %struct.ieee80211_hw, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %wiphy.i92 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wiphy.i92, align 8
  %parent.i.i93 = getelementptr inbounds %struct.wiphy, ptr %51, i32 0, i32 56, i32 1
  %52 = ptrtoint ptr %parent.i.i93 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %parent.i.i93, align 8
  %led_dev.i94 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 1
  %54 = ptrtoint ptr %led_dev.i94 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %name, ptr %led_dev.i94, align 4
  %brightness.i95 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 1, i32 1
  %55 = ptrtoint ptr %brightness.i95 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %brightness.i95, align 4
  %call.i.i96 = call i32 @led_classdev_register_ext(ptr noundef %53, ptr noundef %led_dev.i94, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i96)
  %tobool.not.i97 = icmp eq i32 %call.i.i96, 0
  br i1 %tobool.not.i97, label %rt2x00leds_register_led.exit107, label %do.body.i100

do.body.i100:                                     ; preds = %if.then27
  %call6.i98 = call i32 @___ratelimit(ptr noundef nonnull @rt2x00leds_register_led._rs, ptr noundef nonnull @__func__.rt2x00leds_register_led) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i98)
  %tobool7.not.i99 = icmp eq i32 %call6.i98, 0
  br i1 %tobool7.not.i99, label %do.body.i100.exit_fail_crit_edge, label %do.body.i100.exit_fail.sink.split_crit_edge

do.body.i100.exit_fail.sink.split_crit_edge:      ; preds = %do.body.i100
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_fail.sink.split

do.body.i100.exit_fail_crit_edge:                 ; preds = %do.body.i100
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_fail

rt2x00leds_register_led.exit107:                  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %flags24 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags24, align 4
  %or.i105 = or i32 %57, 2
  store i32 %or.i105, ptr %flags24, align 4
  br label %if.end38

if.end38:                                         ; preds = %rt2x00leds_register_led.exit107, %if.end23.if.end38_crit_edge
  %blink_set = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 1, i32 8
  %58 = ptrtoint ptr %blink_set to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %blink_set, align 4
  %tobool40.not = icmp eq ptr %59, null
  br i1 %tobool40.not, label %if.end38.cleanup_crit_edge, label %if.then41

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %led_dev = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 1
  %60 = ptrtoint ptr %on_period to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 70, ptr %on_period, align 4
  %61 = ptrtoint ptr %off_period to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 30, ptr %off_period, align 4
  %call47 = call i32 %59(ptr noundef %led_dev, ptr noundef nonnull %on_period, ptr noundef nonnull %off_period) #5
  br label %cleanup

exit_fail.sink.split:                             ; preds = %do.body.i100.exit_fail.sink.split_crit_edge, %do.body.i83.exit_fail.sink.split_crit_edge, %do.body.i.exit_fail.sink.split_crit_edge
  %62 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw, align 4
  %wiphy11.i101 = getelementptr inbounds %struct.ieee80211_hw, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %wiphy11.i101 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wiphy11.i101, align 8
  %dev.i102 = getelementptr inbounds %struct.wiphy, ptr %65, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i102, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.rt2x00leds_register_led) #8
  br label %exit_fail

exit_fail:                                        ; preds = %exit_fail.sink.split, %do.body.i100.exit_fail_crit_edge, %do.body.i83.exit_fail_crit_edge, %do.body.i.exit_fail_crit_edge
  call void @rt2x00leds_unregister(ptr noundef %rt2x00dev)
  br label %cleanup

cleanup:                                          ; preds = %exit_fail, %if.then41, %if.end38.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %off_period) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %on_period) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %name) #5
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00leds_unregister(ptr noundef %rt2x00dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %led_dev.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 1
  tail call void @led_classdev_unregister(ptr noundef %led_dev.i) #5
  %flags.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 1, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.rt2x00leds_unregister_led.exit_crit_edge

if.then.rt2x00leds_unregister_led.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %rt2x00leds_unregister_led.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %brightness_set.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 1, i32 5
  %4 = ptrtoint ptr %brightness_set.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %brightness_set.i, align 4
  tail call void %5(ptr noundef %led_dev.i, i32 noundef 0) #5
  br label %rt2x00leds_unregister_led.exit

rt2x00leds_unregister_led.exit:                   ; preds = %if.then.i, %if.then.rt2x00leds_unregister_led.exit_crit_edge
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and5.i = and i32 %7, -3
  store i32 %and5.i, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %rt2x00leds_unregister_led.exit, %entry.if.end_crit_edge
  %flags2 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10, i32 3
  %8 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags2, align 4
  %and3 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then5:                                         ; preds = %if.end
  %led_dev.i19 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10, i32 1
  tail call void @led_classdev_unregister(ptr noundef %led_dev.i19) #5
  %flags.i20 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10, i32 1, i32 3
  %10 = ptrtoint ptr %flags.i20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i20, align 4
  %and.i21 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21)
  %tobool.not.i22 = icmp eq i32 %and.i21, 0
  br i1 %tobool.not.i22, label %if.then.i24, label %if.then5.rt2x00leds_unregister_led.exit27_crit_edge

if.then5.rt2x00leds_unregister_led.exit27_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %rt2x00leds_unregister_led.exit27

if.then.i24:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %brightness_set.i23 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10, i32 1, i32 5
  %12 = ptrtoint ptr %brightness_set.i23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %brightness_set.i23, align 4
  tail call void %13(ptr noundef %led_dev.i19, i32 noundef 0) #5
  br label %rt2x00leds_unregister_led.exit27

rt2x00leds_unregister_led.exit27:                 ; preds = %if.then.i24, %if.then5.rt2x00leds_unregister_led.exit27_crit_edge
  %14 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags2, align 4
  %and5.i26 = and i32 %15, -3
  store i32 %and5.i26, ptr %flags2, align 4
  br label %if.end7

if.end7:                                          ; preds = %rt2x00leds_unregister_led.exit27, %if.end.if.end7_crit_edge
  %flags8 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 3
  %16 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags8, align 8
  %and9 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.if.end13_crit_edge, label %if.then11

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then11:                                        ; preds = %if.end7
  %led_dev.i28 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 1
  tail call void @led_classdev_unregister(ptr noundef %led_dev.i28) #5
  %flags.i29 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 1, i32 3
  %18 = ptrtoint ptr %flags.i29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i29, align 4
  %and.i30 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30)
  %tobool.not.i31 = icmp eq i32 %and.i30, 0
  br i1 %tobool.not.i31, label %if.then.i33, label %if.then11.rt2x00leds_unregister_led.exit36_crit_edge

if.then11.rt2x00leds_unregister_led.exit36_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %rt2x00leds_unregister_led.exit36

if.then.i33:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %brightness_set.i32 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 1, i32 5
  %20 = ptrtoint ptr %brightness_set.i32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %brightness_set.i32, align 4
  tail call void %21(ptr noundef %led_dev.i28, i32 noundef 0) #5
  br label %rt2x00leds_unregister_led.exit36

rt2x00leds_unregister_led.exit36:                 ; preds = %if.then.i33, %if.then11.rt2x00leds_unregister_led.exit36_crit_edge
  %22 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags8, align 4
  %and5.i35 = and i32 %23, -3
  store i32 %and5.i35, ptr %flags8, align 4
  br label %if.end13

if.end13:                                         ; preds = %rt2x00leds_unregister_led.exit36, %if.end7.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00leds_suspend(ptr noundef %rt2x00dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %led_dev.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 1
  tail call void @led_classdev_suspend(ptr noundef %led_dev.i) #5
  %brightness_set.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 1, i32 5
  %2 = ptrtoint ptr %brightness_set.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %brightness_set.i, align 4
  tail call void %3(ptr noundef %led_dev.i, i32 noundef 0) #5
  %brightness.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 1, i32 1
  %4 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %brightness.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags2 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10, i32 3
  %5 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags2, align 4
  %and3 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %led_dev.i19 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10, i32 1
  tail call void @led_classdev_suspend(ptr noundef %led_dev.i19) #5
  %brightness_set.i20 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10, i32 1, i32 5
  %7 = ptrtoint ptr %brightness_set.i20 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %brightness_set.i20, align 4
  tail call void %8(ptr noundef %led_dev.i19, i32 noundef 0) #5
  %brightness.i21 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10, i32 1, i32 1
  %9 = ptrtoint ptr %brightness.i21 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %brightness.i21, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %flags8 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 3
  %10 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags8, align 8
  %and9 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.if.end13_crit_edge, label %if.then11

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %led_dev.i22 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 1
  tail call void @led_classdev_suspend(ptr noundef %led_dev.i22) #5
  %brightness_set.i23 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 1, i32 5
  %12 = ptrtoint ptr %brightness_set.i23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %brightness_set.i23, align 4
  tail call void %13(ptr noundef %led_dev.i22, i32 noundef 0) #5
  %brightness.i24 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 1, i32 1
  %14 = ptrtoint ptr %brightness.i24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %brightness.i24, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00leds_resume(ptr noundef %rt2x00dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %led_dev.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 1
  tail call void @led_classdev_resume(ptr noundef %led_dev.i) #5
  %brightness_set.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 1, i32 5
  %2 = ptrtoint ptr %brightness_set.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %brightness_set.i, align 4
  tail call void %3(ptr noundef %led_dev.i, i32 noundef 0) #5
  %brightness.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 9, i32 1, i32 1
  %4 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %brightness.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags2 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10, i32 3
  %5 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags2, align 4
  %and3 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %led_dev.i19 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10, i32 1
  tail call void @led_classdev_resume(ptr noundef %led_dev.i19) #5
  %brightness_set.i20 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10, i32 1, i32 5
  %7 = ptrtoint ptr %brightness_set.i20 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %brightness_set.i20, align 4
  tail call void %8(ptr noundef %led_dev.i19, i32 noundef 0) #5
  %brightness.i21 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 10, i32 1, i32 1
  %9 = ptrtoint ptr %brightness.i21 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %brightness.i21, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %flags8 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 3
  %10 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags8, align 8
  %and9 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.if.end13_crit_edge, label %if.then11

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %led_dev.i22 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 1
  tail call void @led_classdev_resume(ptr noundef %led_dev.i22) #5
  %brightness_set.i23 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 1, i32 5
  %12 = ptrtoint ptr %brightness_set.i23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %brightness_set.i23, align 4
  tail call void %13(ptr noundef %led_dev.i22, i32 noundef 0) #5
  %brightness.i24 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 11, i32 1, i32 1
  %14 = ptrtoint ptr %brightness.i24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %brightness.i24, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7.if.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00leds.c", i32 121, i32 32}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00leds.c", i32 132, i32 32}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00leds.c", i32 143, i32 32}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00leds.c", i32 103, i32 3}
!8 = !{ptr @rt2x00leds_register_led._rs, !7, !"_rs", i1 false, i1 false}
!9 = !{ptr @__func__.rt2x00leds_register_led, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @rt2x00leds_register_led._entry, !7, !"_entry", i1 false, i1 false}
!15 = !{ptr @rt2x00leds_register_led._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"auto-init"}
