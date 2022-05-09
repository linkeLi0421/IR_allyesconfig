; ModuleID = '/llk/IR_all_yes/fs/proc/consoles.c_pt.bc'
source_filename = "../fs/proc/consoles.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@__initcall__kmod_proc__210_98_proc_consoles_init5 = internal global ptr @proc_consoles_init, section ".initcall5.init", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"consoles\00", [23 x i8] zeroinitializer }, align 32
@consoles_op = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @c_start, ptr @c_stop, ptr @c_next, ptr @show_console_dev }, [16 x i8] zeroinitializer }, align 32
@console_drivers = external dso_local local_unnamed_addr global ptr, align 4
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%d\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%c%c%c (%s)\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" %4d:%d\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 95, i32 2 }
@___asan_gen_.7 = private unnamed_addr constant [12 x i8] c"consoles_op\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 86, i32 36 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 49, i32 16 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 51, i32 16 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [22 x i8] c"../fs/proc/consoles.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 55, i32 17 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__initcall__kmod_proc__210_98_proc_consoles_init5, ptr @.str, ptr @consoles_op, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @consoles_op to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_consoles_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @consoles_op, i32 noundef 0, ptr noundef null) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @c_start(ptr nocapture noundef readnone %m, ptr nocapture noundef readonly %pos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @console_lock() #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @console_drivers to i32))
  %con.04 = load ptr, ptr @console_drivers, align 4
  %cmp.not5 = icmp eq ptr %con.04, null
  br i1 %cmp.not5, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %con.07 = phi ptr [ %con.04, %for.body.lr.ph ], [ %con.0, %for.inc.for.body_crit_edge ]
  %off.06 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %off.06, i64 %1)
  %cmp1 = icmp eq i64 %off.06, %1
  br i1 %cmp1, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add i64 %off.06, 1
  %next = getelementptr inbounds %struct.console, ptr %con.07, i32 0, i32 14
  %2 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %2)
  %con.0 = load ptr, ptr %next, align 4
  %cmp.not = icmp eq ptr %con.0, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %con.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %con.07, %for.body.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  ret ptr %con.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @c_stop(ptr nocapture noundef readnone %m, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @console_unlock() #5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @c_next(ptr nocapture noundef readnone %m, ptr nocapture noundef readonly %v, ptr nocapture noundef %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %next = getelementptr inbounds %struct.console, ptr %v, i32 0, i32 14
  %2 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_console_dev(ptr noundef %m, ptr noundef %v) #2 align 64 {
entry:
  %flags = alloca [7 x i8], align 1
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %flags) #5
  %0 = getelementptr inbounds [7 x i8], ptr %flags, i32 0, i32 1
  %1 = getelementptr inbounds [7 x i8], ptr %flags, i32 0, i32 2
  %2 = getelementptr inbounds [7 x i8], ptr %flags, i32 0, i32 3
  %3 = getelementptr inbounds [7 x i8], ptr %flags, i32 0, i32 4
  %4 = getelementptr inbounds [7 x i8], ptr %flags, i32 0, i32 5
  %5 = getelementptr inbounds [7 x i8], ptr %flags, i32 0, i32 6
  %device = getelementptr inbounds %struct.console, ptr %v, i32 0, i32 3
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #5
  %8 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %index, align 4, !annotation !23
  %call = call ptr %7(ptr noundef %v, ptr noundef nonnull %index) #5
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %major = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 7
  %9 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %major, align 4
  %shl = shl i32 %10, 20
  %minor_start = getelementptr inbounds %struct.tty_driver, ptr %call, i32 0, i32 8
  %11 = ptrtoint ptr %minor_start to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %minor_start, align 4
  %or = or i32 %shl, %12
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  %add = add i32 %or, %14
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %dev.0 = phi i32 [ %add, %if.then3 ], [ 0, %if.then.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #5
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  %dev.1 = phi i32 [ %dev.0, %if.end ], [ 0, %entry.if.end4_crit_edge ]
  %flags5 = getelementptr inbounds %struct.console, ptr %v, i32 0, i32 8
  %15 = ptrtoint ptr %flags5 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags5, align 4
  %and50 = and i16 %16, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and50)
  %tobool7.not = icmp eq i16 %and50, 0
  %spec.select = select i1 %tobool7.not, i8 32, i8 69
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %spec.select, ptr %flags, align 1
  %and50.1 = and i16 %16, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and50.1)
  %tobool7.not.1 = icmp eq i16 %and50.1, 0
  %cond.1 = select i1 %tobool7.not.1, i8 32, i8 67
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %cond.1, ptr %0, align 1
  %and50.2 = and i16 %16, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and50.2)
  %tobool7.not.2 = icmp eq i16 %and50.2, 0
  %cond.2 = select i1 %tobool7.not.2, i8 32, i8 66
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %cond.2, ptr %1, align 1
  %and50.3 = and i16 %16, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and50.3)
  %tobool7.not.3 = icmp eq i16 %and50.3, 0
  %cond.3 = select i1 %tobool7.not.3, i8 32, i8 112
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %cond.3, ptr %2, align 1
  %and50.4 = and i16 %16, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and50.4)
  %tobool7.not.4 = icmp eq i16 %and50.4, 0
  %cond.4 = select i1 %tobool7.not.4, i8 32, i8 98
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %cond.4, ptr %3, align 1
  %and50.5 = and i16 %16, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and50.5)
  %tobool7.not.5 = icmp eq i16 %and50.5, 0
  %cond.5 = select i1 %tobool7.not.5, i8 32, i8 97
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %cond.5, ptr %4, align 1
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %5, align 1
  %count.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 3
  %24 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count.i, align 4
  %add.i = add i32 %25, 20
  %pad_until.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 4
  %26 = ptrtoint ptr %pad_until.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add.i, ptr %pad_until.i, align 8
  %index14 = getelementptr inbounds %struct.console, ptr %v, i32 0, i32 9
  %27 = ptrtoint ptr %index14 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %index14, align 2
  %conv15 = sext i16 %28 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.1, ptr noundef %v, i32 noundef %conv15) #5
  call void @seq_pad(ptr noundef %m, i8 noundef zeroext 32) #5
  %read = getelementptr inbounds %struct.console, ptr %v, i32 0, i32 2
  %29 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read, align 4
  %tobool16.not = icmp eq ptr %30, null
  %cond17 = select i1 %tobool16.not, i32 45, i32 82
  %write = getelementptr inbounds %struct.console, ptr %v, i32 0, i32 1
  %31 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write, align 4
  %tobool18.not = icmp eq ptr %32, null
  %cond19 = select i1 %tobool18.not, i32 45, i32 87
  %unblank = getelementptr inbounds %struct.console, ptr %v, i32 0, i32 4
  %33 = ptrtoint ptr %unblank to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %unblank, align 4
  %tobool20.not = icmp eq ptr %34, null
  %cond21 = select i1 %tobool20.not, i32 45, i32 85
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2, i32 noundef %cond17, i32 noundef %cond19, i32 noundef %cond21, ptr noundef nonnull %flags) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev.1)
  %tobool23.not = icmp eq i32 %dev.1, 0
  br i1 %tobool23.not, label %if.end4.if.end26_crit_edge, label %if.then24

if.end4.if.end26_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then24:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %shr = lshr i32 %dev.1, 20
  %and25 = and i32 %dev.1, 1048575
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, i32 noundef %shr, i32 noundef %and25) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end4.if.end26_crit_edge
  call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #5
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %flags) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_pad(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__initcall__kmod_proc__210_98_proc_consoles_init5, !1, !"__initcall__kmod_proc__210_98_proc_consoles_init5", i1 false, i1 false}
!1 = !{!"../fs/proc/consoles.c", i32 98, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/proc/consoles.c", i32 95, i32 2}
!4 = !{ptr @consoles_op, !5, !"consoles_op", i1 false, i1 false}
!5 = !{!"../fs/proc/consoles.c", i32 86, i32 36}
!6 = distinct !{null, !7, !"con_flags", i1 false, i1 false}
!7 = !{!"../fs/proc/consoles.c", i32 20, i32 4}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/proc/consoles.c", i32 49, i32 16}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/proc/consoles.c", i32 51, i32 16}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/proc/consoles.c", i32 55, i32 17}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
