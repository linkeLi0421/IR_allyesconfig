; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath6kl/recovery.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath6kl/recovery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ath6kl = type <{ ptr, ptr, i32, i32, %struct.ath6kl_bmi, ptr, ptr, ptr, [9 x i32], i32, ptr, i32, ptr, %struct.list_head, %struct.spinlock, i8, [3 x i8], i32, i8, i8, [2 x i8], %struct.spinlock, %struct.semaphore, i8, [3 x i8], %struct.ath6kl_version, i32, i8, [15 x %struct.ath6kl_node_mapping], i8, i8, i8, i8, [3 x i8], ptr, i32, [4 x i32], [4 x i8], [4 x i8], i8, [9 x i8], [2 x i8], i32, %struct.ath6kl_htc_credit_info, i32, i32, i8, [3 x i8], [10 x %struct.ath6kl_sta], i8, [3 x i8], %struct.ath6kl_req_key, %struct.sk_buff_head, i32, i16, [2 x i8], %struct.spinlock, i8, %struct.wmi_ap_mode_stat, [3 x i8], %struct.list_head, i8, [3 x i8], i32, [6 x i8], [2 x i8], %struct.anon.127, %struct.ath6kl_hw, i16, i16, i16, [2 x i8], %struct.wait_queue_head, %struct.ath6kl_mbox_info, [198 x %struct.ath6kl_cookie], i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, [1 x i32], ptr, ptr, i8, i8, [2 x i8], %struct.ath6kl_fw_recovery, %struct.anon.128 }>
%struct.ath6kl_bmi = type { i32, i8, ptr, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ath6kl_version = type { i32, i32, i32 }
%struct.ath6kl_node_mapping = type { [6 x i8], i8, i8 }
%struct.ath6kl_htc_credit_info = type { i32, i32, %struct.list_head }
%struct.ath6kl_sta = type { i16, [6 x i8], i8, i8, i8, i8, [256 x i8], %struct.sk_buff_head, %struct.spinlock, %struct.list_head, i32, i8, %struct.sk_buff_head, ptr }
%struct.ath6kl_req_key = type { i8, i8, i32, [32 x i8], i8 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wmi_ap_mode_stat = type { i32, [11 x %struct.wmi_per_sta_stat] }
%struct.wmi_per_sta_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.127 = type { ptr, i32 }
%struct.ath6kl_hw = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, %struct.ath6kl_hw_fw, ptr, ptr }
%struct.ath6kl_hw_fw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ath6kl_mbox_info = type { i32, i32, i32, i32, i32, i32 }
%struct.ath6kl_cookie = type { ptr, i32, %struct.htc_packet, ptr }
%struct.htc_packet = type { %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, %union.anon.124, ptr, ptr, ptr }
%union.anon.124 = type { %struct.htc_tx_packet_info }
%struct.htc_tx_packet_info = type { i16, i32, i8, i32 }
%struct.ath6kl_fw_recovery = type { %struct.work_struct, i32, i32, %struct.timer_list, i32, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.128 = type { %struct.sk_buff_head, %struct.completion, i8, i32, i32, i32, i32, %struct.anon.129, ptr, i32, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.129 = type { i32 }

@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Fw error detected, reason:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@ath6kl_recovery_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&recovery->recovery_work)\00", [52 x i8] zeroinitializer }, align 32
@ath6kl_recovery_init.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(&ar->fw_recovery.hb_timer)\00", [36 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/wireless/ath/ath6kl/recovery.c\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to send hb challenge request, err:%d\0A\00", [51 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 47, i32 34 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 103, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 107, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 138, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [46 x i8] c"../drivers/net/wireless/ath/ath6kl/recovery.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 91, i32 15 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @ath6kl_recovery_init.__key, ptr @.str.1, ptr @ath6kl_recovery_init.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_recovery_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_recovery_init.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_recovery_err_notify(ptr noundef %ar, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_recovery = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93
  %enable = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93, i32 7
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enable, align 2, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.end

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.end:                                           ; preds = %entry
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8388608, ptr noundef nonnull @.str, i32 noundef %reason) #3
  %err_reason = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93, i32 1
  tail call void @_set_bit(i32 noundef %reason, ptr noundef %err_reason) #3
  %flag = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 75
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flag, align 4
  %4 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %state = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 2
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %6)
  %cmp.not = icmp eq i32 %6, 7
  br i1 %cmp.not, label %land.lhs.true.if.end6_crit_edge, label %if.then3

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %ath6kl_wq = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 88
  %7 = ptrtoint ptr %ath6kl_wq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ath6kl_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %fw_recovery) #3
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ath6kl_recovery_hb_event(ptr nocapture noundef %ar, i32 noundef %cookie) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %seq_num = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93, i32 4
  %0 = ptrtoint ptr %seq_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %seq_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cookie)
  %cmp = icmp eq i32 %1, %cookie
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %hb_pending = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93, i32 5
  %2 = ptrtoint ptr %hb_pending to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %hb_pending, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_recovery_init(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_recovery = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93
  %flag = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 75
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flag) #3
  tail call void @__init_work(ptr noundef %fw_recovery, i32 noundef 0) #3
  %0 = ptrtoint ptr %fw_recovery to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %fw_recovery, align 4
  %lockdep_map = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @ath6kl_recovery_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  %entry4 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93, i32 0, i32 1
  %1 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ath6kl_recovery_work, ptr %func, align 4
  %seq_num = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93, i32 4
  %4 = ptrtoint ptr %seq_num to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %seq_num, align 4
  %hb_misscnt = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93, i32 6
  %5 = ptrtoint ptr %hb_misscnt to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %hb_misscnt, align 1
  %hb_pending = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93, i32 5
  %6 = ptrtoint ptr %hb_pending to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %hb_pending, align 4
  %hb_timer = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93, i32 3
  tail call void @init_timer_key(ptr noundef %hb_timer, ptr noundef nonnull @ath6kl_recovery_hb_timer, i32 noundef 524288, ptr noundef nonnull @.str.3, ptr noundef nonnull @ath6kl_recovery_init.__key.2) #3
  %hb_poll = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93, i32 2
  %7 = ptrtoint ptr %hb_poll to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hb_poll, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %8) #3
  %add = add i32 %call2.i, %9
  %call16 = tail call i32 @mod_timer(ptr noundef %hb_timer, i32 noundef %add) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_recovery_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -20812
  %state = getelementptr i8, ptr %work, i32 -20804
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 7, ptr %state, align 4
  %hb_timer = getelementptr inbounds %struct.ath6kl_fw_recovery, ptr %work, i32 0, i32 3
  %call = tail call i32 @del_timer_sync(ptr noundef %hb_timer) #3
  tail call void @ath6kl_init_hw_restart(ptr noundef %add.ptr) #3
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %state, align 4
  %flag = getelementptr i8, ptr %work, i32 -64
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flag) #3
  %err_reason = getelementptr inbounds %struct.ath6kl_fw_recovery, ptr %work, i32 0, i32 1
  %2 = ptrtoint ptr %err_reason to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %err_reason, align 4
  %hb_poll = getelementptr inbounds %struct.ath6kl_fw_recovery, ptr %work, i32 0, i32 2
  %3 = ptrtoint ptr %hb_poll to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hb_poll, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %4) #3
  %add = add i32 %call2.i, %5
  %call9 = tail call i32 @mod_timer(ptr noundef %hb_timer, i32 noundef %add) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_recovery_hb_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %flag = getelementptr i8, ptr %t, i32 -116
  %0 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flag, align 4
  %2 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr i8, ptr %t, i32 -20856
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %cmp = icmp eq i32 %4, 7
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %hb_pending = getelementptr i8, ptr %t, i32 52
  %5 = ptrtoint ptr %hb_pending to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hb_pending, align 4, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  %hb_misscnt5 = getelementptr i8, ptr %t, i32 53
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %hb_misscnt5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hb_misscnt5, align 1
  %inc = add i8 %8, 1
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %.sink = phi i8 [ %inc, %if.then2 ], [ 0, %if.end.if.end6_crit_edge ]
  %9 = ptrtoint ptr %hb_misscnt5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.sink, ptr %hb_misscnt5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %.sink)
  %cmp9 = icmp ugt i8 %.sink, 5
  br i1 %cmp9, label %if.then11, label %if.end17

if.then11:                                        ; preds = %if.end6
  %hb_misscnt8 = getelementptr i8, ptr %t, i32 53
  %10 = ptrtoint ptr %hb_misscnt8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %hb_misscnt8, align 1
  %seq_num = getelementptr i8, ptr %t, i32 48
  %11 = ptrtoint ptr %seq_num to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %seq_num, align 4
  %12 = ptrtoint ptr %hb_pending to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %hb_pending, align 4
  %fw_recovery.i = getelementptr i8, ptr %t, i32 -52
  %enable.i = getelementptr i8, ptr %t, i32 54
  %13 = ptrtoint ptr %enable.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %enable.i, align 2, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.then11.cleanup_crit_edge, label %if.end.i50

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i50:                                       ; preds = %if.then11
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 8388608, ptr noundef nonnull @.str, i32 noundef 1) #3
  %err_reason.i = getelementptr i8, ptr %t, i32 -8
  tail call void @_set_bit(i32 noundef 1, ptr noundef %err_reason.i) #3
  %15 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flag, align 4
  %17 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool2.not.i = icmp eq i32 %17, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %if.end.i50.cleanup_crit_edge

if.end.i50.cleanup_crit_edge:                     ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i50
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %19)
  %cmp.not.i = icmp eq i32 %19, 7
  br i1 %cmp.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then3.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  %ath6kl_wq.i = getelementptr i8, ptr %t, i32 -64
  %20 = ptrtoint ptr %ath6kl_wq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ath6kl_wq.i, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %fw_recovery.i) #3
  br label %cleanup

if.end17:                                         ; preds = %if.end6
  %seq_num19 = getelementptr i8, ptr %t, i32 48
  %22 = ptrtoint ptr %seq_num19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %seq_num19, align 4
  %inc20 = add i32 %23, 1
  store i32 %inc20, ptr %seq_num19, align 4
  %24 = ptrtoint ptr %hb_pending to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %hb_pending, align 4
  %wmi = getelementptr i8, ptr %t, i32 -20820
  %25 = ptrtoint ptr %wmi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wmi, align 4
  %call25 = tail call i32 @ath6kl_wmi_get_challenge_resp_cmd(ptr noundef %26, i32 noundef %inc20, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end17.if.end28_crit_edge, label %if.then27

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end28

if.then27:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.5, i32 noundef %call25) #3
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end17.if.end28_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %hb_poll = getelementptr i8, ptr %t, i32 -4
  %28 = ptrtoint ptr %hb_poll to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hb_poll, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %29) #3
  %add = add i32 %call2.i, %27
  %call32 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then3.i, %land.lhs.true.i.cleanup_crit_edge, %if.end.i50.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_recovery_cleanup(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %enable = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93, i32 7
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enable, align 2, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %fw_recovery = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93
  %flag = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 75
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flag) #3
  %hb_timer = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93, i32 3
  %call = tail call i32 @del_timer_sync(ptr noundef %hb_timer) #3
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %fw_recovery) #3
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_recovery_suspend(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %enable = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93, i32 7
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enable, align 2, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %ath6kl_recovery_cleanup.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

ath6kl_recovery_cleanup.exit:                     ; preds = %entry
  %fw_recovery.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93
  %flag.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 75
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flag.i) #3
  %hb_timer.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93, i32 3
  %call.i = tail call i32 @del_timer_sync(ptr noundef %hb_timer.i) #3
  %call3.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %fw_recovery.i) #3
  %err_reason = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93, i32 1
  %2 = ptrtoint ptr %err_reason to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %err_reason, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %ath6kl_recovery_cleanup.exit.return_crit_edge, label %if.end4

ath6kl_recovery_cleanup.exit.return_crit_edge:    ; preds = %ath6kl_recovery_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end4:                                          ; preds = %ath6kl_recovery_cleanup.exit
  %4 = ptrtoint ptr %err_reason to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %err_reason, align 4
  %state = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 2
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %if.end4.if.end21_crit_edge, label %do.end, !prof !22

if.end4.if.end21_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 138, i32 noundef 9, ptr noundef null) #3
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.end4.if.end21_crit_edge
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 7, ptr %state, align 4
  tail call void @ath6kl_init_hw_restart(ptr noundef %ar) #3
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %state, align 4
  br label %return

return:                                           ; preds = %if.end21, %ath6kl_recovery_cleanup.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_init_hw_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_recovery_resume(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %enable = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93, i32 7
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enable, align 2, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  %flag = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 75
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flag) #3
  %hb_poll = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93, i32 2
  %2 = ptrtoint ptr %hb_poll to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hb_poll, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %hb_pending = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93, i32 5
  %4 = ptrtoint ptr %hb_pending to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %hb_pending, align 4
  %seq_num = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93, i32 4
  %5 = ptrtoint ptr %seq_num to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %seq_num, align 4
  %hb_misscnt = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93, i32 6
  %6 = ptrtoint ptr %hb_misscnt to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %hb_misscnt, align 1
  %hb_timer = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 93, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %3) #3
  %add = add i32 %call2.i, %7
  %call11 = tail call i32 @mod_timer(ptr noundef %hb_timer, i32 noundef %add) #3
  br label %return

return:                                           ; preds = %if.end4, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_wmi_get_challenge_resp_cmd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_warn(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath6kl/recovery.c", i32 47, i32 34}
!2 = !{ptr @ath6kl_recovery_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath6kl/recovery.c", i32 103, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ath6kl_recovery_init.__key.2, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath6kl/recovery.c", i32 107, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath6kl/recovery.c", i32 138, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath6kl/recovery.c", i32 91, i32 15}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i8 0, i8 2}
!22 = !{!"branch_weights", i32 2000, i32 1}
