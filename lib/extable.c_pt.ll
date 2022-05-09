; ModuleID = '/llk/IR_all_yes/lib/extable.c_pt.bc'
source_filename = "../lib/extable.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.exception_table_entry = type { i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sort_extable(ptr noundef %start, ptr noundef %finish) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %sub.ptr.lhs.cast = ptrtoint ptr %finish to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %start to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  tail call void @sort(ptr noundef %start, i32 noundef %sub.ptr.div, i32 noundef 8, ptr noundef nonnull @cmp_ex_sort, ptr noundef null) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmp_ex_sort(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ugt i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp4 = icmp ult i32 %1, %3
  %. = sext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @trim_init_extable(ptr nocapture noundef %m) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %extable = getelementptr inbounds %struct.module, ptr %m, i32 0, i32 22
  %size.i = getelementptr inbounds %struct.module, ptr %m, i32 0, i32 26, i32 1
  %num_exentries = getelementptr inbounds %struct.module, ptr %m, i32 0, i32 21
  %0 = ptrtoint ptr %num_exentries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_exentries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not33 = icmp eq i32 %1, 0
  br i1 %tobool.not33, label %entry.while.end16_crit_edge, label %land.rhs.lr.ph

entry.while.end16_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end16

land.rhs.lr.ph:                                   ; preds = %entry
  %init_layout.i = getelementptr inbounds %struct.module, ptr %m, i32 0, i32 26
  %2 = ptrtoint ptr %init_layout.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_layout.i, align 16
  %4 = ptrtoint ptr %3 to i32
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %5 = phi i32 [ %1, %land.rhs.lr.ph ], [ %dec, %while.body.land.rhs_crit_edge ]
  %6 = ptrtoint ptr %extable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extable, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %4)
  %cmp.not.i = icmp ult i32 %9, %4
  br i1 %cmp.not.i, label %land.rhs.while.end_crit_edge, label %within_module_init.exit

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

within_module_init.exit:                          ; preds = %land.rhs
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i, align 4
  %add.i = add i32 %11, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %9)
  %cmp4.i = icmp ugt i32 %add.i, %9
  br i1 %cmp4.i, label %while.body, label %within_module_init.exit.while.end_crit_edge

within_module_init.exit.while.end_crit_edge:      ; preds = %within_module_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body:                                       ; preds = %within_module_init.exit
  %incdec.ptr = getelementptr %struct.exception_table_entry, ptr %7, i32 1
  %12 = ptrtoint ptr %extable to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %incdec.ptr, ptr %extable, align 8
  %dec = add i32 %5, -1
  %13 = ptrtoint ptr %num_exentries to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %dec, ptr %num_exentries, align 4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end16_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs

while.body.while.end16_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end16

while.end:                                        ; preds = %within_module_init.exit.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %14 = ptrtoint ptr %num_exentries to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr.pr = load i32, ptr %num_exentries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.pr)
  %tobool5.not36 = icmp eq i32 %.pr.pr, 0
  br i1 %tobool5.not36, label %while.end.while.end16_crit_edge, label %land.rhs6.lr.ph

while.end.while.end16_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end16

land.rhs6.lr.ph:                                  ; preds = %while.end
  %init_layout.i26 = getelementptr inbounds %struct.module, ptr %m, i32 0, i32 26
  %15 = ptrtoint ptr %init_layout.i26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_layout.i26, align 16
  %17 = ptrtoint ptr %16 to i32
  %18 = ptrtoint ptr %extable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %extable, align 8
  br label %land.rhs6

land.rhs6:                                        ; preds = %while.body13.land.rhs6_crit_edge, %land.rhs6.lr.ph
  %20 = phi i32 [ %.pr.pr, %land.rhs6.lr.ph ], [ %sub, %while.body13.land.rhs6_crit_edge ]
  %sub = add i32 %20, -1
  %arrayidx9 = getelementptr %struct.exception_table_entry, ptr %19, i32 %sub
  %21 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %17)
  %cmp.not.i27 = icmp ult i32 %22, %17
  br i1 %cmp.not.i27, label %land.rhs6.while.end16_crit_edge, label %within_module_init.exit32

land.rhs6.while.end16_crit_edge:                  ; preds = %land.rhs6
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end16

within_module_init.exit32:                        ; preds = %land.rhs6
  %23 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size.i, align 4
  %add.i29 = add i32 %24, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i29, i32 %22)
  %cmp4.i30 = icmp ugt i32 %add.i29, %22
  br i1 %cmp4.i30, label %while.body13, label %within_module_init.exit32.while.end16_crit_edge

within_module_init.exit32.while.end16_crit_edge:  ; preds = %within_module_init.exit32
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end16

while.body13:                                     ; preds = %within_module_init.exit32
  %25 = ptrtoint ptr %num_exentries to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub, ptr %num_exentries, align 4
  %tobool5.not = icmp eq i32 %sub, 0
  br i1 %tobool5.not, label %while.body13.while.end16_crit_edge, label %while.body13.land.rhs6_crit_edge

while.body13.land.rhs6_crit_edge:                 ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs6

while.body13.while.end16_crit_edge:               ; preds = %while.body13
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end16

while.end16:                                      ; preds = %while.body13.while.end16_crit_edge, %within_module_init.exit32.while.end16_crit_edge, %land.rhs6.while.end16_crit_edge, %while.end.while.end16_crit_edge, %while.body.while.end16_crit_edge, %entry.while.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @search_extable(ptr noundef %base, i32 noundef %num, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  %value.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %value.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %value.addr, align 4
  %call = call ptr @bsearch(ptr noundef nonnull %value.addr, ptr noundef %base, i32 noundef %num, i32 noundef 8, ptr noundef nonnull @cmp_ex_search) #6
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bsearch(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmp_ex_search(ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %elt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %2 = ptrtoint ptr %elt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %elt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ugt i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp2 = icmp ult i32 %1, %3
  %. = sext i1 %cmp2 to i32
  %retval.0 = select i1 %cmp, i32 1, i32 %.
  ret i32 %retval.0
}

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind uwtable(sync) }
attributes #5 = { nomerge }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
