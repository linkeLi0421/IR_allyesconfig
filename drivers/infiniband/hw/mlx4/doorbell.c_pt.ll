; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx4/doorbell.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx4/doorbell.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.uverbs_attr = type { %union.anon.170 }
%union.anon.170 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.171, i16, i16, i8 }
%union.anon.171 = type { i64 }
%struct.mlx4_ib_ucontext = type { %struct.ib_ucontext, %struct.mlx4_uar, %struct.list_head, %struct.mutex, %struct.list_head, %struct.mutex }
%struct.ib_ucontext = type { ptr, ptr, %struct.ib_rdmacg_object, %struct.rdma_restrack_entry, %struct.xarray }
%struct.ib_rdmacg_object = type { ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.mlx4_uar = type { i32, i32, %struct.list_head, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx4_ib_user_db_page = type { %struct.list_head, ptr, i32, i32 }
%struct.ib_umem = type { ptr, ptr, i64, i32, i32, i8, %struct.work_struct, %struct.sg_append_table }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sg_append_table = type { %struct.sg_table, ptr, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mlx4_db = type { ptr, %union.anon, i32, i32, i32 }
%union.anon = type { ptr }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_db_map_user(ptr noundef readonly %udata, i32 noundef %virt, ptr nocapture noundef writeonly %db) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %udata, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %context1 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %0 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %1, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %db_page_mutex = getelementptr inbounds %struct.mlx4_ib_ucontext, ptr %cond, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %db_page_mutex, i32 noundef 0) #3
  %db_page_list = getelementptr inbounds %struct.mlx4_ib_ucontext, ptr %cond, i32 0, i32 2
  %and = and i32 %virt, -4096
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %cond.end
  %page.0.in = phi ptr [ %db_page_list, %cond.end ], [ %page.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %page.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %page.0 = load ptr, ptr %page.0.in, align 4
  %cmp.not = icmp eq ptr %page.0, %db_page_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %user_virt = getelementptr inbounds %struct.mlx4_ib_user_db_page, ptr %page.0, i32 0, i32 2
  %3 = ptrtoint ptr %user_virt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %user_virt, align 4
  %cmp6 = icmp eq i32 %4, %and
  br i1 %cmp6, label %for.body.found_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond

for.body.found_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %found

for.end:                                          ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 20) #6
  %tobool13.not = icmp eq ptr %call7.i, null
  br i1 %tobool13.not, label %for.end.out_crit_edge, label %if.end15

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end15:                                         ; preds = %for.end
  %user_virt17 = getelementptr inbounds %struct.mlx4_ib_user_db_page, ptr %call7.i, i32 0, i32 2
  %6 = ptrtoint ptr %user_virt17 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %user_virt17, align 4
  %refcnt = getelementptr inbounds %struct.mlx4_ib_user_db_page, ptr %call7.i, i32 0, i32 3
  %7 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %refcnt, align 8
  %8 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cond, align 4
  %call19 = tail call ptr @ib_umem_get(ptr noundef %9, i32 noundef %and, i32 noundef 4096, i32 noundef 0) #3
  %umem = getelementptr inbounds %struct.mlx4_ib_user_db_page, ptr %call7.i, i32 0, i32 1
  %10 = ptrtoint ptr %umem to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call19, ptr %umem, align 8
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %call19 to i32
  tail call void @kfree(ptr noundef nonnull %call7.i) #3
  br label %out

if.end25:                                         ; preds = %if.end15
  %12 = ptrtoint ptr %db_page_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %db_page_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %db_page_list, ptr noundef %13) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.end25.found_crit_edge

if.end25.found_crit_edge:                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %found

if.end.i.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i, ptr %prev1.i.i, align 4
  %15 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %db_page_list, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %db_page_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call7.i, ptr %db_page_list, align 4
  br label %found

found:                                            ; preds = %if.end.i.i, %if.end25.found_crit_edge, %for.body.found_crit_edge
  %page.1 = phi ptr [ %call7.i, %if.end25.found_crit_edge ], [ %call7.i, %if.end.i.i ], [ %page.0, %for.body.found_crit_edge ]
  %umem28 = getelementptr inbounds %struct.mlx4_ib_user_db_page, ptr %page.1, i32 0, i32 1
  %18 = ptrtoint ptr %umem28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %umem28, align 4
  %sgt_append = getelementptr inbounds %struct.ib_umem, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %sgt_append to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sgt_append, align 8
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_address, align 4
  %and29 = and i32 %virt, 4095
  %add = add i32 %23, %and29
  %dma = getelementptr inbounds %struct.mlx4_db, ptr %db, i32 0, i32 2
  %24 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add, ptr %dma, align 4
  %u = getelementptr inbounds %struct.mlx4_db, ptr %db, i32 0, i32 1
  %25 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %page.1, ptr %u, align 4
  %refcnt30 = getelementptr inbounds %struct.mlx4_ib_user_db_page, ptr %page.1, i32 0, i32 3
  %26 = ptrtoint ptr %refcnt30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %refcnt30, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %refcnt30, align 4
  br label %out

out:                                              ; preds = %found, %if.then22, %for.end.out_crit_edge
  %err.0 = phi i32 [ 0, %found ], [ %11, %if.then22 ], [ -12, %for.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %db_page_mutex) #3
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_umem_get(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_ib_db_unmap_user(ptr noundef %context, ptr nocapture noundef readonly %db) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %db_page_mutex = getelementptr inbounds %struct.mlx4_ib_ucontext, ptr %context, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %db_page_mutex, i32 noundef 0) #3
  %u = getelementptr inbounds %struct.mlx4_db, ptr %db, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u, align 4
  %refcnt = getelementptr inbounds %struct.mlx4_ib_user_db_page, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refcnt, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %u, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #3
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %14 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %u, align 4
  %umem = getelementptr inbounds %struct.mlx4_ib_user_db_page, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %umem, align 4
  tail call void @ib_umem_release(ptr noundef %17) #3
  %18 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %u, align 4
  tail call void @kfree(ptr noundef %19) #3
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %db_page_mutex) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_umem_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
