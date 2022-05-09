; ModuleID = '/llk/IR_all_yes/lib/test_debug_virtual.c_pt.bc'
source_filename = "../lib/test_debug_virtual.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@__initcall__kmod_test_debug_virtual__226_42_test_debug_virtual_init6 = internal global ptr @test_debug_virtual_init, section ".initcall6.init", align 4
@foo = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__exitcall_test_debug_virtual_exit = internal global ptr @test_debug_virtual_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file227 = internal constant [47 x i8] c"test_debug_virtual.file=lib/test_debug_virtual\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [31 x i8] c"test_debug_virtual.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [68 x i8] c"test_debug_virtual.description=Test module for CONFIG_DEBUG_VIRTUAL\00", section ".modinfo", align 1
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@test_debug_virtual_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 30, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016PA: %pa for VA: 0x%lx\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"test_debug_virtual_init\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lib/test_debug_virtual.c\00", [39 x i8] zeroinitializer }, align 32
@test_debug_virtual_init._entry_ptr = internal global ptr @test_debug_virtual_init._entry, section ".printk_index", align 4
@test_debug_virtual_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 38, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_debug_virtual_init._entry_ptr.4 = internal global ptr @test_debug_virtual_init._entry.3, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.5 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 20, i32 20 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 30, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.21 = private constant [28 x i8] c"../lib/test_debug_virtual.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 38, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__exitcall_test_debug_virtual_exit, ptr @__initcall__kmod_test_debug_virtual__226_42_test_debug_virtual_init6, ptr @test_debug_virtual_exit, ptr @test_debug_virtual_init._entry, ptr @test_debug_virtual_init._entry.3, ptr @test_debug_virtual_init._entry_ptr, ptr @test_debug_virtual_init._entry_ptr.4, ptr @foo, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @foo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_debug_virtual_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_debug_virtual_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @test_debug_virtual_init() #0 section ".init.text" align 64 {
entry:
  %pa = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pa) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %0 = load ptr, ptr @high_memory, align 4
  %1 = ptrtoint ptr %0 to i32
  %add = add i32 %1, 8388608
  %and = and i32 %add, -8388608
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %and) #7
  %2 = ptrtoint ptr %pa to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call.i, ptr %pa, align 4
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %pa, i32 noundef %and) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 4) #9
  store ptr %call7.i.i, ptr @foo, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call7.i.i to i32
  %call.i12 = call i32 @__virt_to_phys(i32 noundef %4) #7
  %5 = ptrtoint ptr %pa to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i12, ptr %pa, align 4
  %6 = load ptr, ptr @foo, align 4
  %7 = ptrtoint ptr %6 to i32
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %pa, i32 noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pa) #7
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @test_debug_virtual_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %0 = load ptr, ptr @foo, align 4
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind uwtable(sync) }
attributes #6 = { nomerge }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__initcall__kmod_test_debug_virtual__226_42_test_debug_virtual_init6, !1, !"__initcall__kmod_test_debug_virtual__226_42_test_debug_virtual_init6", i1 false, i1 false}
!1 = !{!"../lib/test_debug_virtual.c", i32 42, i32 1}
!2 = !{ptr @__exitcall_test_debug_virtual_exit, !3, !"__exitcall_test_debug_virtual_exit", i1 false, i1 false}
!3 = !{!"../lib/test_debug_virtual.c", i32 48, i32 1}
!4 = !{ptr @__UNIQUE_ID_file227, !5, !"__UNIQUE_ID_file227", i1 false, i1 false}
!5 = !{!"../lib/test_debug_virtual.c", i32 50, i32 1}
!6 = !{ptr @__UNIQUE_ID_license228, !5, !"__UNIQUE_ID_license228", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description229, !8, !"__UNIQUE_ID_description229", i1 false, i1 false}
!8 = !{!"../lib/test_debug_virtual.c", i32 51, i32 1}
!9 = !{ptr @foo, !10, !"foo", i1 false, i1 false}
!10 = !{!"../lib/test_debug_virtual.c", i32 20, i32 20}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../lib/test_debug_virtual.c", i32 30, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @test_debug_virtual_init._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @test_debug_virtual_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @test_debug_virtual_init._entry.3, !18, !"_entry", i1 false, i1 false}
!18 = !{!"../lib/test_debug_virtual.c", i32 38, i32 2}
!19 = !{ptr @test_debug_virtual_init._entry_ptr.4, !18, !"_entry_ptr", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
