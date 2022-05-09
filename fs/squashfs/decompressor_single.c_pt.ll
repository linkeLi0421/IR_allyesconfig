; ModuleID = '/llk/IR_all_yes/fs/squashfs/decompressor_single.c_pt.bc'
source_filename = "../fs/squashfs/decompressor_single.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.squashfs_stream = type { ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.squashfs_sb_info = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i64, i64, i32, i16, i64, i32, i32, i32, i32, i8 }
%struct.squashfs_decompressor = type { ptr, ptr, ptr, ptr, i32, ptr, i32 }

@squashfs_decompressor_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&stream->mutex\00", [17 x i8] zeroinitializer }, align 32
@squashfs_decompress._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013SQUASHFS error: %s decompression failed, data probably corrupt\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"squashfs_decompress\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fs/squashfs/decompressor_single.c\00", [62 x i8] zeroinitializer }, align 32
@squashfs_decompress._entry_ptr = internal global ptr @squashfs_decompress._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.4 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 44, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [37 x i8] c"../fs/squashfs/decompressor_single.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 75, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @squashfs_decompress._entry, ptr @squashfs_decompress._entry_ptr, ptr @squashfs_decompressor_create.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_decompressor_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_decompress._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @squashfs_decompressor_create(ptr noundef %msblk, ptr noundef %comp_opts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 96) #8
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %msblk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %msblk, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call1 = tail call ptr %4(ptr noundef %msblk, ptr noundef %comp_opts) #5
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %call7.i, align 8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.out_crit_edge, label %if.end8

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef %comp_opts) #5
  %mutex = getelementptr inbounds %struct.squashfs_stream, ptr %call7.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str, ptr noundef nonnull @squashfs_decompressor_create.__key) #5
  br label %cleanup

out:                                              ; preds = %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi ptr [ inttoptr (i32 -12 to ptr), %entry.out_crit_edge ], [ %call1, %if.end.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end8
  %retval.0 = phi ptr [ %err.0, %out ], [ %call7.i, %if.end8 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @squashfs_decompressor_destroy(ptr nocapture noundef readonly %msblk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.squashfs_sb_info, ptr %msblk, i32 0, i32 12
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %msblk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msblk, align 8
  %free = getelementptr inbounds %struct.squashfs_decompressor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %free, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void %5(ptr noundef %7) #5
  tail call void @kfree(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @squashfs_decompress(ptr noundef %msblk, ptr noundef %bio, i32 noundef %offset, i32 noundef %length, ptr noundef %output) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %stream1 = getelementptr inbounds %struct.squashfs_sb_info, ptr %msblk, i32 0, i32 12
  %0 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream1, align 8
  %mutex = getelementptr inbounds %struct.squashfs_stream, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %2 = ptrtoint ptr %msblk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msblk, align 8
  %decompress = getelementptr inbounds %struct.squashfs_decompressor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %decompress to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %decompress, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call = tail call i32 %5(ptr noundef %msblk, ptr noundef %7, ptr noundef %bio, i32 noundef %offset, i32 noundef %length, ptr noundef %output) #5
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %msblk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %msblk, align 8
  %name = getelementptr inbounds %struct.squashfs_decompressor, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %11) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @squashfs_max_decompressors() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @squashfs_decompressor_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/squashfs/decompressor_single.c", i32 44, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/squashfs/decompressor_single.c", i32 75, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @squashfs_decompress._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @squashfs_decompress._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
