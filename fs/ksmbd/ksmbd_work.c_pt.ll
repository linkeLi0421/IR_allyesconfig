; ModuleID = '/llk/IR_all_yes/fs/ksmbd/ksmbd_work.c_pt.bc'
source_filename = "../fs/ksmbd/ksmbd_work.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ksmbd_work = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32, i32, i32, ptr, i8, i8, i32, i32, ptr, ptr, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ksmbd_conn = type { ptr, ptr, ptr, i32, %struct.mutex, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.spinlock, %struct.wait_queue_head, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.ksmbd_stats, [16 x i8], %struct.ntlmssp_auth, %struct.spinlock, %struct.list_head, ptr, i8, i32, i32, i8, i8, i16, i16, i16, ptr, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, %struct.ida, i16, i16, i8, i8, i16, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ksmbd_stats = type { %struct.atomic_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ntlmssp_auth = type { i8, i32, i32, [16 x i8], [8 x i8] }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.__kernel_sockaddr_storage = type { %union.anon.166 }
%union.anon.166 = type { ptr, [124 x i8] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@work_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/ksmbd/ksmbd_work.c\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ksmbd_work_cache\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ksmbd-io\00", [23 x i8] zeroinitializer }, align 32
@ksmbd_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.3 = private unnamed_addr constant [11 x i8] c"work_cache\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 16, i32 27 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 36, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 54, i32 33 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 64, i32 29 }
@___asan_gen_.15 = private unnamed_addr constant [9 x i8] c"ksmbd_wq\00", align 1
@___asan_gen_.16 = private constant [25 x i8] c"../fs/ksmbd/ksmbd_work.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 17, i32 33 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @work_cache, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ksmbd_wq], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @work_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksmbd_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ksmbd_alloc_work_struct() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @work_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3520) #2
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %compound_fid = getelementptr inbounds %struct.ksmbd_work, ptr %call.i, i32 0, i32 8
  %1 = ptrtoint ptr %compound_fid to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 2147483647, ptr %compound_fid, align 8
  %compound_pfid = getelementptr inbounds %struct.ksmbd_work, ptr %call.i, i32 0, i32 9
  %2 = ptrtoint ptr %compound_pfid to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 2147483647, ptr %compound_pfid, align 8
  %request_entry = getelementptr inbounds %struct.ksmbd_work, ptr %call.i, i32 0, i32 24
  %3 = ptrtoint ptr %request_entry to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %request_entry, ptr %request_entry, align 8
  %prev.i = getelementptr inbounds %struct.ksmbd_work, ptr %call.i, i32 0, i32 24, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %request_entry, ptr %prev.i, align 4
  %async_request_entry = getelementptr inbounds %struct.ksmbd_work, ptr %call.i, i32 0, i32 25
  %5 = ptrtoint ptr %async_request_entry to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %async_request_entry, ptr %async_request_entry, align 8
  %prev.i8 = getelementptr inbounds %struct.ksmbd_work, ptr %call.i, i32 0, i32 25, i32 1
  %6 = ptrtoint ptr %prev.i8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %async_request_entry, ptr %prev.i8, align 4
  %fp_entry = getelementptr inbounds %struct.ksmbd_work, ptr %call.i, i32 0, i32 26
  %7 = ptrtoint ptr %fp_entry to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %fp_entry, ptr %fp_entry, align 8
  %prev.i9 = getelementptr inbounds %struct.ksmbd_work, ptr %call.i, i32 0, i32 26, i32 1
  %8 = ptrtoint ptr %prev.i9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %fp_entry, ptr %prev.i9, align 4
  %interim_entry = getelementptr inbounds %struct.ksmbd_work, ptr %call.i, i32 0, i32 27
  %9 = ptrtoint ptr %interim_entry to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %interim_entry, ptr %interim_entry, align 8
  %prev.i10 = getelementptr inbounds %struct.ksmbd_work, ptr %call.i, i32 0, i32 27, i32 1
  %10 = ptrtoint ptr %prev.i10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %interim_entry, ptr %prev.i10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_free_work_struct(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %saved_cred = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 11
  %0 = ptrtoint ptr %saved_cred to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %saved_cred, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !19

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 36, i32 noundef 9, ptr noundef null) #2
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %response_buf = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 4
  %2 = ptrtoint ptr %response_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %response_buf, align 8
  tail call void @kvfree(ptr noundef %3) #2
  %aux_payload_buf = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 5
  %4 = ptrtoint ptr %aux_payload_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aux_payload_buf, align 4
  tail call void @kvfree(ptr noundef %5) #2
  %tr_buf = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 16
  %6 = ptrtoint ptr %tr_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tr_buf, align 4
  tail call void @kfree(ptr noundef %7) #2
  %request_buf = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 3
  %8 = ptrtoint ptr %request_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %request_buf, align 4
  tail call void @kvfree(ptr noundef %9) #2
  %async_id = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 20
  %10 = ptrtoint ptr %async_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %async_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool19.not = icmp eq i32 %11, 0
  br i1 %tobool19.not, label %if.end.if.end22_crit_edge, label %if.then20

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end22

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %12 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %work, align 8
  %async_ida = getelementptr inbounds %struct.ksmbd_conn, ptr %13, i32 0, i32 41
  tail call void @ksmbd_release_id(ptr noundef %async_ida, i32 noundef %11) #2
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end.if.end22_crit_edge
  %14 = load ptr, ptr @work_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %14, ptr noundef %work) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksmbd_release_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_work_pool_destroy() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @work_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_work_pool_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 176, i32 noundef 0, i32 noundef 8192, ptr noundef null) #2
  store ptr %call, ptr @work_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksmbd_workqueue_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 0) #2
  store ptr %call, ptr @ksmbd_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ksmbd_workqueue_destroy() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ksmbd_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #2
  store ptr null, ptr @ksmbd_wq, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ksmbd_queue_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ksmbd_wq, align 4
  %work1 = getelementptr inbounds %struct.ksmbd_work, ptr %work, i32 0, i32 23
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work1) #2
  ret i1 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ksmbd/ksmbd_work.c", i32 36, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ksmbd/ksmbd_work.c", i32 54, i32 33}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ksmbd/ksmbd_work.c", i32 64, i32 29}
!6 = !{ptr @work_cache, !7, !"work_cache", i1 false, i1 false}
!7 = !{!"../fs/ksmbd/ksmbd_work.c", i32 16, i32 27}
!8 = !{ptr @ksmbd_wq, !9, !"ksmbd_wq", i1 false, i1 false}
!9 = !{!"../fs/ksmbd/ksmbd_work.c", i32 17, i32 33}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"branch_weights", i32 2000, i32 1}
