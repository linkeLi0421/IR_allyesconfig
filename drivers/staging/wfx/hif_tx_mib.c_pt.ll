; ModuleID = '/llk/IR_all_yes/drivers/staging/wfx/hif_tx_mib.c_pt.bc'
source_filename = "../drivers/staging/wfx/hif_tx_mib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hif_mib_current_tx_power_level = type { i32 }
%struct.wfx_vif = type { ptr, ptr, ptr, i32, i32, i8, i8, %struct.delayed_work, [4 x %struct.wfx_queue], %struct.tx_policy_cache, %struct.work_struct, %struct.work_struct, i32, %struct.mutex, %struct.work_struct, %struct.completion, i32, i8, ptr, %struct.completion }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wfx_queue = type { %struct.sk_buff_head, %struct.sk_buff_head, %struct.atomic_t, i32 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.tx_policy_cache = type { [15 x %struct.tx_policy], %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.tx_policy = type { %struct.list_head, i32, [12 x i8], i8 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hif_mib_beacon_wake_up_period = type { i8, i8, i8, i8 }
%struct.hif_mib_rcpi_rssi_threshold = type { i8, i8, i8, i8 }
%struct.hif_mib_mac_address = type { [6 x i8], i16 }
%struct.hif_mib_rx_filter = type { i8, [3 x i8] }
%struct.hif_mib_bcn_filter_table = type { i32, [0 x %struct.hif_ie_table_entry] }
%struct.hif_ie_table_entry = type { i8, i8, [3 x i8], [3 x i8] }
%struct.hif_mib_bcn_filter_enable = type { i32, i32 }
%struct.hif_mib_gl_operational_power_mode = type { i8, [3 x i8] }
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
%struct.hif_mib_template_frame = type { i8, i8, i16, [0 x i8] }
%struct.hif_mib_protected_mgmt_policy = type { i8, [3 x i8] }
%struct.hif_mib_block_ack_policy = type { i8, i8, i8, i8 }
%struct.hif_mib_set_association_mode = type { [3 x i8], i8, i32 }
%struct.hif_mib_set_tx_rate_retry_policy = type { i8, [3 x i8], [0 x %struct.hif_tx_rate_retry_policy] }
%struct.hif_tx_rate_retry_policy = type { i8, i8, i8, i8, i8, [3 x i8], [12 x i8] }
%struct.hif_mib_keep_alive_period = type { i16, [2 x i8] }
%struct.hif_mib_arp_ip_addr_table = type { i8, i8, [2 x i8], [4 x i8] }
%struct.hif_mib_gl_set_multi_msg = type { i8, [3 x i8] }
%struct.hif_mib_set_uapsd_information = type { i16, i16, i16, i16 }
%struct.hif_mib_non_erp_protection = type { i8, [3 x i8] }
%struct.hif_mib_slot_time = type { i32 }
%struct.hif_mib_wep_default_key_id = type { i8, [3 x i8] }
%struct.hif_mib_dot11_rts_threshold = type { i32 }

@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/staging/wfx/hif_tx_mib.c\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"frame is too big\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"incoherent arguments\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 151, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [36 x i8] c"../drivers/staging/wfx/hif_tx_mib.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 166, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_set_output_power(ptr nocapture noundef readonly %wvif, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.hif_mib_current_tx_power_level, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #6
  %mul = mul i32 %val, 10
  %0 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %1 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %arg, align 4
  %2 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wvif, align 4
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %call = call i32 @hif_write_mib(ptr noundef %3, i32 noundef %5, i16 noundef zeroext 8262, ptr noundef nonnull %arg, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #6
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_write_mib(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_set_beacon_wakeup_period(ptr nocapture noundef readonly %wvif, i32 noundef %dtim_interval, i32 noundef %listen_interval) local_unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.hif_mib_beacon_wake_up_period, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #6
  %0 = getelementptr inbounds %struct.hif_mib_beacon_wake_up_period, ptr %arg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.hif_mib_beacon_wake_up_period, ptr %arg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.hif_mib_beacon_wake_up_period, ptr %arg, i32 0, i32 3
  %conv = trunc i32 %dtim_interval to i8
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %arg, align 1
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %0, align 1
  %conv4 = trunc i32 %listen_interval to i8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv4, ptr %1, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %dtim_interval)
  %cmp = icmp ugt i32 %dtim_interval, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %listen_interval)
  %cmp6 = icmp ugt i32 %listen_interval, 65535
  %or.cond = or i1 %cmp, %cmp6
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wvif, align 4
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %call = call i32 @hif_write_mib(ptr noundef %8, i32 noundef %10, i16 noundef zeroext 8265, ptr noundef nonnull %arg, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_set_rcpi_rssi_threshold(ptr nocapture noundef readonly %wvif, i32 noundef %rssi_thold, i32 noundef %rssi_hyst) local_unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.hif_mib_rcpi_rssi_threshold, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #6
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -2147483640, ptr %arg, align 4
  %1 = or i32 %rssi_hyst, %rssi_thold
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %arg, align 4
  %bf.set4 = or i8 %bf.load, 48
  store i8 %bf.set4, ptr %arg, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %rssi_hyst, %rssi_thold
  %upper_threshold = getelementptr inbounds %struct.hif_mib_rcpi_rssi_threshold, ptr %arg, i32 0, i32 2
  %add.tr = trunc i32 %add to i8
  %4 = shl i8 %add.tr, 1
  %conv8 = add i8 %4, -36
  %5 = ptrtoint ptr %upper_threshold to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv8, ptr %upper_threshold, align 2
  %lower_threshold = getelementptr inbounds %struct.hif_mib_rcpi_rssi_threshold, ptr %arg, i32 0, i32 1
  %rssi_thold.tr = trunc i32 %rssi_thold to i8
  %6 = shl i8 %rssi_thold.tr, 1
  %conv15 = add i8 %6, -36
  %7 = ptrtoint ptr %lower_threshold to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv15, ptr %lower_threshold, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wvif, align 4
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %call = call i32 @hif_write_mib(ptr noundef %9, i32 noundef %11, i16 noundef zeroext 8266, ptr noundef nonnull %arg, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_get_counters_table(ptr noundef %wdev, i32 noundef %vif_id, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @wfx_api_older_than(ptr noundef %wdev, i32 noundef 1, i32 noundef 3) #6
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = call ptr @memset(ptr %arg, i32 255, i32 160)
  %call1 = tail call i32 @hif_read_mib(ptr noundef %wdev, i32 noundef %vif_id, i16 noundef zeroext 8243, ptr noundef %arg, i32 noundef 92) #6
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @hif_read_mib(ptr noundef %wdev, i32 noundef %vif_id, i16 noundef zeroext 8245, ptr noundef %arg, i32 noundef 160) #6
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wfx_api_older_than(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hif_read_mib(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_set_macaddr(ptr nocapture noundef readonly %wvif, ptr noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.hif_mib_mac_address, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg) #6
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %arg, align 8
  %tobool.not = icmp eq ptr %mac, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mac, align 4
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %arg, align 8
  %add.ptr.i = getelementptr i8, ptr %mac, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr inbounds i8, ptr %arg, i32 4
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %add.ptr1.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wvif, align 4
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %call = call i32 @hif_write_mib(ptr noundef %8, i32 noundef %10, i16 noundef zeroext 8256, ptr noundef nonnull %arg, i32 noundef 8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_set_rx_filter(ptr nocapture noundef readonly %wvif, i1 noundef zeroext %filter_bssid, i1 noundef zeroext %filter_prbreq) local_unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.hif_mib_rx_filter, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #6
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %arg, align 4
  br i1 %filter_bssid, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %arg, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %arg, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  br i1 %filter_prbreq, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load4 = load i8, ptr %arg, align 4
  %bf.set6 = or i8 %bf.load4, 16
  store i8 %bf.set6, ptr %arg, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %3 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wvif, align 4
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %call = call i32 @hif_write_mib(ptr noundef %4, i32 noundef %6, i16 noundef zeroext 8219, ptr noundef nonnull %arg, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_set_beacon_filter_table(ptr nocapture noundef readonly %wvif, i32 noundef %tbl_len, ptr nocapture noundef readonly %tbl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %tbl_len, i32 8) #6
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = or i32 %2, 4
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = tail call i32 @llvm.bswap.i32(i32 %tbl_len)
  %4 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call9.i.i, align 128
  %ie_table = getelementptr inbounds %struct.hif_mib_bcn_filter_table, ptr %call9.i.i, i32 0, i32 1
  %retval.0.i14 = select i1 %1, i32 -1, i32 %2
  %5 = call ptr @memcpy(ptr %ie_table, ptr %tbl, i32 %retval.0.i14)
  %6 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wvif, align 4
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %call3 = tail call i32 @hif_write_mib(ptr noundef %7, i32 noundef %9, i16 noundef zeroext 8220, ptr noundef nonnull %call9.i.i, i32 noundef %retval.0.i) #6
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_beacon_filter_control(ptr nocapture noundef readonly %wvif, i32 noundef %enable, i32 noundef %beacon_count) local_unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.hif_mib_bcn_filter_enable, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg) #6
  %0 = getelementptr inbounds %struct.hif_mib_bcn_filter_enable, ptr %arg, i32 0, i32 1
  %1 = tail call i32 @llvm.bswap.i32(i32 %enable)
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %arg, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %beacon_count)
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %0, align 4
  %5 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wvif, align 4
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %call = call i32 @hif_write_mib(ptr noundef %6, i32 noundef %8, i16 noundef zeroext 8221, ptr noundef nonnull %arg, i32 noundef 8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_set_operational_mode(ptr noundef %wdev, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.hif_mib_gl_operational_power_mode, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #6
  %0 = getelementptr inbounds %struct.hif_mib_gl_operational_power_mode, ptr %arg, i32 0, i32 1
  %conv = trunc i32 %mode to i8
  %bf.shl = shl i8 %conv, 4
  %bf.set6 = or i8 %bf.shl, 1
  %1 = ptrtoint ptr %arg to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %bf.set6, ptr %arg, align 1
  %2 = call ptr @memset(ptr %0, i32 0, i32 3)
  %call = call i32 @hif_write_mib(ptr noundef %wdev, i32 noundef -1, i16 noundef zeroext 8192, ptr noundef nonnull %arg, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_set_template_frame(ptr nocapture noundef readonly %wvif, ptr noundef %skb, i8 noundef zeroext %frame_type, i32 noundef %init_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 700, i32 %1)
  %cmp = icmp ugt i32 %1, 700
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !14

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #6
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call19 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #6
  %conv = trunc i32 %init_rate to i8
  %init_rate20 = getelementptr inbounds %struct.hif_mib_template_frame, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %init_rate20 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %init_rate20, align 1
  %bf.shl = shl i8 %conv, 1
  %bf.clear = and i8 %bf.load, 1
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %init_rate20, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frame_type, ptr %3, align 1
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %conv23 = trunc i32 %7 to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv23)
  %frame_length = getelementptr inbounds %struct.hif_mib_template_frame, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %frame_length to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %8, ptr %frame_length, align 1
  %10 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wvif, align 4
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %add = add i32 %15, 4
  %call25 = tail call i32 @hif_write_mib(ptr noundef %11, i32 noundef %13, i16 noundef zeroext 8264, ptr noundef %3, i32 noundef %add) #6
  ret i32 %call25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_set_mfp(ptr nocapture noundef readonly %wvif, i1 noundef zeroext %capable, i1 noundef zeroext %required) local_unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.hif_mib_protected_mgmt_policy, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #6
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %arg, align 4
  %lnot = xor i1 %capable, true
  %spec.select = and i1 %lnot, %required
  br i1 %spec.select, label %do.end, label %entry.if.end_crit_edge, !prof !14

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 166, i32 noundef 9, ptr noundef nonnull @.str.2) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  br i1 %capable, label %if.then24, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %arg, align 4
  %bf.set27 = or i8 %bf.load, -96
  store i8 %bf.set27, ptr %arg, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end.if.end28_crit_edge
  br i1 %required, label %if.end28.if.end34_crit_edge, label %if.then30

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load31 = load i8, ptr %arg, align 4
  %bf.set33 = or i8 %bf.load31, 64
  store i8 %bf.set33, ptr %arg, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end28.if.end34_crit_edge
  %3 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wvif, align 4
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %call = call i32 @hif_write_mib(ptr noundef %4, i32 noundef %6, i16 noundef zeroext 8272, ptr noundef nonnull %arg, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_set_block_ack_policy(ptr nocapture noundef readonly %wvif, i8 noundef zeroext %tx_tid_policy, i8 noundef zeroext %rx_tid_policy) local_unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.hif_mib_block_ack_policy, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #6
  %0 = getelementptr inbounds %struct.hif_mib_block_ack_policy, ptr %arg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.hif_mib_block_ack_policy, ptr %arg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.hif_mib_block_ack_policy, ptr %arg, i32 0, i32 3
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %tx_tid_policy, ptr %arg, align 1
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %0, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %rx_tid_policy, ptr %1, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %2, align 1
  %7 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wvif, align 4
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %call = call i32 @hif_write_mib(ptr noundef %8, i32 noundef %10, i16 noundef zeroext 8267, ptr noundef nonnull %arg, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_set_association_mode(ptr nocapture noundef readonly %wvif, i32 noundef %ampdu_density, i1 noundef zeroext %greenfield, i1 noundef zeroext %short_preamble) local_unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.hif_mib_set_association_mode, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg) #6
  %0 = getelementptr inbounds %struct.hif_mib_set_association_mode, ptr %arg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.hif_mib_set_association_mode, ptr %arg, i32 0, i32 2
  %bf.shl = select i1 %short_preamble, i24 32768, i24 0
  %bf.set16 = select i1 %greenfield, i24 -3145600, i24 -3145728
  %bf.set26 = or i24 %bf.set16, %bf.shl
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_storeN_noabort(i32 %2, i32 3)
  store i24 %bf.set26, ptr %arg, align 4
  %conv30 = trunc i32 %ampdu_density to i8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv30, ptr %0, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %1, align 4
  %5 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wvif, align 4
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %call = call i32 @hif_write_mib(ptr noundef %6, i32 noundef %8, i16 noundef zeroext 8269, ptr noundef nonnull %arg, i32 noundef 8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_set_tx_rate_retry_policy(ptr nocapture noundef readonly %wvif, i32 noundef %policy_index, ptr nocapture noundef readonly %rates) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %call7.i.i, align 8
  %conv = trunc i32 %policy_index to i8
  %tx_rate_retry_policy = getelementptr inbounds %struct.hif_mib_set_tx_rate_retry_policy, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %tx_rate_retry_policy to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %tx_rate_retry_policy, align 4
  %short_retry_count = getelementptr inbounds %struct.hif_mib_set_tx_rate_retry_policy, ptr %call7.i.i, i32 1, i32 1
  %3 = ptrtoint ptr %short_retry_count to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %short_retry_count, align 1
  %long_retry_count = getelementptr inbounds %struct.hif_mib_set_tx_rate_retry_policy, ptr %call7.i.i, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %long_retry_count to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %long_retry_count, align 2
  %first_rate_sel = getelementptr inbounds %struct.hif_mib_set_tx_rate_retry_policy, ptr %call7.i.i, i32 1, i32 1, i32 2
  %5 = ptrtoint ptr %first_rate_sel to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %first_rate_sel, align 1
  %bf.clear = and i8 %bf.load, 15
  %bf.set18 = or i8 %bf.clear, 112
  store i8 %bf.set18, ptr %first_rate_sel, align 1
  %rates21 = getelementptr inbounds %struct.hif_mib_set_tx_rate_retry_policy, ptr %call7.i.i, i32 3
  %6 = call ptr @memcpy(ptr %rates21, ptr %rates, i32 12)
  %7 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wvif, align 4
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %call22 = tail call i32 @hif_write_mib(ptr noundef %8, i32 noundef %10, i16 noundef zeroext 8271, ptr noundef nonnull %call7.i.i, i32 noundef 24) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_keep_alive_period(ptr nocapture noundef readonly %wvif, i32 noundef %period) local_unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.hif_mib_keep_alive_period, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #6
  %0 = getelementptr inbounds %struct.hif_mib_keep_alive_period, ptr %arg, i32 0, i32 1
  %conv = trunc i32 %period to i16
  %1 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %arg, align 2
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %0, align 2
  %4 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wvif, align 4
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %call = call i32 @hif_write_mib(ptr noundef %5, i32 noundef %7, i16 noundef zeroext 8274, ptr noundef nonnull %arg, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_set_arp_ipv4_filter(ptr nocapture noundef readonly %wvif, i32 noundef %idx, ptr noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.hif_mib_arp_ip_addr_table, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg) #6
  %0 = getelementptr inbounds %struct.hif_mib_arp_ip_addr_table, ptr %arg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.hif_mib_arp_ip_addr_table, ptr %arg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.hif_mib_arp_ip_addr_table, ptr %arg, i32 0, i32 3
  %conv = trunc i32 %idx to i8
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %arg, align 1
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %0, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 0, ptr %1, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 0, ptr %2, align 1
  %tobool.not = icmp eq ptr %addr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %2, align 1
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %0, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wvif, align 4
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  %call = call i32 @hif_write_mib(ptr noundef %12, i32 noundef %14, i16 noundef zeroext 8217, ptr noundef nonnull %arg, i32 noundef 8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_use_multi_tx_conf(ptr noundef %wdev, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.hif_mib_gl_set_multi_msg, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #6
  %0 = getelementptr inbounds %struct.hif_mib_gl_set_multi_msg, ptr %arg, i32 0, i32 1
  %bf.shl = select i1 %enable, i8 -128, i8 0
  %1 = ptrtoint ptr %arg to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %bf.shl, ptr %arg, align 1
  %2 = call ptr @memset(ptr %0, i32 0, i32 3)
  %call = call i32 @hif_write_mib(ptr noundef %wdev, i32 noundef -1, i16 noundef zeroext 8194, ptr noundef nonnull %arg, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_set_uapsd_info(ptr nocapture noundef readonly %wvif, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.hif_mib_set_uapsd_information, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg) #6
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %arg, align 8
  %and = and i32 %val, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %arg, align 8
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %arg, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and1 = and i32 %val, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load4 = load i16, ptr %arg, align 8
  %bf.set6 = or i16 %bf.load4, 8192
  store i16 %bf.set6, ptr %arg, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %and8 = and i32 %val, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end14_crit_edge, label %if.then10

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load11 = load i16, ptr %arg, align 8
  %bf.set13 = or i16 %bf.load11, 16384
  store i16 %bf.set13, ptr %arg, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end7.if.end14_crit_edge
  %and15 = and i32 %val, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end21_crit_edge, label %if.then17

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load18 = load i16, ptr %arg, align 8
  %bf.set20 = or i16 %bf.load18, -32768
  store i16 %bf.set20, ptr %arg, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end14.if.end21_crit_edge
  %5 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wvif, align 4
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %call = call i32 @hif_write_mib(ptr noundef %6, i32 noundef %8, i16 noundef zeroext 8270, ptr noundef nonnull %arg, i32 noundef 8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_erp_use_protection(ptr nocapture noundef readonly %wvif, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.hif_mib_non_erp_protection, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #6
  %0 = getelementptr inbounds %struct.hif_mib_non_erp_protection, ptr %arg, i32 0, i32 1
  %bf.shl = select i1 %enable, i8 -128, i8 0
  %1 = ptrtoint ptr %arg to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %bf.shl, ptr %arg, align 1
  %2 = call ptr @memset(ptr %0, i32 0, i32 3)
  %3 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wvif, align 4
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %call = call i32 @hif_write_mib(ptr noundef %4, i32 noundef %6, i16 noundef zeroext 8263, ptr noundef nonnull %arg, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_slot_time(ptr nocapture noundef readonly %wvif, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.hif_mib_slot_time, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %1 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %arg, align 4
  %2 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wvif, align 4
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %call = call i32 @hif_write_mib(ptr noundef %3, i32 noundef %5, i16 noundef zeroext 8261, ptr noundef nonnull %arg, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_wep_default_key_id(ptr nocapture noundef readonly %wvif, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.hif_mib_wep_default_key_id, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #6
  %0 = getelementptr inbounds %struct.hif_mib_wep_default_key_id, ptr %arg, i32 0, i32 1
  %conv = trunc i32 %val to i8
  %1 = ptrtoint ptr %arg to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %arg, align 1
  %2 = call ptr @memset(ptr %0, i32 0, i32 3)
  %3 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wvif, align 4
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %call = call i32 @hif_write_mib(ptr noundef %4, i32 noundef %6, i16 noundef zeroext 8259, ptr noundef nonnull %arg, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hif_rts_threshold(ptr nocapture noundef readonly %wvif, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %arg = alloca %struct.hif_mib_dot11_rts_threshold, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %val)
  %cmp = icmp sgt i32 %val, -1
  %spec.select = select i1 %cmp, i32 %val, i32 65535
  %0 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %1 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %arg, align 4
  %2 = ptrtoint ptr %wvif to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wvif, align 4
  %id = getelementptr inbounds %struct.wfx_vif, ptr %wvif, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %call = call i32 @hif_write_mib(ptr noundef %3, i32 noundef %5, i16 noundef zeroext 8260, ptr noundef nonnull %arg, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #6
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/wfx/hif_tx_mib.c", i32 151, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/staging/wfx/hif_tx_mib.c", i32 166, i32 2}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{!"branch_weights", i32 1, i32 2000}
