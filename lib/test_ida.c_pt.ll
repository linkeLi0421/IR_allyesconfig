; ModuleID = '/llk/IR_all_yes/lib/test_ida.c_pt.bc'
source_filename = "../lib/test_ida.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@__initcall__kmod_test_ida__106_174_ida_checks6 = internal global ptr @ida_checks, section ".initcall6.init", align 4
@__exitcall_ida_exit = internal global ptr @ida_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author107 = internal constant [53 x i8] c"test_ida.author=Matthew Wilcox <willy@infradead.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file108 = internal constant [27 x i8] c"test_ida.file=lib/test_ida\00", section ".modinfo", align 1
@__UNIQUE_ID_license109 = internal constant [21 x i8] c"test_ida.license=GPL\00", section ".modinfo", align 1
@tests_run = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@tests_passed = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ida_checks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IDA: %u of %u tests passed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ida_checks\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lib/test_ida.c\00", [17 x i8] zeroinitializer }, align 32
@ida_checks._entry_ptr = internal global ptr @ida_checks._entry, section ".printk_index", align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ida.xa_lock\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [10 x i8] c"tests_run\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 12, i32 21 }
@___asan_gen_.7 = private unnamed_addr constant [4 x i8] c"ida\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [13 x i8] c"tests_passed\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 13, i32 21 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 166, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private constant [18 x i8] c"../lib/test_ida.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 153, i32 8 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author107, ptr @__UNIQUE_ID_file108, ptr @__UNIQUE_ID_license109, ptr @__exitcall_ida_exit, ptr @__initcall__kmod_test_ida__106_174_ida_checks6, ptr @ida_checks._entry, ptr @ida_checks._entry_ptr, ptr @tests_run, ptr @ida, ptr @tests_passed, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tests_run to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tests_passed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ida_checks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ida_dump(ptr nocapture %ida) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ida_checks() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = load i32, ptr @tests_run, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @tests_run, align 4
  %1 = load ptr, ptr getelementptr inbounds (%struct.ida, ptr @ida, i32 0, i32 0, i32 2), align 4
  %cmp.i.i = icmp eq ptr %1, null
  br i1 %cmp.i.i, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %do.body.i.preheader

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = load i32, ptr @tests_passed, align 4
  %inc1 = add i32 %2, 1
  store i32 %inc1, ptr @tests_passed, align 4
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.else, %if.then
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc.i.do.body.i_crit_edge, %do.body.i.preheader
  %i.03.i = phi i32 [ %inc3.i, %for.inc.i.do.body.i_crit_edge ], [ 0, %do.body.i.preheader ]
  %3 = load i32, ptr @tests_run, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr @tests_run, align 4
  %call.i.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %i.03.i)
  %cmp1.not.i = icmp eq i32 %call.i.i, %i.03.i
  br i1 %cmp1.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %for.inc.i

if.else.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %4 = load i32, ptr @tests_passed, align 4
  %inc2.i = add i32 %4, 1
  store i32 %inc2.i, ptr @tests_passed, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i
  %inc3.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc3.i, 10000
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.do.body.i_crit_edge

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

for.end.i:                                        ; preds = %for.inc.i
  tail call void @ida_free(ptr noundef nonnull @ida, i32 noundef 20) #7
  tail call void @ida_free(ptr noundef nonnull @ida, i32 noundef 21) #7
  %call.i1.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #7
  %5 = load i32, ptr @tests_run, align 4
  %inc9.i = add i32 %5, 1
  store i32 %inc9.i, ptr @tests_run, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %cmp10.i = icmp slt i32 %call.i1.i, 0
  br i1 %cmp10.i, label %if.then11.i, label %if.else12.i

if.then11.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %for.inc29.i

if.else12.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %6 = load i32, ptr @tests_passed, align 4
  %inc13.i = add i32 %6, 1
  store i32 %inc13.i, ptr @tests_passed, align 4
  br label %for.inc29.i

for.inc29.i:                                      ; preds = %if.else12.i, %if.then11.i
  %call.i1.1.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #7
  %7 = load i32, ptr @tests_run, align 4
  %inc9.1.i = add i32 %7, 1
  store i32 %inc9.1.i, ptr @tests_run, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.1.i)
  %cmp10.1.i = icmp slt i32 %call.i1.1.i, 0
  br i1 %cmp10.1.i, label %if.then11.1.i, label %if.else12.1.i

if.else12.1.i:                                    ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #5
  %8 = load i32, ptr @tests_passed, align 4
  %inc13.1.i = add i32 %8, 1
  store i32 %inc13.1.i, ptr @tests_passed, align 4
  br label %for.inc29.1.i

if.then11.1.i:                                    ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %for.inc29.1.i

for.inc29.1.i:                                    ; preds = %if.then11.1.i, %if.else12.1.i
  %call.i1.2.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #7
  %9 = load i32, ptr @tests_run, align 4
  %inc9.2.i = add i32 %9, 1
  store i32 %inc9.2.i, ptr @tests_run, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.2.i)
  %cmp10.2.i = icmp slt i32 %call.i1.2.i, 0
  br i1 %cmp10.2.i, label %do.body19.2.thread.i, label %do.body19.2.i

do.body19.2.thread.i:                             ; preds = %for.inc29.1.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  %10 = load i32, ptr @tests_run, align 4
  %inc20.28.i = add i32 %10, 1
  store i32 %inc20.28.i, ptr @tests_run, align 4
  br label %if.then22.2.i

do.body19.2.i:                                    ; preds = %for.inc29.1.i
  %11 = load i32, ptr @tests_passed, align 4
  %inc13.2.i = add i32 %11, 1
  store i32 %inc13.2.i, ptr @tests_passed, align 4
  %inc20.2.i = add i32 %9, 2
  store i32 %inc20.2.i, ptr @tests_run, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %call.i1.2.i)
  %cmp21.not.2.i = icmp eq i32 %call.i1.2.i, 10000
  br i1 %cmp21.not.2.i, label %if.else23.2.i, label %do.body19.2.i.if.then22.2.i_crit_edge

do.body19.2.i.if.then22.2.i_crit_edge:            ; preds = %do.body19.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then22.2.i

if.then22.2.i:                                    ; preds = %do.body19.2.i.if.then22.2.i_crit_edge, %do.body19.2.thread.i
  tail call void @dump_stack() #6
  br label %for.body34.i.preheader

if.else23.2.i:                                    ; preds = %do.body19.2.i
  call void @__sanitizer_cov_trace_pc() #5
  %inc24.2.i = add i32 %11, 2
  store i32 %inc24.2.i, ptr @tests_passed, align 4
  br label %for.body34.i.preheader

for.body34.i.preheader:                           ; preds = %if.else23.2.i, %if.then22.2.i
  br label %for.body34.i

for.body34.i:                                     ; preds = %for.body34.i.for.body34.i_crit_edge, %for.body34.i.preheader
  %i.25.i = phi i32 [ %inc36.i, %for.body34.i.for.body34.i_crit_edge ], [ 0, %for.body34.i.preheader ]
  tail call void @ida_free(ptr noundef nonnull @ida, i32 noundef %i.25.i) #7
  %inc36.i = add nuw nsw i32 %i.25.i, 1
  %exitcond7.not.i = icmp eq i32 %inc36.i, 5000
  br i1 %exitcond7.not.i, label %do.body38.i, label %for.body34.i.for.body34.i_crit_edge

for.body34.i.for.body34.i_crit_edge:              ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body34.i

do.body38.i:                                      ; preds = %for.body34.i
  %12 = load i32, ptr @tests_run, align 4
  %inc39.i = add i32 %12, 1
  store i32 %inc39.i, ptr @tests_run, align 4
  %call.i2.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @ida, i32 noundef 5000, i32 noundef -1, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10001, i32 %call.i2.i)
  %cmp41.not.i = icmp eq i32 %call.i2.i, 10001
  br i1 %cmp41.not.i, label %if.else43.i, label %if.then42.i

if.then42.i:                                      ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %do.end47.i

if.else43.i:                                      ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #5
  %13 = load i32, ptr @tests_passed, align 4
  %inc44.i = add i32 %13, 1
  store i32 %inc44.i, ptr @tests_passed, align 4
  br label %do.end47.i

do.end47.i:                                       ; preds = %if.else43.i, %if.then42.i
  tail call void @ida_destroy(ptr noundef nonnull @ida) #7
  %14 = load i32, ptr @tests_run, align 4
  %inc49.i = add i32 %14, 1
  store i32 %inc49.i, ptr @tests_run, align 4
  %15 = load ptr, ptr getelementptr inbounds (%struct.ida, ptr @ida, i32 0, i32 0, i32 2), align 4
  %cmp.i.i.i = icmp eq ptr %15, null
  br i1 %cmp.i.i.i, label %if.else52.i, label %if.then51.i

if.then51.i:                                      ; preds = %do.end47.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %ida_check_alloc.exit

if.else52.i:                                      ; preds = %do.end47.i
  call void @__sanitizer_cov_trace_pc() #5
  %16 = load i32, ptr @tests_passed, align 4
  %inc53.i = add i32 %16, 1
  store i32 %inc53.i, ptr @tests_passed, align 4
  br label %ida_check_alloc.exit

ida_check_alloc.exit:                             ; preds = %if.else52.i, %if.then51.i
  %17 = load i32, ptr @tests_run, align 4
  %inc.i5 = add i32 %17, 1
  store i32 %inc.i5, ptr @tests_run, align 4
  %18 = load ptr, ptr getelementptr inbounds (%struct.ida, ptr @ida, i32 0, i32 0, i32 2), align 4
  %cmp.i.i.i6 = icmp eq ptr %18, null
  br i1 %cmp.i.i.i6, label %if.else.i8, label %if.then.i7

if.then.i7:                                       ; preds = %ida_check_alloc.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %do.end.i

if.else.i8:                                       ; preds = %ida_check_alloc.exit
  call void @__sanitizer_cov_trace_pc() #5
  %19 = load i32, ptr @tests_passed, align 4
  %inc1.i = add i32 %19, 1
  store i32 %inc1.i, ptr @tests_passed, align 4
  br label %do.end.i

do.end.i:                                         ; preds = %if.else.i8, %if.then.i7
  tail call void @ida_destroy(ptr noundef nonnull @ida) #7
  %20 = load i32, ptr @tests_run, align 4
  %inc3.i9 = add i32 %20, 1
  store i32 %inc3.i9, ptr @tests_run, align 4
  %21 = load ptr, ptr getelementptr inbounds (%struct.ida, ptr @ida, i32 0, i32 0, i32 2), align 4
  %cmp.i.i1.i = icmp eq ptr %21, null
  br i1 %cmp.i.i1.i, label %if.else6.i, label %if.then5.i

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %ida_check_destroy.exit

if.else6.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %22 = load i32, ptr @tests_passed, align 4
  %inc7.i = add i32 %22, 1
  store i32 %inc7.i, ptr @tests_passed, align 4
  br label %ida_check_destroy.exit

ida_check_destroy.exit:                           ; preds = %if.else6.i, %if.then5.i
  tail call fastcc void @ida_check_destroy_1(i32 noundef 0) #7
  tail call fastcc void @ida_check_destroy_1(i32 noundef 1) #7
  tail call fastcc void @ida_check_destroy_1(i32 noundef 1023) #7
  tail call fastcc void @ida_check_destroy_1(i32 noundef 1024) #7
  tail call fastcc void @ida_check_destroy_1(i32 noundef 12345678) #7
  tail call fastcc void @ida_check_leaf(i32 noundef 0)
  tail call fastcc void @ida_check_leaf(i32 noundef 1024)
  tail call fastcc void @ida_check_leaf(i32 noundef 65536)
  br label %do.body.preheader.i

do.body.preheader.i:                              ; preds = %do.end25.i.do.body.preheader.i_crit_edge, %ida_check_destroy.exit
  %j.04.i = phi i32 [ 1, %ida_check_destroy.exit ], [ %mul.i, %do.end25.i.do.body.preheader.i_crit_edge ]
  %sub.i = sub nuw i32 -2147483648, %j.04.i
  br label %do.body.i13

do.body.i13:                                      ; preds = %for.inc.i17.do.body.i13_crit_edge, %do.body.preheader.i
  %i.03.i10 = phi i32 [ %inc6.i, %for.inc.i17.do.body.i13_crit_edge ], [ 0, %do.body.preheader.i ]
  %23 = load i32, ptr @tests_run, align 4
  %inc.i11 = add i32 %23, 1
  store i32 %inc.i11, ptr @tests_run, align 4
  %call.i.i12 = tail call i32 @ida_alloc_range(ptr noundef nonnull @ida, i32 noundef %sub.i, i32 noundef -1, i32 noundef 3264) #7
  %add.i = add i32 %i.03.i10, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i12, i32 %add.i)
  %cmp4.not.i = icmp eq i32 %call.i.i12, %add.i
  br i1 %cmp4.not.i, label %if.else.i15, label %if.then.i14

if.then.i14:                                      ; preds = %do.body.i13
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %for.inc.i17

if.else.i15:                                      ; preds = %do.body.i13
  call void @__sanitizer_cov_trace_pc() #5
  %24 = load i32, ptr @tests_passed, align 4
  %inc5.i = add i32 %24, 1
  store i32 %inc5.i, ptr @tests_passed, align 4
  br label %for.inc.i17

for.inc.i17:                                      ; preds = %if.else.i15, %if.then.i14
  %inc6.i = add nuw i32 %i.03.i10, 1
  %exitcond.not.i16 = icmp eq i32 %inc6.i, %j.04.i
  br i1 %exitcond.not.i16, label %do.body7.i, label %for.inc.i17.do.body.i13_crit_edge

for.inc.i17.do.body.i13_crit_edge:                ; preds = %for.inc.i17
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i13

do.body7.i:                                       ; preds = %for.inc.i17
  %25 = load i32, ptr @tests_run, align 4
  %inc8.i = add i32 %25, 1
  store i32 %inc8.i, ptr @tests_run, align 4
  %call.i1.i18 = tail call i32 @ida_alloc_range(ptr noundef nonnull @ida, i32 noundef %sub.i, i32 noundef -1, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i1.i18)
  %cmp10.not.i = icmp eq i32 %call.i1.i18, -28
  br i1 %cmp10.not.i, label %if.else12.i21, label %if.then11.i19

if.then11.i19:                                    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %do.end16.i

if.else12.i21:                                    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #5
  %26 = load i32, ptr @tests_passed, align 4
  %inc13.i20 = add i32 %26, 1
  store i32 %inc13.i20, ptr @tests_passed, align 4
  br label %do.end16.i

do.end16.i:                                       ; preds = %if.else12.i21, %if.then11.i19
  tail call void @ida_destroy(ptr noundef nonnull @ida) #7
  %27 = load i32, ptr @tests_run, align 4
  %inc18.i = add i32 %27, 1
  store i32 %inc18.i, ptr @tests_run, align 4
  %28 = load ptr, ptr getelementptr inbounds (%struct.ida, ptr @ida, i32 0, i32 0, i32 2), align 4
  %cmp.i.i.i22 = icmp eq ptr %28, null
  br i1 %cmp.i.i.i22, label %if.else21.i, label %if.then20.i

if.then20.i:                                      ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %do.end25.i

if.else21.i:                                      ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #5
  %29 = load i32, ptr @tests_passed, align 4
  %inc22.i = add i32 %29, 1
  store i32 %inc22.i, ptr @tests_passed, align 4
  br label %do.end25.i

do.end25.i:                                       ; preds = %if.else21.i, %if.then20.i
  %mul.i = shl i32 %j.04.i, 1
  %cmp.i = icmp ult i32 %mul.i, 65537
  br i1 %cmp.i, label %do.end25.i.do.body.preheader.i_crit_edge, label %ida_check_max.exit

do.end25.i.do.body.preheader.i_crit_edge:         ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.preheader.i

ida_check_max.exit:                               ; preds = %do.end25.i
  %30 = load i32, ptr @tests_run, align 4
  %inc.i23 = add i32 %30, 1
  store i32 %inc.i23, ptr @tests_run, align 4
  %call.i.i24 = tail call i32 @ida_alloc_range(ptr noundef nonnull @ida, i32 noundef 1, i32 noundef -1, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i24)
  %cmp2.not.i = icmp eq i32 %call.i.i24, 1
  br i1 %cmp2.not.i, label %if.else.i27, label %if.then.i25

if.then.i25:                                      ; preds = %ida_check_max.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %do.body4.i

if.else.i27:                                      ; preds = %ida_check_max.exit
  call void @__sanitizer_cov_trace_pc() #5
  %31 = load i32, ptr @tests_passed, align 4
  %inc3.i26 = add i32 %31, 1
  store i32 %inc3.i26, ptr @tests_passed, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %if.else.i27, %if.then.i25
  %32 = load i32, ptr @tests_run, align 4
  %inc5.i28 = add i32 %32, 1
  store i32 %inc5.i28, ptr @tests_run, align 4
  %call.i1.i29 = tail call i32 @ida_alloc_range(ptr noundef nonnull @ida, i32 noundef 32, i32 noundef -1, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i1.i29)
  %cmp9.not.i = icmp eq i32 %call.i1.i29, 32
  br i1 %cmp9.not.i, label %if.else11.i, label %if.then10.i

if.then10.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %do.end15.i

if.else11.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #5
  %33 = load i32, ptr @tests_passed, align 4
  %inc12.i = add i32 %33, 1
  store i32 %inc12.i, ptr @tests_passed, align 4
  br label %do.end15.i

do.end15.i:                                       ; preds = %if.else11.i, %if.then10.i
  tail call void @ida_free(ptr noundef nonnull @ida, i32 noundef 1) #7
  tail call void @ida_free(ptr noundef nonnull @ida, i32 noundef 32) #7
  %34 = load i32, ptr @tests_run, align 4
  %inc19.i = add i32 %34, 1
  store i32 %inc19.i, ptr @tests_run, align 4
  %35 = load ptr, ptr getelementptr inbounds (%struct.ida, ptr @ida, i32 0, i32 0, i32 2), align 4
  %cmp.i.i.i30 = icmp eq ptr %35, null
  br i1 %cmp.i.i.i30, label %if.else22.i, label %if.then21.i

if.then21.i:                                      ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %for.inc.i31

if.else22.i:                                      ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #5
  %36 = load i32, ptr @tests_passed, align 4
  %inc23.i = add i32 %36, 1
  store i32 %inc23.i, ptr @tests_passed, align 4
  br label %for.inc.i31

for.inc.i31:                                      ; preds = %if.else22.i, %if.then21.i
  %37 = load i32, ptr @tests_run, align 4
  %inc.1.i = add i32 %37, 1
  store i32 %inc.1.i, ptr @tests_run, align 4
  %call.i.1.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @ida, i32 noundef 1025, i32 noundef -1, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1025, i32 %call.i.1.i)
  %cmp2.not.1.i = icmp eq i32 %call.i.1.i, 1025
  br i1 %cmp2.not.1.i, label %if.else.1.i, label %if.then.1.i

if.then.1.i:                                      ; preds = %for.inc.i31
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %do.body4.1.i

if.else.1.i:                                      ; preds = %for.inc.i31
  call void @__sanitizer_cov_trace_pc() #5
  %38 = load i32, ptr @tests_passed, align 4
  %inc3.1.i = add i32 %38, 1
  store i32 %inc3.1.i, ptr @tests_passed, align 4
  br label %do.body4.1.i

do.body4.1.i:                                     ; preds = %if.else.1.i, %if.then.1.i
  %39 = load i32, ptr @tests_run, align 4
  %inc5.1.i = add i32 %39, 1
  store i32 %inc5.1.i, ptr @tests_run, align 4
  %call.i1.1.i32 = tail call i32 @ida_alloc_range(ptr noundef nonnull @ida, i32 noundef 1056, i32 noundef -1, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1056, i32 %call.i1.1.i32)
  %cmp9.not.1.i = icmp eq i32 %call.i1.1.i32, 1056
  br i1 %cmp9.not.1.i, label %if.else11.1.i, label %if.then10.1.i

if.then10.1.i:                                    ; preds = %do.body4.1.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %do.end15.1.i

if.else11.1.i:                                    ; preds = %do.body4.1.i
  call void @__sanitizer_cov_trace_pc() #5
  %40 = load i32, ptr @tests_passed, align 4
  %inc12.1.i = add i32 %40, 1
  store i32 %inc12.1.i, ptr @tests_passed, align 4
  br label %do.end15.1.i

do.end15.1.i:                                     ; preds = %if.else11.1.i, %if.then10.1.i
  tail call void @ida_free(ptr noundef nonnull @ida, i32 noundef 1025) #7
  tail call void @ida_free(ptr noundef nonnull @ida, i32 noundef 1056) #7
  %41 = load i32, ptr @tests_run, align 4
  %inc19.1.i = add i32 %41, 1
  store i32 %inc19.1.i, ptr @tests_run, align 4
  %42 = load ptr, ptr getelementptr inbounds (%struct.ida, ptr @ida, i32 0, i32 0, i32 2), align 4
  %cmp.i.i.1.i = icmp eq ptr %42, null
  br i1 %cmp.i.i.1.i, label %if.else22.1.i, label %if.then21.1.i

if.then21.1.i:                                    ; preds = %do.end15.1.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %do.body31.i.preheader

if.else22.1.i:                                    ; preds = %do.end15.1.i
  call void @__sanitizer_cov_trace_pc() #5
  %43 = load i32, ptr @tests_passed, align 4
  %inc23.1.i = add i32 %43, 1
  store i32 %inc23.1.i, ptr @tests_passed, align 4
  br label %do.body31.i.preheader

do.body31.i.preheader:                            ; preds = %if.else22.1.i, %if.then21.1.i
  br label %do.body31.i

do.body31.i:                                      ; preds = %for.inc41.i.do.body31.i_crit_edge, %do.body31.i.preheader
  %i.17.i = phi i32 [ %inc42.i, %for.inc41.i.do.body31.i_crit_edge ], [ 0, %do.body31.i.preheader ]
  %44 = load i32, ptr @tests_run, align 4
  %inc32.i = add i32 %44, 1
  store i32 %inc32.i, ptr @tests_run, align 4
  %call.i2.i33 = tail call i32 @ida_alloc_range(ptr noundef nonnull @ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i2.i33, i32 %i.17.i)
  %cmp34.not.i = icmp eq i32 %call.i2.i33, %i.17.i
  br i1 %cmp34.not.i, label %if.else36.i, label %if.then35.i

if.then35.i:                                      ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %for.inc41.i

if.else36.i:                                      ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #5
  %45 = load i32, ptr @tests_passed, align 4
  %inc37.i = add i32 %45, 1
  store i32 %inc37.i, ptr @tests_passed, align 4
  br label %for.inc41.i

for.inc41.i:                                      ; preds = %if.else36.i, %if.then35.i
  %inc42.i = add nuw nsw i32 %i.17.i, 1
  %exitcond.not.i34 = icmp eq i32 %inc42.i, 2048
  br i1 %exitcond.not.i34, label %for.inc41.i.for.body46.i_crit_edge, label %for.inc41.i.do.body31.i_crit_edge

for.inc41.i.do.body31.i_crit_edge:                ; preds = %for.inc41.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body31.i

for.inc41.i.for.body46.i_crit_edge:               ; preds = %for.inc41.i
  br label %for.body46.i

for.body46.i:                                     ; preds = %for.body46.i.for.body46.i_crit_edge, %for.inc41.i.for.body46.i_crit_edge
  %i.28.i = phi i32 [ %sub.i35, %for.body46.i.for.body46.i_crit_edge ], [ 2048, %for.inc41.i.for.body46.i_crit_edge ]
  %sub.i35 = add nsw i32 %i.28.i, -1
  tail call void @ida_free(ptr noundef nonnull @ida, i32 noundef %sub.i35) #7
  %cmp45.not.i = icmp eq i32 %sub.i35, 0
  br i1 %cmp45.not.i, label %do.body49.i, label %for.body46.i.for.body46.i_crit_edge

for.body46.i.for.body46.i_crit_edge:              ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body46.i

do.body49.i:                                      ; preds = %for.body46.i
  %46 = load i32, ptr @tests_run, align 4
  %inc50.i = add i32 %46, 1
  store i32 %inc50.i, ptr @tests_run, align 4
  %47 = load ptr, ptr getelementptr inbounds (%struct.ida, ptr @ida, i32 0, i32 0, i32 2), align 4
  %cmp.i.i3.i = icmp eq ptr %47, null
  br i1 %cmp.i.i3.i, label %if.else53.i, label %if.then52.i

if.then52.i:                                      ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %do.body61.i.preheader

if.else53.i:                                      ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #5
  %48 = load i32, ptr @tests_passed, align 4
  %inc54.i = add i32 %48, 1
  store i32 %inc54.i, ptr @tests_passed, align 4
  br label %do.body61.i.preheader

do.body61.i.preheader:                            ; preds = %if.else53.i, %if.then52.i
  br label %do.body61.i

do.body61.i:                                      ; preds = %for.inc71.i.do.body61.i_crit_edge, %do.body61.i.preheader
  %i.39.i = phi i32 [ %inc72.i, %for.inc71.i.do.body61.i_crit_edge ], [ 0, %do.body61.i.preheader ]
  %49 = load i32, ptr @tests_run, align 4
  %inc62.i = add i32 %49, 1
  store i32 %inc62.i, ptr @tests_run, align 4
  %call.i4.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i4.i, i32 %i.39.i)
  %cmp64.not.i = icmp eq i32 %call.i4.i, %i.39.i
  br i1 %cmp64.not.i, label %if.else66.i, label %if.then65.i

if.then65.i:                                      ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %for.inc71.i

if.else66.i:                                      ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #5
  %50 = load i32, ptr @tests_passed, align 4
  %inc67.i = add i32 %50, 1
  store i32 %inc67.i, ptr @tests_passed, align 4
  br label %for.inc71.i

for.inc71.i:                                      ; preds = %if.else66.i, %if.then65.i
  %inc72.i = add nuw nsw i32 %i.39.i, 1
  %exitcond11.not.i = icmp eq i32 %inc72.i, 1052
  br i1 %exitcond11.not.i, label %for.inc71.i.for.body76.i_crit_edge, label %for.inc71.i.do.body61.i_crit_edge

for.inc71.i.do.body61.i_crit_edge:                ; preds = %for.inc71.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body61.i

for.inc71.i.for.body76.i_crit_edge:               ; preds = %for.inc71.i
  br label %for.body76.i

for.body76.i:                                     ; preds = %for.body76.i.for.body76.i_crit_edge, %for.inc71.i.for.body76.i_crit_edge
  %i.410.i = phi i32 [ %sub77.i, %for.body76.i.for.body76.i_crit_edge ], [ 1052, %for.inc71.i.for.body76.i_crit_edge ]
  %sub77.i = add nsw i32 %i.410.i, -1
  tail call void @ida_free(ptr noundef nonnull @ida, i32 noundef %sub77.i) #7
  %cmp75.not.i = icmp eq i32 %sub77.i, 0
  br i1 %cmp75.not.i, label %do.body81.i, label %for.body76.i.for.body76.i_crit_edge

for.body76.i.for.body76.i_crit_edge:              ; preds = %for.body76.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body76.i

do.body81.i:                                      ; preds = %for.body76.i
  %51 = load i32, ptr @tests_run, align 4
  %inc82.i = add i32 %51, 1
  store i32 %inc82.i, ptr @tests_run, align 4
  %52 = load ptr, ptr getelementptr inbounds (%struct.ida, ptr @ida, i32 0, i32 0, i32 2), align 4
  %cmp.i.i5.i = icmp eq ptr %52, null
  br i1 %cmp.i.i5.i, label %if.else85.i, label %if.then84.i

if.then84.i:                                      ; preds = %do.body81.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %ida_check_conv.exit

if.else85.i:                                      ; preds = %do.body81.i
  call void @__sanitizer_cov_trace_pc() #5
  %53 = load i32, ptr @tests_passed, align 4
  %inc86.i = add i32 %53, 1
  store i32 %inc86.i, ptr @tests_passed, align 4
  br label %ida_check_conv.exit

ida_check_conv.exit:                              ; preds = %if.else85.i, %if.then84.i
  %54 = load i32, ptr @tests_passed, align 4
  %55 = load i32, ptr @tests_run, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %54, i32 noundef %55) #6
  %56 = load i32, ptr @tests_run, align 4
  %57 = load i32, ptr @tests_passed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %57)
  %cmp.not = icmp eq i32 %56, %57
  %cond = select i1 %cmp.not, i32 -22, i32 0
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ida_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ida_check_leaf(i32 noundef %base) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %entry
  %i.04 = phi i32 [ 0, %entry ], [ %inc3, %for.inc.do.body_crit_edge ]
  %0 = load i32, ptr @tests_run, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @tests_run, align 4
  %call.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @ida, i32 noundef %base, i32 noundef -1, i32 noundef 3264) #7
  %add = add i32 %i.04, %base
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add)
  %cmp1.not = icmp eq i32 %call.i, %add
  br i1 %cmp1.not, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %for.inc

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %1 = load i32, ptr @tests_passed, align 4
  %inc2 = add i32 %1, 1
  store i32 %inc2, ptr @tests_passed, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %inc3 = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc3, 1024
  br i1 %exitcond.not, label %for.end, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

for.end:                                          ; preds = %for.inc
  tail call void @ida_destroy(ptr noundef nonnull @ida) #7
  %2 = load i32, ptr @tests_run, align 4
  %inc5 = add i32 %2, 1
  store i32 %inc5, ptr @tests_run, align 4
  %3 = load ptr, ptr getelementptr inbounds (%struct.ida, ptr @ida, i32 0, i32 0, i32 2), align 4
  %cmp.i.i = icmp eq ptr %3, null
  br i1 %cmp.i.i, label %if.else8, label %if.then7

if.then7:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %do.body13

if.else8:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %4 = load i32, ptr @tests_passed, align 4
  %inc9 = add i32 %4, 1
  store i32 %inc9, ptr @tests_passed, align 4
  br label %do.body13

do.body13:                                        ; preds = %if.else8, %if.then7
  %5 = load i32, ptr @tests_run, align 4
  %inc14 = add i32 %5, 1
  store i32 %inc14, ptr @tests_run, align 4
  %call.i1 = tail call i32 @ida_alloc_range(ptr noundef nonnull @ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %cmp16.not = icmp eq i32 %call.i1, 0
  br i1 %cmp16.not, label %if.else18, label %if.then17

if.then17:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %do.body23

if.else18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #5
  %6 = load i32, ptr @tests_passed, align 4
  %inc19 = add i32 %6, 1
  store i32 %inc19, ptr @tests_passed, align 4
  br label %do.body23

do.body23:                                        ; preds = %if.else18, %if.then17
  %7 = load i32, ptr @tests_run, align 4
  %inc24 = add i32 %7, 1
  store i32 %inc24, ptr @tests_run, align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.ida, ptr @ida, i32 0, i32 0, i32 2), align 4
  %cmp.i.i2 = icmp eq ptr %8, null
  br i1 %cmp.i.i2, label %if.then26, label %if.else27

if.then26:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %do.end31

if.else27:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #5
  %9 = load i32, ptr @tests_passed, align 4
  %inc28 = add i32 %9, 1
  store i32 %inc28, ptr @tests_passed, align 4
  br label %do.end31

do.end31:                                         ; preds = %if.else27, %if.then26
  tail call void @ida_free(ptr noundef nonnull @ida, i32 noundef 0) #7
  %10 = load i32, ptr @tests_run, align 4
  %inc33 = add i32 %10, 1
  store i32 %inc33, ptr @tests_run, align 4
  %11 = load ptr, ptr getelementptr inbounds (%struct.ida, ptr @ida, i32 0, i32 0, i32 2), align 4
  %cmp.i.i3 = icmp eq ptr %11, null
  br i1 %cmp.i.i3, label %if.else36, label %if.then35

if.then35:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %do.end40

if.else36:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #5
  %12 = load i32, ptr @tests_passed, align 4
  %inc37 = add i32 %12, 1
  store i32 %inc37, ptr @tests_passed, align 4
  br label %do.end40

do.end40:                                         ; preds = %if.else36, %if.then35
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ida_check_destroy_1(i32 noundef %base) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = load i32, ptr @tests_run, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @tests_run, align 4
  %call.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @ida, i32 noundef %base, i32 noundef -1, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %base)
  %cmp.not = icmp eq i32 %call.i, %base
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %do.body2

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %1 = load i32, ptr @tests_passed, align 4
  %inc1 = add i32 %1, 1
  store i32 %inc1, ptr @tests_passed, align 4
  br label %do.body2

do.body2:                                         ; preds = %if.else, %if.then
  %2 = load i32, ptr @tests_run, align 4
  %inc3 = add i32 %2, 1
  store i32 %inc3, ptr @tests_run, align 4
  %3 = load ptr, ptr getelementptr inbounds (%struct.ida, ptr @ida, i32 0, i32 0, i32 2), align 4
  %cmp.i.i = icmp eq ptr %3, null
  br i1 %cmp.i.i, label %if.then5, label %if.else6

if.then5:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %do.end9

if.else6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #5
  %4 = load i32, ptr @tests_passed, align 4
  %inc7 = add i32 %4, 1
  store i32 %inc7, ptr @tests_passed, align 4
  br label %do.end9

do.end9:                                          ; preds = %if.else6, %if.then5
  tail call void @ida_destroy(ptr noundef nonnull @ida) #7
  %5 = load i32, ptr @tests_run, align 4
  %inc11 = add i32 %5, 1
  store i32 %inc11, ptr @tests_run, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.ida, ptr @ida, i32 0, i32 0, i32 2), align 4
  %cmp.i.i1 = icmp eq ptr %6, null
  br i1 %cmp.i.i1, label %if.else14, label %if.then13

if.then13:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @dump_stack() #6
  br label %do.end17

if.else14:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #5
  %7 = load i32, ptr @tests_passed, align 4
  %inc15 = add i32 %7, 1
  store i32 %inc15, ptr @tests_passed, align 4
  br label %do.end17

do.end17:                                         ; preds = %if.else14, %if.then13
  ret void
}

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind uwtable(sync) }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !17, !19, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__initcall__kmod_test_ida__106_174_ida_checks6, !1, !"__initcall__kmod_test_ida__106_174_ida_checks6", i1 false, i1 false}
!1 = !{!"../lib/test_ida.c", i32 174, i32 1}
!2 = !{ptr @__exitcall_ida_exit, !3, !"__exitcall_ida_exit", i1 false, i1 false}
!3 = !{!"../lib/test_ida.c", i32 175, i32 1}
!4 = !{ptr @__UNIQUE_ID_author107, !5, !"__UNIQUE_ID_author107", i1 false, i1 false}
!5 = !{!"../lib/test_ida.c", i32 176, i32 1}
!6 = !{ptr @__UNIQUE_ID_file108, !7, !"__UNIQUE_ID_file108", i1 false, i1 false}
!7 = !{!"../lib/test_ida.c", i32 177, i32 1}
!8 = !{ptr @__UNIQUE_ID_license109, !7, !"__UNIQUE_ID_license109", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../lib/test_ida.c", i32 166, i32 2}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ida_checks._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @ida_checks._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @tests_run, !16, !"tests_run", i1 false, i1 false}
!16 = !{!"../lib/test_ida.c", i32 12, i32 21}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../lib/test_ida.c", i32 153, i32 8}
!19 = !{ptr @ida, !18, !"ida", i1 false, i1 false}
!20 = !{ptr @tests_passed, !21, !"tests_passed", i1 false, i1 false}
!21 = !{!"../lib/test_ida.c", i32 13, i32 21}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
