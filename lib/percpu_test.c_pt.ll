; ModuleID = '/llk/IR_all_yes/lib/percpu_test.c_pt.bc'
source_filename = "../lib/percpu_test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_license106 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author107 = internal constant [19 x i8] c"author=Greg Thelen\00", section ".modinfo", align 1
@__UNIQUE_ID_description108 = internal constant [35 x i8] c"description=percpu operations test\00", section ".modinfo", align 1
@__pcpu_unique_long_counter = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@long_counter = weak dso_local global i32 0, section ".data..percpu", align 4
@__pcpu_unique_ulong_counter = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@ulong_counter = weak dso_local global i32 0, section ".data..percpu", align 4
@percpu_test_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 30, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016percpu test start\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"percpu_test_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lib/percpu_test.c\00", [46 x i8] zeroinitializer }, align 32
@percpu_test_init._entry_ptr = internal global ptr @percpu_test_init._entry, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"raw %ld (0x%lx) != expected %lld (0x%llx)\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"pcp %ld (0x%lx) != expected %lld (0x%llx)\00", [54 x i8] zeroinitializer }, align 32
@percpu_test_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016percpu test done\0A\00", [44 x i8] zeroinitializer }, align 32
@percpu_test_init._entry_ptr.11 = internal global ptr @percpu_test_init._entry.9, section ".printk_index", align 4
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 30, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 36, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [21 x i8] c"../lib/percpu_test.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 126, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author107, ptr @__UNIQUE_ID_description108, ptr @__UNIQUE_ID_license106, ptr @percpu_test_init._entry, ptr @percpu_test_init._entry.9, ptr @percpu_test_init._entry_ptr, ptr @percpu_test_init._entry_ptr.11, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.10], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @percpu_test_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @percpu_test_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %ui_one = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ui_one)
  %0 = ptrtoint ptr %ui_one to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 -1, ptr %ui_one, align 4
  store volatile i32 1, ptr %ui_one, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  %1 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %4, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !41
  %5 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add16 = add i32 %10, ptrtoint (ptr @long_counter to i32)
  %11 = inttoptr i32 %add16 to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add17 = add i32 %13, -1
  store i32 %add17, ptr %11, align 4
  %14 = load i32, ptr %cpu, align 4
  %arrayidx61 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx61, align 4
  %add62 = add i32 %16, ptrtoint (ptr @long_counter to i32)
  %17 = inttoptr i32 %add62 to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp64.not = icmp eq i32 %19, -1
  br i1 %cmp64.not, label %entry.if.end124_crit_edge, label %do.end80, !prof !42

entry.if.end124_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end124

do.end80:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %19, i32 noundef %19, i64 noundef -1, i64 noundef -1) #9
  br label %if.end124

if.end124:                                        ; preds = %do.end80, %entry.if.end124_crit_edge
  %20 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu, align 4
  %arrayidx150 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx150, align 4
  %add151 = add i32 %23, ptrtoint (ptr @long_counter to i32)
  %24 = inttoptr i32 %add151 to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %add152 = add i32 %26, 1
  store i32 %add152, ptr %24, align 4
  %27 = load i32, ptr %cpu, align 4
  %arrayidx206 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx206, align 4
  %add207 = add i32 %29, ptrtoint (ptr @long_counter to i32)
  %30 = inttoptr i32 %add207 to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp209.not = icmp eq i32 %32, 0
  br i1 %cmp209.not, label %if.end124.if.end269_crit_edge, label %do.end225, !prof !42

if.end124.if.end269_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end269

do.end225:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 40, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %32, i32 noundef %32, i64 noundef 0, i64 noundef 0) #9
  br label %if.end269

if.end269:                                        ; preds = %do.end225, %if.end124.if.end269_crit_edge
  %33 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu, align 4
  %arrayidx294 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx294, align 4
  %add295 = add i32 %36, ptrtoint (ptr @ulong_counter to i32)
  %37 = inttoptr i32 %add295 to ptr
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %37, align 4
  %39 = load i32, ptr %cpu, align 4
  %arrayidx316 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx316 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx316, align 4
  %add317 = add i32 %41, ptrtoint (ptr @ulong_counter to i32)
  %42 = inttoptr i32 %add317 to ptr
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %add318 = add i32 %44, 1
  store i32 %add318, ptr %42, align 4
  %45 = load i32, ptr %cpu, align 4
  %arrayidx372 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx372 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx372, align 4
  %add373 = add i32 %47, ptrtoint (ptr @ulong_counter to i32)
  %48 = inttoptr i32 %add373 to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp375.not = icmp eq i32 %50, 1
  br i1 %cmp375.not, label %if.end269.if.end435_crit_edge, label %do.end391, !prof !42

if.end269.if.end435_crit_edge:                    ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end435

do.end391:                                        ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 47, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %50, i32 noundef %50, i64 noundef 1, i64 noundef 1) #9
  br label %if.end435

if.end435:                                        ; preds = %do.end391, %if.end269.if.end435_crit_edge
  %51 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cpu, align 4
  %arrayidx461 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx461 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx461, align 4
  %add462 = add i32 %54, ptrtoint (ptr @ulong_counter to i32)
  %55 = inttoptr i32 %add462 to ptr
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %add463 = add i32 %57, -1
  store i32 %add463, ptr %55, align 4
  %58 = load i32, ptr %cpu, align 4
  %arrayidx517 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %58
  %59 = ptrtoint ptr %arrayidx517 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx517, align 4
  %add518 = add i32 %60, ptrtoint (ptr @ulong_counter to i32)
  %61 = inttoptr i32 %add518 to ptr
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp520.not = icmp eq i32 %63, 0
  br i1 %cmp520.not, label %if.end435.if.end580_crit_edge, label %do.end536, !prof !42

if.end435.if.end580_crit_edge:                    ; preds = %if.end435
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end580

do.end536:                                        ; preds = %if.end435
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 51, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %63, i32 noundef %63, i64 noundef 0, i64 noundef 0) #9
  br label %if.end580

if.end580:                                        ; preds = %do.end536, %if.end435.if.end580_crit_edge
  %64 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cpu, align 4
  %arrayidx606 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %65
  %66 = ptrtoint ptr %arrayidx606 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx606, align 4
  %add607 = add i32 %67, ptrtoint (ptr @ulong_counter to i32)
  %68 = inttoptr i32 %add607 to ptr
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %add608 = add i32 %70, -1
  store i32 %add608, ptr %68, align 4
  %71 = load i32, ptr %cpu, align 4
  %arrayidx662 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %71
  %72 = ptrtoint ptr %arrayidx662 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx662, align 4
  %add663 = add i32 %73, ptrtoint (ptr @ulong_counter to i32)
  %74 = inttoptr i32 %add663 to ptr
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %76)
  %cmp665.not = icmp eq i32 %76, -1
  br i1 %cmp665.not, label %if.end580.if.end725_crit_edge, label %do.end681, !prof !42

if.end580.if.end725_crit_edge:                    ; preds = %if.end580
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end725

do.end681:                                        ; preds = %if.end580
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 55, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %76, i32 noundef %76, i64 noundef -1, i64 noundef -1) #9
  br label %if.end725

if.end725:                                        ; preds = %do.end681, %if.end580.if.end725_crit_edge
  %77 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cpu, align 4
  %arrayidx750 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %78
  %79 = ptrtoint ptr %arrayidx750 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx750, align 4
  %add751 = add i32 %80, ptrtoint (ptr @ulong_counter to i32)
  %81 = inttoptr i32 %add751 to ptr
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %81, align 4
  %83 = load i32, ptr %cpu, align 4
  %arrayidx771 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %83
  %84 = ptrtoint ptr %arrayidx771 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx771, align 4
  %add772 = add i32 %85, ptrtoint (ptr @ulong_counter to i32)
  %86 = inttoptr i32 %add772 to ptr
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 4
  %add773 = add i32 %88, -1
  store i32 %add773, ptr %86, align 4
  %89 = load i32, ptr %cpu, align 4
  %arrayidx827 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %89
  %90 = ptrtoint ptr %arrayidx827 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx827, align 4
  %add828 = add i32 %91, ptrtoint (ptr @ulong_counter to i32)
  %92 = inttoptr i32 %add828 to ptr
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %94)
  %cmp830.not = icmp eq i32 %94, -1
  br i1 %cmp830.not, label %if.end725.if.end924_crit_edge, label %do.end846, !prof !42

if.end725.if.end924_crit_edge:                    ; preds = %if.end725
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end924

do.end846:                                        ; preds = %if.end725
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 62, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %94, i32 noundef %94, i64 noundef -1, i64 noundef -1) #9
  br label %if.end924

if.end924:                                        ; preds = %do.end846, %if.end725.if.end924_crit_edge
  %95 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cpu, align 4
  %arrayidx949 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %96
  %97 = ptrtoint ptr %arrayidx949 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx949, align 4
  %add950 = add i32 %98, ptrtoint (ptr @ulong_counter to i32)
  %99 = inttoptr i32 %add950 to ptr
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %101)
  %cmp952.not = icmp eq i32 %101, -1
  br i1 %cmp952.not, label %if.end924.if.end1012_crit_edge, label %do.end968, !prof !42

if.end924.if.end1012_crit_edge:                   ; preds = %if.end924
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1012

do.end968:                                        ; preds = %if.end924
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %101, i32 noundef %101, i64 noundef 4294967295, i64 noundef 4294967295) #9
  br label %if.end1012

if.end1012:                                       ; preds = %do.end968, %if.end924.if.end1012_crit_edge
  %102 = ptrtoint ptr %ui_one to i32
  call void @__asan_load4_noabort(i32 %102)
  %ui_one.0.ui_one.0.ui_one.0. = load volatile i32, ptr %ui_one, align 4
  %ui_one.0.ui_one.0.ui_one.0.3041 = load volatile i32, ptr %ui_one, align 4
  %103 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cpu, align 4
  %arrayidx1040 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %104
  %105 = ptrtoint ptr %arrayidx1040 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx1040, align 4
  %add1041 = add i32 %106, ptrtoint (ptr @long_counter to i32)
  %107 = inttoptr i32 %add1041 to ptr
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 4
  %add1042 = sub i32 %109, %ui_one.0.ui_one.0.ui_one.0.3041
  store i32 %add1042, ptr %107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ui_one.0.ui_one.0.ui_one.0.)
  %cmp1049.not = icmp eq i32 %ui_one.0.ui_one.0.ui_one.0., 1
  br i1 %cmp1049.not, label %if.end1012.if.end1071_crit_edge, label %do.end1065, !prof !42

if.end1012.if.end1071_crit_edge:                  ; preds = %if.end1012
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1071

do.end1065:                                       ; preds = %if.end1012
  call void @__sanitizer_cov_trace_pc() #7
  %sub1022 = sub i32 0, %ui_one.0.ui_one.0.ui_one.0.
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 67, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %sub1022, i32 noundef %sub1022, i64 noundef 4294967295, i64 noundef 4294967295) #9
  br label %if.end1071

if.end1071:                                       ; preds = %do.end1065, %if.end1012.if.end1071_crit_edge
  %110 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cpu, align 4
  %arrayidx1096 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %111
  %112 = ptrtoint ptr %arrayidx1096 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx1096, align 4
  %add1097 = add i32 %113, ptrtoint (ptr @long_counter to i32)
  %114 = inttoptr i32 %add1097 to ptr
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %116)
  %cmp1099.not = icmp eq i32 %116, -1
  br i1 %cmp1099.not, label %if.end1071.if.end1159_crit_edge, label %do.end1115, !prof !42

if.end1071.if.end1159_crit_edge:                  ; preds = %if.end1071
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1159

do.end1115:                                       ; preds = %if.end1071
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 67, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %116, i32 noundef %116, i64 noundef 4294967295, i64 noundef 4294967295) #9
  br label %if.end1159

if.end1159:                                       ; preds = %do.end1115, %if.end1071.if.end1159_crit_edge
  %117 = ptrtoint ptr %ui_one to i32
  call void @__asan_load4_noabort(i32 %117)
  %ui_one.0.ui_one.0.ui_one.0.3042 = load volatile i32, ptr %ui_one, align 4
  %ui_one.0.ui_one.0.ui_one.0.3043 = load volatile i32, ptr %ui_one, align 4
  %118 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %cpu, align 4
  %arrayidx1185 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %119
  %120 = ptrtoint ptr %arrayidx1185 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx1185, align 4
  %add1186 = add i32 %121, ptrtoint (ptr @long_counter to i32)
  %122 = inttoptr i32 %add1186 to ptr
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %122, align 4
  %add1187 = add i32 %124, %ui_one.0.ui_one.0.ui_one.0.3043
  store i32 %add1187, ptr %122, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ui_one.0.ui_one.0.ui_one.0.3042, i32 %ui_one.0.ui_one.0.ui_one.0.)
  %cmp1194.not = icmp eq i32 %ui_one.0.ui_one.0.ui_one.0.3042, %ui_one.0.ui_one.0.ui_one.0.
  br i1 %cmp1194.not, label %if.end1159.if.end1216_crit_edge, label %do.end1210, !prof !42

if.end1159.if.end1216_crit_edge:                  ; preds = %if.end1159
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1216

do.end1210:                                       ; preds = %if.end1159
  call void @__sanitizer_cov_trace_pc() #7
  %add1169 = sub i32 %ui_one.0.ui_one.0.ui_one.0.3042, %ui_one.0.ui_one.0.ui_one.0.
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %add1169, i32 noundef %add1169, i64 noundef 0, i64 noundef 0) #9
  br label %if.end1216

if.end1216:                                       ; preds = %do.end1210, %if.end1159.if.end1216_crit_edge
  %125 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %cpu, align 4
  %arrayidx1241 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %126
  %127 = ptrtoint ptr %arrayidx1241 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx1241, align 4
  %add1242 = add i32 %128, ptrtoint (ptr @long_counter to i32)
  %129 = inttoptr i32 %add1242 to ptr
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp1244.not = icmp eq i32 %131, 0
  br i1 %cmp1244.not, label %if.end1216.if.end1304_crit_edge, label %do.end1260, !prof !42

if.end1216.if.end1304_crit_edge:                  ; preds = %if.end1216
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1304

do.end1260:                                       ; preds = %if.end1216
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %131, i32 noundef %131, i64 noundef 0, i64 noundef 0) #9
  br label %if.end1304

if.end1304:                                       ; preds = %do.end1260, %if.end1216.if.end1304_crit_edge
  %132 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cpu, align 4
  %arrayidx1329 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %133
  %134 = ptrtoint ptr %arrayidx1329 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx1329, align 4
  %add1330 = add i32 %135, ptrtoint (ptr @long_counter to i32)
  %136 = inttoptr i32 %add1330 to ptr
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %136, align 4
  %138 = ptrtoint ptr %ui_one to i32
  call void @__asan_load4_noabort(i32 %138)
  %ui_one.0.ui_one.0.ui_one.0.3044 = load volatile i32, ptr %ui_one, align 4
  %ui_one.0.ui_one.0.ui_one.0.3045 = load volatile i32, ptr %ui_one, align 4
  %139 = load i32, ptr %cpu, align 4
  %arrayidx1352 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %139
  %140 = ptrtoint ptr %arrayidx1352 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx1352, align 4
  %add1353 = add i32 %141, ptrtoint (ptr @long_counter to i32)
  %142 = inttoptr i32 %add1353 to ptr
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %142, align 4
  %add1354 = sub i32 %144, %ui_one.0.ui_one.0.ui_one.0.3045
  store i32 %add1354, ptr %142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ui_one.0.ui_one.0.ui_one.0.3044)
  %cmp1361.not = icmp eq i32 %ui_one.0.ui_one.0.ui_one.0.3044, 1
  br i1 %cmp1361.not, label %if.end1304.if.end1383_crit_edge, label %do.end1377, !prof !42

if.end1304.if.end1383_crit_edge:                  ; preds = %if.end1304
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1383

do.end1377:                                       ; preds = %if.end1304
  call void @__sanitizer_cov_trace_pc() #7
  %sub1335 = sub i32 0, %ui_one.0.ui_one.0.ui_one.0.3044
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 79, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %sub1335, i32 noundef %sub1335, i64 noundef -1, i64 noundef -1) #9
  br label %if.end1383

if.end1383:                                       ; preds = %do.end1377, %if.end1304.if.end1383_crit_edge
  %145 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %cpu, align 4
  %arrayidx1408 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %146
  %147 = ptrtoint ptr %arrayidx1408 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx1408, align 4
  %add1409 = add i32 %148, ptrtoint (ptr @long_counter to i32)
  %149 = inttoptr i32 %add1409 to ptr
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %151)
  %cmp1411.not = icmp eq i32 %151, -1
  br i1 %cmp1411.not, label %if.end1383.if.end1471_crit_edge, label %do.end1427, !prof !42

if.end1383.if.end1471_crit_edge:                  ; preds = %if.end1383
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1471

do.end1427:                                       ; preds = %if.end1383
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 79, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %151, i32 noundef %151, i64 noundef -1, i64 noundef -1) #9
  br label %if.end1471

if.end1471:                                       ; preds = %do.end1427, %if.end1383.if.end1471_crit_edge
  %152 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %cpu, align 4
  %arrayidx1496 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %153
  %154 = ptrtoint ptr %arrayidx1496 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx1496, align 4
  %add1497 = add i32 %155, ptrtoint (ptr @long_counter to i32)
  %156 = inttoptr i32 %add1497 to ptr
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 0, ptr %156, align 4
  %158 = ptrtoint ptr %ui_one to i32
  call void @__asan_load4_noabort(i32 %158)
  %ui_one.0.ui_one.0.ui_one.0.3046 = load volatile i32, ptr %ui_one, align 4
  %ui_one.0.ui_one.0.ui_one.0.3047 = load volatile i32, ptr %ui_one, align 4
  %159 = load i32, ptr %cpu, align 4
  %arrayidx1518 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %159
  %160 = ptrtoint ptr %arrayidx1518 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx1518, align 4
  %add1519 = add i32 %161, ptrtoint (ptr @long_counter to i32)
  %162 = inttoptr i32 %add1519 to ptr
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %162, align 4
  %add1520 = add i32 %164, %ui_one.0.ui_one.0.ui_one.0.3047
  store i32 %add1520, ptr %162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ui_one.0.ui_one.0.ui_one.0.3046)
  %cmp1527.not = icmp eq i32 %ui_one.0.ui_one.0.ui_one.0.3046, 1
  br i1 %cmp1527.not, label %if.end1471.if.end1549_crit_edge, label %do.end1543, !prof !42

if.end1471.if.end1549_crit_edge:                  ; preds = %if.end1471
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1549

do.end1543:                                       ; preds = %if.end1471
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 86, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %ui_one.0.ui_one.0.ui_one.0.3046, i32 noundef %ui_one.0.ui_one.0.ui_one.0.3046, i64 noundef 1, i64 noundef 1) #9
  br label %if.end1549

if.end1549:                                       ; preds = %do.end1543, %if.end1471.if.end1549_crit_edge
  %165 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %cpu, align 4
  %arrayidx1574 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %166
  %167 = ptrtoint ptr %arrayidx1574 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx1574, align 4
  %add1575 = add i32 %168, ptrtoint (ptr @long_counter to i32)
  %169 = inttoptr i32 %add1575 to ptr
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %171)
  %cmp1577.not = icmp eq i32 %171, 1
  br i1 %cmp1577.not, label %if.end1549.if.end1637_crit_edge, label %do.end1593, !prof !42

if.end1549.if.end1637_crit_edge:                  ; preds = %if.end1549
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1637

do.end1593:                                       ; preds = %if.end1549
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 86, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %171, i32 noundef %171, i64 noundef 1, i64 noundef 1) #9
  br label %if.end1637

if.end1637:                                       ; preds = %do.end1593, %if.end1549.if.end1637_crit_edge
  %172 = ptrtoint ptr %ui_one to i32
  call void @__asan_load4_noabort(i32 %172)
  %ui_one.0.ui_one.0.ui_one.0.3048 = load volatile i32, ptr %ui_one, align 4
  %ui_one.0.ui_one.0.ui_one.0.3049 = load volatile i32, ptr %ui_one, align 4
  %173 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %cpu, align 4
  %arrayidx1665 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %174
  %175 = ptrtoint ptr %arrayidx1665 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx1665, align 4
  %add1666 = add i32 %176, ptrtoint (ptr @long_counter to i32)
  %177 = inttoptr i32 %add1666 to ptr
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %177, align 4
  %add1667 = sub i32 %179, %ui_one.0.ui_one.0.ui_one.0.3049
  store i32 %add1667, ptr %177, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ui_one.0.ui_one.0.ui_one.0.3046, i32 %ui_one.0.ui_one.0.ui_one.0.3048)
  %cmp1674.not = icmp eq i32 %ui_one.0.ui_one.0.ui_one.0.3046, %ui_one.0.ui_one.0.ui_one.0.3048
  br i1 %cmp1674.not, label %if.end1637.if.end1696_crit_edge, label %do.end1690, !prof !42

if.end1637.if.end1696_crit_edge:                  ; preds = %if.end1637
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1696

do.end1690:                                       ; preds = %if.end1637
  call void @__sanitizer_cov_trace_pc() #7
  %add1648 = sub i32 %ui_one.0.ui_one.0.ui_one.0.3046, %ui_one.0.ui_one.0.ui_one.0.3048
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 90, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %add1648, i32 noundef %add1648, i64 noundef 0, i64 noundef 0) #9
  br label %if.end1696

if.end1696:                                       ; preds = %do.end1690, %if.end1637.if.end1696_crit_edge
  %180 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %cpu, align 4
  %arrayidx1721 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %181
  %182 = ptrtoint ptr %arrayidx1721 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx1721, align 4
  %add1722 = add i32 %183, ptrtoint (ptr @long_counter to i32)
  %184 = inttoptr i32 %add1722 to ptr
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %184, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp1724.not = icmp eq i32 %186, 0
  br i1 %cmp1724.not, label %if.end1696.if.end1784_crit_edge, label %do.end1740, !prof !42

if.end1696.if.end1784_crit_edge:                  ; preds = %if.end1696
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1784

do.end1740:                                       ; preds = %if.end1696
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 90, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %186, i32 noundef %186, i64 noundef 0, i64 noundef 0) #9
  br label %if.end1784

if.end1784:                                       ; preds = %do.end1740, %if.end1696.if.end1784_crit_edge
  %187 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %cpu, align 4
  %arrayidx1809 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %188
  %189 = ptrtoint ptr %arrayidx1809 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx1809, align 4
  %add1810 = add i32 %190, ptrtoint (ptr @long_counter to i32)
  %191 = inttoptr i32 %add1810 to ptr
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 0, ptr %191, align 4
  %193 = ptrtoint ptr %ui_one to i32
  call void @__asan_load4_noabort(i32 %193)
  %ui_one.0.ui_one.0.ui_one.0.3050 = load volatile i32, ptr %ui_one, align 4
  %sub1815 = sub i32 0, %ui_one.0.ui_one.0.ui_one.0.3050
  %194 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !43
  %195 = ptrtoint ptr %ui_one to i32
  call void @__asan_load4_noabort(i32 %195)
  %ui_one.0.ui_one.0.ui_one.0.3051 = load volatile i32, ptr %ui_one, align 4
  %196 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %cpu, align 4
  %arrayidx1839 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %197
  %198 = ptrtoint ptr %arrayidx1839 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx1839, align 4
  %add1840 = add i32 %199, ptrtoint (ptr @long_counter to i32)
  %200 = inttoptr i32 %add1840 to ptr
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %200, align 4
  %add1841 = sub i32 %202, %ui_one.0.ui_one.0.ui_one.0.3051
  store i32 %add1841, ptr %200, align 4
  %203 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !44
  %and.i.i = and i32 %203, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1852.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool1852.not, label %if.then1861, label %if.end1784.do.end1864_crit_edge, !prof !45

if.end1784.do.end1864_crit_edge:                  ; preds = %if.end1784
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end1864

if.then1861:                                      ; preds = %if.end1784
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end1864

do.end1864:                                       ; preds = %if.then1861, %if.end1784.do.end1864_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %194) #9, !srcloc !46
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ui_one.0.ui_one.0.ui_one.0.3050)
  %cmp1873.not = icmp eq i32 %ui_one.0.ui_one.0.ui_one.0.3050, 1
  br i1 %cmp1873.not, label %do.end1864.if.end1896_crit_edge, label %do.end1890, !prof !42

do.end1864.if.end1896_crit_edge:                  ; preds = %do.end1864
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1896

do.end1890:                                       ; preds = %do.end1864
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 97, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %sub1815, i32 noundef %sub1815, i64 noundef -1, i64 noundef -1) #9
  br label %if.end1896

if.end1896:                                       ; preds = %do.end1890, %do.end1864.if.end1896_crit_edge
  %204 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %cpu, align 4
  %arrayidx1921 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %205
  %206 = ptrtoint ptr %arrayidx1921 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %arrayidx1921, align 4
  %add1922 = add i32 %207, ptrtoint (ptr @long_counter to i32)
  %208 = inttoptr i32 %add1922 to ptr
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %208, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %210)
  %cmp1924.not = icmp eq i32 %210, -1
  br i1 %cmp1924.not, label %if.end1896.if.end1985_crit_edge, label %do.end1941, !prof !42

if.end1896.if.end1985_crit_edge:                  ; preds = %if.end1896
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1985

do.end1941:                                       ; preds = %if.end1896
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 97, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %210, i32 noundef %210, i64 noundef -1, i64 noundef -1) #9
  br label %if.end1985

if.end1985:                                       ; preds = %do.end1941, %if.end1896.if.end1985_crit_edge
  br i1 %cmp1873.not, label %if.end1985.if.end2020_crit_edge, label %do.end2014, !prof !42

if.end1985.if.end2020_crit_edge:                  ; preds = %if.end1985
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2020

do.end2014:                                       ; preds = %if.end1985
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %sub1815, i32 noundef %sub1815, i64 noundef 4294967295, i64 noundef 4294967295) #9
  br label %if.end2020

if.end2020:                                       ; preds = %do.end2014, %if.end1985.if.end2020_crit_edge
  %211 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %cpu, align 4
  %arrayidx2045 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %212
  %213 = ptrtoint ptr %arrayidx2045 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx2045, align 4
  %add2046 = add i32 %214, ptrtoint (ptr @long_counter to i32)
  %215 = inttoptr i32 %add2046 to ptr
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %215, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %217)
  %cmp2048.not = icmp eq i32 %217, -1
  br i1 %cmp2048.not, label %if.end2020.if.end2109_crit_edge, label %do.end2065, !prof !42

if.end2020.if.end2109_crit_edge:                  ; preds = %if.end2020
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2109

do.end2065:                                       ; preds = %if.end2020
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %217, i32 noundef %217, i64 noundef 4294967295, i64 noundef 4294967295) #9
  br label %if.end2109

if.end2109:                                       ; preds = %do.end2065, %if.end2020.if.end2109_crit_edge
  %218 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %cpu, align 4
  %arrayidx2134 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %219
  %220 = ptrtoint ptr %arrayidx2134 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx2134, align 4
  %add2135 = add i32 %221, ptrtoint (ptr @ulong_counter to i32)
  %222 = inttoptr i32 %add2135 to ptr
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 0, ptr %222, align 4
  %224 = ptrtoint ptr %ui_one to i32
  call void @__asan_load4_noabort(i32 %224)
  %ui_one.0.ui_one.0.ui_one.0.3052 = load volatile i32, ptr %ui_one, align 4
  %ui_one.0.ui_one.0.ui_one.0.3053 = load volatile i32, ptr %ui_one, align 4
  %225 = load i32, ptr %cpu, align 4
  %arrayidx2156 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %225
  %226 = ptrtoint ptr %arrayidx2156 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %arrayidx2156, align 4
  %add2157 = add i32 %227, ptrtoint (ptr @ulong_counter to i32)
  %228 = inttoptr i32 %add2157 to ptr
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %228, align 4
  %add2158 = add i32 %230, %ui_one.0.ui_one.0.ui_one.0.3053
  store i32 %add2158, ptr %228, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ui_one.0.ui_one.0.ui_one.0.3052)
  %cmp2165.not = icmp eq i32 %ui_one.0.ui_one.0.ui_one.0.3052, 1
  br i1 %cmp2165.not, label %if.end2109.if.end2188_crit_edge, label %do.end2182, !prof !42

if.end2109.if.end2188_crit_edge:                  ; preds = %if.end2109
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2188

do.end2182:                                       ; preds = %if.end2109
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 105, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %ui_one.0.ui_one.0.ui_one.0.3052, i32 noundef %ui_one.0.ui_one.0.ui_one.0.3052, i64 noundef 1, i64 noundef 1) #9
  br label %if.end2188

if.end2188:                                       ; preds = %do.end2182, %if.end2109.if.end2188_crit_edge
  %231 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %cpu, align 4
  %arrayidx2213 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %232
  %233 = ptrtoint ptr %arrayidx2213 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %arrayidx2213, align 4
  %add2214 = add i32 %234, ptrtoint (ptr @ulong_counter to i32)
  %235 = inttoptr i32 %add2214 to ptr
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %235, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %237)
  %cmp2216.not = icmp eq i32 %237, 1
  br i1 %cmp2216.not, label %if.end2188.if.end2277_crit_edge, label %do.end2233, !prof !42

if.end2188.if.end2277_crit_edge:                  ; preds = %if.end2188
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2277

do.end2233:                                       ; preds = %if.end2188
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 105, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %237, i32 noundef %237, i64 noundef 1, i64 noundef 1) #9
  br label %if.end2277

if.end2277:                                       ; preds = %do.end2233, %if.end2188.if.end2277_crit_edge
  %238 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %cpu, align 4
  %arrayidx2302 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %239
  %240 = ptrtoint ptr %arrayidx2302 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx2302, align 4
  %add2303 = add i32 %241, ptrtoint (ptr @ulong_counter to i32)
  %242 = inttoptr i32 %add2303 to ptr
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 0, ptr %242, align 4
  %244 = ptrtoint ptr %ui_one to i32
  call void @__asan_load4_noabort(i32 %244)
  %ui_one.0.ui_one.0.ui_one.0.3054 = load volatile i32, ptr %ui_one, align 4
  %sub2308 = sub i32 0, %ui_one.0.ui_one.0.ui_one.0.3054
  %ui_one.0.ui_one.0.ui_one.0.3055 = load volatile i32, ptr %ui_one, align 4
  %245 = load i32, ptr %cpu, align 4
  %arrayidx2325 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %245
  %246 = ptrtoint ptr %arrayidx2325 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx2325, align 4
  %add2326 = add i32 %247, ptrtoint (ptr @ulong_counter to i32)
  %248 = inttoptr i32 %add2326 to ptr
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %248, align 4
  %add2327 = sub i32 %250, %ui_one.0.ui_one.0.ui_one.0.3055
  store i32 %add2327, ptr %248, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ui_one.0.ui_one.0.ui_one.0.3054)
  %cmp2334.not = icmp eq i32 %ui_one.0.ui_one.0.ui_one.0.3054, 1
  br i1 %cmp2334.not, label %if.end2277.if.end2357_crit_edge, label %do.end2351, !prof !42

if.end2277.if.end2357_crit_edge:                  ; preds = %if.end2277
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2357

do.end2351:                                       ; preds = %if.end2277
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %sub2308, i32 noundef %sub2308, i64 noundef -1, i64 noundef -1) #9
  br label %if.end2357

if.end2357:                                       ; preds = %do.end2351, %if.end2277.if.end2357_crit_edge
  %251 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %cpu, align 4
  %arrayidx2382 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %252
  %253 = ptrtoint ptr %arrayidx2382 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %arrayidx2382, align 4
  %add2383 = add i32 %254, ptrtoint (ptr @ulong_counter to i32)
  %255 = inttoptr i32 %add2383 to ptr
  %256 = ptrtoint ptr %255 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %255, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %257)
  %cmp2385.not = icmp eq i32 %257, -1
  br i1 %cmp2385.not, label %if.end2357.if.end2446_crit_edge, label %do.end2402, !prof !42

if.end2357.if.end2446_crit_edge:                  ; preds = %if.end2357
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2446

do.end2402:                                       ; preds = %if.end2357
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %257, i32 noundef %257, i64 noundef -1, i64 noundef -1) #9
  br label %if.end2446

if.end2446:                                       ; preds = %do.end2402, %if.end2357.if.end2446_crit_edge
  br i1 %cmp2334.not, label %if.end2446.if.end2481_crit_edge, label %do.end2475, !prof !42

if.end2446.if.end2481_crit_edge:                  ; preds = %if.end2446
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2481

do.end2475:                                       ; preds = %if.end2446
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 113, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %sub2308, i32 noundef %sub2308, i64 noundef 4294967295, i64 noundef 4294967295) #9
  br label %if.end2481

if.end2481:                                       ; preds = %do.end2475, %if.end2446.if.end2481_crit_edge
  %258 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %cpu, align 4
  %arrayidx2506 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %259
  %260 = ptrtoint ptr %arrayidx2506 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %arrayidx2506, align 4
  %add2507 = add i32 %261, ptrtoint (ptr @ulong_counter to i32)
  %262 = inttoptr i32 %add2507 to ptr
  %263 = ptrtoint ptr %262 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %264)
  %cmp2509.not = icmp eq i32 %264, -1
  br i1 %cmp2509.not, label %if.end2481.if.end2570_crit_edge, label %do.end2526, !prof !42

if.end2481.if.end2570_crit_edge:                  ; preds = %if.end2481
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2570

do.end2526:                                       ; preds = %if.end2481
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 113, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %264, i32 noundef %264, i64 noundef 4294967295, i64 noundef 4294967295) #9
  br label %if.end2570

if.end2570:                                       ; preds = %do.end2526, %if.end2481.if.end2570_crit_edge
  %265 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %cpu, align 4
  %arrayidx2595 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %266
  %267 = ptrtoint ptr %arrayidx2595 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %arrayidx2595, align 4
  %add2596 = add i32 %268, ptrtoint (ptr @ulong_counter to i32)
  %269 = inttoptr i32 %add2596 to ptr
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 3, ptr %269, align 4
  %271 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !43
  %272 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %cpu, align 4
  %arrayidx2624 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %273
  %274 = ptrtoint ptr %arrayidx2624 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %arrayidx2624, align 4
  %add2625 = add i32 %275, ptrtoint (ptr @ulong_counter to i32)
  %276 = inttoptr i32 %add2625 to ptr
  %277 = ptrtoint ptr %ui_one to i32
  call void @__asan_load4_noabort(i32 %277)
  %ui_one.0.ui_one.0.ui_one.0.3056 = load volatile i32, ptr %ui_one, align 4
  %278 = ptrtoint ptr %276 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %276, align 4
  %add2627 = sub i32 %279, %ui_one.0.ui_one.0.ui_one.0.3056
  store i32 %add2627, ptr %276, align 4
  %280 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !44
  %and.i.i3060 = and i32 %280, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i3060)
  %tobool2637.not = icmp eq i32 %and.i.i3060, 0
  br i1 %tobool2637.not, label %if.then2646, label %if.end2570.do.end2649_crit_edge, !prof !45

if.end2570.do.end2649_crit_edge:                  ; preds = %if.end2570
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2649

if.then2646:                                      ; preds = %if.end2570
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end2649

do.end2649:                                       ; preds = %if.then2646, %if.end2570.do.end2649_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %271) #9, !srcloc !46
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add2627)
  %cmp2656.not = icmp eq i32 %add2627, 2
  br i1 %cmp2656.not, label %do.end2649.if.end2679_crit_edge, label %do.end2673, !prof !42

do.end2649.if.end2679_crit_edge:                  ; preds = %do.end2649
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2679

do.end2673:                                       ; preds = %do.end2649
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 119, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %add2627, i32 noundef %add2627, i64 noundef 2, i64 noundef 2) #9
  br label %if.end2679

if.end2679:                                       ; preds = %do.end2673, %do.end2649.if.end2679_crit_edge
  %281 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %cpu, align 4
  %arrayidx2704 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %282
  %283 = ptrtoint ptr %arrayidx2704 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %arrayidx2704, align 4
  %add2705 = add i32 %284, ptrtoint (ptr @ulong_counter to i32)
  %285 = inttoptr i32 %add2705 to ptr
  %286 = ptrtoint ptr %285 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %285, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %287)
  %cmp2707.not = icmp eq i32 %287, 2
  br i1 %cmp2707.not, label %if.end2679.if.end2768_crit_edge, label %do.end2724, !prof !42

if.end2679.if.end2768_crit_edge:                  ; preds = %if.end2679
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2768

do.end2724:                                       ; preds = %if.end2679
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 119, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %287, i32 noundef %287, i64 noundef 2, i64 noundef 2) #9
  br label %if.end2768

if.end2768:                                       ; preds = %do.end2724, %if.end2679.if.end2768_crit_edge
  %288 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %cpu, align 4
  %arrayidx2794 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %289
  %290 = ptrtoint ptr %arrayidx2794 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %arrayidx2794, align 4
  %add2795 = add i32 %291, ptrtoint (ptr @ulong_counter to i32)
  %292 = inttoptr i32 %add2795 to ptr
  %293 = ptrtoint ptr %ui_one to i32
  call void @__asan_load4_noabort(i32 %293)
  %ui_one.0.ui_one.0.ui_one.0.3057 = load volatile i32, ptr %ui_one, align 4
  %294 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %292, align 4
  %add2797 = sub i32 %295, %ui_one.0.ui_one.0.ui_one.0.3057
  store i32 %add2797, ptr %292, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add2797)
  %cmp2802.not = icmp eq i32 %add2797, 1
  br i1 %cmp2802.not, label %if.end2768.if.end2825_crit_edge, label %do.end2819, !prof !42

if.end2768.if.end2825_crit_edge:                  ; preds = %if.end2768
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2825

do.end2819:                                       ; preds = %if.end2768
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 122, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %add2797, i32 noundef %add2797, i64 noundef 1, i64 noundef 1) #9
  br label %if.end2825

if.end2825:                                       ; preds = %do.end2819, %if.end2768.if.end2825_crit_edge
  %296 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %cpu, align 4
  %arrayidx2850 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %297
  %298 = ptrtoint ptr %arrayidx2850 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %arrayidx2850, align 4
  %add2851 = add i32 %299, ptrtoint (ptr @ulong_counter to i32)
  %300 = inttoptr i32 %add2851 to ptr
  %301 = ptrtoint ptr %300 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %300, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %302)
  %cmp2853.not = icmp eq i32 %302, 1
  br i1 %cmp2853.not, label %if.end2825.if.end2914_crit_edge, label %do.end2870, !prof !42

if.end2825.if.end2914_crit_edge:                  ; preds = %if.end2825
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2914

do.end2870:                                       ; preds = %if.end2825
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 122, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %302, i32 noundef %302, i64 noundef 1, i64 noundef 1) #9
  br label %if.end2914

if.end2914:                                       ; preds = %do.end2870, %if.end2825.if.end2914_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !47
  %303 = tail call i32 @llvm.read_register.i32(metadata !32) #9
  %and.i.i.i3058 = and i32 %303, -16384
  %304 = inttoptr i32 %and.i.i.i3058 to ptr
  %preempt_count.i.i3059 = getelementptr inbounds %struct.thread_info, ptr %304, i32 0, i32 1
  %305 = ptrtoint ptr %preempt_count.i.i3059 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load volatile i32, ptr %preempt_count.i.i3059, align 4
  %sub.i = add i32 %306, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3059, align 4
  %call2931 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ui_one)
  ret i32 -11
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind uwtable(sync) }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !15, !16, !17, !18, !20, !22, !23, !24, !26, !28, !30, !31}
!llvm.named.register.sp = !{!32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__UNIQUE_ID_license106, !1, !"__UNIQUE_ID_license106", i1 false, i1 false}
!1 = !{!"../lib/percpu_test.c", i32 137, i32 1}
!2 = !{ptr @__UNIQUE_ID_author107, !3, !"__UNIQUE_ID_author107", i1 false, i1 false}
!3 = !{!"../lib/percpu_test.c", i32 138, i32 1}
!4 = !{ptr @__UNIQUE_ID_description108, !5, !"__UNIQUE_ID_description108", i1 false, i1 false}
!5 = !{!"../lib/percpu_test.c", i32 139, i32 1}
!6 = !{ptr @__pcpu_unique_long_counter, !7, !"__pcpu_unique_long_counter", i1 false, i1 false}
!7 = !{!"../lib/percpu_test.c", i32 17, i32 8}
!8 = !{ptr @long_counter, !7, !"long_counter", i1 false, i1 false}
!9 = !{ptr @__pcpu_unique_ulong_counter, !10, !"__pcpu_unique_ulong_counter", i1 false, i1 false}
!10 = !{!"../lib/percpu_test.c", i32 18, i32 8}
!11 = !{ptr @ulong_counter, !10, !"ulong_counter", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/percpu_test.c", i32 30, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @percpu_test_init._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @percpu_test_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = distinct !{null, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../lib/percpu_test.c", i32 35, i32 2}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../lib/percpu_test.c", i32 36, i32 2}
!22 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../lib/percpu_test.c", i32 43, i32 2}
!26 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../lib/percpu_test.c", i32 121, i32 7}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../lib/percpu_test.c", i32 126, i32 2}
!30 = !{ptr @percpu_test_init._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @percpu_test_init._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{!"sp"}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i64 2151515506}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{i64 745063, i64 745124}
!44 = !{i64 747795}
!45 = !{!"branch_weights", i32 1, i32 2000}
!46 = !{i64 748080}
!47 = !{i64 2152221825}
