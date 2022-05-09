; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ralink/rt2x00/rt2x00config.c_pt.bc'
source_filename = "../drivers/net/wireless/ralink/rt2x00/rt2x00config.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rt2x00intf_conf = type { i32, i32, [2 x i32], [2 x i32] }
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
%struct.rt2x00_ops = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.rt2x00lib_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rt2x00lib_erp = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.ieee80211_bss_conf = type { ptr, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i16, i16, i64, i32, i8, i32, ptr, [6 x i32], i16, i32, i32, i32, i32, %struct.cfg80211_chan_def, %struct.ieee80211_mu_group_data, [4 x i32], i32, i8, i8, i8, [32 x i8], i32, i8, i32, i32, %struct.ieee80211_p2p_noa_attr, i8, i16, i8, i8, ptr, i8, [6 x i8], i8, i8, i8, i8, %struct.anon.103, %struct.ieee80211_he_obss_pd, %struct.cfg80211_he_bss_color, %struct.ieee80211_fils_discovery, i32, i8, %struct.cfg80211_bitrate_mask, i32, [8 x %struct.ieee80211_tx_pwr_env], i8, i8 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_mu_group_data = type { [8 x i8], [16 x i8] }
%struct.ieee80211_p2p_noa_attr = type { i8, i8, [4 x %struct.ieee80211_p2p_noa_desc] }
%struct.ieee80211_p2p_noa_desc = type <{ i8, i32, i32, i32 }>
%struct.anon.103 = type { i32, i16 }
%struct.ieee80211_he_obss_pd = type { i8, i8, i8, i8, i8, [8 x i8], [8 x i8] }
%struct.cfg80211_he_bss_color = type { i8, i8, i8 }
%struct.ieee80211_fils_discovery = type { i32, i32 }
%struct.cfg80211_bitrate_mask = type { [6 x %struct.anon.104] }
%struct.anon.104 = type { i32, [10 x i8], [8 x i16], [8 x i16], i32, i32, i32 }
%struct.ieee80211_tx_pwr_env = type { i8, [8 x i8] }
%struct.rt2x00lib_conf = type { ptr, %struct.rf_channel, %struct.channel_info }
%struct.rf_channel = type { i32, i32, i32, i32, i32 }
%struct.channel_info = type { i32, i16, i16, i16, i16 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/wireless/ralink/rt2x00/rt2x00config.c\00", [46 x i8] zeroinitializer }, align 32
@switch.table.rt2x00lib_config_intf = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 2, i32 1, i32 3, i32 0, i32 0, i32 0, i32 3], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 6, i64 7]
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [53 x i8] c"../drivers/net/wireless/ralink/rt2x00/rt2x00config.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 187, i32 2 }
@___asan_gen_.4 = private unnamed_addr constant [35 x i8] c"switch.table.rt2x00lib_config_intf\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @switch.table.rt2x00lib_config_intf], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rt2x00lib_config_intf to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00lib_config_intf(ptr noundef %rt2x00dev, ptr noundef %intf, i32 noundef %type, ptr noundef readonly %mac, ptr noundef readonly %bssid) local_unnamed_addr #0 align 64 {
entry:
  %conf = alloca %struct.rt2x00intf_conf, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %conf) #3
  %0 = getelementptr inbounds %struct.rt2x00intf_conf, ptr %conf, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rt2x00intf_conf, ptr %conf, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rt2x00intf_conf, ptr %conf, i32 0, i32 3
  %3 = getelementptr inbounds i8, ptr %conf, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %5 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %type, ptr %conf, align 4
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 7
  br i1 %6, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.rt2x00lib_config_intf, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.sw.epilog_crit_edge ]
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %0, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 0, ptr %1, align 4
  %tobool.not = icmp eq ptr %mac, null
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %10 = call ptr @memcpy(ptr %1, ptr %mac, i32 6)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 0, ptr %2, align 4
  %tobool12.not = icmp eq ptr %bssid, null
  br i1 %tobool12.not, label %if.end.if.end16_crit_edge, label %if.then13

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %12 = call ptr @memcpy(ptr %2, ptr %bssid, i32 6)
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end.if.end16_crit_edge
  br i1 %tobool.not, label %lor.lhs.false, label %if.end16.if.then20_crit_edge

if.end16.if.then20_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.end16
  %intf_ap_count = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 24
  %13 = ptrtoint ptr %intf_ap_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %intf_ap_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool18.not = icmp eq i32 %14, 0
  br i1 %tobool18.not, label %land.lhs.true, label %lor.lhs.false.if.end22_crit_edge

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22

land.lhs.true:                                    ; preds = %lor.lhs.false
  %intf_sta_count = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 25
  %15 = ptrtoint ptr %intf_sta_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %intf_sta_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool19.not = icmp eq i32 %16, 0
  br i1 %tobool19.not, label %land.lhs.true.if.then20_crit_edge, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end22

land.lhs.true.if.then20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then20

if.then20:                                        ; preds = %land.lhs.true.if.then20_crit_edge, %if.end16.if.then20_crit_edge
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %land.lhs.true.if.end22_crit_edge, %lor.lhs.false.if.end22_crit_edge
  %flags.0 = phi i32 [ 6, %if.then20 ], [ 2, %lor.lhs.false.if.end22_crit_edge ], [ 2, %land.lhs.true.if.end22_crit_edge ]
  br i1 %tobool12.not, label %lor.lhs.false24, label %if.end22.if.then30_crit_edge

if.end22.if.then30_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then30

lor.lhs.false24:                                  ; preds = %if.end22
  %intf_ap_count25 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 24
  %17 = ptrtoint ptr %intf_ap_count25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %intf_ap_count25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool26.not = icmp eq i32 %18, 0
  br i1 %tobool26.not, label %land.lhs.true27, label %lor.lhs.false24.if.end32_crit_edge

lor.lhs.false24.if.end32_crit_edge:               ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end32

land.lhs.true27:                                  ; preds = %lor.lhs.false24
  %intf_sta_count28 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 25
  %19 = ptrtoint ptr %intf_sta_count28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %intf_sta_count28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool29.not = icmp eq i32 %20, 0
  br i1 %tobool29.not, label %land.lhs.true27.if.then30_crit_edge, label %land.lhs.true27.if.end32_crit_edge

land.lhs.true27.if.end32_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end32

land.lhs.true27.if.then30_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then30

if.then30:                                        ; preds = %land.lhs.true27.if.then30_crit_edge, %if.end22.if.then30_crit_edge
  %or31 = or i32 %flags.0, 8
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %land.lhs.true27.if.end32_crit_edge, %lor.lhs.false24.if.end32_crit_edge
  %flags.1 = phi i32 [ %or31, %if.then30 ], [ %flags.0, %lor.lhs.false24.if.end32_crit_edge ], [ %flags.0, %land.lhs.true27.if.end32_crit_edge ]
  %ops = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops, align 4
  %lib = getelementptr inbounds %struct.rt2x00_ops, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lib, align 4
  %config_intf = getelementptr inbounds %struct.rt2x00lib_ops, ptr %24, i32 0, i32 36
  %25 = ptrtoint ptr %config_intf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %config_intf, align 4
  call void %26(ptr noundef %rt2x00dev, ptr noundef %intf, ptr noundef nonnull %conf, i32 noundef %flags.1) #3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %conf) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00lib_config_erp(ptr noundef %rt2x00dev, ptr nocapture noundef readnone %intf, ptr nocapture noundef readonly %bss_conf, i32 noundef %changed) local_unnamed_addr #0 align 64 {
entry:
  %erp = alloca %struct.rt2x00lib_erp, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %erp) #3
  %0 = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 3
  %3 = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 4
  %4 = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 5
  %5 = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 6
  %6 = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 7
  %7 = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 8
  %8 = getelementptr inbounds %struct.rt2x00lib_erp, ptr %erp, i32 0, i32 9
  %9 = getelementptr inbounds i8, ptr %erp, i32 24
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %9, align 4
  %use_short_preamble = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 15
  %11 = ptrtoint ptr %use_short_preamble to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %use_short_preamble, align 1, !range !11
  %13 = zext i8 %12 to i32
  %14 = ptrtoint ptr %erp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %erp, align 4
  %use_cts_prot = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 14
  %15 = ptrtoint ptr %use_cts_prot to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %use_cts_prot, align 4, !range !11
  %17 = zext i8 %16 to i32
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %0, align 4
  %use_short_slot = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 16
  %19 = ptrtoint ptr %use_short_slot to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %use_short_slot, align 2, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool3.not = icmp eq i8 %20, 0
  %cond = select i1 %tobool3.not, i32 20, i32 9
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond, ptr %2, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 10, ptr %3, align 4
  %conv9 = select i1 %tobool3.not, i16 30, i16 19
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv9, ptr %4, align 2
  %conv14 = select i1 %tobool3.not, i16 50, i16 28
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv14, ptr %5, align 4
  %conv19 = select i1 %tobool3.not, i16 364, i16 342
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv19, ptr %6, align 2
  %basic_rates = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 24
  %26 = ptrtoint ptr %basic_rates to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %basic_rates, align 8
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %1, align 4
  %beacon_int = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 19
  %29 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %beacon_int, align 2
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %7, align 4
  %assoc = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 10
  %32 = ptrtoint ptr %assoc to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %assoc, align 1, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool22.not = icmp eq i8 %33, 0
  br i1 %tobool22.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %aid = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 13
  %34 = ptrtoint ptr %aid to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %aid, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond25 = phi i16 [ %35, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %aid27 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 39
  %36 = ptrtoint ptr %aid27 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %cond25, ptr %aid27, align 8
  %sync_tsf = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 21
  %37 = ptrtoint ptr %sync_tsf to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %sync_tsf, align 8
  %conv28 = trunc i64 %38 to i32
  %last_beacon = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 41
  %39 = ptrtoint ptr %last_beacon to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv28, ptr %last_beacon, align 4
  %40 = ptrtoint ptr %beacon_int to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %beacon_int, align 2
  %beacon_int30 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 40
  %42 = ptrtoint ptr %beacon_int30 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %beacon_int30, align 2
  %and = and i32 %changed, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  %ht_operation_mode = getelementptr inbounds %struct.ieee80211_bss_conf, ptr %bss_conf, i32 0, i32 27
  %43 = ptrtoint ptr %ht_operation_mode to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %ht_operation_mode, align 8
  %45 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %8, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %ops = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %46 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops, align 4
  %lib = getelementptr inbounds %struct.rt2x00_ops, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lib, align 4
  %config_erp = getelementptr inbounds %struct.rt2x00lib_ops, ptr %49, i32 0, i32 37
  %50 = ptrtoint ptr %config_erp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %config_erp, align 4
  call void %51(ptr noundef %rt2x00dev, ptr noundef nonnull %erp, i32 noundef %changed) #3
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %erp) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00lib_config_antenna(ptr noundef %rt2x00dev, [3 x i32] %config.coerce) local_unnamed_addr #0 align 64 {
entry:
  %config = alloca %struct.antenna_setup, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %config.coerce.fca.0.extract = extractvalue [3 x i32] %config.coerce, 0
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %config.coerce.fca.0.extract, ptr %config, align 4
  %config.coerce.fca.1.extract = extractvalue [3 x i32] %config.coerce, 1
  %config.coerce.fca.1.gep = getelementptr inbounds [3 x i32], ptr %config, i32 0, i32 1
  %1 = ptrtoint ptr %config.coerce.fca.1.gep to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %config.coerce.fca.1.extract, ptr %config.coerce.fca.1.gep, align 4
  %config.coerce.fca.2.extract = extractvalue [3 x i32] %config.coerce, 2
  %config.coerce.fca.2.gep = getelementptr inbounds [3 x i32], ptr %config, i32 0, i32 2
  %2 = ptrtoint ptr %config.coerce.fca.2.gep to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %config.coerce.fca.2.extract, ptr %config.coerce.fca.2.gep, align 4
  %ant1 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 2
  %default_ant = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 19
  %active4 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 2, i32 1
  %3 = ptrtoint ptr %ant1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ant1, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %config.coerce.fca.0.extract)
  %cmp = icmp eq i32 %config.coerce.fca.0.extract, 0
  br i1 %tobool.not, label %if.then, label %if.else14

if.then:                                          ; preds = %entry
  br i1 %cmp, label %if.then5, label %if.then.if.end21_crit_edge

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21

if.then5:                                         ; preds = %if.then
  %or = or i32 %4, 1
  %5 = ptrtoint ptr %ant1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %ant1, align 4
  %6 = ptrtoint ptr %default_ant to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %default_ant, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp8 = icmp eq i32 %7, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %config, align 4
  br label %if.end21

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %config, align 4
  br label %if.end21

if.else14:                                        ; preds = %entry
  br i1 %cmp, label %if.then17, label %if.else14.if.end21_crit_edge

if.else14.if.end21_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21

if.then17:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %active4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %active4, align 4
  %12 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %config, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.else14.if.end21_crit_edge, %if.else, %if.then9, %if.then.if.end21_crit_edge
  %13 = ptrtoint ptr %ant1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ant1, align 4
  %and23 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %15 = ptrtoint ptr %config.coerce.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %config.coerce.fca.1.gep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp26 = icmp eq i32 %16, 0
  br i1 %tobool24.not, label %if.then25, label %if.else39

if.then25:                                        ; preds = %if.end21
  br i1 %cmp26, label %if.then27, label %if.then25.if.end46_crit_edge

if.then25.if.end46_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end46

if.then27:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  %or29 = or i32 %14, 2
  %17 = ptrtoint ptr %ant1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or29, ptr %ant1, align 4
  %tx30 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 19, i32 1
  %18 = ptrtoint ptr %tx30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp31 = icmp eq i32 %19, 0
  %. = select i1 %cmp31, i32 2, i32 %19
  br label %if.end46.sink.split

if.else39:                                        ; preds = %if.end21
  br i1 %cmp26, label %if.then42, label %if.else39.if.end46_crit_edge

if.else39.if.end46_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end46

if.then42:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #5
  %tx43 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 30, i32 2, i32 1, i32 1
  %20 = ptrtoint ptr %tx43 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx43, align 4
  br label %if.end46.sink.split

if.end46.sink.split:                              ; preds = %if.then42, %if.then27
  %.sink = phi i32 [ %21, %if.then42 ], [ %., %if.then27 ]
  %22 = ptrtoint ptr %config.coerce.fca.1.gep to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink, ptr %config.coerce.fca.1.gep, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.end46.sink.split, %if.else39.if.end46_crit_edge, %if.then25.if.end46_crit_edge
  %flags47 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 13
  %23 = ptrtoint ptr %flags47 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags47, align 4
  %25 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool48.not = icmp eq i32 %25, 0
  br i1 %tobool48.not, label %if.end46.if.end51_crit_edge, label %if.then49

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end51

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #5
  %rx50 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 50
  %26 = ptrtoint ptr %rx50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx50, align 4
  tail call void @rt2x00queue_stop_queue(ptr noundef %27) #3
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end46.if.end51_crit_edge
  %ops = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops, align 4
  %lib = getelementptr inbounds %struct.rt2x00_ops, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lib, align 4
  %config_ant = getelementptr inbounds %struct.rt2x00lib_ops, ptr %31, i32 0, i32 38
  %32 = ptrtoint ptr %config_ant to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %config_ant, align 4
  call void %33(ptr noundef %rt2x00dev, ptr noundef nonnull %config) #3
  call void @rt2x00link_reset_tuner(ptr noundef %rt2x00dev, i1 noundef zeroext true) #3
  %34 = call ptr @memcpy(ptr %active4, ptr %config, i32 12)
  %35 = ptrtoint ptr %flags47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %flags47, align 4
  %37 = and i32 %36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool54.not = icmp eq i32 %37, 0
  br i1 %tobool54.not, label %if.end51.if.end57_crit_edge, label %if.then55

if.end51.if.end57_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end57

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #5
  %rx56 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 50
  %38 = ptrtoint ptr %rx56 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx56, align 4
  call void @rt2x00queue_start_queue(ptr noundef %39) #3
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end51.if.end57_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00queue_stop_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00link_reset_tuner(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt2x00queue_start_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rt2x00lib_config(ptr noundef %rt2x00dev, ptr noundef %conf, i32 noundef %ieee80211_flags) local_unnamed_addr #0 align 64 {
entry:
  %libconf = alloca %struct.rt2x00lib_conf, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %libconf) #3
  %0 = getelementptr inbounds i8, ptr %libconf, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 32)
  %2 = ptrtoint ptr %libconf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %conf, ptr %libconf, align 4
  %and = and i32 %ieee80211_flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

if.then:                                          ; preds = %entry
  %width.i = getelementptr inbounds %struct.ieee80211_conf, ptr %conf, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %width.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %if.else [
    i32 6, label %if.then.if.then2_crit_edge
    i32 7, label %if.then.if.then2_crit_edge141
    i32 0, label %if.then.if.then2_crit_edge142
  ]

if.then.if.then2_crit_edge142:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then2

if.then.if.then2_crit_edge141:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then2

if.then.if.then2_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then2

if.then2:                                         ; preds = %if.then.if.then2_crit_edge, %if.then.if.then2_crit_edge141, %if.then.if.then2_crit_edge142
  %flags = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags) #3
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %flags3 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %flags3) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %6 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp eq i32 %7, 2
  %flags6 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 13
  br i1 %cmp.i, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.end
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags6) #3
  %channels.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 18, i32 3
  %8 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %channels.i, align 4
  %chandef.i = getelementptr inbounds %struct.ieee80211_conf, ptr %conf, i32 0, i32 7
  %10 = ptrtoint ptr %chandef.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chandef.i, align 4
  %hw_value.i = getelementptr inbounds %struct.ieee80211_channel, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %hw_value.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hw_value.i, align 2
  %idxprom.i = zext i16 %13 to i32
  %arrayidx.i = getelementptr %struct.rf_channel, ptr %9, i32 %idxprom.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %16 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.i.i = icmp eq i32 %17, 2
  br i1 %cmp.i.i, label %conf_is_ht40_plus.exit.i, label %if.then5.if.end4.i_crit_edge

if.then5.if.end4.i_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4.i

conf_is_ht40_plus.exit.i:                         ; preds = %if.then5
  %center_freq1.i.i = getelementptr inbounds %struct.ieee80211_conf, ptr %conf, i32 0, i32 7, i32 2
  %18 = ptrtoint ptr %center_freq1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %center_freq1.i.i, align 4
  %center_freq.i.i = getelementptr inbounds %struct.ieee80211_channel, ptr %11, i32 0, i32 1
  %20 = ptrtoint ptr %center_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %center_freq.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp3.i.i = icmp ugt i32 %19, %21
  br i1 %cmp3.i.i, label %if.then.i, label %conf_is_ht40_minus.exit.i

if.then.i:                                        ; preds = %conf_is_ht40_plus.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %add.i = add i32 %15, 2
  br label %if.end4.i

conf_is_ht40_minus.exit.i:                        ; preds = %conf_is_ht40_plus.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp3.i53.i = icmp ult i32 %19, %21
  br i1 %cmp3.i53.i, label %if.then3.i, label %conf_is_ht40_minus.exit.i.if.end4.i_crit_edge

conf_is_ht40_minus.exit.i.if.end4.i_crit_edge:    ; preds = %conf_is_ht40_minus.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4.i

if.then3.i:                                       ; preds = %conf_is_ht40_minus.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %15)
  %cmp.i131 = icmp eq i32 %15, 14
  %cond.neg.i = select i1 %cmp.i131, i32 -1, i32 -2
  %sub.i = add i32 %cond.neg.i, %15
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %conf_is_ht40_minus.exit.i.if.end4.i_crit_edge, %if.then.i, %if.then5.if.end4.i_crit_edge
  %center_channel.0.i = phi i32 [ %add.i, %if.then.i ], [ %sub.i, %if.then3.i ], [ %15, %conf_is_ht40_minus.exit.i.if.end4.i_crit_edge ], [ %15, %if.then5.if.end4.i_crit_edge ]
  %num_channels.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 18, i32 2
  %22 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp556.not.i = icmp eq i32 %23, 0
  br i1 %cmp556.not.i, label %if.end4.i.do.end.i_crit_edge, label %if.end4.i.for.body.i_crit_edge

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  br label %for.body.i

if.end4.i.do.end.i_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end4.i.for.body.i_crit_edge
  %conv58.i = phi i32 [ %conv.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end4.i.for.body.i_crit_edge ]
  %i.057.i = phi i16 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end4.i.for.body.i_crit_edge ]
  %arrayidx9.i = getelementptr %struct.rf_channel, ptr %9, i32 %conv58.i
  %24 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %center_channel.0.i)
  %cmp11.i = icmp eq i32 %25, %center_channel.0.i
  br i1 %cmp11.i, label %for.body.i.if.end11_crit_edge, label %for.inc.i

for.body.i.if.end11_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add i16 %i.057.i, 1
  %conv.i = zext i16 %inc.i to i32
  %cmp5.i = icmp ugt i32 %23, %conv.i
  br i1 %cmp5.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.end.i_crit_edge

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.end4.i.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 187, i32 noundef 9, ptr noundef null) #3
  br label %if.end11.sink.split

if.else8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flags6) #3
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %conf, i32 0, i32 7
  br label %if.end11.sink.split

if.end11.sink.split:                              ; preds = %if.else8, %do.end.i
  %chandef.i.sink = phi ptr [ %chandef.i, %do.end.i ], [ %chandef, %if.else8 ]
  %26 = ptrtoint ptr %chandef.i.sink to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chandef.i.sink, align 4
  %hw_value33.i = getelementptr inbounds %struct.ieee80211_channel, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %hw_value33.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %hw_value33.i, align 2
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %for.body.i.if.end11_crit_edge
  %hw_value.0 = phi i16 [ %29, %if.end11.sink.split ], [ %i.057.i, %for.body.i.if.end11_crit_edge ]
  %rf = getelementptr inbounds %struct.rt2x00lib_conf, ptr %libconf, i32 0, i32 1
  %channels = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 18, i32 3
  %30 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %channels, align 4
  %idxprom = zext i16 %hw_value.0 to i32
  %arrayidx = getelementptr %struct.rf_channel, ptr %31, i32 %idxprom
  %32 = call ptr @memcpy(ptr %rf, ptr %arrayidx, i32 20)
  %channel = getelementptr inbounds %struct.rt2x00lib_conf, ptr %libconf, i32 0, i32 2
  %channels_info = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 18, i32 4
  %33 = ptrtoint ptr %channels_info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %channels_info, align 4
  %arrayidx14 = getelementptr %struct.channel_info, ptr %34, i32 %idxprom
  %35 = call ptr @memcpy(ptr %channel, ptr %arrayidx14, i32 12)
  %36 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rf, align 4
  %rf_channel = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 62
  %38 = ptrtoint ptr %rf_channel to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %rf_channel, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.end11, %entry.if.end17_crit_edge
  %cap_flags.i = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 14
  %39 = ptrtoint ptr %cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %cap_flags.i, align 4
  %41 = and i32 %40, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.not = icmp eq i32 %41, 0
  %and19 = and i32 %ieee80211_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %or.cond = or i1 %tobool20.not, %tobool.i.not
  br i1 %or.cond, label %if.end17.if.end23_crit_edge, label %if.then21

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  %autowakeup_work = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 47
  %call22 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %autowakeup_work) #3
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end17.if.end23_crit_edge
  %ops = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 1
  %42 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops, align 4
  %lib = getelementptr inbounds %struct.rt2x00_ops, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %lib to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lib, align 4
  %config = getelementptr inbounds %struct.rt2x00lib_ops, ptr %45, i32 0, i32 39
  %46 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %config, align 4
  call void %47(ptr noundef %rt2x00dev, ptr noundef nonnull %libconf, i32 noundef %ieee80211_flags) #3
  %48 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %conf, align 4
  %and25 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %flags30 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 13
  br i1 %tobool26.not, label %if.else29, label %if.then27

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  call void @_set_bit(i32 noundef 9, ptr noundef %flags30) #3
  br label %if.end31

if.else29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  call void @_clear_bit(i32 noundef 9, ptr noundef %flags30) #3
  br label %if.end31

if.end31:                                         ; preds = %if.else29, %if.then27
  %50 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %conf, align 4
  %and33 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %flags38 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 13
  br i1 %tobool34.not, label %if.else37, label %if.then35

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #5
  call void @_set_bit(i32 noundef 11, ptr noundef %flags38) #3
  br label %if.end39

if.else37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #5
  call void @_clear_bit(i32 noundef 11, ptr noundef %flags38) #3
  br label %if.end39

if.end39:                                         ; preds = %if.else37, %if.then35
  %chandef40 = getelementptr inbounds %struct.ieee80211_conf, ptr %conf, i32 0, i32 7
  %52 = ptrtoint ptr %chandef40 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chandef40, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %curr_band = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 6
  %56 = ptrtoint ptr %curr_band to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %curr_band, align 4
  %57 = load ptr, ptr %chandef40, align 4
  %center_freq = getelementptr inbounds %struct.ieee80211_channel, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %center_freq to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %center_freq, align 4
  %curr_freq = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 7
  %60 = ptrtoint ptr %curr_freq to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %curr_freq, align 8
  %power_level = getelementptr inbounds %struct.ieee80211_conf, ptr %conf, i32 0, i32 1
  %61 = ptrtoint ptr %power_level to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %power_level, align 4
  %conv = trunc i32 %62 to i16
  %tx_power = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 34
  %63 = ptrtoint ptr %tx_power to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv, ptr %tx_power, align 2
  %short_frame_max_tx_count = getelementptr inbounds %struct.ieee80211_conf, ptr %conf, i32 0, i32 6
  %64 = ptrtoint ptr %short_frame_max_tx_count to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %short_frame_max_tx_count, align 4
  %short_retry = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 35
  %66 = ptrtoint ptr %short_retry to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %short_retry, align 4
  %long_frame_max_tx_count = getelementptr inbounds %struct.ieee80211_conf, ptr %conf, i32 0, i32 5
  %67 = ptrtoint ptr %long_frame_max_tx_count to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %long_frame_max_tx_count, align 1
  %long_retry = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 36
  %69 = ptrtoint ptr %long_retry to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %long_retry, align 1
  br i1 %tobool.not, label %if.end39.if.end47_crit_edge, label %if.then46

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47

if.then46:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #5
  call void @rt2x00link_reset_tuner(ptr noundef %rt2x00dev, i1 noundef zeroext false) #3
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end39.if.end47_crit_edge
  %flags48 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 13
  %70 = ptrtoint ptr %flags48 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %flags48, align 4
  %and1.i = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool50.not = icmp eq i32 %and1.i, 0
  br i1 %tobool50.not, label %if.end47.if.end81_crit_edge, label %land.lhs.true51

if.end47.if.end81_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end81

land.lhs.true51:                                  ; preds = %if.end47
  %72 = ptrtoint ptr %cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %cap_flags.i, align 4
  %74 = and i32 %73, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.i134.not = icmp eq i32 %74, 0
  %or.cond129 = or i1 %tobool20.not, %tobool.i134.not
  br i1 %or.cond129, label %land.lhs.true51.if.end81_crit_edge, label %land.lhs.true57

land.lhs.true51.if.end81_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end81

land.lhs.true57:                                  ; preds = %land.lhs.true51
  %75 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %conf, align 4
  %and59 = and i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %land.lhs.true57.if.end81_crit_edge, label %if.then61

land.lhs.true57.if.end81_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end81

if.then61:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %last_beacon = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 41
  %78 = ptrtoint ptr %last_beacon to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %last_beacon, align 4
  %sub = sub i32 %77, %79
  %beacon_int63 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 40
  %80 = ptrtoint ptr %beacon_int63 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %beacon_int63, align 2
  %conv64 = zext i16 %81 to i32
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %conv64) #3
  %conv67 = and i32 %sub, 65535
  %conv68 = and i32 %call2.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv67, i32 %conv68)
  %cmp = icmp ugt i32 %conv67, %conv68
  %ps_dtim_period = getelementptr inbounds %struct.ieee80211_conf, ptr %conf, i32 0, i32 4
  %82 = ptrtoint ptr %ps_dtim_period to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %ps_dtim_period, align 2
  %conv72 = zext i8 %83 to i32
  %mul = mul i32 %call2.i, %conv72
  %conv74 = select i1 %cmp, i32 0, i32 %sub
  %sub75 = sub i32 %mul, %conv74
  %workqueue = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 43
  %84 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %workqueue, align 8
  %autowakeup_work77 = getelementptr inbounds %struct.rt2x00_dev, ptr %rt2x00dev, i32 0, i32 47
  %conv78 = and i32 %sub75, 65535
  %sub79 = add nsw i32 %conv78, -15
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %85, ptr noundef %autowakeup_work77, i32 noundef %sub79) #3
  br label %if.end81

if.end81:                                         ; preds = %if.then61, %land.lhs.true57.if.end81_crit_edge, %land.lhs.true51.if.end81_crit_edge, %if.end47.if.end81_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %libconf) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ralink/rt2x00/rt2x00config.c", i32 187, i32 2}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i8 0, i8 2}
