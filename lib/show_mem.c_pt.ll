; ModuleID = '/llk/IR_all_yes/lib/show_mem.c_pt.bc'
source_filename = "../lib/show_mem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [96 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [90 x i8], %struct.zone_padding, [11 x %struct.atomic_t], [0 x %struct.atomic_t], [84 x i8] }
%struct.atomic_t = type { i32 }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.zone_padding = type { [0 x i8] }

@show_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 16, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mem-Info:\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"show_mem\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lib/show_mem.c\00", [17 x i8] zeroinitializer }, align 32
@show_mem._entry_ptr = internal global ptr @show_mem._entry, section ".printk_index", align 4
@show_mem._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%lu pages RAM\0A\00", [17 x i8] zeroinitializer }, align 32
@show_mem._entry_ptr.5 = internal global ptr @show_mem._entry.3, section ".printk_index", align 4
@show_mem._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%lu pages HighMem/MovableOnly\0A\00", [33 x i8] zeroinitializer }, align 32
@show_mem._entry_ptr.8 = internal global ptr @show_mem._entry.6, section ".printk_index", align 4
@show_mem._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 37, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%lu pages reserved\0A\00", [44 x i8] zeroinitializer }, align 32
@show_mem._entry_ptr.11 = internal global ptr @show_mem._entry.9, section ".printk_index", align 4
@show_mem._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%lu pages cma reserved\0A\00", [40 x i8] zeroinitializer }, align 32
@show_mem._entry_ptr.14 = internal global ptr @show_mem._entry.12, section ".printk_index", align 4
@totalcma_pages = external dso_local local_unnamed_addr global i32, align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 16, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 35, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 36, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 37, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [18 x i8] c"../lib/show_mem.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 39, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @show_mem._entry, ptr @show_mem._entry.12, ptr @show_mem._entry.3, ptr @show_mem._entry.6, ptr @show_mem._entry.9, ptr @show_mem._entry_ptr, ptr @show_mem._entry_ptr.11, ptr @show_mem._entry_ptr.14, ptr @show_mem._entry_ptr.5, ptr @show_mem._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_mem._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_mem._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_mem._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_mem._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @show_mem(i32 noundef %filter, ptr noundef %nodemask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #5
  tail call void @show_free_areas(i32 noundef %filter, ptr noundef %nodemask) #6
  %call1 = tail call ptr @first_online_pgdat() #6
  %tobool.not58 = icmp eq ptr %call1, null
  br i1 %tobool.not58, label %entry.do.end19_crit_edge, label %entry.for.cond2.preheader_crit_edge

entry.for.cond2.preheader_crit_edge:              ; preds = %entry
  br label %for.cond2.preheader

entry.do.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end19

for.cond2.preheader:                              ; preds = %cleanup.3.for.cond2.preheader_crit_edge, %entry.for.cond2.preheader_crit_edge
  %pgdat.062 = phi ptr [ %call15, %cleanup.3.for.cond2.preheader_crit_edge ], [ %call1, %entry.for.cond2.preheader_crit_edge ]
  %total.061 = phi i32 [ %total.2.3, %cleanup.3.for.cond2.preheader_crit_edge ], [ 0, %entry.for.cond2.preheader_crit_edge ]
  %reserved.060 = phi i32 [ %reserved.2.3, %cleanup.3.for.cond2.preheader_crit_edge ], [ 0, %entry.for.cond2.preheader_crit_edge ]
  %highmem.059 = phi i32 [ %highmem.3.3, %cleanup.3.for.cond2.preheader_crit_edge ], [ 0, %entry.for.cond2.preheader_crit_edge ]
  %present_pages.i = getelementptr [4 x %struct.zone], ptr %pgdat.062, i32 0, i32 0, i32 13
  %0 = ptrtoint ptr %present_pages.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %present_pages.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not = icmp eq i32 %1, 0
  br i1 %tobool.i.not, label %for.cond2.preheader.cleanup_crit_edge, label %if.end

for.cond2.preheader.cleanup_crit_edge:            ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #4
  %2 = ptrtoint ptr %present_pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %present_pages.i, align 8
  %add = add i32 %3, %total.061
  %managed_pages.i = getelementptr [4 x %struct.zone], ptr %pgdat.062, i32 0, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %managed_pages.i, i32 noundef 4) #6
  %4 = ptrtoint ptr %managed_pages.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %managed_pages.i, align 4
  %sub = sub i32 %3, %5
  %add7 = add i32 %sub, %reserved.060
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.cond2.preheader.cleanup_crit_edge
  %reserved.2 = phi i32 [ %reserved.060, %for.cond2.preheader.cleanup_crit_edge ], [ %add7, %if.end ]
  %total.2 = phi i32 [ %total.061, %for.cond2.preheader.cleanup_crit_edge ], [ %add, %if.end ]
  %present_pages.i.1 = getelementptr [4 x %struct.zone], ptr %pgdat.062, i32 0, i32 1, i32 13
  %6 = ptrtoint ptr %present_pages.i.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %present_pages.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.1 = icmp eq i32 %7, 0
  br i1 %tobool.i.not.1, label %cleanup.cleanup.1_crit_edge, label %if.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #4
  %8 = ptrtoint ptr %present_pages.i.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %present_pages.i.1, align 8
  %add.1 = add i32 %9, %total.2
  %managed_pages.i.1 = getelementptr [4 x %struct.zone], ptr %pgdat.062, i32 0, i32 1, i32 11
  %call.i.i.i.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %managed_pages.i.1, i32 noundef 4) #6
  %10 = ptrtoint ptr %managed_pages.i.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %managed_pages.i.1, align 4
  %sub.1 = sub i32 %9, %11
  %add7.1 = add i32 %sub.1, %reserved.2
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end.1, %cleanup.cleanup.1_crit_edge
  %reserved.2.1 = phi i32 [ %reserved.2, %cleanup.cleanup.1_crit_edge ], [ %add7.1, %if.end.1 ]
  %total.2.1 = phi i32 [ %total.2, %cleanup.cleanup.1_crit_edge ], [ %add.1, %if.end.1 ]
  %present_pages.i.2 = getelementptr [4 x %struct.zone], ptr %pgdat.062, i32 0, i32 2, i32 13
  %12 = ptrtoint ptr %present_pages.i.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %present_pages.i.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.2 = icmp eq i32 %13, 0
  br i1 %tobool.i.not.2, label %cleanup.1.cleanup.2_crit_edge, label %if.then10.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.2

if.then10.2:                                      ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #4
  %14 = ptrtoint ptr %present_pages.i.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %present_pages.i.2, align 8
  %add.2 = add i32 %15, %total.2.1
  %managed_pages.i.2 = getelementptr [4 x %struct.zone], ptr %pgdat.062, i32 0, i32 2, i32 11
  %call.i.i.i.2 = tail call zeroext i1 @__kasan_check_read(ptr noundef %managed_pages.i.2, i32 noundef 4) #6
  %16 = ptrtoint ptr %managed_pages.i.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %managed_pages.i.2, align 4
  %sub.2 = sub i32 %15, %17
  %add7.2 = add i32 %sub.2, %reserved.2.1
  %18 = ptrtoint ptr %present_pages.i.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %present_pages.i.2, align 8
  %add12.2 = add i32 %19, %highmem.059
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.then10.2, %cleanup.1.cleanup.2_crit_edge
  %highmem.3.2 = phi i32 [ %highmem.059, %cleanup.1.cleanup.2_crit_edge ], [ %add12.2, %if.then10.2 ]
  %reserved.2.2 = phi i32 [ %reserved.2.1, %cleanup.1.cleanup.2_crit_edge ], [ %add7.2, %if.then10.2 ]
  %total.2.2 = phi i32 [ %total.2.1, %cleanup.1.cleanup.2_crit_edge ], [ %add.2, %if.then10.2 ]
  %present_pages.i.3 = getelementptr [4 x %struct.zone], ptr %pgdat.062, i32 0, i32 3, i32 13
  %20 = ptrtoint ptr %present_pages.i.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %present_pages.i.3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not.3 = icmp eq i32 %21, 0
  br i1 %tobool.i.not.3, label %cleanup.2.cleanup.3_crit_edge, label %is_highmem_idx.exit.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.3

is_highmem_idx.exit.3:                            ; preds = %cleanup.2
  %22 = ptrtoint ptr %present_pages.i.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %present_pages.i.3, align 8
  %add.3 = add i32 %23, %total.2.2
  %managed_pages.i.3 = getelementptr [4 x %struct.zone], ptr %pgdat.062, i32 0, i32 3, i32 11
  %call.i.i.i.3 = tail call zeroext i1 @__kasan_check_read(ptr noundef %managed_pages.i.3, i32 noundef 4) #6
  %24 = ptrtoint ptr %managed_pages.i.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %managed_pages.i.3, align 4
  %sub.3 = sub i32 %23, %25
  %add7.3 = add i32 %sub.3, %reserved.2.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %26 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp2.i.not.3 = icmp eq i32 %26, 2
  br i1 %cmp2.i.not.3, label %if.then10.3, label %is_highmem_idx.exit.3.cleanup.3_crit_edge

is_highmem_idx.exit.3.cleanup.3_crit_edge:        ; preds = %is_highmem_idx.exit.3
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.3

if.then10.3:                                      ; preds = %is_highmem_idx.exit.3
  call void @__sanitizer_cov_trace_pc() #4
  %27 = ptrtoint ptr %present_pages.i.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %present_pages.i.3, align 8
  %add12.3 = add i32 %28, %highmem.3.2
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.then10.3, %is_highmem_idx.exit.3.cleanup.3_crit_edge, %cleanup.2.cleanup.3_crit_edge
  %highmem.3.3 = phi i32 [ %highmem.3.2, %cleanup.2.cleanup.3_crit_edge ], [ %add12.3, %if.then10.3 ], [ %highmem.3.2, %is_highmem_idx.exit.3.cleanup.3_crit_edge ]
  %reserved.2.3 = phi i32 [ %reserved.2.2, %cleanup.2.cleanup.3_crit_edge ], [ %add7.3, %if.then10.3 ], [ %add7.3, %is_highmem_idx.exit.3.cleanup.3_crit_edge ]
  %total.2.3 = phi i32 [ %total.2.2, %cleanup.2.cleanup.3_crit_edge ], [ %add.3, %if.then10.3 ], [ %add.3, %is_highmem_idx.exit.3.cleanup.3_crit_edge ]
  %call15 = tail call ptr @next_online_pgdat(ptr noundef nonnull %pgdat.062) #6
  %tobool.not = icmp eq ptr %call15, null
  br i1 %tobool.not, label %cleanup.3.do.end19_crit_edge, label %cleanup.3.for.cond2.preheader_crit_edge

cleanup.3.for.cond2.preheader_crit_edge:          ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond2.preheader

cleanup.3.do.end19_crit_edge:                     ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end19

do.end19:                                         ; preds = %cleanup.3.do.end19_crit_edge, %entry.do.end19_crit_edge
  %highmem.0.lcssa = phi i32 [ 0, %entry.do.end19_crit_edge ], [ %highmem.3.3, %cleanup.3.do.end19_crit_edge ]
  %reserved.0.lcssa = phi i32 [ 0, %entry.do.end19_crit_edge ], [ %reserved.2.3, %cleanup.3.do.end19_crit_edge ]
  %total.0.lcssa = phi i32 [ 0, %entry.do.end19_crit_edge ], [ %total.2.3, %cleanup.3.do.end19_crit_edge ]
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %total.0.lcssa) #5
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %highmem.0.lcssa) #5
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %reserved.0.lcssa) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @totalcma_pages to i32))
  %29 = load i32, ptr @totalcma_pages, align 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %29) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_free_areas(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @first_online_pgdat() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @next_online_pgdat(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind uwtable(sync) }
attributes #4 = { nomerge }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/show_mem.c", i32 16, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @show_mem._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @show_mem._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../lib/show_mem.c", i32 35, i32 2}
!8 = !{ptr @show_mem._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @show_mem._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../lib/show_mem.c", i32 36, i32 2}
!12 = !{ptr @show_mem._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @show_mem._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../lib/show_mem.c", i32 37, i32 2}
!16 = !{ptr @show_mem._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @show_mem._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../lib/show_mem.c", i32 39, i32 2}
!20 = !{ptr @show_mem._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @show_mem._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
