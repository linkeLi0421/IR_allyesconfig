; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ralink/rt2x00/rt2x00link.c_pt.bc'
source_filename = "../drivers/net/wireless/ralink/rt2x00/rt2x00link.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rxdone_entry_desc = type { i64, i32, i32, i32, i32, i32, i16, i16, i32, i32, i8, i8, [2 x i32], i32 }
%struct.rt2x00_ops = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.rt2x00lib_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@rt2x00link_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&(&link->work)->work)\00", [56 x i8] zeroinitializer }, align 32
@rt2x00link_register.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&(&link->work)->timer\00", [42 x i8] zeroinitializer }, align 32
@rt2x00link_register.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&link->watchdog_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@rt2x00link_register.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&link->watchdog_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 423, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [51 x i8] c"../drivers/net/wireless/ralink/rt2x00/rt2x00link.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 424, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @rt2x00link_register.__key, ptr @.str, ptr @rt2x00link_register.__key.1, ptr @.str.2, ptr @rt2x00link_register.__key.3, ptr @.str.4, ptr @rt2x00link_register.__key.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00link_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00link_register.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00link_register.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt2x00link_register.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00link_update_stats(ptr noundef %rt2x00dev, ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %rxdesc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %intf_sta_count = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 25
  %0 = ptrtoint ptr %intf_sta_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intf_sta_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %rx_success = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 1, i32 4
  %4 = ptrtoint ptr %rx_success to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_success, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %rx_success, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %3, align 2
  %8 = and i16 %7, -1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %8)
  %cmp.i = icmp eq i16 %8, -32768
  br i1 %cmp.i, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %dev_flags = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 5
  %9 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dev_flags, align 8
  %and = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %avg_rssi = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 3
  %rssi = getelementptr inbounds %struct.rxdone_entry_desc, ptr %rxdesc, i32 0, i32 2
  %11 = ptrtoint ptr %rssi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rssi, align 4
  %13 = ptrtoint ptr %avg_rssi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %avg_rssi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  %sub.i = mul i32 %14, 7
  %.neg = mul i32 %12, -1024
  %add.i = add i32 %sub.i, %.neg
  %shr.i = lshr i32 %add.i, 3
  %cond.i = select i1 %tobool.not.i, i32 %.neg, i32 %shr.i
  %15 = ptrtoint ptr %avg_rssi to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %cond.i, ptr %avg_rssi, align 4
  %rssi_ant = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 2, i32 3
  %16 = ptrtoint ptr %rssi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rssi, align 4
  %18 = ptrtoint ptr %rssi_ant to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %rssi_ant, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i19 = icmp eq i32 %19, 0
  %sub.i20 = mul i32 %19, 7
  %.neg25 = mul i32 %17, -1024
  %add.i22 = add i32 %sub.i20, %.neg25
  %shr.i23 = lshr i32 %add.i22, 3
  %cond.i24 = select i1 %tobool.not.i19, i32 %.neg25, i32 %shr.i23
  %20 = ptrtoint ptr %rssi_ant to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 %cond.i24, ptr %rssi_ant, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00link_start_tuner(ptr noundef %rt2x00dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %intf_ap_count = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 24
  %0 = ptrtoint ptr %intf_ap_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intf_ap_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %intf_sta_count = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 25
  %2 = ptrtoint ptr %intf_sta_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intf_sta_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 13
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %vgc_level_reg.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 1, i32 3
  %7 = ptrtoint ptr %vgc_level_reg.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %vgc_level_reg.i, align 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end5.rt2x00link_reset_tuner.exit_crit_edge, label %if.end.i

if.end5.rt2x00link_reset_tuner.exit_crit_edge:    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %rt2x00link_reset_tuner.exit

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %qual1.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 1
  %link.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30
  %avg_rssi.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 3
  %12 = ptrtoint ptr %avg_rssi.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %avg_rssi.i, align 4
  %13 = call ptr @memset(ptr %link.i, i32 0, i32 32)
  %14 = ptrtoint ptr %vgc_level_reg.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %8, ptr %vgc_level_reg.i, align 1
  %ops.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %lib.i = getelementptr inbounds %struct.rt2x00_ops, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %lib.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lib.i, align 4
  %reset_tuner.i = getelementptr inbounds %struct.rt2x00lib_ops, ptr %18, i32 0, i32 17
  %19 = ptrtoint ptr %reset_tuner.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reset_tuner.i, align 4
  tail call void %20(ptr noundef %rt2x00dev, ptr noundef %qual1.i) #4
  br label %rt2x00link_reset_tuner.exit

rt2x00link_reset_tuner.exit:                      ; preds = %if.end.i, %if.end5.rt2x00link_reset_tuner.exit_crit_edge
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags, align 4
  %and1.i18 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i18)
  %tobool8.not = icmp eq i32 %and1.i18, 0
  br i1 %tobool8.not, label %rt2x00link_reset_tuner.exit.cleanup_crit_edge, label %if.then9

rt2x00link_reset_tuner.exit.cleanup_crit_edge:    ; preds = %rt2x00link_reset_tuner.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then9:                                         ; preds = %rt2x00link_reset_tuner.exit
  call void @__sanitizer_cov_trace_pc() #6
  %hw = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %work = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 4
  %call10 = tail call i32 @round_jiffies_relative(i32 noundef 100) #4
  tail call void @ieee80211_queue_delayed_work(ptr noundef %24, ptr noundef %work, i32 noundef %call10) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %rt2x00link_reset_tuner.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00link_reset_tuner(ptr noundef %rt2x00dev, i1 noundef zeroext %antenna) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vgc_level_reg = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 1, i32 3
  %0 = ptrtoint ptr %vgc_level_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vgc_level_reg, align 1
  %flags = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 13
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %qual1 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 1
  %link = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30
  %avg_rssi = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 3
  %5 = ptrtoint ptr %avg_rssi to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %avg_rssi, align 4
  %6 = call ptr @memset(ptr %link, i32 0, i32 32)
  %7 = ptrtoint ptr %vgc_level_reg to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %1, ptr %vgc_level_reg, align 1
  %ops = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %lib = getelementptr inbounds %struct.rt2x00_ops, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lib, align 4
  %reset_tuner = getelementptr inbounds %struct.rt2x00lib_ops, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %reset_tuner to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset_tuner, align 4
  tail call void %13(ptr noundef %rt2x00dev, ptr noundef %qual1) #4
  br i1 %antenna, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %rssi_ant.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 2, i32 3
  %14 = ptrtoint ptr %rssi_ant.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %rssi_ant.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00link_stop_tuner(ptr noundef %rt2x00dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %work = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 4
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00link_start_watchdog(ptr noundef %rt2x00dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 13
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %lib = getelementptr inbounds %struct.rt2x00_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lib, align 4
  %watchdog = getelementptr inbounds %struct.rt2x00lib_ops, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %watchdog to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %watchdog, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %watchdog_disabled = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 7
  %8 = ptrtoint ptr %watchdog_disabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %watchdog_disabled, align 4, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  %hw = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 3
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %watchdog_work = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 5
  %watchdog_interval = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 6
  %12 = ptrtoint ptr %watchdog_interval to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %watchdog_interval, align 4
  tail call void @ieee80211_queue_delayed_work(ptr noundef %11, ptr noundef %watchdog_work, i32 noundef %13) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00link_stop_watchdog(ptr noundef %rt2x00dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %watchdog_work = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 5
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %watchdog_work) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00link_register(ptr noundef %rt2x00dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %work = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 4
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #4
  %0 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @rt2x00link_register.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry10 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 4, i32 0, i32 1
  %1 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry10, ptr %entry10, align 4
  %prev.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 4, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry10, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 4, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @rt2x00link_tuner, ptr %func, align 4
  %timer = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @rt2x00link_register.__key.1) #4
  %watchdog_work = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 5
  tail call void @__init_work(ptr noundef %watchdog_work, i32 noundef 0) #4
  %4 = ptrtoint ptr %watchdog_work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %watchdog_work, align 4
  %lockdep_map29 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 5, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map29, ptr noundef nonnull @.str.4, ptr noundef nonnull @rt2x00link_register.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry32 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %entry32 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry32, ptr %entry32, align 4
  %prev.i59 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 5, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i59 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry32, ptr %prev.i59, align 4
  %func35 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 5, i32 0, i32 2
  %7 = ptrtoint ptr %func35 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rt2x00link_watchdog, ptr %func35, align 4
  %timer40 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %timer40, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.6, ptr noundef nonnull @rt2x00link_register.__key.5) #4
  %watchdog_interval = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 6
  %8 = ptrtoint ptr %watchdog_interval to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %watchdog_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @round_jiffies_relative(i32 noundef 100) #4
  %10 = ptrtoint ptr %watchdog_interval to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call, ptr %watchdog_interval, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2x00link_tuner(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2200
  %link1 = getelementptr i8, ptr %work, i32 -60
  %flags = getelementptr i8, ptr %work, i32 -376
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conf_mutex = getelementptr i8, ptr %work, i32 -196
  tail call void @mutex_lock_nested(ptr noundef %conf_mutex, i32 noundef 0) #4
  %intf_sta_count = getelementptr i8, ptr %work, i32 -96
  %6 = ptrtoint ptr %intf_sta_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %intf_sta_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then6:                                         ; preds = %if.end
  %qual2.i = getelementptr i8, ptr %work, i32 -56
  %ops.i = getelementptr i8, ptr %work, i32 -2196
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %lib.i = getelementptr inbounds %struct.rt2x00_ops, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %lib.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lib.i, align 4
  %link_stats.i = getelementptr inbounds %struct.rt2x00lib_ops, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %link_stats.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link_stats.i, align 4
  tail call void %13(ptr noundef %add.ptr, ptr noundef %qual2.i) #4
  %rx_failed.i = getelementptr i8, ptr %work, i32 -40
  %14 = ptrtoint ptr %rx_failed.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_failed.i, align 4
  %dot11FCSErrorCount.i = getelementptr i8, ptr %work, i32 440
  %16 = ptrtoint ptr %dot11FCSErrorCount.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dot11FCSErrorCount.i, align 8
  %add.i = add i32 %17, %15
  store i32 %add.i, ptr %dot11FCSErrorCount.i, align 8
  %rx_success.i = getelementptr i8, ptr %work, i32 -44
  %18 = ptrtoint ptr %rx_success.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_success.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.then6.if.end.i_crit_edge, label %if.else.i

if.then6.if.end.i_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.else.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %avg_rssi.i = getelementptr i8, ptr %work, i32 -4
  %20 = ptrtoint ptr %avg_rssi.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %avg_rssi.i, align 4
  %shr.i.i.i = lshr i32 %21, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %21)
  %tobool.not.i.i = icmp ult i32 %21, 1024
  %sub.i.i = sub nsw i32 0, %shr.i.i.i
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 -128, i32 %sub.i.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then6.if.end.i_crit_edge
  %storemerge.i = phi i32 [ %retval.0.i.i, %if.else.i ], [ -128, %if.then6.if.end.i_crit_edge ]
  %22 = ptrtoint ptr %qual2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %storemerge.i, ptr %qual2.i, align 4
  %cap_flags.i.i.i = getelementptr i8, ptr %work, i32 -372
  %23 = ptrtoint ptr %cap_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %cap_flags.i.i.i, align 4
  %25 = and i32 %24, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.i.not.i = icmp eq i32 %25, 0
  br i1 %tobool.i.i.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then5.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  %lib7.i = getelementptr inbounds %struct.rt2x00_ops, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %lib7.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lib7.i, align 4
  %link_tuner.i = getelementptr inbounds %struct.rt2x00lib_ops, ptr %29, i32 0, i32 18
  %30 = ptrtoint ptr %link_tuner.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %link_tuner.i, align 4
  %32 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %link1, align 4
  tail call void %31(ptr noundef %add.ptr, ptr noundef %qual2.i, i32 noundef %33) #4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i.if.end8.i_crit_edge
  %34 = ptrtoint ptr %qual2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %qual2.i, align 4
  tail call void @rt2x00leds_led_quality(ptr noundef %add.ptr, i32 noundef %35) #4
  %ant1.i.i = getelementptr i8, ptr %work, i32 -28
  %36 = ptrtoint ptr %ant1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ant1.i.i, align 4
  %and.i.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i29.i = icmp eq i32 %and.i.i, 0
  %and3.i.i = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  %38 = and i32 %37, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %ant1.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %ant1.i.i, align 4
  br label %if.then11.i

if.end.i.i:                                       ; preds = %if.end8.i
  %and7.i.i = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.else.i.i, label %if.then9.i.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  %41 = ptrtoint ptr %rx_success.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_success.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i.i.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i.i.i, label %if.then9.i.i.rt2x00link_antenna_get_link_rssi.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

if.then9.i.i.rt2x00link_antenna_get_link_rssi.exit.i.i.i_crit_edge: ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rt2x00link_antenna_get_link_rssi.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %rssi_ant.i.i.i.i = getelementptr i8, ptr %work, i32 -8
  %43 = ptrtoint ptr %rssi_ant.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rssi_ant.i.i.i.i, align 4
  %shr.i.i.i.i.i.i = lshr i32 %44, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %44)
  %tobool.not.i.i.i.i.i = icmp ult i32 %44, 1024
  %sub.i.i.i.i.i = sub nsw i32 0, %shr.i.i.i.i.i.i
  %retval.0.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 -128, i32 %sub.i.i.i.i.i
  br label %rt2x00link_antenna_get_link_rssi.exit.i.i.i

rt2x00link_antenna_get_link_rssi.exit.i.i.i:      ; preds = %if.then.i.i.i.i, %if.then9.i.i.rt2x00link_antenna_get_link_rssi.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %retval.0.i.i.i.i.i, %if.then.i.i.i.i ], [ -128, %if.then9.i.i.rt2x00link_antenna_get_link_rssi.exit.i.i.i_crit_edge ]
  %rssi_history.i.i.i.i = getelementptr i8, ptr %work, i32 -12
  %45 = ptrtoint ptr %rssi_history.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rssi_history.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i32.i.i.i = icmp eq i32 %46, 0
  %..i.i.i.i = select i1 %tobool.not.i32.i.i.i, i32 -128, i32 %46
  %active.i.i.i = getelementptr i8, ptr %work, i32 -24
  %47 = ptrtoint ptr %active.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %new_ant.sroa.0.0.copyload21.i.i.i = load i32, ptr %active.i.i.i, align 4
  %new_ant.sroa.6.0.active.sroa_idx.i.i.i = getelementptr i8, ptr %work, i32 -20
  %48 = ptrtoint ptr %new_ant.sroa.6.0.active.sroa_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %new_ant.sroa.6.0.copyload22.i.i.i = load i32, ptr %new_ant.sroa.6.0.active.sroa_idx.i.i.i, align 4
  %new_ant.sroa.8.0.active.sroa_idx.i.i.i = getelementptr i8, ptr %work, i32 -16
  %49 = ptrtoint ptr %new_ant.sroa.8.0.active.sroa_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %new_ant.sroa.8.0.copyload23.i.i.i = load i32, ptr %new_ant.sroa.8.0.active.sroa_idx.i.i.i, align 4
  %and.i.i.i = and i32 %37, -5
  %50 = ptrtoint ptr %ant1.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and.i.i.i, ptr %ant1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i.i, i32 %..i.i.i.i)
  %cmp.not.i.i.i = icmp slt i32 %retval.0.i.i.i.i, %..i.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %rt2x00link_antenna_get_link_rssi.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %51 = ptrtoint ptr %rssi_history.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %retval.0.i.i.i.i, ptr %rssi_history.i.i.i.i, align 4
  br label %if.then11.i

if.end.i.i.i:                                     ; preds = %rt2x00link_antenna_get_link_rssi.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %new_ant.sroa.0.0.copyload21.i.i.i)
  %cmp4.i.i.i = icmp eq i32 %new_ant.sroa.0.0.copyload21.i.i.i, 1
  %cond.i.i.i = select i1 %cmp4.i.i.i, i32 2, i32 1
  %spec.select.i.i.i = select i1 %tobool.not.i29.i, i32 %new_ant.sroa.0.0.copyload21.i.i.i, i32 %cond.i.i.i
  %new_ant.sroa.6.0.i.i.i = select i1 %tobool4.not.i.i, i32 %new_ant.sroa.6.0.copyload22.i.i.i, i32 %cond.i.i.i
  %.fca.0.insert.i.i.i = insertvalue [3 x i32] poison, i32 %spec.select.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue [3 x i32] %.fca.0.insert.i.i.i, i32 %new_ant.sroa.6.0.i.i.i, 1
  %.fca.2.insert.i.i.i = insertvalue [3 x i32] %.fca.1.insert.i.i.i, i32 %new_ant.sroa.8.0.copyload23.i.i.i, 2
  tail call void @rt2x00lib_config_antenna(ptr noundef %add.ptr, [3 x i32] %.fca.2.insert.i.i.i) #4
  br label %if.then11.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %52 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %link1, align 4
  %and11.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.else.i.i.if.end7_crit_edge, label %if.then13.i.i

if.else.i.i.if.end7_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then13.i.i:                                    ; preds = %if.else.i.i
  %active.i23.i.i = getelementptr i8, ptr %work, i32 -24
  %54 = ptrtoint ptr %active.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %new_ant.sroa.0.0.copyload25.i.i.i = load i32, ptr %active.i23.i.i, align 4
  %new_ant.sroa.7.0.active.sroa_idx.i.i.i = getelementptr i8, ptr %work, i32 -20
  %55 = ptrtoint ptr %new_ant.sroa.7.0.active.sroa_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %new_ant.sroa.7.0.copyload26.i.i.i = load i32, ptr %new_ant.sroa.7.0.active.sroa_idx.i.i.i, align 4
  %new_ant.sroa.10.0.active.sroa_idx.i.i.i = getelementptr i8, ptr %work, i32 -16
  %56 = ptrtoint ptr %new_ant.sroa.10.0.active.sroa_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %new_ant.sroa.10.0.copyload27.i.i.i = load i32, ptr %new_ant.sroa.10.0.active.sroa_idx.i.i.i, align 4
  %57 = ptrtoint ptr %rx_success.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rx_success.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i.i25.i.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i.i25.i.i, label %if.then13.i.i.rt2x00link_antenna_get_link_rssi.exit.i36.i.i_crit_edge, label %if.then.i.i31.i.i

if.then13.i.i.rt2x00link_antenna_get_link_rssi.exit.i36.i.i_crit_edge: ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rt2x00link_antenna_get_link_rssi.exit.i36.i.i

if.then.i.i31.i.i:                                ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %rssi_ant.i.i26.i.i = getelementptr i8, ptr %work, i32 -8
  %59 = ptrtoint ptr %rssi_ant.i.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rssi_ant.i.i26.i.i, align 4
  %shr.i.i.i.i27.i.i = lshr i32 %60, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %60)
  %tobool.not.i.i.i28.i.i = icmp ult i32 %60, 1024
  %sub.i.i.i29.i.i = sub nsw i32 0, %shr.i.i.i.i27.i.i
  %retval.0.i.i.i30.i.i = select i1 %tobool.not.i.i.i28.i.i, i32 -128, i32 %sub.i.i.i29.i.i
  br label %rt2x00link_antenna_get_link_rssi.exit.i36.i.i

rt2x00link_antenna_get_link_rssi.exit.i36.i.i:    ; preds = %if.then.i.i31.i.i, %if.then13.i.i.rt2x00link_antenna_get_link_rssi.exit.i36.i.i_crit_edge
  %retval.0.i.i32.i.i = phi i32 [ %retval.0.i.i.i30.i.i, %if.then.i.i31.i.i ], [ -128, %if.then13.i.i.rt2x00link_antenna_get_link_rssi.exit.i36.i.i_crit_edge ]
  %rssi_history.i.i33.i.i = getelementptr i8, ptr %work, i32 -12
  %61 = ptrtoint ptr %rssi_history.i.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rssi_history.i.i33.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i35.i.i.i = icmp eq i32 %62, 0
  %..i.i34.i.i = select i1 %tobool.not.i35.i.i.i, i32 -128, i32 %62
  %63 = ptrtoint ptr %rssi_history.i.i33.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %retval.0.i.i32.i.i, ptr %rssi_history.i.i33.i.i, align 4
  %sub.i.i.i = sub i32 %retval.0.i.i32.i.i, %..i.i34.i.i
  %64 = tail call i32 @llvm.abs.i32(i32 %sub.i.i.i, i1 false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %64)
  %cmp4.i35.i.i = icmp slt i32 %64, 5
  br i1 %cmp4.i35.i.i, label %rt2x00link_antenna_get_link_rssi.exit.i36.i.i.if.then11.i_crit_edge, label %if.end.i42.i.i

rt2x00link_antenna_get_link_rssi.exit.i36.i.i.if.then11.i_crit_edge: ; preds = %rt2x00link_antenna_get_link_rssi.exit.i36.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11.i

if.end.i42.i.i:                                   ; preds = %rt2x00link_antenna_get_link_rssi.exit.i36.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %or.i.i.i = or i32 %37, 4
  %65 = ptrtoint ptr %ant1.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or.i.i.i, ptr %ant1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %new_ant.sroa.0.0.copyload25.i.i.i)
  %cmp7.i.i.i = icmp eq i32 %new_ant.sroa.0.0.copyload25.i.i.i, 1
  %cond8.i.i.i = select i1 %cmp7.i.i.i, i32 2, i32 1
  %new_ant.sroa.0.0.i.i.i = select i1 %tobool.not.i29.i, i32 %new_ant.sroa.0.0.copyload25.i.i.i, i32 %cond8.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %new_ant.sroa.7.0.copyload26.i.i.i)
  %cmp15.i.i.i = icmp eq i32 %new_ant.sroa.7.0.copyload26.i.i.i, 1
  %cond16.i.i.i = select i1 %cmp15.i.i.i, i32 2, i32 1
  %new_ant.sroa.7.0.i.i.i = select i1 %tobool4.not.i.i, i32 %new_ant.sroa.7.0.copyload26.i.i.i, i32 %cond16.i.i.i
  %.fca.0.insert.i39.i.i = insertvalue [3 x i32] poison, i32 %new_ant.sroa.0.0.i.i.i, 0
  %.fca.1.insert.i40.i.i = insertvalue [3 x i32] %.fca.0.insert.i39.i.i, i32 %new_ant.sroa.7.0.i.i.i, 1
  %.fca.2.insert.i41.i.i = insertvalue [3 x i32] %.fca.1.insert.i40.i.i, i32 %new_ant.sroa.10.0.copyload27.i.i.i, 2
  tail call void @rt2x00lib_config_antenna(ptr noundef %add.ptr, [3 x i32] %.fca.2.insert.i41.i.i) #4
  br label %if.then11.i

if.then11.i:                                      ; preds = %if.end.i42.i.i, %rt2x00link_antenna_get_link_rssi.exit.i36.i.i.if.then11.i_crit_edge, %if.end.i.i.i, %if.then.i.i.i, %if.then.i.i
  %66 = call ptr @memset(ptr %rx_success.i, i32 0, i32 16)
  br label %if.end7

if.end7:                                          ; preds = %if.then11.i, %if.else.i.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %ops = getelementptr i8, ptr %work, i32 -2196
  %67 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops, align 4
  %lib = getelementptr inbounds %struct.rt2x00_ops, ptr %68, i32 0, i32 7
  %69 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %lib, align 4
  %gain_calibration = getelementptr inbounds %struct.rt2x00lib_ops, ptr %70, i32 0, i32 19
  %71 = ptrtoint ptr %gain_calibration to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %gain_calibration, align 4
  %tobool8.not = icmp eq ptr %72, null
  br i1 %tobool8.not, label %if.end7.if.end13_crit_edge, label %land.lhs.true

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end7
  %73 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %link1, align 4
  %rem = and i32 %74, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then9, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %72(ptr noundef %add.ptr) #4
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %land.lhs.true.if.end13_crit_edge, %if.end7.if.end13_crit_edge
  %75 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops, align 4
  %lib15 = getelementptr inbounds %struct.rt2x00_ops, ptr %76, i32 0, i32 7
  %77 = ptrtoint ptr %lib15 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %lib15, align 4
  %vco_calibration = getelementptr inbounds %struct.rt2x00lib_ops, ptr %78, i32 0, i32 20
  %79 = ptrtoint ptr %vco_calibration to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %vco_calibration, align 4
  %tobool16.not = icmp eq ptr %80, null
  br i1 %tobool16.not, label %if.end13.if.end27_crit_edge, label %land.lhs.true17

if.end13.if.end27_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

land.lhs.true17:                                  ; preds = %if.end13
  %cap_flags.i.i = getelementptr i8, ptr %work, i32 -372
  %81 = ptrtoint ptr %cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %cap_flags.i.i, align 4
  %83 = and i32 %82, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.i.i.not = icmp eq i32 %83, 0
  br i1 %tobool.i.i.not, label %land.lhs.true17.if.end27_crit_edge, label %land.lhs.true19

land.lhs.true17.if.end27_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

land.lhs.true19:                                  ; preds = %land.lhs.true17
  %84 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %link1, align 4
  %rem21 = urem i32 %85, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem21)
  %cmp22 = icmp eq i32 %rem21, 0
  br i1 %cmp22, label %if.then23, label %land.lhs.true19.if.end27_crit_edge

land.lhs.true19.if.end27_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then23:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %80(ptr noundef %add.ptr) #4
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %land.lhs.true19.if.end27_crit_edge, %land.lhs.true17.if.end27_crit_edge, %if.end13.if.end27_crit_edge
  tail call void @mutex_unlock(ptr noundef %conf_mutex) #4
  %86 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %link1, align 4
  %inc = add i32 %87, 1
  store i32 %inc, ptr %link1, align 4
  %88 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %flags, align 4
  %and1.i59 = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i59)
  %tobool32.not = icmp eq i32 %and1.i59, 0
  br i1 %tobool32.not, label %if.end27.cleanup_crit_edge, label %if.then33

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  %hw = getelementptr i8, ptr %work, i32 -2188
  %90 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw, align 4
  %call35 = tail call i32 @round_jiffies_relative(i32 noundef 100) #4
  tail call void @ieee80211_queue_delayed_work(ptr noundef %91, ptr noundef %work, i32 noundef %call35) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.end27.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rt2x00link_watchdog(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %work, i32 -476
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -2300
  %ops = getelementptr i8, ptr %work, i32 -2296
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %lib = getelementptr inbounds %struct.rt2x00_ops, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lib, align 4
  %watchdog = getelementptr inbounds %struct.rt2x00lib_ops, ptr %6, i32 0, i32 21
  %7 = ptrtoint ptr %watchdog to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %watchdog, align 4
  tail call void %8(ptr noundef %add.ptr) #4
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %and1.i14 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i14)
  %tobool4.not = icmp eq i32 %and1.i14, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %hw = getelementptr i8, ptr %work, i32 -2288
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %watchdog_interval = getelementptr i8, ptr %work, i32 100
  %13 = ptrtoint ptr %watchdog_interval to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %watchdog_interval, align 4
  tail call void @ieee80211_queue_delayed_work(ptr noundef %12, ptr noundef %work, i32 noundef %14) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00leds_led_quality(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00lib_config_antenna(ptr noundef, [3 x i32]) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @rt2x00link_register.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00link.c", i32 423, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @rt2x00link_register.__key.1, !1, !"__key", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rt2x00link_register.__key.3, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00link.c", i32 424, i32 2}
!7 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @rt2x00link_register.__key.5, !6, !"__key", i1 false, i1 false}
!9 = !{ptr @.str.6, !6, !"<string literal>", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i8 0, i8 2}
