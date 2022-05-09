; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/core/fb_notify.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/fb_notify.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fb_register_client\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_register_client\09\09\09\09"
module asm "\09.long\09__crc_fb_register_client\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_register_client:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_register_client\22\09\09\09\09\09"
module asm "__kstrtabns_fb_register_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fb_unregister_client\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_unregister_client\09\09\09\09"
module asm "\09.long\09__crc_fb_unregister_client\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_unregister_client:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_unregister_client\22\09\09\09\09\09"
module asm "__kstrtabns_fb_unregister_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fb_notifier_call_chain\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_notifier_call_chain\09\09\09\09"
module asm "\09.long\09__crc_fb_notifier_call_chain\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_notifier_call_chain:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_notifier_call_chain\22\09\09\09\09\09"
module asm "__kstrtabns_fb_notifier_call_chain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }

@fb_notifier_list = internal global { %struct.blocking_notifier_head, [60 x i8] } { %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @fb_notifier_list, i64 56), ptr getelementptr (i8, ptr @fb_notifier_list, i64 56) }, ptr @fb_notifier_list, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_fb_register_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_register_client = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_register_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_register_client to i32), ptr @__kstrtab_fb_register_client, ptr @__kstrtabns_fb_register_client }, section "___ksymtab+fb_register_client", align 4
@__kstrtab_fb_unregister_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_unregister_client = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_unregister_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_unregister_client to i32), ptr @__kstrtab_fb_unregister_client, ptr @__kstrtabns_fb_unregister_client }, section "___ksymtab+fb_unregister_client", align 4
@__kstrtab_fb_notifier_call_chain = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_notifier_call_chain = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_notifier_call_chain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_notifier_call_chain to i32), ptr @__kstrtab_fb_notifier_call_chain, ptr @__kstrtabns_fb_notifier_call_chain }, section "___ksymtab_gpl+fb_notifier_call_chain", align 4
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(fb_notifier_list).rwsem.wait_lock\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(fb_notifier_list).rwsem\00", [39 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"fb_notifier_list\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [40 x i8] c"../drivers/video/fbdev/core/fb_notify.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 17, i32 8 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_fb_notifier_call_chain, ptr @__ksymtab_fb_register_client, ptr @__ksymtab_fb_unregister_client, ptr @fb_notifier_list, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_notifier_list to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fb_register_client(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @fb_notifier_list, ptr noundef %nb) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fb_unregister_client(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @fb_notifier_list, ptr noundef %nb) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fb_notifier_call_chain(i32 noundef %val, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @fb_notifier_list, i32 noundef %val, ptr noundef %v) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_fb_register_client, !1, !"__ksymtab_fb_register_client", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/core/fb_notify.c", i32 29, i32 1}
!2 = !{ptr @__ksymtab_fb_unregister_client, !3, !"__ksymtab_fb_unregister_client", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/core/fb_notify.c", i32 41, i32 1}
!4 = !{ptr @__ksymtab_fb_notifier_call_chain, !5, !"__ksymtab_fb_notifier_call_chain", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/core/fb_notify.c", i32 54, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/core/fb_notify.c", i32 17, i32 8}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @fb_notifier_list, !7, !"fb_notifier_list", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
