; ModuleID = '/llk/IR_all_yes/kernel/configs.c_pt.bc'
source_filename = "../kernel/configs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.pushsection .rodata, \22a\22\09\09"
module asm "\09.ascii \22IKCFG_ST\22\09\09\09"
module asm "\09.global kernel_config_data\09\09"
module asm "kernel_config_data:\09\09\09\09"
module asm "\09.incbin \22kernel/config_data.gz\22\09"
module asm "\09.global kernel_config_data_end\09\09"
module asm "kernel_config_data_end:\09\09\09"
module asm "\09.ascii \22IKCFG_ED\22\09\09\09"
module asm "\09.popsection\09\09\09\09"

%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"config.gz\00", [22 x i8] zeroinitializer }, align 32
@__initcall__kmod_configs__200_75_ikconfig_init6 = internal global ptr @ikconfig_init, section ".initcall6.init", align 4
@__exitcall_ikconfig_cleanup = internal global ptr @ikconfig_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_file201 = internal constant [28 x i8] c"configs.file=kernel/configs\00", section ".modinfo", align 1
@__UNIQUE_ID_license202 = internal constant [20 x i8] c"configs.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author203 = internal constant [28 x i8] c"configs.author=Randy Dunlap\00", section ".modinfo", align 1
@__UNIQUE_ID_description204 = internal constant [74 x i8] c"configs.description=Echo the kernel .config file used to build the kernel\00", section ".modinfo", align 1
@config_gz_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr null, ptr @ikconfig_read_current, ptr null, ptr null, ptr @default_llseek, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@kernel_config_data_end = external dso_local global i8, align 1
@kernel_config_data = external dso_local global i8, align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 72, i32 20 }
@___asan_gen_.4 = private unnamed_addr constant [19 x i8] c"config_gz_proc_ops\00", align 1
@___asan_gen_.5 = private constant [20 x i8] c"../kernel/configs.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 50, i32 30 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author203, ptr @__UNIQUE_ID_description204, ptr @__UNIQUE_ID_file201, ptr @__UNIQUE_ID_license202, ptr @__exitcall_ikconfig_cleanup, ptr @__initcall__kmod_configs__200_75_ikconfig_init6, ptr @ikconfig_cleanup, ptr @.str, ptr @config_gz_proc_ops], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_gz_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ikconfig_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef null) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ikconfig_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_create(ptr noundef nonnull @.str, i16 noundef zeroext -32476, ptr noundef null, ptr noundef nonnull @config_gz_proc_ops) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @proc_set_size(ptr noundef nonnull %call, i64 noundef sext (i32 sub (i32 ptrtoint (ptr @kernel_config_data_end to i32), i32 ptrtoint (ptr @kernel_config_data to i32)) to i64)) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_set_size(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ikconfig_read_current(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %len, ptr noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %len, ptr noundef %offset, ptr noundef nonnull @kernel_config_data, i32 noundef sub (i32 ptrtoint (ptr @kernel_config_data_end to i32), i32 ptrtoint (ptr @kernel_config_data to i32))) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/configs.c", i32 72, i32 20}
!2 = !{ptr @__initcall__kmod_configs__200_75_ikconfig_init6, !3, !"__initcall__kmod_configs__200_75_ikconfig_init6", i1 false, i1 false}
!3 = !{!"../kernel/configs.c", i32 75, i32 1}
!4 = !{ptr @__exitcall_ikconfig_cleanup, !5, !"__exitcall_ikconfig_cleanup", i1 false, i1 false}
!5 = !{!"../kernel/configs.c", i32 76, i32 1}
!6 = !{ptr @__UNIQUE_ID_file201, !7, !"__UNIQUE_ID_file201", i1 false, i1 false}
!7 = !{!"../kernel/configs.c", i32 80, i32 1}
!8 = !{ptr @__UNIQUE_ID_license202, !7, !"__UNIQUE_ID_license202", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author203, !10, !"__UNIQUE_ID_author203", i1 false, i1 false}
!10 = !{!"../kernel/configs.c", i32 81, i32 1}
!11 = !{ptr @__UNIQUE_ID_description204, !12, !"__UNIQUE_ID_description204", i1 false, i1 false}
!12 = !{!"../kernel/configs.c", i32 82, i32 1}
!13 = !{ptr @config_gz_proc_ops, !14, !"config_gz_proc_ops", i1 false, i1 false}
!14 = !{!"../kernel/configs.c", i32 50, i32 30}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
