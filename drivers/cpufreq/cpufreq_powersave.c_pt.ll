; ModuleID = '/llk/IR_all_yes/drivers/cpufreq/cpufreq_powersave.c_pt.bc'
source_filename = "../drivers/cpufreq/cpufreq_powersave.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpufreq_governor = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpufreq_policy = type { ptr, ptr, ptr, i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__UNIQUE_ID_author183 = internal constant [60 x i8] c"cpufreq_powersave.author=Dominik Brodowski <linux@brodo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description184 = internal constant [66 x i8] c"cpufreq_powersave.description=CPUfreq policy governor 'powersave'\00", section ".modinfo", align 1
@__UNIQUE_ID_file185 = internal constant [57 x i8] c"cpufreq_powersave.file=drivers/cpufreq/cpufreq_powersave\00", section ".modinfo", align 1
@__UNIQUE_ID_license186 = internal constant [30 x i8] c"cpufreq_powersave.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_cpufreq_powersave__187_38_cpufreq_gov_powersave_init1 = internal global ptr @cpufreq_gov_powersave_init, section ".initcall1.init", align 4
@cpufreq_gov_powersave = internal global { %struct.cpufreq_governor, [36 x i8] } { %struct.cpufreq_governor { [16 x i8] c"powersave\00\00\00\00\00\00\00", ptr null, ptr null, ptr null, ptr null, ptr @cpufreq_gov_powersave_limits, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i8 2 }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cpufreq_gov_powersave_exit = internal global ptr @cpufreq_gov_powersave_exit, section ".exitcall.exit", align 4
@cpufreq_gov_powersave_limits.__UNIQUE_ID_ddebug182 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 4, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cpufreq_powersave\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cpufreq_gov_powersave_limits\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/cpufreq/cpufreq_powersave.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"setting to %u kHz\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cpufreq_powersave: setting to %u kHz\0A\00", [58 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [22 x i8] c"cpufreq_gov_powersave\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 20, i32 32 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [39 x i8] c"../drivers/cpufreq/cpufreq_powersave.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 16, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author183, ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file185, ptr @__UNIQUE_ID_license186, ptr @__exitcall_cpufreq_gov_powersave_exit, ptr @__initcall__kmod_cpufreq_powersave__187_38_cpufreq_gov_powersave_init1, ptr @cpufreq_gov_powersave_exit, ptr @cpufreq_gov_powersave, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpufreq_gov_powersave to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cpufreq_gov_powersave_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpufreq_register_governor(ptr noundef nonnull @cpufreq_gov_powersave) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cpufreq_gov_powersave_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @cpufreq_unregister_governor(ptr noundef nonnull @cpufreq_gov_powersave) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_unregister_governor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_governor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpufreq_gov_powersave_limits(ptr noundef %policy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpufreq_gov_powersave_limits.__UNIQUE_ID_ddebug182, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpufreq_gov_powersave_limits, %if.then)) #3
          to label %do.end [label %if.then], !srcloc !29

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %min = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 7
  %0 = ptrtoint ptr %min to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %min, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cpufreq_gov_powersave_limits.__UNIQUE_ID_ddebug182, ptr noundef nonnull @.str.4, i32 noundef %1) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %min3 = getelementptr inbounds %struct.cpufreq_policy, ptr %policy, i32 0, i32 7
  %2 = ptrtoint ptr %min3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min3, align 4
  %call4 = tail call i32 @__cpufreq_driver_target(ptr noundef %policy, i32 noundef %3, i32 noundef 0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpufreq_driver_target(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__UNIQUE_ID_author183, !1, !"__UNIQUE_ID_author183", i1 false, i1 false}
!1 = !{!"../drivers/cpufreq/cpufreq_powersave.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_description184, !3, !"__UNIQUE_ID_description184", i1 false, i1 false}
!3 = !{!"../drivers/cpufreq/cpufreq_powersave.c", i32 28, i32 1}
!4 = !{ptr @__UNIQUE_ID_file185, !5, !"__UNIQUE_ID_file185", i1 false, i1 false}
!5 = !{!"../drivers/cpufreq/cpufreq_powersave.c", i32 29, i32 1}
!6 = !{ptr @__UNIQUE_ID_license186, !5, !"__UNIQUE_ID_license186", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_cpufreq_powersave__187_38_cpufreq_gov_powersave_init1, !8, !"__initcall__kmod_cpufreq_powersave__187_38_cpufreq_gov_powersave_init1", i1 false, i1 false}
!8 = !{!"../drivers/cpufreq/cpufreq_powersave.c", i32 38, i32 1}
!9 = !{ptr @__exitcall_cpufreq_gov_powersave_exit, !10, !"__exitcall_cpufreq_gov_powersave_exit", i1 false, i1 false}
!10 = !{!"../drivers/cpufreq/cpufreq_powersave.c", i32 39, i32 1}
!11 = !{ptr @cpufreq_gov_powersave, !12, !"cpufreq_gov_powersave", i1 false, i1 false}
!12 = !{!"../drivers/cpufreq/cpufreq_powersave.c", i32 20, i32 32}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/cpufreq/cpufreq_powersave.c", i32 16, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @cpufreq_gov_powersave_limits.__UNIQUE_ID_ddebug182, !14, !"__UNIQUE_ID_ddebug182", i1 false, i1 false}
!19 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 2148757478, i64 2148757483, i64 2148757496, i64 2148757540, i64 2148757574, i64 2148757595}
