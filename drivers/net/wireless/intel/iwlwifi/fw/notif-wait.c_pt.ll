; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/fw/notif-wait.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/fw/notif-wait.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iwl_notif_wait_data = type { %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
%struct.iwl_notification_wait = type { %struct.list_head, ptr, ptr, [5 x i16], i8, i8, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@iwl_notification_wait_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&notif_wait->notif_wait_lock\00", [35 x i8] zeroinitializer }, align 32
@iwl_notification_wait_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&notif_wait->notif_waitq\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/wireless/intel/iwlwifi/fw/notif-wait.c\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 15, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 17, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [54 x i8] c"../drivers/net/wireless/intel/iwlwifi/fw/notif-wait.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 90, i32 6 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @iwl_notification_wait_init.__key, ptr @.str, ptr @iwl_notification_wait_init.__key.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_notification_wait_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_notification_wait_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_notification_wait_init(ptr noundef %notif_wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %notif_wait_lock = getelementptr inbounds %struct.iwl_notif_wait_data, ptr %notif_wait, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %notif_wait_lock, ptr noundef nonnull @.str, ptr noundef nonnull @iwl_notification_wait_init.__key, i16 noundef signext 3) #4
  %0 = ptrtoint ptr %notif_wait to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %notif_wait, ptr %notif_wait, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %notif_wait, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %notif_wait, ptr %prev.i, align 4
  %notif_waitq = getelementptr inbounds %struct.iwl_notif_wait_data, ptr %notif_wait, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %notif_waitq, ptr noundef nonnull @.str.2, ptr noundef nonnull @iwl_notification_wait_init.__key.1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @iwl_notification_wait(ptr noundef %notif_wait, ptr noundef %pkt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %notif_wait to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %notif_wait, align 4
  %cmp.i.not = icmp eq ptr %1, %notif_wait
  br i1 %cmp.i.not, label %entry.if.end57_crit_edge, label %if.then

entry.if.end57_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

if.then:                                          ; preds = %entry
  %notif_wait_lock = getelementptr inbounds %struct.iwl_notif_wait_data, ptr %notif_wait, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %notif_wait_lock) #4
  %2 = ptrtoint ptr %notif_wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %w.098 = load ptr, ptr %notif_wait, align 4
  %cmp.not99 = icmp eq ptr %w.098, %notif_wait
  br i1 %cmp.not99, label %if.then.for.end55_crit_edge, label %for.body.lr.ph

if.then.for.end55_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end55

for.body.lr.ph:                                   ; preds = %if.then
  %hdr = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 0, i32 1
  %group_id = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 0, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup45.for.body_crit_edge, %for.body.lr.ph
  %w.0102 = phi ptr [ %w.098, %for.body.lr.ph ], [ %w.0, %cleanup45.for.body_crit_edge ]
  %triggered.0.off0100 = phi i1 [ false, %for.body.lr.ph ], [ %triggered.2.off0, %cleanup45.for.body_crit_edge ]
  %triggered3 = getelementptr inbounds %struct.iwl_notification_wait, ptr %w.0102, i32 0, i32 5
  %3 = ptrtoint ptr %triggered3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %triggered3, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %for.body.cleanup45_crit_edge

for.body.cleanup45_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup45

lor.lhs.false:                                    ; preds = %for.body
  %aborted = getelementptr inbounds %struct.iwl_notification_wait, ptr %w.0102, i32 0, i32 6
  %5 = ptrtoint ptr %aborted to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %aborted, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %for.cond7.preheader, label %lor.lhs.false.cleanup45_crit_edge

lor.lhs.false.cleanup45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup45

for.cond7.preheader:                              ; preds = %lor.lhs.false
  %n_cmds = getelementptr inbounds %struct.iwl_notification_wait, ptr %w.0102, i32 0, i32 4
  %7 = ptrtoint ptr %n_cmds to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %n_cmds, align 2
  %conv = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp896.not = icmp eq i8 %8, 0
  br i1 %cmp896.not, label %for.cond7.preheader.cleanup45_crit_edge, label %for.body10.lr.ph

for.cond7.preheader.cleanup45_crit_edge:          ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup45

for.body10.lr.ph:                                 ; preds = %for.cond7.preheader
  %9 = ptrtoint ptr %group_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %group_id, align 1
  %conv11 = zext i8 %10 to i32
  %shl = shl nuw nsw i32 %conv11, 8
  %11 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hdr, align 1
  %conv13 = zext i8 %12 to i32
  %or = or i32 %shl, %conv13
  br label %for.body10

for.body10:                                       ; preds = %for.inc.for.body10_crit_edge, %for.body10.lr.ph
  %i.097 = phi i32 [ 0, %for.body10.lr.ph ], [ %inc, %for.inc.for.body10_crit_edge ]
  %arrayidx = getelementptr %struct.iwl_notification_wait, ptr %w.0102, i32 0, i32 3, i32 %i.097
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx, align 2
  %conv15 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv15)
  %cmp17 = icmp eq i32 %or, %conv15
  br i1 %cmp17, label %for.body10.if.end36_crit_edge, label %lor.lhs.false19

for.body10.if.end36_crit_edge:                    ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

lor.lhs.false19:                                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %14)
  %tobool24.not = icmp ult i16 %14, 256
  br i1 %tobool24.not, label %land.lhs.true, label %lor.lhs.false19.for.inc_crit_edge

lor.lhs.false19.for.inc_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true:                                    ; preds = %lor.lhs.false19
  %15 = or i16 %14, 256
  %or28 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %or28)
  %cmp30 = icmp eq i32 %or, %or28
  br i1 %cmp30, label %land.lhs.true.if.end36_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %lor.lhs.false19.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.097, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.cleanup45_crit_edge, label %for.inc.for.body10_crit_edge

for.inc.for.body10_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body10

for.inc.cleanup45_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup45

if.end36:                                         ; preds = %land.lhs.true.if.end36_crit_edge, %for.body10.if.end36_crit_edge
  %fn = getelementptr inbounds %struct.iwl_notification_wait, ptr %w.0102, i32 0, i32 1
  %16 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fn, align 4
  %tobool37.not = icmp eq ptr %17, null
  br i1 %tobool37.not, label %if.end36.if.then42_crit_edge, label %lor.lhs.false38

if.end36.if.then42_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then42

lor.lhs.false38:                                  ; preds = %if.end36
  %fn_data = getelementptr inbounds %struct.iwl_notification_wait, ptr %w.0102, i32 0, i32 2
  %18 = ptrtoint ptr %fn_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fn_data, align 4
  %call40 = tail call zeroext i1 %17(ptr noundef %notif_wait, ptr noundef %pkt, ptr noundef %19) #4
  br i1 %call40, label %lor.lhs.false38.if.then42_crit_edge, label %lor.lhs.false38.cleanup45_crit_edge

lor.lhs.false38.cleanup45_crit_edge:              ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup45

lor.lhs.false38.if.then42_crit_edge:              ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then42

if.then42:                                        ; preds = %lor.lhs.false38.if.then42_crit_edge, %if.end36.if.then42_crit_edge
  %20 = ptrtoint ptr %triggered3 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %triggered3, align 1
  br label %cleanup45

cleanup45:                                        ; preds = %if.then42, %lor.lhs.false38.cleanup45_crit_edge, %for.inc.cleanup45_crit_edge, %for.cond7.preheader.cleanup45_crit_edge, %lor.lhs.false.cleanup45_crit_edge, %for.body.cleanup45_crit_edge
  %triggered.2.off0 = phi i1 [ %triggered.0.off0100, %lor.lhs.false.cleanup45_crit_edge ], [ %triggered.0.off0100, %for.body.cleanup45_crit_edge ], [ true, %if.then42 ], [ %triggered.0.off0100, %lor.lhs.false38.cleanup45_crit_edge ], [ %triggered.0.off0100, %for.cond7.preheader.cleanup45_crit_edge ], [ %triggered.0.off0100, %for.inc.cleanup45_crit_edge ]
  %21 = ptrtoint ptr %w.0102 to i32
  call void @__asan_load4_noabort(i32 %21)
  %w.0 = load ptr, ptr %w.0102, align 4
  %cmp.not = icmp eq ptr %w.0, %notif_wait
  br i1 %cmp.not, label %cleanup45.for.end55_crit_edge, label %cleanup45.for.body_crit_edge

cleanup45.for.body_crit_edge:                     ; preds = %cleanup45
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup45.for.end55_crit_edge:                    ; preds = %cleanup45
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end55

for.end55:                                        ; preds = %cleanup45.for.end55_crit_edge, %if.then.for.end55_crit_edge
  %triggered.0.off0.lcssa = phi i1 [ false, %if.then.for.end55_crit_edge ], [ %triggered.2.off0, %cleanup45.for.end55_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %notif_wait_lock) #4
  br label %if.end57

if.end57:                                         ; preds = %for.end55, %entry.if.end57_crit_edge
  %triggered.3.off0 = phi i1 [ false, %entry.if.end57_crit_edge ], [ %triggered.0.off0.lcssa, %for.end55 ]
  ret i1 %triggered.3.off0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_abort_notification_waits(ptr noundef %notif_wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %notif_wait_lock = getelementptr inbounds %struct.iwl_notif_wait_data, ptr %notif_wait, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %notif_wait_lock) #4
  %0 = ptrtoint ptr %notif_wait to i32
  call void @__asan_load4_noabort(i32 %0)
  %wait_entry.014 = load ptr, ptr %notif_wait, align 4
  %cmp.not15 = icmp eq ptr %wait_entry.014, %notif_wait
  br i1 %cmp.not15, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %wait_entry.016 = phi ptr [ %wait_entry.0, %for.body.for.body_crit_edge ], [ %wait_entry.014, %entry.for.body_crit_edge ]
  %aborted = getelementptr inbounds %struct.iwl_notification_wait, ptr %wait_entry.016, i32 0, i32 6
  %1 = ptrtoint ptr %aborted to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %aborted, align 4
  %2 = ptrtoint ptr %wait_entry.016 to i32
  call void @__asan_load4_noabort(i32 %2)
  %wait_entry.0 = load ptr, ptr %wait_entry.016, align 4
  %cmp.not = icmp eq ptr %wait_entry.0, %notif_wait
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %notif_wait_lock) #4
  %notif_waitq = getelementptr inbounds %struct.iwl_notif_wait_data, ptr %notif_wait, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %notif_waitq, i32 noundef 3, i32 noundef 0, ptr noundef null) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_init_notification_wait(ptr noundef %notif_wait, ptr noundef %wait_entry, ptr nocapture noundef readonly %cmds, i32 noundef %n_cmds, ptr noundef %fn, ptr noundef %fn_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %n_cmds)
  %cmp = icmp sgt i32 %n_cmds, 5
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !18

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 90, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %0 = tail call i32 @llvm.smin.i32(i32 %n_cmds, i32 5)
  %fn22 = getelementptr inbounds %struct.iwl_notification_wait, ptr %wait_entry, i32 0, i32 1
  %1 = ptrtoint ptr %fn22 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %fn, ptr %fn22, align 4
  %fn_data23 = getelementptr inbounds %struct.iwl_notification_wait, ptr %wait_entry, i32 0, i32 2
  %2 = ptrtoint ptr %fn_data23 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fn_data, ptr %fn_data23, align 4
  %conv = trunc i32 %0 to i8
  %n_cmds24 = getelementptr inbounds %struct.iwl_notification_wait, ptr %wait_entry, i32 0, i32 4
  %3 = ptrtoint ptr %n_cmds24 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %n_cmds24, align 2
  %cmds25 = getelementptr inbounds %struct.iwl_notification_wait, ptr %wait_entry, i32 0, i32 3
  %mul = shl i32 %0, 1
  %4 = call ptr @memcpy(ptr %cmds25, ptr %cmds, i32 %mul)
  %triggered = getelementptr inbounds %struct.iwl_notification_wait, ptr %wait_entry, i32 0, i32 5
  %5 = ptrtoint ptr %triggered to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %triggered, align 1
  %aborted = getelementptr inbounds %struct.iwl_notification_wait, ptr %wait_entry, i32 0, i32 6
  %6 = ptrtoint ptr %aborted to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %aborted, align 4
  %notif_wait_lock = getelementptr inbounds %struct.iwl_notif_wait_data, ptr %notif_wait, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %notif_wait_lock) #4
  %7 = ptrtoint ptr %notif_wait to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %notif_wait, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %wait_entry, ptr noundef %notif_wait, ptr noundef %8) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %wait_entry, ptr %prev1.i.i, align 4
  %10 = ptrtoint ptr %wait_entry to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %wait_entry, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %wait_entry, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %notif_wait, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %notif_wait to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %wait_entry, ptr %notif_wait, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %notif_wait_lock) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_remove_notification(ptr noundef %notif_wait, ptr noundef %wait_entry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %notif_wait_lock = getelementptr inbounds %struct.iwl_notif_wait_data, ptr %notif_wait, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %notif_wait_lock) #4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %wait_entry) #4
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %wait_entry, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %wait_entry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %wait_entry to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %wait_entry, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %wait_entry, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %notif_wait_lock) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_wait_notification(ptr noundef %notif_wait, ptr noundef %wait_entry, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 123) #4
  %triggered = getelementptr inbounds %struct.iwl_notification_wait, ptr %wait_entry, i32 0, i32 5
  %0 = ptrtoint ptr %triggered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %triggered, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.end, label %lor.end.thread

lor.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool6.not66 = icmp eq i32 %timeout, 0
  %spec.store.select67 = select i1 %tobool6.not66, i32 1, i32 %timeout
  br label %if.end41

lor.end:                                          ; preds = %entry
  %aborted = getelementptr inbounds %struct.iwl_notification_wait, ptr %wait_entry, i32 0, i32 6
  %2 = ptrtoint ptr %aborted to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %aborted, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp ne i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool6.not = icmp eq i32 %timeout, 0
  %spec.store.select = select i1 %tobool6.not, i32 1, i32 %timeout
  %brmerge = or i1 %tobool4.not, %tobool6.not
  %spec.store.select.mux = select i1 %tobool4.not, i32 %spec.store.select, i32 0
  br i1 %brmerge, label %lor.end.if.end41_crit_edge, label %if.then12

lor.end.if.end41_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.then12:                                        ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #4
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #4
  %notif_waitq = getelementptr inbounds %struct.iwl_notif_wait_data, ptr %notif_wait, i32 0, i32 2
  %call87 = call i32 @prepare_to_wait_event(ptr noundef %notif_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #4
  %5 = ptrtoint ptr %triggered to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %triggered, align 1, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool16.not88 = icmp eq i8 %6, 0
  br i1 %tobool16.not88, label %if.then12.lor.end20_crit_edge, label %if.then12.lor.end20.thread_crit_edge

if.then12.lor.end20.thread_crit_edge:             ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end20.thread

if.then12.lor.end20_crit_edge:                    ; preds = %if.then12
  br label %lor.end20

lor.end20.thread:                                 ; preds = %cleanup.lor.end20.thread_crit_edge, %if.then12.lor.end20.thread_crit_edge
  %__ret13.0.lcssa = phi i32 [ %timeout, %if.then12.lor.end20.thread_crit_edge ], [ %call38, %cleanup.lor.end20.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.0.lcssa)
  %tobool25.not70 = icmp eq i32 %__ret13.0.lcssa, 0
  %spec.store.select5071 = select i1 %tobool25.not70, i32 1, i32 %__ret13.0.lcssa
  br label %for.end

lor.end20:                                        ; preds = %cleanup.lor.end20_crit_edge, %if.then12.lor.end20_crit_edge
  %__ret13.089 = phi i32 [ %call38, %cleanup.lor.end20_crit_edge ], [ %timeout, %if.then12.lor.end20_crit_edge ]
  %7 = ptrtoint ptr %aborted to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %aborted, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool19.not = icmp eq i8 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.089)
  %tobool31.not = icmp eq i32 %__ret13.089, 0
  br i1 %tobool19.not, label %9, label %for.end.loopexit.split.loop.exit82

9:                                                ; preds = %lor.end20
  br i1 %tobool31.not, label %.for.end_crit_edge, label %cleanup

.for.end_crit_edge:                               ; preds = %9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

cleanup:                                          ; preds = %9
  %call38 = call i32 @schedule_timeout(i32 noundef %__ret13.089) #4
  %call = call i32 @prepare_to_wait_event(ptr noundef %notif_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #4
  %10 = ptrtoint ptr %triggered to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %triggered, align 1, !range !17
  %tobool16.not = icmp eq i8 %11, 0
  br i1 %tobool16.not, label %cleanup.lor.end20_crit_edge, label %cleanup.lor.end20.thread_crit_edge

cleanup.lor.end20.thread_crit_edge:               ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end20.thread

cleanup.lor.end20_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end20

for.end.loopexit.split.loop.exit82:               ; preds = %lor.end20
  call void @__sanitizer_cov_trace_pc() #6
  %spec.store.select50.le = select i1 %tobool31.not, i32 1, i32 %__ret13.089
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit.split.loop.exit82, %.for.end_crit_edge, %lor.end20.thread
  %__ret13.2.ph = phi i32 [ %spec.store.select5071, %lor.end20.thread ], [ %spec.store.select50.le, %for.end.loopexit.split.loop.exit82 ], [ 0, %.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %notif_waitq, ptr noundef nonnull %__wq_entry) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #4
  br label %if.end41

if.end41:                                         ; preds = %for.end, %lor.end.if.end41_crit_edge, %lor.end.thread
  %__ret.1 = phi i32 [ %__ret13.2.ph, %for.end ], [ %spec.store.select67, %lor.end.thread ], [ %spec.store.select.mux, %lor.end.if.end41_crit_edge ]
  %notif_wait_lock.i = getelementptr inbounds %struct.iwl_notif_wait_data, ptr %notif_wait, i32 0, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %notif_wait_lock.i) #4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %wait_entry) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end41.iwl_remove_notification.exit_crit_edge

if.end41.iwl_remove_notification.exit_crit_edge:  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %iwl_remove_notification.exit

if.end.i.i.i:                                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %wait_entry, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %wait_entry to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wait_entry, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %iwl_remove_notification.exit

iwl_remove_notification.exit:                     ; preds = %if.end.i.i.i, %if.end41.iwl_remove_notification.exit_crit_edge
  %18 = ptrtoint ptr %wait_entry to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %wait_entry, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %wait_entry, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %notif_wait_lock.i) #4
  %aborted43 = getelementptr inbounds %struct.iwl_notification_wait, ptr %wait_entry, i32 0, i32 6
  %20 = ptrtoint ptr %aborted43 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %aborted43, align 4, !range !17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool44.not = icmp eq i8 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp.inv = icmp sgt i32 %__ret.1, 0
  %. = select i1 %cmp.inv, i32 0, i32 -110
  %retval.0 = select i1 %tobool44.not, i32 %., i32 -5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @iwl_notification_wait_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/notif-wait.c", i32 15, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @iwl_notification_wait_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/notif-wait.c", i32 17, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/notif-wait.c", i32 90, i32 6}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i8 0, i8 2}
!18 = !{!"branch_weights", i32 1, i32 2000}
