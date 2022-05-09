; ModuleID = '/llk/IR_all_yes/arch/arm/mm/pageattr.c_pt.bc'
source_filename = "../arch/arm/mm/pageattr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mm_struct = type { %struct.anon, [0 x i32] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.page_change_data = type { i32, i32 }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@change_memory_common.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"arch/arm/mm/pageattr.c\00", [41 x i8] zeroinitializer }, align 32
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@init_mm = external dso_local global %struct.mm_struct, align 8
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [26 x i8] c"../arch/arm/mm/pageattr.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 61, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_memory_ro(i32 noundef %addr, i32 noundef %numpages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @change_memory_common(i32 noundef %addr, i32 noundef %numpages, i32 noundef 128, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @change_memory_common(i32 noundef %addr, i32 noundef %numpages, i32 noundef %set_mask, i32 noundef %clear_mask) unnamed_addr #0 align 64 {
entry:
  %data.i = alloca %struct.page_change_data, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %addr, -4096
  %add = add i32 %addr, 4095
  %and1 = and i32 %add, -4096
  %mul = shl i32 %numpages, 12
  %add2 = add i32 %and1, %mul
  %sub = sub i32 %add2, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %addr)
  %cmp.not = icmp eq i32 %and, %addr
  br i1 %cmp.not, label %entry.if.end29_crit_edge, label %land.rhs

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b59 = load i1, ptr @change_memory_common.__already_done, align 1
  br i1 %.b59, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !12

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @change_memory_common.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef null) #3
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %and)
  %tobool37.not = icmp eq i32 %add2, %and
  br i1 %tobool37.not, label %if.end29.cleanup_crit_edge, label %if.end39

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end39:                                         ; preds = %if.end29
  %0 = add i32 %and, 1090519040
  call void @__sanitizer_cov_trace_const_cmp4(i32 14680064, i32 %0)
  %1 = icmp ult i32 %0, 14680064
  %sub.i = sub nuw nsw i32 -1075838976, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub)
  %cmp2.i = icmp uge i32 %sub.i, %sub
  %or.cond = select i1 %1, i1 %cmp2.i, i1 false
  br i1 %or.cond, label %if.end39.if.end44_crit_edge, label %land.lhs.true

if.end39.if.end44_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end44

land.lhs.true:                                    ; preds = %if.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %2 = load ptr, ptr @high_memory, align 4
  %3 = ptrtoint ptr %2 to i32
  %add40 = add i32 %3, 8388608
  %and41 = and i32 %add40, -8388608
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and41)
  %cmp.not.i60 = icmp uge i32 %and, %and41
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8388608, i32 %and)
  %cmp1.i61 = icmp ult i32 %and, -8388608
  %or.cond.i62 = and i1 %cmp1.i61, %cmp.not.i60
  %sub.i63 = sub nuw i32 -8388608, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i63, i32 %sub)
  %cmp2.i64 = icmp uge i32 %sub.i63, %sub
  %or.cond67 = select i1 %or.cond.i62, i1 %cmp2.i64, i1 false
  br i1 %or.cond67, label %land.lhs.true.if.end44_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end44

if.end44:                                         ; preds = %land.lhs.true.if.end44_crit_edge, %if.end39.if.end44_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i) #3
  %4 = getelementptr inbounds %struct.page_change_data, ptr %data.i, i32 0, i32 1
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %set_mask, ptr %data.i, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %clear_mask, ptr %4, align 4
  %call.i = call i32 @apply_to_page_range(ptr noundef nonnull @init_mm, i32 noundef %and, i32 noundef %sub, ptr noundef nonnull @change_page_range, ptr noundef nonnull %data.i) #3
  call void @flush_tlb_kernel_range(i32 noundef %and, i32 noundef %add2) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %land.lhs.true.cleanup_crit_edge, %if.end29.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end44 ], [ 0, %if.end29.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_memory_rw(i32 noundef %addr, i32 noundef %numpages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @change_memory_common(i32 noundef %addr, i32 noundef %numpages, i32 noundef 0, i32 noundef 128)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_memory_nx(i32 noundef %addr, i32 noundef %numpages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @change_memory_common(i32 noundef %addr, i32 noundef %numpages, i32 noundef 512, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_memory_x(i32 noundef %addr, i32 noundef %numpages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @change_memory_common(i32 noundef %addr, i32 noundef %numpages, i32 noundef 0, i32 noundef 512)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_memory_valid(i32 noundef %addr, i32 noundef %numpages, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  %data.i5 = alloca %struct.page_change_data, align 4
  %data.i = alloca %struct.page_change_data, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %mul1 = shl i32 %numpages, 12
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i) #3
  %0 = getelementptr inbounds %struct.page_change_data, ptr %data.i, i32 0, i32 1
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %data.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %0, align 4
  %call.i = call i32 @apply_to_page_range(ptr noundef nonnull @init_mm, i32 noundef %addr, i32 noundef %mul1, ptr noundef nonnull @change_page_range, ptr noundef nonnull %data.i) #3
  %add.i = add i32 %mul1, %addr
  call void @flush_tlb_kernel_range(i32 noundef %addr, i32 noundef %add.i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i) #3
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data.i5) #3
  %3 = getelementptr inbounds %struct.page_change_data, ptr %data.i5, i32 0, i32 1
  %4 = ptrtoint ptr %data.i5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %data.i5, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %3, align 4
  %call.i6 = call i32 @apply_to_page_range(ptr noundef nonnull @init_mm, i32 noundef %addr, i32 noundef %mul1, ptr noundef nonnull @change_page_range, ptr noundef nonnull %data.i5) #3
  %add.i7 = add i32 %mul1, %addr
  call void @flush_tlb_kernel_range(i32 noundef %addr, i32 noundef %add.i7) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data.i5) #3
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ %call.i6, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @apply_to_page_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @change_page_range(ptr noundef %ptep, i32 noundef %addr, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ptep, align 4
  %clear_mask = getelementptr inbounds %struct.page_change_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %clear_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clear_mask, align 4
  %neg.i = xor i32 %3, -1
  %and.i = and i32 %1, %neg.i
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  %or.i = or i32 %5, %and.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_vtable to i32))
  %6 = load ptr, ptr @cpu_vtable, align 4
  %set_pte_ext = getelementptr inbounds %struct.processor, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %set_pte_ext to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_pte_ext, align 4
  tail call void %8(ptr noundef %ptep, i32 noundef %or.i, i32 noundef 0) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_kernel_range(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../arch/arm/mm/pageattr.c", i32 61, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{!"branch_weights", i32 2000, i32 1}
