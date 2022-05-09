; ModuleID = '/llk/IR_all_yes/net/batman-adv/hash.c_pt.bc'
source_filename = "../net/batman-adv/hash.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.batadv_hashtable = type { ptr, ptr, i32, %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"key\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@batadv_hash_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&hash->list_locks[i]\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 83, i32 3 }
@___asan_gen_.5 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [25 x i8] c"../net/batman-adv/hash.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 21, i32 3 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @batadv_hash_init.__key, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @batadv_hash_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_hash_destroy(ptr noundef %hash) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %list_locks = getelementptr inbounds %struct.batadv_hashtable, ptr %hash, i32 0, i32 1
  %0 = ptrtoint ptr %list_locks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list_locks, align 4
  tail call void @kfree(ptr noundef %1) #5
  %2 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hash, align 4
  tail call void @kfree(ptr noundef %3) #5
  tail call void @kfree(ptr noundef %hash) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @batadv_hash_new(i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 16) #8
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %size, i32 4) #5
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !14

kmalloc_array.exit.thread:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %call7.i, align 8
  br label %free_hash

if.end7.i:                                        ; preds = %if.end
  %4 = extractvalue { i32, i1 } %1, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 2592) #9
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i, ptr %call7.i, align 8
  %tobool3.not = icmp eq ptr %call8.i, null
  br i1 %tobool3.not, label %if.end7.i.free_hash_crit_edge, label %if.end5

if.end7.i.free_hash_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_hash

if.end5:                                          ; preds = %if.end7.i
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %size, i32 44) #5
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %kmalloc_array.exit56.thread, label %if.end7.i54, !prof !14

kmalloc_array.exit56.thread:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %list_locks63 = getelementptr inbounds %struct.batadv_hashtable, ptr %call7.i, i32 0, i32 1
  %8 = ptrtoint ptr %list_locks63 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %list_locks63, align 4
  br label %free_table

if.end7.i54:                                      ; preds = %if.end5
  %9 = extractvalue { i32, i1 } %6, 0
  %call8.i53 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 2592) #9
  %list_locks = getelementptr inbounds %struct.batadv_hashtable, ptr %call7.i, i32 0, i32 1
  %10 = ptrtoint ptr %list_locks to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8.i53, ptr %list_locks, align 4
  %tobool8.not = icmp eq ptr %call8.i53, null
  br i1 %tobool8.not, label %if.end7.i54.free_table_crit_edge, label %if.end10

if.end7.i54.free_table_crit_edge:                 ; preds = %if.end7.i54
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_table

if.end10:                                         ; preds = %if.end7.i54
  %size11 = getelementptr inbounds %struct.batadv_hashtable, ptr %call7.i, i32 0, i32 2
  %11 = ptrtoint ptr %size11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %size, ptr %size11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp8.not.i = icmp eq i32 %size, 0
  br i1 %cmp8.not.i, label %if.end10.batadv_hash_init.exit_crit_edge, label %if.end10.for.body.i_crit_edge

if.end10.for.body.i_crit_edge:                    ; preds = %if.end10
  br label %for.body.i

if.end10.batadv_hash_init.exit_crit_edge:         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %batadv_hash_init.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end10.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end10.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call7.i, align 8
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %13, i32 %i.09.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx.i, align 4
  %15 = ptrtoint ptr %list_locks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %list_locks, align 4
  %arrayidx1.i = getelementptr %struct.spinlock, ptr %16, i32 %i.09.i
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx1.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @batadv_hash_init.__key, i16 noundef signext 3) #5
  %inc.i = add nuw i32 %i.09.i, 1
  %17 = ptrtoint ptr %size11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size11, align 8
  %cmp.i = icmp ult i32 %inc.i, %18
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.batadv_hash_init.exit_crit_edge

for.body.i.batadv_hash_init.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %batadv_hash_init.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

batadv_hash_init.exit:                            ; preds = %for.body.i.batadv_hash_init.exit_crit_edge, %if.end10.batadv_hash_init.exit_crit_edge
  %generation.i = getelementptr inbounds %struct.batadv_hashtable, ptr %call7.i, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %generation.i, i32 noundef 4) #5
  %19 = ptrtoint ptr %generation.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 0, ptr %generation.i, align 4
  br label %cleanup

free_table:                                       ; preds = %if.end7.i54.free_table_crit_edge, %kmalloc_array.exit56.thread
  %20 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i, align 8
  tail call void @kfree(ptr noundef %21) #5
  br label %free_hash

free_hash:                                        ; preds = %free_table, %if.end7.i.free_hash_crit_edge, %kmalloc_array.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %cleanup

cleanup:                                          ; preds = %free_hash, %batadv_hash_init.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %batadv_hash_init.exit ], [ null, %free_hash ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_hash_set_lock_class(ptr nocapture noundef readonly %hash, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.batadv_hashtable, ptr %hash, i32 0, i32 2
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp14.not = icmp eq i32 %1, 0
  br i1 %cmp14.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %list_locks = getelementptr inbounds %struct.batadv_hashtable, ptr %hash, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %list_locks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list_locks, align 4
  %dep_map = getelementptr %struct.spinlock, ptr %3, i32 %i.015, i32 0, i32 0, i32 4
  %wait_type_inner = getelementptr %struct.spinlock, ptr %3, i32 %i.015, i32 0, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str, ptr noundef %key, i32 noundef 0, i8 noundef zeroext %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %inc = add nuw i32 %i.015, 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/batman-adv/hash.c", i32 83, i32 3}
!2 = !{ptr @batadv_hash_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../net/batman-adv/hash.c", i32 21, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{!"branch_weights", i32 1, i32 2000}
