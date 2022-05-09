; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wl18xx/io.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wl18xx/io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.wl1271 = type { i8, ptr, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.spinlock, i32, i32, i8, i32, i8, i8, %struct.mutex, i32, %struct.wlcore_partition_set, %struct.wl1271_chip, i32, ptr, i32, ptr, i32, i8, i32, i32, [3 x %struct.mac_address], i32, i8, [1 x i32], [1 x i32], [1 x i32], [1 x i32], [1 x i32], [16 x i8], %struct.list_head, i8, i8, ptr, i32, i32, i32, i32, [4 x i32], [4 x i32], i32, i64, [4 x i32], [12 x i32], %struct.sk_buff_head, %struct.sk_buff_head, %struct.work_struct, ptr, [1 x i32], [32 x ptr], i32, i32, ptr, i32, ptr, %struct.work_struct, ptr, i32, i32, i32, %struct.work_struct, i8, [2 x i32], [2 x i32], ptr, i32, i32, i32, [2 x i32], ptr, %struct.wl1271_scan, %struct.delayed_work, ptr, %struct.delayed_work, ptr, i32, ptr, i32, %struct.wl1271_stats, ptr, i32, [1 x i32], ptr, ptr, ptr, %struct.wlcore_conf, i8, i8, i32, i8, [2 x %struct.ieee80211_supported_band], i8, i8, [16 x %struct.wl1271_link], i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, i32, i8, i8, ptr, i8, i8, [2 x %struct.ieee80211_sta_ht_cap], i32, i8, i32, i32, [1 x i32], i32, i32, %struct.mutex, i32, i32, [5 x i32], [5 x i32], %struct.completion, ptr, i8, i32, [6 x i8] }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wlcore_partition_set = type { %struct.wlcore_partition, %struct.wlcore_partition, %struct.wlcore_partition, %struct.wlcore_partition }
%struct.wlcore_partition = type { i32, i32 }
%struct.wl1271_chip = type { i32, [32 x i8], [5 x i32], [32 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.wl1271_scan = type { ptr, [2 x i32], i8, i8, [33 x i8], i32 }
%struct.wl1271_stats = type { ptr, i32, i32, i32, i32 }
%struct.wlcore_conf = type <{ %struct.conf_sg_settings, %struct.conf_rx_settings, %struct.conf_tx_settings, %struct.conf_conn_settings, %struct.conf_itrim_settings, %struct.conf_pm_config_settings, %struct.conf_roam_trigger_settings, %struct.conf_scan_settings, %struct.conf_sched_scan_settings, %struct.conf_ht_setting, %struct.conf_memory_settings, %struct.conf_fm_coex, %struct.conf_rx_streaming_settings, %struct.conf_fwlog, %struct.conf_rate_policy_settings, %struct.conf_hangover_settings, %struct.conf_recovery_settings }>
%struct.conf_sg_settings = type <{ [67 x i32], i8 }>
%struct.conf_rx_settings = type <{ i32, i32, i16, i16, i16, i16, i16, i16, i16, i8 }>
%struct.conf_tx_settings = type <{ i8, %struct.conf_tx_rate_class, i8, [4 x %struct.conf_tx_ac_category], i8, i16, i8, [8 x %struct.conf_tx_tid], i16, i16, i16, i32, i32, i8, i8, i32, i8, i8 }>
%struct.conf_tx_rate_class = type <{ i32, i8, i8, i8 }>
%struct.conf_tx_ac_category = type <{ i8, i8, i16, i8, i16 }>
%struct.conf_tx_tid = type <{ i8, i8, i8, i8, i8, [2 x i32] }>
%struct.conf_conn_settings = type <{ i8, i8, i8, i8, i8, i8, [32 x %struct.conf_bcn_filt_rule], i32, i32, i32, i32, i8, i8, %struct.conf_sig_weights, i8, i8, i8, i8, i8, i16, i8, i32, i8, i8, i8 }>
%struct.conf_bcn_filt_rule = type { i8, i8, [3 x i8], i8, [2 x i8] }
%struct.conf_sig_weights = type { i8, i8, i8, i8 }
%struct.conf_itrim_settings = type <{ i8, i32 }>
%struct.conf_pm_config_settings = type <{ i32, i8 }>
%struct.conf_roam_trigger_settings = type { i16, i8, i8, i8, i8 }
%struct.conf_scan_settings = type <{ i32, i32, i32, i32, i32, i32, i16, i32 }>
%struct.conf_sched_scan_settings = type <{ i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16 }>
%struct.conf_ht_setting = type <{ i8, i8, i16, i8 }>
%struct.conf_memory_settings = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.conf_fm_coex = type { i8, i8, i8, i8, i16, i16, i32, i16, i8, i8 }
%struct.conf_rx_streaming_settings = type <{ i32, i8, i8, i8 }>
%struct.conf_fwlog = type { i8, i8, i8, i8, i8, i8 }
%struct.conf_rate_policy_settings = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, [13 x i8] }
%struct.conf_hangover_settings = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.conf_recovery_settings = type { i8, i8 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.wl1271_link = type { [4 x %struct.sk_buff_head], i8, i8, [6 x i8], i8, i8, i8, ptr, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wl1271_if_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/wireless/ti/wl18xx/io.c\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/ti/wl18xx/../wlcore/io.h\00", [50 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private constant [39 x i8] c"../drivers/net/wireless/ti/wl18xx/io.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 18, i32 6 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [49 x i8] c"../drivers/net/wireless/ti/wl18xx/../wlcore/io.h\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 69, i32 6 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl18xx_top_reg_write(ptr noundef %wl, i32 noundef %addr, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %addr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end23, label %do.end, !prof !13

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 18, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end23:                                         ; preds = %entry
  %1 = and i32 %addr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end23
  %call.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %addr) #3
  %buffer_32.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 88
  %2 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer_32.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %4 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i.i.i, align 4
  %6 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false.i.i.i:                              ; preds = %if.then25
  %7 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i.i.i, align 4
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not.i.i.i = icmp ne i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i)
  %cmp.i.i.i = icmp ne i32 %call.i, 131068
  %spec.select.i.i.i = and i1 %cmp.i.i.i, %tobool3.not.i.i.i
  br i1 %spec.select.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !14

do.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 70, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end25.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %if_ops.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %10 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %if_ops.i.i.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %dev.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %14 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i = tail call i32 %13(ptr noundef %15, i32 noundef %call.i, ptr noundef %3, i32 noundef 4, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %if.end25.i.i.i.if.end28_crit_edge, label %land.lhs.true.i.i.i

if.end25.i.i.i.if.end28_crit_edge:                ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end28

land.lhs.true.i.i.i:                              ; preds = %if.end25.i.i.i
  %state.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %16 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp29.not.i.i.i = icmp eq i32 %17, 0
  br i1 %cmp29.not.i.i.i, label %land.lhs.true.i.i.i.wlcore_raw_read.exit.i.i_crit_edge, label %if.then30.i.i.i

land.lhs.true.i.i.i.wlcore_raw_read.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %wlcore_raw_read.exit.i.i

if.then30.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #3
  br label %wlcore_raw_read.exit.i.i

wlcore_raw_read.exit.i.i:                         ; preds = %if.then30.i.i.i, %land.lhs.true.i.i.i.wlcore_raw_read.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %cmp.i.i = icmp slt i32 %call27.i.i.i, 0
  br i1 %cmp.i.i, label %wlcore_raw_read.exit.i.i.cleanup_crit_edge, label %wlcore_raw_read.exit.i.i.if.end28_crit_edge

wlcore_raw_read.exit.i.i.if.end28_crit_edge:      ; preds = %wlcore_raw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end28

wlcore_raw_read.exit.i.i.cleanup_crit_edge:       ; preds = %wlcore_raw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end28:                                         ; preds = %wlcore_raw_read.exit.i.i.if.end28_crit_edge, %if.end25.i.i.i.if.end28_crit_edge
  %18 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer_32.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %22 = and i32 %21, 65535
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %conv = zext i16 %val to i32
  %or = or i32 %23, %conv
  %call.i54 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %addr) #3
  %24 = tail call i32 @llvm.bswap.i32(i32 %or) #3
  %25 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buffer_32.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %26, align 4
  %28 = load ptr, ptr %buffer_32.i.i, align 4
  %29 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flags.i.i.i, align 4
  %31 = and i32 %30, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i.i57 = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i.i57, label %lor.lhs.false.i.i.i61, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false.i.i.i61:                            ; preds = %if.end28
  %32 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags.i.i.i, align 4
  %34 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool3.not.i.i.i58 = icmp ne i32 %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i54)
  %cmp.i.i.i59 = icmp ne i32 %call.i54, 131068
  %spec.select.i.i.i60 = and i1 %cmp.i.i.i59, %tobool3.not.i.i.i58
  br i1 %spec.select.i.i.i60, label %do.end.i.i.i62, label %if.end25.i.i.i67, !prof !14

do.end.i.i.i62:                                   ; preds = %lor.lhs.false.i.i.i61
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 52, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end25.i.i.i67:                                 ; preds = %lor.lhs.false.i.i.i61
  %35 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %if_ops.i.i.i, align 8
  %write.i.i.i = getelementptr inbounds %struct.wl1271_if_operations, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write.i.i.i, align 4
  %39 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i65 = tail call i32 %38(ptr noundef %40, i32 noundef %call.i54, ptr noundef %28, i32 noundef 4, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i65)
  %tobool28.not.i.i.i66 = icmp eq i32 %call27.i.i.i65, 0
  br i1 %tobool28.not.i.i.i66, label %if.end25.i.i.i67.cleanup_crit_edge, label %land.lhs.true.i.i.i70

if.end25.i.i.i67.cleanup_crit_edge:               ; preds = %if.end25.i.i.i67
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.i.i.i70:                            ; preds = %if.end25.i.i.i67
  %state.i.i.i68 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %41 = ptrtoint ptr %state.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %state.i.i.i68, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp29.not.i.i.i69 = icmp eq i32 %42, 0
  br i1 %cmp29.not.i.i.i69, label %land.lhs.true.i.i.i70.cleanup_crit_edge, label %if.then30.i.i.i71

land.lhs.true.i.i.i70.cleanup_crit_edge:          ; preds = %land.lhs.true.i.i.i70
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then30.i.i.i71:                                ; preds = %land.lhs.true.i.i.i70
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #3
  br label %cleanup

if.else:                                          ; preds = %if.end23
  %sub = add i32 %addr, -2
  %call.i72 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %sub) #3
  %buffer_32.i.i73 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 88
  %43 = ptrtoint ptr %buffer_32.i.i73 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buffer_32.i.i73, align 4
  %flags.i.i.i74 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %45 = ptrtoint ptr %flags.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %flags.i.i.i74, align 4
  %47 = and i32 %46, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i.i75 = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i.i75, label %lor.lhs.false.i.i.i79, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false.i.i.i79:                            ; preds = %if.else
  %48 = ptrtoint ptr %flags.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %flags.i.i.i74, align 4
  %50 = and i32 %49, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool3.not.i.i.i76 = icmp ne i32 %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i72)
  %cmp.i.i.i77 = icmp ne i32 %call.i72, 131068
  %spec.select.i.i.i78 = and i1 %cmp.i.i.i77, %tobool3.not.i.i.i76
  br i1 %spec.select.i.i.i78, label %do.end.i.i.i80, label %if.end25.i.i.i85, !prof !14

do.end.i.i.i80:                                   ; preds = %lor.lhs.false.i.i.i79
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 70, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end25.i.i.i85:                                 ; preds = %lor.lhs.false.i.i.i79
  %if_ops.i.i.i81 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %51 = ptrtoint ptr %if_ops.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %if_ops.i.i.i81, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %dev.i.i.i82 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %55 = ptrtoint ptr %dev.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev.i.i.i82, align 4
  %call27.i.i.i83 = tail call i32 %54(ptr noundef %56, i32 noundef %call.i72, ptr noundef %44, i32 noundef 4, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i83)
  %tobool28.not.i.i.i84 = icmp eq i32 %call27.i.i.i83, 0
  br i1 %tobool28.not.i.i.i84, label %if.end25.i.i.i85.if.end34_crit_edge, label %land.lhs.true.i.i.i88

if.end25.i.i.i85.if.end34_crit_edge:              ; preds = %if.end25.i.i.i85
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end34

land.lhs.true.i.i.i88:                            ; preds = %if.end25.i.i.i85
  %state.i.i.i86 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %57 = ptrtoint ptr %state.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %state.i.i.i86, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp29.not.i.i.i87 = icmp eq i32 %58, 0
  br i1 %cmp29.not.i.i.i87, label %land.lhs.true.i.i.i88.wlcore_raw_read.exit.i.i91_crit_edge, label %if.then30.i.i.i89

land.lhs.true.i.i.i88.wlcore_raw_read.exit.i.i91_crit_edge: ; preds = %land.lhs.true.i.i.i88
  call void @__sanitizer_cov_trace_pc() #5
  br label %wlcore_raw_read.exit.i.i91

if.then30.i.i.i89:                                ; preds = %land.lhs.true.i.i.i88
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i74) #3
  br label %wlcore_raw_read.exit.i.i91

wlcore_raw_read.exit.i.i91:                       ; preds = %if.then30.i.i.i89, %land.lhs.true.i.i.i88.wlcore_raw_read.exit.i.i91_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i83)
  %cmp.i.i90 = icmp slt i32 %call27.i.i.i83, 0
  br i1 %cmp.i.i90, label %wlcore_raw_read.exit.i.i91.cleanup_crit_edge, label %wlcore_raw_read.exit.i.i91.if.end34_crit_edge

wlcore_raw_read.exit.i.i91.if.end34_crit_edge:    ; preds = %wlcore_raw_read.exit.i.i91
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end34

wlcore_raw_read.exit.i.i91.cleanup_crit_edge:     ; preds = %wlcore_raw_read.exit.i.i91
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end34:                                         ; preds = %wlcore_raw_read.exit.i.i91.if.end34_crit_edge, %if.end25.i.i.i85.if.end34_crit_edge
  %59 = ptrtoint ptr %buffer_32.i.i73 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %buffer_32.i.i73, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %63 = and i32 %62, -65536
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  %conv36 = zext i16 %val to i32
  %shl = shl nuw i32 %conv36, 16
  %or37 = or i32 %64, %shl
  %call.i95 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %sub) #3
  %65 = tail call i32 @llvm.bswap.i32(i32 %or37) #3
  %66 = ptrtoint ptr %buffer_32.i.i73 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %buffer_32.i.i73, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %65, ptr %67, align 4
  %69 = load ptr, ptr %buffer_32.i.i73, align 4
  %70 = ptrtoint ptr %flags.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %flags.i.i.i74, align 4
  %72 = and i32 %71, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i.i.i98 = icmp eq i32 %72, 0
  br i1 %tobool.not.i.i.i98, label %lor.lhs.false.i.i.i102, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false.i.i.i102:                           ; preds = %if.end34
  %73 = ptrtoint ptr %flags.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %flags.i.i.i74, align 4
  %75 = and i32 %74, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool3.not.i.i.i99 = icmp ne i32 %75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i95)
  %cmp.i.i.i100 = icmp ne i32 %call.i95, 131068
  %spec.select.i.i.i101 = and i1 %cmp.i.i.i100, %tobool3.not.i.i.i99
  br i1 %spec.select.i.i.i101, label %do.end.i.i.i103, label %if.end25.i.i.i109, !prof !14

do.end.i.i.i103:                                  ; preds = %lor.lhs.false.i.i.i102
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 52, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end25.i.i.i109:                                ; preds = %lor.lhs.false.i.i.i102
  %76 = ptrtoint ptr %if_ops.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %if_ops.i.i.i81, align 8
  %write.i.i.i105 = getelementptr inbounds %struct.wl1271_if_operations, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %write.i.i.i105 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write.i.i.i105, align 4
  %80 = ptrtoint ptr %dev.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i.i.i82, align 4
  %call27.i.i.i107 = tail call i32 %79(ptr noundef %81, i32 noundef %call.i95, ptr noundef %69, i32 noundef 4, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i107)
  %tobool28.not.i.i.i108 = icmp eq i32 %call27.i.i.i107, 0
  br i1 %tobool28.not.i.i.i108, label %if.end25.i.i.i109.cleanup_crit_edge, label %land.lhs.true.i.i.i112

if.end25.i.i.i109.cleanup_crit_edge:              ; preds = %if.end25.i.i.i109
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.i.i.i112:                           ; preds = %if.end25.i.i.i109
  %state.i.i.i110 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %82 = ptrtoint ptr %state.i.i.i110 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %state.i.i.i110, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp29.not.i.i.i111 = icmp eq i32 %83, 0
  br i1 %cmp29.not.i.i.i111, label %land.lhs.true.i.i.i112.cleanup_crit_edge, label %if.then30.i.i.i113

land.lhs.true.i.i.i112.cleanup_crit_edge:         ; preds = %land.lhs.true.i.i.i112
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then30.i.i.i113:                               ; preds = %land.lhs.true.i.i.i112
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i74) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then30.i.i.i113, %land.lhs.true.i.i.i112.cleanup_crit_edge, %if.end25.i.i.i109.cleanup_crit_edge, %do.end.i.i.i103, %if.end34.cleanup_crit_edge, %wlcore_raw_read.exit.i.i91.cleanup_crit_edge, %do.end.i.i.i80, %if.else.cleanup_crit_edge, %if.then30.i.i.i71, %land.lhs.true.i.i.i70.cleanup_crit_edge, %if.end25.i.i.i67.cleanup_crit_edge, %do.end.i.i.i62, %if.end28.cleanup_crit_edge, %wlcore_raw_read.exit.i.i.cleanup_crit_edge, %do.end.i.i.i, %if.then25.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -5, %do.end.i.i.i62 ], [ -5, %if.end28.cleanup_crit_edge ], [ %call27.i.i.i65, %if.then30.i.i.i71 ], [ %call27.i.i.i65, %land.lhs.true.i.i.i70.cleanup_crit_edge ], [ 0, %if.end25.i.i.i67.cleanup_crit_edge ], [ -5, %do.end.i.i.i103 ], [ -5, %if.end34.cleanup_crit_edge ], [ %call27.i.i.i107, %if.then30.i.i.i113 ], [ %call27.i.i.i107, %land.lhs.true.i.i.i112.cleanup_crit_edge ], [ 0, %if.end25.i.i.i109.cleanup_crit_edge ], [ -5, %if.then25.cleanup_crit_edge ], [ -5, %do.end.i.i.i ], [ %call27.i.i.i, %wlcore_raw_read.exit.i.i.cleanup_crit_edge ], [ -5, %if.else.cleanup_crit_edge ], [ -5, %do.end.i.i.i80 ], [ %call27.i.i.i83, %wlcore_raw_read.exit.i.i91.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl18xx_top_reg_read(ptr noundef %wl, i32 noundef %addr, ptr noundef writeonly %out) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %addr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !13

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end22:                                         ; preds = %entry
  %1 = and i32 %addr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end22
  %call.i = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %addr) #3
  %buffer_32.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 88
  %2 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer_32.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %4 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i.i.i, align 4
  %6 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false.i.i.i:                              ; preds = %if.then24
  %7 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i.i.i, align 4
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not.i.i.i = icmp ne i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i)
  %cmp.i.i.i = icmp ne i32 %call.i, 131068
  %spec.select.i.i.i = and i1 %cmp.i.i.i, %tobool3.not.i.i.i
  br i1 %spec.select.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !14

do.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 70, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end25.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %if_ops.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %10 = ptrtoint ptr %if_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %if_ops.i.i.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %dev.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %14 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i.i, align 4
  %call27.i.i.i = tail call i32 %13(ptr noundef %15, i32 noundef %call.i, ptr noundef %3, i32 noundef 4, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %if.end25.i.i.i.wlcore_read32.exit_crit_edge, label %land.lhs.true.i.i.i

if.end25.i.i.i.wlcore_read32.exit_crit_edge:      ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %wlcore_read32.exit

land.lhs.true.i.i.i:                              ; preds = %if.end25.i.i.i
  %state.i.i.i = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %16 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp29.not.i.i.i = icmp eq i32 %17, 0
  br i1 %cmp29.not.i.i.i, label %land.lhs.true.i.i.i.wlcore_raw_read.exit.i.i_crit_edge, label %if.then30.i.i.i

land.lhs.true.i.i.i.wlcore_raw_read.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %wlcore_raw_read.exit.i.i

if.then30.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i) #3
  br label %wlcore_raw_read.exit.i.i

wlcore_raw_read.exit.i.i:                         ; preds = %if.then30.i.i.i, %land.lhs.true.i.i.i.wlcore_raw_read.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %cmp.i.i = icmp slt i32 %call27.i.i.i, 0
  br i1 %cmp.i.i, label %wlcore_raw_read.exit.i.i.cleanup_crit_edge, label %wlcore_raw_read.exit.i.i.wlcore_read32.exit_crit_edge

wlcore_raw_read.exit.i.i.wlcore_read32.exit_crit_edge: ; preds = %wlcore_raw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %wlcore_read32.exit

wlcore_raw_read.exit.i.i.cleanup_crit_edge:       ; preds = %wlcore_raw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

wlcore_read32.exit:                               ; preds = %wlcore_raw_read.exit.i.i.wlcore_read32.exit_crit_edge, %if.end25.i.i.i.wlcore_read32.exit_crit_edge
  %tobool26.not = icmp eq ptr %out, null
  br i1 %tobool26.not, label %wlcore_read32.exit.cleanup_crit_edge, label %if.then27

wlcore_read32.exit.cleanup_crit_edge:             ; preds = %wlcore_read32.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then27:                                        ; preds = %wlcore_read32.exit
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %buffer_32.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer_32.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #3
  %conv = trunc i32 %22 to i16
  %23 = ptrtoint ptr %out to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv, ptr %out, align 2
  br label %cleanup

if.else:                                          ; preds = %if.end22
  %sub = add i32 %addr, -2
  %call.i51 = tail call i32 @wlcore_translate_addr(ptr noundef %wl, i32 noundef %sub) #3
  %buffer_32.i.i52 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 88
  %24 = ptrtoint ptr %buffer_32.i.i52 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer_32.i.i52, align 4
  %flags.i.i.i53 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 19
  %26 = ptrtoint ptr %flags.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags.i.i.i53, align 4
  %28 = and i32 %27, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i.i54 = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i.i54, label %lor.lhs.false.i.i.i58, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false.i.i.i58:                            ; preds = %if.else
  %29 = ptrtoint ptr %flags.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flags.i.i.i53, align 4
  %31 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool3.not.i.i.i55 = icmp ne i32 %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 131068, i32 %call.i51)
  %cmp.i.i.i56 = icmp ne i32 %call.i51, 131068
  %spec.select.i.i.i57 = and i1 %cmp.i.i.i56, %tobool3.not.i.i.i55
  br i1 %spec.select.i.i.i57, label %do.end.i.i.i59, label %if.end25.i.i.i64, !prof !14

do.end.i.i.i59:                                   ; preds = %lor.lhs.false.i.i.i58
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 70, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end25.i.i.i64:                                 ; preds = %lor.lhs.false.i.i.i58
  %if_ops.i.i.i60 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 6
  %32 = ptrtoint ptr %if_ops.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %if_ops.i.i.i60, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %dev.i.i.i61 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 3
  %36 = ptrtoint ptr %dev.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i.i.i61, align 4
  %call27.i.i.i62 = tail call i32 %35(ptr noundef %37, i32 noundef %call.i51, ptr noundef %25, i32 noundef 4, i1 noundef zeroext false) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i62)
  %tobool28.not.i.i.i63 = icmp eq i32 %call27.i.i.i62, 0
  br i1 %tobool28.not.i.i.i63, label %if.end25.i.i.i64.wlcore_read32.exit73_crit_edge, label %land.lhs.true.i.i.i67

if.end25.i.i.i64.wlcore_read32.exit73_crit_edge:  ; preds = %if.end25.i.i.i64
  call void @__sanitizer_cov_trace_pc() #5
  br label %wlcore_read32.exit73

land.lhs.true.i.i.i67:                            ; preds = %if.end25.i.i.i64
  %state.i.i.i65 = getelementptr inbounds %struct.wl1271, ptr %wl, i32 0, i32 12
  %38 = ptrtoint ptr %state.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %state.i.i.i65, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp29.not.i.i.i66 = icmp eq i32 %39, 0
  br i1 %cmp29.not.i.i.i66, label %land.lhs.true.i.i.i67.wlcore_raw_read.exit.i.i70_crit_edge, label %if.then30.i.i.i68

land.lhs.true.i.i.i67.wlcore_raw_read.exit.i.i70_crit_edge: ; preds = %land.lhs.true.i.i.i67
  call void @__sanitizer_cov_trace_pc() #5
  br label %wlcore_raw_read.exit.i.i70

if.then30.i.i.i68:                                ; preds = %land.lhs.true.i.i.i67
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_set_bit(i32 noundef 13, ptr noundef %flags.i.i.i53) #3
  br label %wlcore_raw_read.exit.i.i70

wlcore_raw_read.exit.i.i70:                       ; preds = %if.then30.i.i.i68, %land.lhs.true.i.i.i67.wlcore_raw_read.exit.i.i70_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i62)
  %cmp.i.i69 = icmp slt i32 %call27.i.i.i62, 0
  br i1 %cmp.i.i69, label %wlcore_raw_read.exit.i.i70.cleanup_crit_edge, label %wlcore_raw_read.exit.i.i70.wlcore_read32.exit73_crit_edge

wlcore_raw_read.exit.i.i70.wlcore_read32.exit73_crit_edge: ; preds = %wlcore_raw_read.exit.i.i70
  call void @__sanitizer_cov_trace_pc() #5
  br label %wlcore_read32.exit73

wlcore_raw_read.exit.i.i70.cleanup_crit_edge:     ; preds = %wlcore_raw_read.exit.i.i70
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

wlcore_read32.exit73:                             ; preds = %wlcore_raw_read.exit.i.i70.wlcore_read32.exit73_crit_edge, %if.end25.i.i.i64.wlcore_read32.exit73_crit_edge
  %tobool33.not = icmp eq ptr %out, null
  br i1 %tobool33.not, label %wlcore_read32.exit73.cleanup_crit_edge, label %if.then34

wlcore_read32.exit73.cleanup_crit_edge:           ; preds = %wlcore_read32.exit73
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then34:                                        ; preds = %wlcore_read32.exit73
  call void @__sanitizer_cov_trace_pc() #5
  %40 = ptrtoint ptr %buffer_32.i.i52 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buffer_32.i.i52, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #3
  %shr = lshr i32 %44, 16
  %conv36 = trunc i32 %shr to i16
  %45 = ptrtoint ptr %out to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv36, ptr %out, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %wlcore_read32.exit73.cleanup_crit_edge, %wlcore_raw_read.exit.i.i70.cleanup_crit_edge, %do.end.i.i.i59, %if.else.cleanup_crit_edge, %if.then27, %wlcore_read32.exit.cleanup_crit_edge, %wlcore_raw_read.exit.i.i.cleanup_crit_edge, %do.end.i.i.i, %if.then24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then27 ], [ 0, %wlcore_read32.exit.cleanup_crit_edge ], [ 0, %if.then34 ], [ 0, %wlcore_read32.exit73.cleanup_crit_edge ], [ -5, %if.then24.cleanup_crit_edge ], [ -5, %do.end.i.i.i ], [ %call27.i.i.i, %wlcore_raw_read.exit.i.i.cleanup_crit_edge ], [ -5, %if.else.cleanup_crit_edge ], [ -5, %do.end.i.i.i59 ], [ %call27.i.i.i62, %wlcore_raw_read.exit.i.i70.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wlcore_translate_addr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wl18xx/io.c", i32 18, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ti/wl18xx/../wlcore/io.h", i32 69, i32 6}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{!"branch_weights", i32 1, i32 2000}
