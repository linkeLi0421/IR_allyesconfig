; ModuleID = '/llk/IR_all_yes/sound/soc/mxs/mxs-pcm.c_pt.bc'
source_filename = "../sound/soc/mxs/mxs-pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mxs_pcm_platform_register\22, \22a\22\09"
module asm "\09.weak\09__crc_mxs_pcm_platform_register\09\09\09\09"
module asm "\09.long\09__crc_mxs_pcm_platform_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mxs_pcm_platform_register:\09\09\09\09\09"
module asm "\09.asciz \09\22mxs_pcm_platform_register\22\09\09\09\09\09"
module asm "__kstrtabns_mxs_pcm_platform_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@mxs_dmaengine_pcm_config = internal constant { %struct.snd_dmaengine_pcm_config, [60 x i8] } { %struct.snd_dmaengine_pcm_config { ptr null, ptr null, ptr null, ptr null, ptr null, [2 x ptr] zeroinitializer, ptr @snd_mxs_hardware, i32 65536 }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_mxs_pcm_platform_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_mxs_pcm_platform_register = external dso_local constant [0 x i8], align 1
@__ksymtab_mxs_pcm_platform_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mxs_pcm_platform_register to i32), ptr @__kstrtab_mxs_pcm_platform_register, ptr @__kstrtabns_mxs_pcm_platform_register }, section "___ksymtab_gpl+mxs_pcm_platform_register", align 4
@__UNIQUE_ID_file240 = internal constant [51 x i8] c"snd_soc_mxs_pcm.file=sound/soc/mxs/snd-soc-mxs-pcm\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [28 x i8] c"snd_soc_mxs_pcm.license=GPL\00", section ".modinfo", align 1
@snd_mxs_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 1835267, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65536, i32 32, i32 8192, i32 1, i32 52, i32 32 }, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [25 x i8] c"mxs_dmaengine_pcm_config\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 34, i32 46 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"snd_mxs_hardware\00", align 1
@___asan_gen_.5 = private constant [27 x i8] c"../sound/soc/mxs/mxs-pcm.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 19, i32 38 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__ksymtab_mxs_pcm_platform_register, ptr @mxs_dmaengine_pcm_config, ptr @snd_mxs_hardware], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_dmaengine_pcm_config to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mxs_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mxs_pcm_platform_register(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev, ptr noundef nonnull @mxs_dmaengine_pcm_config, i32 noundef 8) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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

!llvm.asan.globals = !{!0, !2, !4, !5, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__ksymtab_mxs_pcm_platform_register, !1, !"__ksymtab_mxs_pcm_platform_register", i1 false, i1 false}
!1 = !{!"../sound/soc/mxs/mxs-pcm.c", i32 44, i32 1}
!2 = !{ptr @__UNIQUE_ID_file240, !3, !"__UNIQUE_ID_file240", i1 false, i1 false}
!3 = !{!"../sound/soc/mxs/mxs-pcm.c", i32 46, i32 1}
!4 = !{ptr @__UNIQUE_ID_license241, !3, !"__UNIQUE_ID_license241", i1 false, i1 false}
!5 = !{ptr @mxs_dmaengine_pcm_config, !6, !"mxs_dmaengine_pcm_config", i1 false, i1 false}
!6 = !{!"../sound/soc/mxs/mxs-pcm.c", i32 34, i32 46}
!7 = !{ptr @snd_mxs_hardware, !8, !"snd_mxs_hardware", i1 false, i1 false}
!8 = !{!"../sound/soc/mxs/mxs-pcm.c", i32 19, i32 38}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
