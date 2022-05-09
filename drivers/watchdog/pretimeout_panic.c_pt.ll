; ModuleID = '/llk/IR_all_yes/drivers/watchdog/pretimeout_panic.c_pt.bc'
source_filename = "../drivers/watchdog/pretimeout_panic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.watchdog_governor = type { [20 x i8], ptr }

@watchdog_gov_panic = internal global { %struct.watchdog_governor, [40 x i8] } { %struct.watchdog_governor { [20 x i8] c"panic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pretimeout_panic }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_pretimeout_panic__170_37_watchdog_gov_panic_register6 = internal global ptr @watchdog_gov_panic_register, section ".initcall6.init", align 4
@__exitcall_watchdog_gov_panic_unregister = internal global ptr @watchdog_gov_panic_unregister, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [75 x i8] c"pretimeout_panic.author=Vladimir Zapolskiy <vladimir_zapolskiy@mentor.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [64 x i8] c"pretimeout_panic.description=Panic watchdog pretimeout governor\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [56 x i8] c"pretimeout_panic.file=drivers/watchdog/pretimeout_panic\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [29 x i8] c"pretimeout_panic.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"watchdog pretimeout event\0A\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"watchdog_gov_panic\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 23, i32 33 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [39 x i8] c"../drivers/watchdog/pretimeout_panic.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 20, i32 8 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_watchdog_gov_panic_unregister, ptr @__initcall__kmod_pretimeout_panic__170_37_watchdog_gov_panic_register6, ptr @watchdog_gov_panic_unregister, ptr @watchdog_gov_panic, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @watchdog_gov_panic to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @watchdog_gov_panic_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @watchdog_unregister_governor(ptr noundef nonnull @watchdog_gov_panic) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_unregister_governor(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @watchdog_gov_panic_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @watchdog_register_governor(ptr noundef nonnull @watchdog_gov_panic) #4
  ret i32 %call
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pretimeout_panic(ptr nocapture noundef readnone %wdd) #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str) #7
  unreachable
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_register_governor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__initcall__kmod_pretimeout_panic__170_37_watchdog_gov_panic_register6, !1, !"__initcall__kmod_pretimeout_panic__170_37_watchdog_gov_panic_register6", i1 false, i1 false}
!1 = !{!"../drivers/watchdog/pretimeout_panic.c", i32 37, i32 1}
!2 = !{ptr @__exitcall_watchdog_gov_panic_unregister, !3, !"__exitcall_watchdog_gov_panic_unregister", i1 false, i1 false}
!3 = !{!"../drivers/watchdog/pretimeout_panic.c", i32 38, i32 1}
!4 = !{ptr @__UNIQUE_ID_author171, !5, !"__UNIQUE_ID_author171", i1 false, i1 false}
!5 = !{!"../drivers/watchdog/pretimeout_panic.c", i32 40, i32 1}
!6 = !{ptr @__UNIQUE_ID_description172, !7, !"__UNIQUE_ID_description172", i1 false, i1 false}
!7 = !{!"../drivers/watchdog/pretimeout_panic.c", i32 41, i32 1}
!8 = !{ptr @__UNIQUE_ID_file173, !9, !"__UNIQUE_ID_file173", i1 false, i1 false}
!9 = !{!"../drivers/watchdog/pretimeout_panic.c", i32 42, i32 1}
!10 = !{ptr @__UNIQUE_ID_license174, !9, !"__UNIQUE_ID_license174", i1 false, i1 false}
!11 = !{ptr @watchdog_gov_panic, !12, !"watchdog_gov_panic", i1 false, i1 false}
!12 = !{!"../drivers/watchdog/pretimeout_panic.c", i32 23, i32 33}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/watchdog/pretimeout_panic.c", i32 20, i32 8}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
