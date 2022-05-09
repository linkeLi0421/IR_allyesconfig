; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wl1251/event.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wl1251/event.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wl1251 = type { ptr, i8, ptr, ptr, i32, i32, i8, ptr, %struct.spinlock, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.boot_attr, ptr, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, i32, i8, i8, ptr, ptr, i32, %struct.sk_buff_head, i8, %struct.work_struct, [16 x ptr], i32, i32, i32, i32, i32, i32, %struct.work_struct, i32, [2 x i32], i8, i32, i32, i32, i32, i32, i8, %struct.delayed_work, i32, i8, i8, i16, i8, i32, i32, %struct.wl1251_stats, %struct.wl1251_debugfs, i32, i32, [8 x i8], ptr, ptr, i32, [21 x i8], i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.boot_attr = type { i32, i8, i8, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wl1251_stats = type { ptr, i32, i32, i32 }
%struct.wl1251_debugfs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.event_mailbox = type { i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, i8, i8, i32, [2 x i32], i32, %struct.event_debug_report, i8, [19 x i8] }
%struct.event_debug_report = type { i8, i8, i16, i32, i32, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@wl1251_event_ps_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013wl1251: ERROR Power save entry failed, giving up\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wl1251_event_ps_report\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/wireless/ti/wl1251/event.c\00", [57 x i8] zeroinitializer }, align 32
@wl1251_event_ps_report._entry_ptr = internal global ptr @wl1251_event_ps_report._entry, section ".printk_index", align 4
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [42 x i8] c"../drivers/net/wireless/ti/wl1251/event.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 61, i32 4 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @wl1251_event_ps_report._entry, ptr @wl1251_event_ps_report._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_event_ps_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_event_wait(ptr noundef %wl, i32 noundef %mask, i32 noundef %timeout_ms) local_unnamed_addr #0 align 64 {
entry:
  %events_vector = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %events_vector) #5
  %0 = ptrtoint ptr %events_vector to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %events_vector, align 4, !annotation !15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout_ms) #5
  %add = add i32 %call2.i, %1
  %mbox_ptr = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 44
  %arrayidx2 = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 44, i32 1
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %if.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %do.body
  call void @msleep(i32 noundef 1) #5
  %3 = ptrtoint ptr %mbox_ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mbox_ptr, align 4
  call void @wl1251_mem_read(ptr noundef %wl, i32 noundef %4, ptr noundef nonnull %events_vector, i32 noundef 4) #5
  %5 = ptrtoint ptr %events_vector to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %events_vector, align 4
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2, align 4
  call void @wl1251_mem_read(ptr noundef %wl, i32 noundef %8, ptr noundef nonnull %events_vector, i32 noundef 4) #5
  %9 = ptrtoint ptr %events_vector to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %events_vector, align 4
  %and11 = or i32 %10, %6
  %or = and i32 %and11, %mask
  %tobool.not = icmp eq i32 %or, 0
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.body.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %events_vector) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1251_mem_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_event_unmask(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %event_mask = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 43
  %0 = ptrtoint ptr %event_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event_mask, align 4
  %neg = xor i32 %1, -1
  %call = tail call i32 @wl1251_acx_event_mbox_mask(ptr noundef %wl, i32 noundef %neg) #5
  %2 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_event_mbox_mask(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl1251_event_mbox_config(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wl1251_reg_read32(ptr noundef %wl, i32 noundef 3167756) #5
  %mbox_ptr = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 44
  %0 = ptrtoint ptr %mbox_ptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %mbox_ptr, align 4
  %add = add i32 %call, 80
  %arrayidx4 = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 44, i32 1
  %1 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %arrayidx4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_reg_read32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_event_handle(ptr noundef %wl, i8 noundef zeroext %mbox_num) local_unnamed_addr #0 align 64 {
entry:
  %info.i.i = alloca %struct.cfg80211_scan_info, align 8
  %mbox = alloca %struct.event_mailbox, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %mbox) #5
  %0 = call ptr @memset(ptr %mbox, i32 255, i32 80)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %mbox_num)
  %cmp = icmp ugt i8 %mbox_num, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %mbox_num to i32
  %arrayidx = getelementptr %struct.wl1251, ptr %wl, i32 0, i32 44, i32 %conv
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  call void @wl1251_mem_read(ptr noundef %wl, i32 noundef %2, ptr noundef nonnull %mbox, i32 noundef 80) #5
  %3 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mbox, align 4
  %events_mask.i = getelementptr inbounds %struct.event_mailbox, ptr %mbox, i32 0, i32 1
  %5 = ptrtoint ptr %events_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %events_mask.i, align 4
  %neg.i = xor i32 %6, -1
  %and.i = and i32 %4, %neg.i
  %and1.i = and i32 %and.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %if.end.if.end3.i_crit_edge, label %if.then.i

if.end.if.end3.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i

if.then.i:                                        ; preds = %if.end
  %scanning.i.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 45
  %7 = ptrtoint ptr %scanning.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %scanning.i.i, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end3.i_crit_edge, label %if.then.i.i

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i.i) #5
  %9 = call ptr @memset(ptr %info.i.i, i32 0, i32 16)
  %10 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wl, align 4
  call void @ieee80211_scan_completed(ptr noundef %11, ptr noundef nonnull %info.i.i) #5
  %12 = ptrtoint ptr %scanning.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %scanning.i.i, align 4
  %13 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wl, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %and.i.i = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool6.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool6.not.i.i, label %wl1251_event_scan_complete.exit.thread116.i, label %wl1251_event_scan_complete.exit.i

wl1251_event_scan_complete.exit.thread116.i:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i.i) #5
  br label %if.end3.i

wl1251_event_scan_complete.exit.i:                ; preds = %if.then.i.i
  %call.i.i = call i32 @wl1251_ps_set_mode(ptr noundef %wl, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %wl1251_event_scan_complete.exit.i.cleanup_crit_edge, label %wl1251_event_scan_complete.exit.i.if.end3.i_crit_edge

wl1251_event_scan_complete.exit.i.if.end3.i_crit_edge: ; preds = %wl1251_event_scan_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i

wl1251_event_scan_complete.exit.i.cleanup_crit_edge: ; preds = %wl1251_event_scan_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3.i:                                        ; preds = %wl1251_event_scan_complete.exit.i.if.end3.i_crit_edge, %wl1251_event_scan_complete.exit.thread116.i, %if.then.i.if.end3.i_crit_edge, %if.end.if.end3.i_crit_edge
  %and4.i = and i32 %and.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end3.i.if.end18.i_crit_edge, label %do.end9.i

if.end3.i.if.end18.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

do.end9.i:                                        ; preds = %if.end3.i
  %psm_requested.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 54
  %17 = ptrtoint ptr %psm_requested.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %psm_requested.i, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool10.not.i = icmp eq i8 %18, 0
  br i1 %tobool10.not.i, label %do.end9.i.if.end18.i_crit_edge, label %land.lhs.true.i

do.end9.i.if.end18.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

land.lhs.true.i:                                  ; preds = %do.end9.i
  %station_mode.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 53
  %19 = ptrtoint ptr %station_mode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %station_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp11.not.i = icmp eq i32 %20, 0
  br i1 %cmp11.not.i, label %land.lhs.true.i.if.end18.i_crit_edge, label %if.then12.i

land.lhs.true.i.if.end18.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

if.then12.i:                                      ; preds = %land.lhs.true.i
  %call13.i = call i32 @wl1251_ps_set_mode(ptr noundef %wl, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.then12.i.cleanup_crit_edge, label %if.then12.i.if.end18.i_crit_edge

if.then12.i.if.end18.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

if.then12.i.cleanup_crit_edge:                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18.i:                                       ; preds = %if.then12.i.if.end18.i_crit_edge, %land.lhs.true.i.if.end18.i_crit_edge, %do.end9.i.if.end18.i_crit_edge, %if.end3.i.if.end18.i_crit_edge
  %and19.i = and i32 %and.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.if.end29.i_crit_edge, label %do.end24.i

if.end18.i.if.end29.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

do.end24.i:                                       ; preds = %if.end18.i
  %ps_status.i.i = getelementptr inbounds %struct.event_mailbox, ptr %mbox, i32 0, i32 5
  %21 = ptrtoint ptr %ps_status.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ps_status.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cond.i.i = icmp eq i8 %22, 0
  br i1 %cond.i.i, label %do.end3.i.i, label %sw.default.i.i

do.end3.i.i:                                      ; preds = %do.end24.i
  %station_mode.i.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 53
  %23 = ptrtoint ptr %station_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %station_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.not.i.i = icmp eq i32 %24, 1
  %psm_entry_retry5.i.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 55
  br i1 %cmp.not.i.i, label %if.end.i111.i, label %do.end3.i.i.if.end29.sink.split.i_crit_edge

do.end3.i.i.if.end29.sink.split.i_crit_edge:      ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.sink.split.i

if.end.i111.i:                                    ; preds = %do.end3.i.i
  %25 = ptrtoint ptr %psm_entry_retry5.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %psm_entry_retry5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %26)
  %cmp7.i.i = icmp ult i8 %26, 3
  br i1 %cmp7.i.i, label %wl1251_event_ps_report.exit.i, label %do.end13.i.i

do.end13.i.i:                                     ; preds = %if.end.i111.i
  call void @__sanitizer_cov_trace_pc() #7
  %call14.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %if.end29.sink.split.i

sw.default.i.i:                                   ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  %psm_entry_retry18.i.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 55
  br label %if.end29.sink.split.i

wl1251_event_ps_report.exit.i:                    ; preds = %if.end.i111.i
  %inc.i.i = add nuw nsw i8 %26, 1
  %27 = ptrtoint ptr %psm_entry_retry5.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %inc.i.i, ptr %psm_entry_retry5.i.i, align 1
  %call.i112.i = call i32 @wl1251_ps_set_mode(ptr noundef %wl, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112.i)
  %cmp26.i = icmp slt i32 %call.i112.i, 0
  br i1 %cmp26.i, label %wl1251_event_ps_report.exit.i.cleanup_crit_edge, label %wl1251_event_ps_report.exit.i.if.end29.i_crit_edge

wl1251_event_ps_report.exit.i.if.end29.i_crit_edge: ; preds = %wl1251_event_ps_report.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

wl1251_event_ps_report.exit.i.cleanup_crit_edge:  ; preds = %wl1251_event_ps_report.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29.sink.split.i:                            ; preds = %sw.default.i.i, %do.end13.i.i, %do.end3.i.i.if.end29.sink.split.i_crit_edge
  %psm_entry_retry18.i.sink.i = phi ptr [ %psm_entry_retry18.i.i, %sw.default.i.i ], [ %psm_entry_retry5.i.i, %do.end13.i.i ], [ %psm_entry_retry5.i.i, %do.end3.i.i.if.end29.sink.split.i_crit_edge ]
  %28 = ptrtoint ptr %psm_entry_retry18.i.sink.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %psm_entry_retry18.i.sink.i, align 1
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end29.sink.split.i, %wl1251_event_ps_report.exit.i.if.end29.i_crit_edge, %if.end18.i.if.end29.i_crit_edge
  %and30.i = and i32 %and.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.end29.i.if.end43.i_crit_edge, label %do.end35.i

if.end29.i.if.end43.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.i

do.end35.i:                                       ; preds = %if.end29.i
  %vif.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 66
  %29 = ptrtoint ptr %vif.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vif.i, align 4
  %tobool36.not.i = icmp eq ptr %30, null
  br i1 %tobool36.not.i, label %do.end35.i.if.end43.i_crit_edge, label %land.lhs.true37.i

do.end35.i.if.end43.i_crit_edge:                  ; preds = %do.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.i

land.lhs.true37.i:                                ; preds = %do.end35.i
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp39.i = icmp eq i32 %32, 2
  br i1 %cmp39.i, label %if.then40.i, label %land.lhs.true37.i.if.end43.i_crit_edge

land.lhs.true37.i.if.end43.i_crit_edge:           ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.i

if.then40.i:                                      ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @ieee80211_beacon_loss(ptr noundef nonnull %30) #5
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then40.i, %land.lhs.true37.i.if.end43.i_crit_edge, %do.end35.i.if.end43.i_crit_edge, %if.end29.i.if.end43.i_crit_edge
  %and44.i = and i32 %and.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %if.end43.i.if.end55.i_crit_edge, label %if.then46.i

if.end43.i.if.end55.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i

if.then46.i:                                      ; preds = %if.end43.i
  %psm_requested47.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 54
  %33 = ptrtoint ptr %psm_requested47.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %psm_requested47.i, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool48.not.i = icmp eq i8 %34, 0
  br i1 %tobool48.not.i, label %if.then46.i.if.end55.i_crit_edge, label %if.then49.i

if.then46.i.if.end55.i_crit_edge:                 ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i

if.then49.i:                                      ; preds = %if.then46.i
  %call50.i = call i32 @wl1251_ps_set_mode(ptr noundef %wl, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %cmp51.i = icmp slt i32 %call50.i, 0
  br i1 %cmp51.i, label %if.then49.i.cleanup_crit_edge, label %if.then49.i.if.end55.i_crit_edge

if.then49.i.if.end55.i_crit_edge:                 ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i

if.then49.i.cleanup_crit_edge:                    ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end55.i:                                       ; preds = %if.then49.i.if.end55.i_crit_edge, %if.then46.i.if.end55.i_crit_edge, %if.end43.i.if.end55.i_crit_edge
  %vif56.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 66
  %35 = ptrtoint ptr %vif56.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vif56.i, align 4
  %tobool57.not.i = icmp eq ptr %36, null
  br i1 %tobool57.not.i, label %if.end55.i.if.end5_crit_edge, label %land.lhs.true58.i

if.end55.i.if.end5_crit_edge:                     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

land.lhs.true58.i:                                ; preds = %if.end55.i
  %rssi_thold.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 59
  %37 = ptrtoint ptr %rssi_thold.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rssi_thold.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool59.not.i = icmp eq i32 %38, 0
  br i1 %tobool59.not.i, label %land.lhs.true58.i.if.end5_crit_edge, label %if.then60.i

land.lhs.true58.i.if.end5_crit_edge:              ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then60.i:                                      ; preds = %land.lhs.true58.i
  %and61.i = and i32 %and.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  br i1 %tobool62.not.i, label %if.then60.i.if.end68.i_crit_edge, label %do.end66.i

if.then60.i.if.end68.i_crit_edge:                 ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68.i

do.end66.i:                                       ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @ieee80211_cqm_rssi_notify(ptr noundef nonnull %36, i32 noundef 0, i32 noundef 0, i32 noundef 3264) #5
  br label %if.end68.i

if.end68.i:                                       ; preds = %do.end66.i, %if.then60.i.if.end68.i_crit_edge
  %and69.i = and i32 %and.i, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  br i1 %tobool70.not.i, label %if.end68.i.if.end5_crit_edge, label %do.end74.i

if.end68.i.if.end5_crit_edge:                     ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

do.end74.i:                                       ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %vif56.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vif56.i, align 4
  call void @ieee80211_cqm_rssi_notify(ptr noundef %40, i32 noundef 1, i32 noundef 0, i32 noundef 3264) #5
  br label %if.end5

if.end5:                                          ; preds = %do.end74.i, %if.end68.i.if.end5_crit_edge, %land.lhs.true58.i.if.end5_crit_edge, %if.end55.i.if.end5_crit_edge
  call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef 0, i32 noundef 2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then49.i.cleanup_crit_edge, %wl1251_event_ps_report.exit.i.cleanup_crit_edge, %if.then12.i.cleanup_crit_edge, %wl1251_event_scan_complete.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ %call50.i, %if.then49.i.cleanup_crit_edge ], [ %call.i112.i, %wl1251_event_ps_report.exit.i.cleanup_crit_edge ], [ %call13.i, %if.then12.i.cleanup_crit_edge ], [ %call.i.i, %wl1251_event_scan_complete.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %mbox) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1251_reg_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_ps_set_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_beacon_loss(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_cqm_rssi_notify(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_scan_completed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wl1251/event.c", i32 61, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @wl1251_event_ps_report._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @wl1251_event_ps_report._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
!16 = !{i8 0, i8 2}
