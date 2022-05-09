; ModuleID = '/llk/IR_all_yes/drivers/video/console/dummycon.c_pt.bc'
source_filename = "../drivers/video/console/dummycon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dummy_con\22, \22a\22\09"
module asm "\09.weak\09__crc_dummy_con\09\09\09\09"
module asm "\09.long\09__crc_dummy_con\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dummy_con:\09\09\09\09\09"
module asm "\09.asciz \09\22dummy_con\22\09\09\09\09\09"
module asm "__kstrtabns_dummy_con:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.raw_notifier_head = type { ptr }
%struct.consw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, ptr, i32, %struct.wait_queue_head, i16, i8, i32, [8 x i32], [48 x i8], ptr, i32, i32, i32, i16, ptr, ptr, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.console_font = type { i32, i32, i32, ptr }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }

@ignore_console_lock_warning = external dso_local global %struct.atomic_t, align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/video/console/dummycon.c\00", [63 x i8] zeroinitializer }, align 32
@dummycon_output_nh = internal global { %struct.raw_notifier_head, [28 x i8] } zeroinitializer, align 32
@dummycon_putc_called = internal global { i1, [31 x i8] } zeroinitializer, align 32
@dummy_con = dso_local constant { %struct.consw, [56 x i8] } { %struct.consw { ptr null, ptr @dummycon_startup, ptr @dummycon_init, ptr @dummycon_deinit, ptr @dummycon_clear, ptr @dummycon_putc, ptr @dummycon_putcs, ptr @dummycon_cursor, ptr @dummycon_scroll, ptr @dummycon_switch, ptr @dummycon_blank, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__kstrtab_dummy_con = external dso_local constant [0 x i8], align 1
@__kstrtabns_dummy_con = external dso_local constant [0 x i8], align 1
@__ksymtab_dummy_con = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dummy_con to i32), ptr @__kstrtab_dummy_con, ptr @__kstrtabns_dummy_con }, section "___ksymtab_gpl+dummy_con", align 4
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dummy device\00", [19 x i8] zeroinitializer }, align 32
@screen_info = external dso_local local_unnamed_addr global %struct.screen_info, align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 37, i32 2 }
@___asan_gen_.5 = private unnamed_addr constant [19 x i8] c"dummycon_output_nh\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 32, i32 8 }
@___asan_gen_.8 = private unnamed_addr constant [21 x i8] c"dummycon_putc_called\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [10 x i8] c"dummy_con\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 133, i32 20 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [36 x i8] c"../drivers/video/console/dummycon.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 97, i32 12 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_dummy_con, ptr @.str, ptr @dummycon_output_nh, ptr @dummycon_putc_called, ptr @dummy_con, ptr @.str.1], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummycon_output_nh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummycon_putc_called to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_con to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dummycon_register_output_notifier(ptr noundef %nb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ignore_console_lock_warning, i32 noundef 4) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ignore_console_lock_warning to i32))
  %0 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @is_console_locked() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.rhs, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %1 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool3.not = icmp eq i32 %1, 0
  br i1 %tobool3.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !21

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 37, i32 noundef 9, ptr noundef null) #3
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call24 = tail call i32 @raw_notifier_chain_register(ptr noundef nonnull @dummycon_output_nh, ptr noundef %nb) #3
  %.b32 = load i1, ptr @dummycon_putc_called, align 1
  br i1 %.b32, label %if.then26, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end28

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nb, align 4
  %call27 = tail call i32 %3(ptr noundef %nb, i32 noundef 0, ptr noundef null) #3
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end.if.end28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_console_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dummycon_unregister_output_notifier(ptr noundef %nb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ignore_console_lock_warning, i32 noundef 4) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ignore_console_lock_warning to i32))
  %0 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @is_console_locked() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.rhs, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %1 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool3.not = icmp eq i32 %1, 0
  br i1 %tobool3.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !21

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 47, i32 noundef 9, ptr noundef null) #3
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call24 = tail call i32 @raw_notifier_chain_unregister(ptr noundef nonnull @dummycon_output_nh, ptr noundef %nb) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @dummycon_startup() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dummycon_init(ptr noundef %vc, i32 noundef %init) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %vc_can_do_color = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 37
  %0 = ptrtoint ptr %vc_can_do_color to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %vc_can_do_color, align 4
  %bf.set = or i16 %bf.load, 16
  store i16 %bf.set, ptr %vc_can_do_color, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %init)
  %tobool.not = icmp eq i32 %init, 0
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 5) to i32))
  %1 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 5), align 1
  %conv2 = zext i8 %1 to i32
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %vc_cols = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 4
  %2 = ptrtoint ptr %vc_cols to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv2, ptr %vc_cols, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 10) to i32))
  %3 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 10), align 1
  %conv1 = zext i8 %3 to i32
  %vc_rows = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 5
  %4 = ptrtoint ptr %vc_rows to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv1, ptr %vc_rows, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 10) to i32))
  %5 = load i8, ptr getelementptr inbounds (%struct.screen_info, ptr @screen_info, i32 0, i32 10), align 1
  %conv3 = zext i8 %5 to i32
  %call = tail call i32 @vc_resize(ptr noundef %vc, i32 noundef %conv2, i32 noundef %conv3) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dummycon_deinit(ptr nocapture noundef %vc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dummycon_clear(ptr nocapture noundef %vc, i32 noundef %sy, i32 noundef %sx, i32 noundef %height, i32 noundef %width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dummycon_putc(ptr nocapture noundef readnone %vc, i32 noundef %c, i32 noundef %ypos, i32 noundef %xpos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ignore_console_lock_warning, i32 noundef 4) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ignore_console_lock_warning to i32))
  %0 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @is_console_locked() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.rhs, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %1 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool3.not = icmp eq i32 %1, 0
  br i1 %tobool3.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !21

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 54, i32 noundef 9, ptr noundef null) #3
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  store i1 true, ptr @dummycon_putc_called, align 1
  %call24 = tail call i32 @raw_notifier_call_chain(ptr noundef nonnull @dummycon_output_nh, i32 noundef 0, ptr noundef null) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dummycon_putcs(ptr nocapture noundef readonly %vc, ptr nocapture noundef readonly %s, i32 noundef %count, i32 noundef %ypos, i32 noundef %xpos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %.b14 = load i1, ptr @dummycon_putc_called, align 1
  br i1 %.b14, label %entry.if.end9_crit_edge, label %for.cond.preheader

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp15 = icmp sgt i32 %count, 0
  br i1 %cmp15, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %vc_video_erase_char = getelementptr inbounds %struct.vc_data, ptr %vc, i32 0, i32 29
  %0 = ptrtoint ptr %vc_video_erase_char to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vc_video_erase_char, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %s, i32 %i.016
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %1)
  %cmp2.not = icmp eq i16 %3, %1
  br i1 %cmp2.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.016, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %count)
  %cmp5 = icmp eq i32 %i.0.lcssa, %count
  br i1 %cmp5, label %for.end.cleanup_crit_edge, label %if.end8

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end8:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @dummycon_putc_called, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %entry.if.end9_crit_edge
  %call = tail call i32 @raw_notifier_call_chain(ptr noundef nonnull @dummycon_output_nh, i32 noundef 0, ptr noundef null) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dummycon_cursor(ptr nocapture noundef %vc, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dummycon_scroll(ptr nocapture noundef readnone %vc, i32 noundef %top, i32 noundef %bottom, i32 noundef %dir, i32 noundef %lines) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dummycon_switch(ptr nocapture noundef readnone %vc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dummycon_blank(ptr nocapture noundef readnone %vc, i32 noundef %blank, i32 noundef %mode_switch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc_resize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/video/console/dummycon.c", i32 37, i32 2}
!2 = !{ptr @dummy_con, !3, !"dummy_con", i1 false, i1 false}
!3 = !{!"../drivers/video/console/dummycon.c", i32 133, i32 20}
!4 = !{ptr @__ksymtab_dummy_con, !5, !"__ksymtab_dummy_con", i1 false, i1 false}
!5 = !{!"../drivers/video/console/dummycon.c", i32 146, i32 1}
!6 = distinct !{null, !7, !"dummycon_putc_called", i1 false, i1 false}
!7 = !{!"../drivers/video/console/dummycon.c", i32 33, i32 13}
!8 = !{ptr @dummycon_output_nh, !9, !"dummycon_output_nh", i1 false, i1 false}
!9 = !{!"../drivers/video/console/dummycon.c", i32 32, i32 8}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/console/dummycon.c", i32 97, i32 12}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 1, i32 2000}
