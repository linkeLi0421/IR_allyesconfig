; ModuleID = '/llk/IR_all_yes/net/core/netevent.c_pt.bc'
source_filename = "../net/core/netevent.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+register_netevent_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_register_netevent_notifier\09\09\09\09"
module asm "\09.long\09__crc_register_netevent_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_netevent_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22register_netevent_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_register_netevent_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unregister_netevent_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_netevent_notifier\09\09\09\09"
module asm "\09.long\09__crc_unregister_netevent_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_netevent_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_netevent_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_netevent_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+call_netevent_notifiers\22, \22a\22\09"
module asm "\09.weak\09__crc_call_netevent_notifiers\09\09\09\09"
module asm "\09.long\09__crc_call_netevent_notifiers\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_call_netevent_notifiers:\09\09\09\09\09"
module asm "\09.asciz \09\22call_netevent_notifiers\22\09\09\09\09\09"
module asm "__kstrtabns_call_netevent_notifiers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }

@netevent_notif_chain = internal global { %struct.atomic_notifier_head, [48 x i8] } { %struct.atomic_notifier_head { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, ptr null }, [48 x i8] zeroinitializer }, align 32
@__kstrtab_register_netevent_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_netevent_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_register_netevent_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_netevent_notifier to i32), ptr @__kstrtab_register_netevent_notifier, ptr @__kstrtabns_register_netevent_notifier }, section "___ksymtab_gpl+register_netevent_notifier", align 4
@__kstrtab_unregister_netevent_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_netevent_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_netevent_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_netevent_notifier to i32), ptr @__kstrtab_unregister_netevent_notifier, ptr @__kstrtabns_unregister_netevent_notifier }, section "___ksymtab_gpl+unregister_netevent_notifier", align 4
@__kstrtab_call_netevent_notifiers = external dso_local constant [0 x i8], align 1
@__kstrtabns_call_netevent_notifiers = external dso_local constant [0 x i8], align 1
@__ksymtab_call_netevent_notifiers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @call_netevent_notifiers to i32), ptr @__kstrtab_call_netevent_notifiers, ptr @__kstrtabns_call_netevent_notifiers }, section "___ksymtab_gpl+call_netevent_notifiers", align 4
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"netevent_notif_chain.lock\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"netevent_notif_chain\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [23 x i8] c"../net/core/netevent.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 17, i32 8 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_call_netevent_notifiers, ptr @__ksymtab_register_netevent_notifier, ptr @__ksymtab_unregister_netevent_notifier, ptr @netevent_notif_chain, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netevent_notif_chain to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_netevent_notifier(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @atomic_notifier_chain_register(ptr noundef nonnull @netevent_notif_chain, ptr noundef %nb) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unregister_netevent_notifier(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @atomic_notifier_chain_unregister(ptr noundef nonnull @netevent_notif_chain, ptr noundef %nb) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @call_netevent_notifiers(i32 noundef %val, ptr noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @atomic_notifier_call_chain(ptr noundef nonnull @netevent_notif_chain, i32 noundef %val, ptr noundef %v) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__ksymtab_register_netevent_notifier, !1, !"__ksymtab_register_netevent_notifier", i1 false, i1 false}
!1 = !{!"../net/core/netevent.c", i32 32, i32 1}
!2 = !{ptr @__ksymtab_unregister_netevent_notifier, !3, !"__ksymtab_unregister_netevent_notifier", i1 false, i1 false}
!3 = !{!"../net/core/netevent.c", i32 48, i32 1}
!4 = !{ptr @__ksymtab_call_netevent_notifiers, !5, !"__ksymtab_call_netevent_notifiers", i1 false, i1 false}
!5 = !{!"../net/core/netevent.c", i32 63, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/core/netevent.c", i32 17, i32 8}
!8 = !{ptr @netevent_notif_chain, !7, !"netevent_notif_chain", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
