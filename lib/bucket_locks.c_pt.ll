; ModuleID = '/llk/IR_all_yes/lib/bucket_locks.c_pt.bc'
source_filename = "../lib/bucket_locks.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__alloc_bucket_spinlocks\22, \22a\22\09"
module asm "\09.weak\09__crc___alloc_bucket_spinlocks\09\09\09\09"
module asm "\09.long\09__crc___alloc_bucket_spinlocks\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___alloc_bucket_spinlocks:\09\09\09\09\09"
module asm "\09.asciz \09\22__alloc_bucket_spinlocks\22\09\09\09\09\09"
module asm "__kstrtabns___alloc_bucket_spinlocks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+free_bucket_spinlocks\22, \22a\22\09"
module asm "\09.weak\09__crc_free_bucket_spinlocks\09\09\09\09"
module asm "\09.long\09__crc_free_bucket_spinlocks\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_bucket_spinlocks:\09\09\09\09\09"
module asm "\09.asciz \09\22free_bucket_spinlocks\22\09\09\09\09\09"
module asm "__kstrtabns_free_bucket_spinlocks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon = type { [16 x i8], %struct.lockdep_map }

@__alloc_bucket_spinlocks.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&tlocks[i]\00", [21 x i8] zeroinitializer }, align 32
@__kstrtab___alloc_bucket_spinlocks = external dso_local constant [0 x i8], align 1
@__kstrtabns___alloc_bucket_spinlocks = external dso_local constant [0 x i8], align 1
@__ksymtab___alloc_bucket_spinlocks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__alloc_bucket_spinlocks to i32), ptr @__kstrtab___alloc_bucket_spinlocks, ptr @__kstrtabns___alloc_bucket_spinlocks }, section "___ksymtab+__alloc_bucket_spinlocks", align 4
@__kstrtab_free_bucket_spinlocks = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_bucket_spinlocks = external dso_local constant [0 x i8], align 1
@__ksymtab_free_bucket_spinlocks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_bucket_spinlocks to i32), ptr @__kstrtab_free_bucket_spinlocks, ptr @__kstrtabns_free_bucket_spinlocks }, section "___ksymtab+free_bucket_spinlocks", align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [22 x i8] c"../lib/bucket_locks.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 38, i32 4 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab___alloc_bucket_spinlocks, ptr @__ksymtab_free_bucket_spinlocks, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__alloc_bucket_spinlocks(ptr nocapture noundef writeonly %locks, ptr nocapture noundef writeonly %locks_mask, i32 noundef %max_size, i32 noundef %cpu_mult, i32 noundef %gfp, ptr noundef %name, ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpu_mult)
  %tobool.not = icmp eq i32 %cpu_mult, 0
  %mul = shl i32 %cpu_mult, 1
  %0 = tail call i32 @llvm.umin.i32(i32 %mul, i32 %max_size)
  %size.0 = select i1 %tobool.not, i32 %max_size, i32 %0
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %size.0, i32 44) #6
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %entry.cleanup_crit_edge, label %kvmalloc_array.exit, !prof !15

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

kvmalloc_array.exit:                              ; preds = %entry
  %3 = extractvalue { i32, i1 } %1, 0
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %3, i32 noundef %gfp, i32 noundef -1) #7
  %tobool7.not = icmp eq ptr %call.i.i, null
  br i1 %tobool7.not, label %kvmalloc_array.exit.cleanup_crit_edge, label %for.cond.preheader

kvmalloc_array.exit.cleanup_crit_edge:            ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.preheader:                               ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0)
  %cmp1033.not = icmp eq i32 %size.0, 0
  br i1 %cmp1033.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.do.body_crit_edge

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  br label %do.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge
  %i.034 = phi i32 [ %inc, %do.body.do.body_crit_edge ], [ 0, %for.cond.preheader.do.body_crit_edge ]
  %arrayidx = getelementptr %struct.spinlock, ptr %call.i.i, i32 %i.034
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str, ptr noundef nonnull @__alloc_bucket_spinlocks.__key, i16 noundef signext 3) #6
  %dep_map = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef %name, ptr noundef %key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %inc = add nuw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, %size.0
  br i1 %exitcond.not, label %do.body.for.end_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %do.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %4 = ptrtoint ptr %locks to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.i, ptr %locks, align 4
  %sub = add i32 %size.0, -1
  %5 = ptrtoint ptr %locks_mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub, ptr %locks_mask, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %kvmalloc_array.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %kvmalloc_array.exit.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_bucket_spinlocks(ptr noundef %locks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @kvfree(ptr noundef %locks) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind uwtable(sync) }
attributes #5 = { nomerge }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__alloc_bucket_spinlocks.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../lib/bucket_locks.c", i32 38, i32 4}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab___alloc_bucket_spinlocks, !4, !"__ksymtab___alloc_bucket_spinlocks", i1 false, i1 false}
!4 = !{!"../lib/bucket_locks.c", i32 48, i32 1}
!5 = !{ptr @__ksymtab_free_bucket_spinlocks, !6, !"__ksymtab_free_bucket_spinlocks", i1 false, i1 false}
!6 = !{!"../lib/bucket_locks.c", i32 54, i32 1}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 1, i32 2000}
