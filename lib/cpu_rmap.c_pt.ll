; ModuleID = '/llk/IR_all_yes/lib/cpu_rmap.c_pt.bc'
source_filename = "../lib/cpu_rmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+alloc_cpu_rmap\22, \22a\22\09"
module asm "\09.weak\09__crc_alloc_cpu_rmap\09\09\09\09"
module asm "\09.long\09__crc_alloc_cpu_rmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_cpu_rmap:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_cpu_rmap\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_cpu_rmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cpu_rmap_put\22, \22a\22\09"
module asm "\09.weak\09__crc_cpu_rmap_put\09\09\09\09"
module asm "\09.long\09__crc_cpu_rmap_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_rmap_put:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_rmap_put\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_rmap_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cpu_rmap_add\22, \22a\22\09"
module asm "\09.weak\09__crc_cpu_rmap_add\09\09\09\09"
module asm "\09.long\09__crc_cpu_rmap_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_rmap_add:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_rmap_add\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_rmap_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cpu_rmap_update\22, \22a\22\09"
module asm "\09.weak\09__crc_cpu_rmap_update\09\09\09\09"
module asm "\09.long\09__crc_cpu_rmap_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_rmap_update:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_rmap_update\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_rmap_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+free_irq_cpu_rmap\22, \22a\22\09"
module asm "\09.weak\09__crc_free_irq_cpu_rmap\09\09\09\09"
module asm "\09.long\09__crc_free_irq_cpu_rmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_irq_cpu_rmap:\09\09\09\09\09"
module asm "\09.asciz \09\22free_irq_cpu_rmap\22\09\09\09\09\09"
module asm "__kstrtabns_free_irq_cpu_rmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+irq_cpu_rmap_add\22, \22a\22\09"
module asm "\09.weak\09__crc_irq_cpu_rmap_add\09\09\09\09"
module asm "\09.long\09__crc_irq_cpu_rmap_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_cpu_rmap_add:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_cpu_rmap_add\22\09\09\09\09\09"
module asm "__kstrtabns_irq_cpu_rmap_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.cpumask = type { [1 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpu_topology = type { i32, i32, i32, i32, i32, %struct.cpumask, %struct.cpumask, %struct.cpumask, %struct.cpumask }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpu_rmap = type { %struct.kref, i16, i16, ptr, [0 x %struct.anon] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.anon = type { i16, i16 }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.irq_glue = type { %struct.irq_affinity_notify, ptr, i16 }

@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab_alloc_cpu_rmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_cpu_rmap = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_cpu_rmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_cpu_rmap to i32), ptr @__kstrtab_alloc_cpu_rmap, ptr @__kstrtabns_alloc_cpu_rmap }, section "___ksymtab+alloc_cpu_rmap", align 4
@__kstrtab_cpu_rmap_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_rmap_put = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_rmap_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_rmap_put to i32), ptr @__kstrtab_cpu_rmap_put, ptr @__kstrtabns_cpu_rmap_put }, section "___ksymtab+cpu_rmap_put", align 4
@__kstrtab_cpu_rmap_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_rmap_add = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_rmap_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_rmap_add to i32), ptr @__kstrtab_cpu_rmap_add, ptr @__kstrtabns_cpu_rmap_add }, section "___ksymtab+cpu_rmap_add", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_topology = external dso_local global [4 x %struct.cpu_topology], align 4
@__kstrtab_cpu_rmap_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_rmap_update = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_rmap_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_rmap_update to i32), ptr @__kstrtab_cpu_rmap_update, ptr @__kstrtabns_cpu_rmap_update }, section "___ksymtab+cpu_rmap_update", align 4
@__kstrtab_free_irq_cpu_rmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_irq_cpu_rmap = external dso_local constant [0 x i8], align 1
@__ksymtab_free_irq_cpu_rmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_irq_cpu_rmap to i32), ptr @__kstrtab_free_irq_cpu_rmap, ptr @__kstrtabns_free_irq_cpu_rmap }, section "___ksymtab+free_irq_cpu_rmap", align 4
@__kstrtab_irq_cpu_rmap_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_cpu_rmap_add = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_cpu_rmap_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_cpu_rmap_add to i32), ptr @__kstrtab_irq_cpu_rmap_add, ptr @__kstrtabns_irq_cpu_rmap_add }, section "___ksymtab+irq_cpu_rmap_add", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@irq_cpu_rmap_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014irq_cpu_rmap_notify: update failed: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"irq_cpu_rmap_notify\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lib/cpu_rmap.c\00", [17 x i8] zeroinitializer }, align 32
@irq_cpu_rmap_notify._entry_ptr = internal global ptr @irq_cpu_rmap_notify._entry, section ".printk_index", align 4
@___asan_gen_.8 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 108, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [18 x i8] c"../lib/cpu_rmap.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 258, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab_alloc_cpu_rmap, ptr @__ksymtab_cpu_rmap_add, ptr @__ksymtab_cpu_rmap_put, ptr @__ksymtab_cpu_rmap_update, ptr @__ksymtab_free_irq_cpu_rmap, ptr @__ksymtab_irq_cpu_rmap_add, ptr @irq_cpu_rmap_notify._entry, ptr @irq_cpu_rmap_notify._entry_ptr, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_cpu_rmap_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_cpu_rmap(i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %size)
  %cmp = icmp ugt i32 %size, 65535
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %1 = shl i32 %0, 2
  %add = add i32 %1, 15
  %and = and i32 %add, -4
  %or.i = or i32 %flags, 256
  %mul = shl nuw nsw i32 %size, 2
  %add1 = add i32 %and, %mul
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add1, i32 noundef %or.i) #10
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i, i32 noundef 4) #11
  %2 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %call9.i.i, align 128
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 %and
  %obj = getelementptr inbounds %struct.cpu_rmap, ptr %call9.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %obj, align 8
  %call430 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call430, i32 %4)
  %cmp531 = icmp ult i32 %call430, %4
  br i1 %cmp531, label %for.body.preheader, label %if.end3.for.end_crit_edge

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.preheader:                               ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %call432 = phi i32 [ %call4, %for.body.for.body_crit_edge ], [ %call430, %for.body.preheader ]
  %rem = urem i32 %call432, %size
  %conv = trunc i32 %rem to i16
  %arrayidx = getelementptr %struct.cpu_rmap, ptr %call9.i.i, i32 0, i32 4, i32 %call432
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %arrayidx, align 4
  %dist = getelementptr %struct.cpu_rmap, ptr %call9.i.i, i32 0, i32 4, i32 %call432, i32 1
  %7 = ptrtoint ptr %dist to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %dist, align 2
  %call4 = tail call i32 @cpumask_next(i32 noundef %call432, ptr noundef nonnull @__cpu_possible_mask) #12
  %cmp5 = icmp ult i32 %call4, %5
  br i1 %cmp5, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end3.for.end_crit_edge
  %conv8 = trunc i32 %size to i16
  %size9 = getelementptr inbounds %struct.cpu_rmap, ptr %call9.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %size9 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv8, ptr %size9, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i.i, %for.end ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpu_rmap_put(ptr noundef %rmap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rmap, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !35
  tail call void @llvm.prefetch.p0(ptr %rmap, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rmap, ptr %rmap, i32 1, ptr elementtype(i32) %rmap) #11, !srcloc !36
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !37

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %rmap, i32 noundef 3) #11
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !38
  tail call void @kfree(ptr noundef %rmap) #11
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.then.i ], [ 0, %if.end5.i.i.i.i.kref_put.exit_crit_edge ], [ 0, %if.then10.i.i.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpu_rmap_add(ptr nocapture noundef %rmap, ptr noundef %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %used = getelementptr inbounds %struct.cpu_rmap, ptr %rmap, i32 0, i32 2
  %0 = ptrtoint ptr %used to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %used, align 2
  %size = getelementptr inbounds %struct.cpu_rmap, ptr %rmap, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.not = icmp ult i16 %1, %3
  br i1 %cmp.not, label %do.end9, label %do.body4, !prof !37

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/cpu_rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 142, 0\0A.popsection", ""() #11, !srcloc !39
  unreachable

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %1 to i32
  %inc = add nuw i16 %1, 1
  %4 = ptrtoint ptr %used to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %inc, ptr %used, align 2
  %obj11 = getelementptr inbounds %struct.cpu_rmap, ptr %rmap, i32 0, i32 3
  %5 = ptrtoint ptr %obj11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %obj11, align 4
  %arrayidx = getelementptr ptr, ptr %6, i32 %conv
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %obj, ptr %arrayidx, align 4
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpu_rmap_update(ptr nocapture noundef %rmap, i16 noundef zeroext %index, ptr noundef %affinity) #0 align 64 {
entry:
  %update_mask = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %update_mask) #11
  %0 = ptrtoint ptr %update_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %update_mask, align 4, !annotation !40
  %call = call zeroext i1 @zalloc_cpumask_var(ptr noundef nonnull %update_mask, i32 noundef 3264) #11
  br i1 %call, label %for.cond.preheader, label %entry.cleanup_crit_edge, !prof !37

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %call3110 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3110, i32 %1)
  %cmp111 = icmp ult i32 %call3110, %1
  br i1 %cmp111, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.cond12.preheader_crit_edge

for.cond.preheader.for.cond12.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond12.preheader

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond12.preheader:                             ; preds = %if.end11.for.cond12.preheader_crit_edge, %for.cond.preheader.for.cond12.preheader_crit_edge
  %call13114 = call i32 @cpumask_next(i32 noundef -1, ptr noundef %affinity) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call13114, i32 %2)
  %cmp14115 = icmp ult i32 %call13114, %2
  br i1 %cmp14115, label %for.cond12.preheader.for.body16_crit_edge, label %for.cond12.preheader.for.cond24.preheader_crit_edge

for.cond12.preheader.for.cond24.preheader_crit_edge: ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond24.preheader

for.cond12.preheader.for.body16_crit_edge:        ; preds = %for.cond12.preheader
  br label %for.body16

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call3112 = phi i32 [ %call3, %if.end11.for.body_crit_edge ], [ %call3110, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cpu_rmap, ptr %rmap, i32 0, i32 4, i32 %call3112
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %index)
  %cmp6 = icmp eq i16 %4, %index
  br i1 %cmp6, label %if.then8, label %for.body.if.end11_crit_edge

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then8:                                         ; preds = %for.body
  %dist = getelementptr %struct.cpu_rmap, ptr %rmap, i32 0, i32 4, i32 %call3112, i32 1
  %5 = ptrtoint ptr %dist to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %dist, align 2
  %6 = ptrtoint ptr %update_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %update_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %call3112)
  %cmp.not.i.i.i = icmp ugt i32 %8, %call3112
  br i1 %cmp.not.i.i.i, label %if.then8.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

if.then8.cpumask_set_cpu.exit_crit_edge:          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %if.then8
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !37

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %if.then8.cpumask_set_cpu.exit_crit_edge
  call void @_set_bit(i32 noundef %call3112, ptr noundef %7) #11
  br label %if.end11

if.end11:                                         ; preds = %cpumask_set_cpu.exit, %for.body.if.end11_crit_edge
  %call3 = call i32 @cpumask_next(i32 noundef %call3112, ptr noundef nonnull @__cpu_online_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call3, %9
  br i1 %cmp, label %if.end11.for.body_crit_edge, label %if.end11.for.cond12.preheader_crit_edge

if.end11.for.cond12.preheader_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond12.preheader

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond24.preheader:                             ; preds = %for.body16.for.cond24.preheader_crit_edge, %for.cond12.preheader.for.cond24.preheader_crit_edge
  %10 = ptrtoint ptr %update_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %update_mask, align 4
  %call25117 = call i32 @cpumask_next(i32 noundef -1, ptr noundef %11) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call25117, i32 %12)
  %cmp26118 = icmp ult i32 %call25117, %12
  br i1 %cmp26118, label %for.cond24.preheader.for.body28_crit_edge, label %for.cond24.preheader.for.end40_crit_edge

for.cond24.preheader.for.end40_crit_edge:         ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end40

for.cond24.preheader.for.body28_crit_edge:        ; preds = %for.cond24.preheader
  br label %for.body28

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %for.cond12.preheader.for.body16_crit_edge
  %call13116 = phi i32 [ %call13, %for.body16.for.body16_crit_edge ], [ %call13114, %for.cond12.preheader.for.body16_crit_edge ]
  %arrayidx18 = getelementptr %struct.cpu_rmap, ptr %rmap, i32 0, i32 4, i32 %call13116
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %index, ptr %arrayidx18, align 4
  %dist22 = getelementptr %struct.cpu_rmap, ptr %rmap, i32 0, i32 4, i32 %call13116, i32 1
  %14 = ptrtoint ptr %dist22 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %dist22, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %16 = ptrtoint ptr %update_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %update_mask, align 4
  call void @__bitmap_or(ptr noundef %17, ptr noundef %17, ptr noundef nonnull @__cpu_online_mask, i32 noundef %15) #11
  %call13 = call i32 @cpumask_next(i32 noundef %call13116, ptr noundef %affinity) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %cmp14 = icmp ult i32 %call13, %18
  br i1 %cmp14, label %for.body16.for.body16_crit_edge, label %for.body16.for.cond24.preheader_crit_edge

for.body16.for.cond24.preheader_crit_edge:        ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond24.preheader

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body16

for.body28:                                       ; preds = %for.cond24.backedge.for.body28_crit_edge, %for.cond24.preheader.for.body28_crit_edge
  %19 = phi i32 [ %46, %for.cond24.backedge.for.body28_crit_edge ], [ %12, %for.cond24.preheader.for.body28_crit_edge ]
  %call25119 = phi i32 [ %call25, %for.cond24.backedge.for.body28_crit_edge ], [ %call25117, %for.cond24.preheader.for.body28_crit_edge ]
  %thread_sibling = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %call25119, i32 5
  %call34.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef %thread_sibling) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call34.i, i32 %19)
  %cmp35.i = icmp ult i32 %call34.i, %19
  br i1 %cmp35.i, label %for.body.lr.ph.i, label %for.body28.if.end32_crit_edge

for.body28.if.end32_crit_edge:                    ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

for.body.lr.ph.i:                                 ; preds = %for.body28
  %dist1.i = getelementptr %struct.cpu_rmap, ptr %rmap, i32 0, i32 4, i32 %call25119, i32 1
  %20 = ptrtoint ptr %dist1.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %dist1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %21)
  %cmp3.i = icmp ugt i16 %21, 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %call36.i = phi i32 [ %call34.i, %for.body.lr.ph.i ], [ %call.i, %if.end.i.for.body.i_crit_edge ]
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %dist7.i = getelementptr %struct.cpu_rmap, ptr %rmap, i32 0, i32 4, i32 %call36.i, i32 1
  %22 = ptrtoint ptr %dist7.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %dist7.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %23)
  %cmp10.not.i = icmp ugt i16 %23, 1
  br i1 %cmp10.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %cpu_rmap_copy_neigh.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %call.i = call i32 @cpumask_next(i32 noundef %call36.i, ptr noundef %thread_sibling) #12
  %cmp.i = icmp ult i32 %call.i, %19
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.if.end32_crit_edge

if.end.i.if.end32_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cpu_rmap_copy_neigh.exit:                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.le.i = getelementptr %struct.cpu_rmap, ptr %rmap, i32 0, i32 4, i32 %call25119
  %arrayidx6.i = getelementptr %struct.cpu_rmap, ptr %rmap, i32 0, i32 4, i32 %call36.i
  %24 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx6.i, align 4
  %26 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %arrayidx.le.i, align 4
  %27 = ptrtoint ptr %dist1.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %dist1.i, align 2
  br label %for.cond24.backedge

if.end32:                                         ; preds = %if.end.i.if.end32_crit_edge, %for.body28.if.end32_crit_edge
  %core_sibling = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %call25119, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  %call34.i69 = call i32 @cpumask_next(i32 noundef -1, ptr noundef %core_sibling) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call34.i69, i32 %28)
  %cmp35.i70 = icmp ult i32 %call34.i69, %28
  br i1 %cmp35.i70, label %for.body.lr.ph.i73, label %if.end32.if.end36_crit_edge

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

for.body.lr.ph.i73:                               ; preds = %if.end32
  %dist1.i71 = getelementptr %struct.cpu_rmap, ptr %rmap, i32 0, i32 4, i32 %call25119, i32 1
  %29 = ptrtoint ptr %dist1.i71 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %dist1.i71, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %30)
  %cmp3.i72 = icmp ugt i16 %30, 2
  br label %for.body.i75

for.body.i75:                                     ; preds = %if.end.i84.for.body.i75_crit_edge, %for.body.lr.ph.i73
  %call36.i74 = phi i32 [ %call34.i69, %for.body.lr.ph.i73 ], [ %call.i82, %if.end.i84.for.body.i75_crit_edge ]
  br i1 %cmp3.i72, label %land.lhs.true.i78, label %for.body.i75.if.end.i84_crit_edge

for.body.i75.if.end.i84_crit_edge:                ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i84

land.lhs.true.i78:                                ; preds = %for.body.i75
  %dist7.i76 = getelementptr %struct.cpu_rmap, ptr %rmap, i32 0, i32 4, i32 %call36.i74, i32 1
  %31 = ptrtoint ptr %dist7.i76 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %dist7.i76, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %32)
  %cmp10.not.i77 = icmp ugt i16 %32, 2
  br i1 %cmp10.not.i77, label %land.lhs.true.i78.if.end.i84_crit_edge, label %cpu_rmap_copy_neigh.exit86

land.lhs.true.i78.if.end.i84_crit_edge:           ; preds = %land.lhs.true.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i84

if.end.i84:                                       ; preds = %land.lhs.true.i78.if.end.i84_crit_edge, %for.body.i75.if.end.i84_crit_edge
  %call.i82 = call i32 @cpumask_next(i32 noundef %call36.i74, ptr noundef %core_sibling) #12
  %cmp.i83 = icmp ult i32 %call.i82, %28
  br i1 %cmp.i83, label %if.end.i84.for.body.i75_crit_edge, label %if.end.i84.if.end36_crit_edge

if.end.i84.if.end36_crit_edge:                    ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.end.i84.for.body.i75_crit_edge:                ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i75

cpu_rmap_copy_neigh.exit86:                       ; preds = %land.lhs.true.i78
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.le.i79 = getelementptr %struct.cpu_rmap, ptr %rmap, i32 0, i32 4, i32 %call25119
  %arrayidx6.i80 = getelementptr %struct.cpu_rmap, ptr %rmap, i32 0, i32 4, i32 %call36.i74
  %33 = ptrtoint ptr %arrayidx6.i80 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx6.i80, align 4
  %35 = ptrtoint ptr %arrayidx.le.i79 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %arrayidx.le.i79, align 4
  %36 = ptrtoint ptr %dist1.i71 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 2, ptr %dist1.i71, align 2
  br label %for.cond24.backedge

if.end36:                                         ; preds = %if.end.i84.if.end36_crit_edge, %if.end32.if.end36_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %37 = load i32, ptr @nr_cpu_ids, align 4
  %call34.i87 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call34.i87, i32 %37)
  %cmp35.i88 = icmp ult i32 %call34.i87, %37
  br i1 %cmp35.i88, label %for.body.lr.ph.i91, label %if.end36.for.cond24.backedge_crit_edge

if.end36.for.cond24.backedge_crit_edge:           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond24.backedge

for.body.lr.ph.i91:                               ; preds = %if.end36
  %dist1.i89 = getelementptr %struct.cpu_rmap, ptr %rmap, i32 0, i32 4, i32 %call25119, i32 1
  %38 = ptrtoint ptr %dist1.i89 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %dist1.i89, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %39)
  %cmp3.i90 = icmp ugt i16 %39, 3
  br label %for.body.i93

for.body.i93:                                     ; preds = %if.end.i102.for.body.i93_crit_edge, %for.body.lr.ph.i91
  %call36.i92 = phi i32 [ %call34.i87, %for.body.lr.ph.i91 ], [ %call.i100, %if.end.i102.for.body.i93_crit_edge ]
  br i1 %cmp3.i90, label %land.lhs.true.i96, label %for.body.i93.if.end.i102_crit_edge

for.body.i93.if.end.i102_crit_edge:               ; preds = %for.body.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i102

land.lhs.true.i96:                                ; preds = %for.body.i93
  %dist7.i94 = getelementptr %struct.cpu_rmap, ptr %rmap, i32 0, i32 4, i32 %call36.i92, i32 1
  %40 = ptrtoint ptr %dist7.i94 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %dist7.i94, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %41)
  %cmp10.not.i95 = icmp ugt i16 %41, 3
  br i1 %cmp10.not.i95, label %land.lhs.true.i96.if.end.i102_crit_edge, label %if.then.i99

land.lhs.true.i96.if.end.i102_crit_edge:          ; preds = %land.lhs.true.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i102

if.then.i99:                                      ; preds = %land.lhs.true.i96
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.le.i97 = getelementptr %struct.cpu_rmap, ptr %rmap, i32 0, i32 4, i32 %call25119
  %arrayidx6.i98 = getelementptr %struct.cpu_rmap, ptr %rmap, i32 0, i32 4, i32 %call36.i92
  %42 = ptrtoint ptr %arrayidx6.i98 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx6.i98, align 4
  %44 = ptrtoint ptr %arrayidx.le.i97 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %arrayidx.le.i97, align 4
  %45 = ptrtoint ptr %dist1.i89 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 3, ptr %dist1.i89, align 2
  br label %for.cond24.backedge

if.end.i102:                                      ; preds = %land.lhs.true.i96.if.end.i102_crit_edge, %for.body.i93.if.end.i102_crit_edge
  %call.i100 = call i32 @cpumask_next(i32 noundef %call36.i92, ptr noundef nonnull @__cpu_online_mask) #12
  %cmp.i101 = icmp ult i32 %call.i100, %37
  br i1 %cmp.i101, label %if.end.i102.for.body.i93_crit_edge, label %if.end.i102.for.cond24.backedge_crit_edge

if.end.i102.for.cond24.backedge_crit_edge:        ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond24.backedge

if.end.i102.for.body.i93_crit_edge:               ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i93

for.cond24.backedge:                              ; preds = %if.end.i102.for.cond24.backedge_crit_edge, %if.then.i99, %if.end36.for.cond24.backedge_crit_edge, %cpu_rmap_copy_neigh.exit86, %cpu_rmap_copy_neigh.exit
  %call25 = call i32 @cpumask_next(i32 noundef %call25119, ptr noundef %11) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %46 = load i32, ptr @nr_cpu_ids, align 4
  %cmp26 = icmp ult i32 %call25, %46
  br i1 %cmp26, label %for.cond24.backedge.for.body28_crit_edge, label %for.cond24.backedge.for.end40_crit_edge

for.cond24.backedge.for.end40_crit_edge:          ; preds = %for.cond24.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end40

for.cond24.backedge.for.body28_crit_edge:         ; preds = %for.cond24.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body28

for.end40:                                        ; preds = %for.cond24.backedge.for.end40_crit_edge, %for.cond24.preheader.for.end40_crit_edge
  call void @free_cpumask_var(ptr noundef %11) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end40, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end40 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %update_mask) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zalloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_irq_cpu_rmap(ptr noundef %rmap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %tobool.not = icmp eq ptr %rmap, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %used = getelementptr inbounds %struct.cpu_rmap, ptr %rmap, i32 0, i32 2
  %0 = ptrtoint ptr %used to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %used, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp10.not = icmp eq i16 %1, 0
  br i1 %cmp10.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %obj = getelementptr inbounds %struct.cpu_rmap, ptr %rmap, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %obj, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %indvars.iv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %call = tail call i32 @irq_set_affinity_notifier(i32 noundef %7, ptr noundef null) #11
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %8 = ptrtoint ptr %used to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %used, align 2
  %10 = zext i16 %9 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %rmap, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !35
  tail call void @llvm.prefetch.p0(ptr nonnull %rmap, i32 1, i32 3, i32 1) #11
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %rmap, ptr nonnull %rmap, i32 1, ptr nonnull elementtype(i32) %rmap) #11, !srcloc !36
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !37

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef nonnull %rmap, i32 noundef 3) #11
  br label %cleanup

if.then.i.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !38
  tail call void @kfree(ptr noundef nonnull %rmap) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_affinity_notifier(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irq_cpu_rmap_add(ptr noundef %rmap, i32 noundef %irq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 68) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %notify1 = getelementptr inbounds %struct.irq_affinity_notify, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %notify1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @irq_cpu_rmap_notify, ptr %notify1, align 4
  %release = getelementptr inbounds %struct.irq_affinity_notify, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @irq_cpu_rmap_release, ptr %release, align 8
  %rmap3 = getelementptr inbounds %struct.irq_glue, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %rmap3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rmap, ptr %rmap3, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rmap, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rmap, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rmap, ptr %rmap, i32 1, ptr elementtype(i32) %rmap) #11, !srcloc !41
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !42

if.end.if.end15.sink.split.i.i.i.i.i_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cpu_rmap_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !37

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cpu_rmap_get.exit_crit_edge:    ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_rmap_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %rmap, i32 noundef %.sink.i.i.i.i.i) #11
  br label %cpu_rmap_get.exit

cpu_rmap_get.exit:                                ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cpu_rmap_get.exit_crit_edge
  %used.i = getelementptr inbounds %struct.cpu_rmap, ptr %rmap, i32 0, i32 2
  %6 = ptrtoint ptr %used.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %used.i, align 2
  %size.i = getelementptr inbounds %struct.cpu_rmap, ptr %rmap, i32 0, i32 1
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp.not.i = icmp ult i16 %7, %9
  br i1 %cmp.not.i, label %cpu_rmap_add.exit, label %do.body4.i, !prof !37

do.body4.i:                                       ; preds = %cpu_rmap_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/cpu_rmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 142, 0\0A.popsection", ""() #11, !srcloc !39
  unreachable

cpu_rmap_add.exit:                                ; preds = %cpu_rmap_get.exit
  %conv.i = zext i16 %7 to i32
  %inc.i = add nuw i16 %7, 1
  %10 = ptrtoint ptr %used.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %inc.i, ptr %used.i, align 2
  %obj11.i = getelementptr inbounds %struct.cpu_rmap, ptr %rmap, i32 0, i32 3
  %11 = ptrtoint ptr %obj11.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %obj11.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %12, i32 %conv.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %arrayidx.i, align 4
  %index = getelementptr inbounds %struct.irq_glue, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %7, ptr %index, align 8
  %call6 = tail call i32 @irq_set_affinity_notifier(i32 noundef %irq, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %cpu_rmap_add.exit.cleanup_crit_edge, label %if.then8

cpu_rmap_add.exit.cleanup_crit_edge:              ; preds = %cpu_rmap_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %cpu_rmap_add.exit
  %15 = ptrtoint ptr %rmap3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmap3, align 4
  %call.i.i.i.i.i.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef %16, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !35
  tail call void @llvm.prefetch.p0(ptr %16, i32 1, i32 3, i32 1) #11
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #11, !srcloc !36
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i25 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i25, label %if.end5.i.i.i.i.i.cpu_rmap_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !37

if.end5.i.i.i.i.i.cpu_rmap_put.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_rmap_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %16, i32 noundef 3) #11
  br label %cpu_rmap_put.exit

if.then.i.i:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !38
  tail call void @kfree(ptr noundef %16) #11
  br label %cpu_rmap_put.exit

cpu_rmap_put.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cpu_rmap_put.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %cpu_rmap_put.exit, %cpu_rmap_add.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call6, %cpu_rmap_put.exit ], [ 0, %cpu_rmap_add.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irq_cpu_rmap_notify(ptr nocapture noundef readonly %notify, ptr noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %rmap = getelementptr inbounds %struct.irq_glue, ptr %notify, i32 0, i32 1
  %0 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmap, align 4
  %index = getelementptr inbounds %struct.irq_glue, ptr %notify, i32 0, i32 2
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %index, align 4
  %call = tail call i32 @cpu_rmap_update(ptr noundef %1, i16 noundef zeroext %3, ptr noundef %mask)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irq_cpu_rmap_release(ptr noundef %ref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %rmap = getelementptr i8, ptr %ref, i32 56
  %0 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmap, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !35
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #11, !srcloc !36
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cpu_rmap_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !37

if.end5.i.i.i.i.i.cpu_rmap_put.exit_crit_edge:    ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_rmap_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef 3) #11
  br label %cpu_rmap_put.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !38
  tail call void @kfree(ptr noundef %1) #11
  br label %cpu_rmap_put.exit

cpu_rmap_put.exit:                                ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cpu_rmap_put.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %ref, i32 -4
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind uwtable(sync) }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !24, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__ksymtab_alloc_cpu_rmap, !1, !"__ksymtab_alloc_cpu_rmap", i1 false, i1 false}
!1 = !{!"../lib/cpu_rmap.c", i32 60, i32 1}
!2 = !{ptr @__ksymtab_cpu_rmap_put, !3, !"__ksymtab_cpu_rmap_put", i1 false, i1 false}
!3 = !{!"../lib/cpu_rmap.c", i32 89, i32 1}
!4 = !{ptr @__ksymtab_cpu_rmap_add, !5, !"__ksymtab_cpu_rmap_add", i1 false, i1 false}
!5 = !{!"../lib/cpu_rmap.c", i32 147, i32 1}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../lib/cpu_rmap.c", i32 174, i32 25}
!8 = distinct !{null, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../lib/cpu_rmap.c", i32 186, i32 25}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../lib/cpu_rmap.c", i32 204, i32 25}
!12 = !{ptr @__ksymtab_cpu_rmap_update, !13, !"__ksymtab_cpu_rmap_update", i1 false, i1 false}
!13 = !{!"../lib/cpu_rmap.c", i32 209, i32 1}
!14 = !{ptr @__ksymtab_free_irq_cpu_rmap, !15, !"__ksymtab_free_irq_cpu_rmap", i1 false, i1 false}
!15 = !{!"../lib/cpu_rmap.c", i32 240, i32 1}
!16 = !{ptr @__ksymtab_irq_cpu_rmap_add, !17, !"__ksymtab_irq_cpu_rmap_add", i1 false, i1 false}
!17 = !{!"../lib/cpu_rmap.c", i32 304, i32 1}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../lib/cpu_rmap.c", i32 258, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @irq_cpu_rmap_notify._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @irq_cpu_rmap_notify._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2148336709}
!36 = !{i64 2148251173, i64 2148251205, i64 2148251234, i64 2148251268, i64 2148251299, i64 2148251322}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{i64 2149851364}
!39 = !{i64 2152575391, i64 2152575870, i64 2152575428, i64 2152575484, i64 2152575518, i64 2152575542, i64 2152575583, i64 2152575604, i64 2152575632, i64 2152575666}
!40 = !{!"auto-init"}
!41 = !{i64 2148248708, i64 2148248740, i64 2148248769, i64 2148248803, i64 2148248834, i64 2148248857}
!42 = !{!"branch_weights", i32 1, i32 2000}
