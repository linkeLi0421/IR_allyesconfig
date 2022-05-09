; ModuleID = '/llk/IR_all_yes/drivers/edac/wq.c_pt.bc'
source_filename = "../drivers/edac/wq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+edac_queue_work\22, \22a\22\09"
module asm "\09.weak\09__crc_edac_queue_work\09\09\09\09"
module asm "\09.long\09__crc_edac_queue_work\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_queue_work:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_queue_work\22\09\09\09\09\09"
module asm "__kstrtabns_edac_queue_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+edac_mod_work\22, \22a\22\09"
module asm "\09.weak\09__crc_edac_mod_work\09\09\09\09"
module asm "\09.long\09__crc_edac_mod_work\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_mod_work:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_mod_work\22\09\09\09\09\09"
module asm "__kstrtabns_edac_mod_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+edac_stop_work\22, \22a\22\09"
module asm "\09.weak\09__crc_edac_stop_work\09\09\09\09"
module asm "\09.long\09__crc_edac_stop_work\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_stop_work:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_stop_work\22\09\09\09\09\09"
module asm "__kstrtabns_edac_stop_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_edac_queue_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_queue_work = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_queue_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_queue_work to i32), ptr @__kstrtab_edac_queue_work, ptr @__kstrtabns_edac_queue_work }, section "___ksymtab_gpl+edac_queue_work", align 4
@__kstrtab_edac_mod_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_mod_work = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_mod_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_mod_work to i32), ptr @__kstrtab_edac_mod_work, ptr @__kstrtabns_edac_mod_work }, section "___ksymtab_gpl+edac_mod_work", align 4
@__kstrtab_edac_stop_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_stop_work = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_stop_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_stop_work to i32), ptr @__kstrtab_edac_stop_work, ptr @__kstrtabns_edac_stop_work }, section "___ksymtab_gpl+edac_stop_work", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"edac-poller\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [3 x i8] c"wq\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 4, i32 33 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [21 x i8] c"../drivers/edac/wq.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 31, i32 7 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_edac_mod_work, ptr @__ksymtab_edac_queue_work, ptr @__ksymtab_edac_stop_work, ptr @wq, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @edac_queue_work(ptr noundef %work, i32 noundef %delay) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @wq, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work, i32 noundef %delay) #2
  ret i1 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @edac_mod_work(ptr noundef %work, i32 noundef %delay) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @wq, align 4
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work, i32 noundef %delay) #2
  ret i1 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @edac_stop_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #2
  %0 = load ptr, ptr @wq, align 4
  tail call void @flush_workqueue(ptr noundef %0) #2
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @edac_workqueue_setup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 655370, i32 noundef 1) #2
  store ptr %call, ptr @wq, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -19, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @edac_workqueue_teardown() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @wq, align 4
  tail call void @flush_workqueue(ptr noundef %0) #2
  %1 = load ptr, ptr @wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #2
  store ptr null, ptr @wq, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
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

!0 = !{ptr @__ksymtab_edac_queue_work, !1, !"__ksymtab_edac_queue_work", i1 false, i1 false}
!1 = !{!"../drivers/edac/wq.c", i32 10, i32 1}
!2 = !{ptr @__ksymtab_edac_mod_work, !3, !"__ksymtab_edac_mod_work", i1 false, i1 false}
!3 = !{!"../drivers/edac/wq.c", i32 16, i32 1}
!4 = !{ptr @__ksymtab_edac_stop_work, !5, !"__ksymtab_edac_stop_work", i1 false, i1 false}
!5 = !{!"../drivers/edac/wq.c", i32 27, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/edac/wq.c", i32 31, i32 7}
!8 = !{ptr @wq, !9, !"wq", i1 false, i1 false}
!9 = !{!"../drivers/edac/wq.c", i32 4, i32 33}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
