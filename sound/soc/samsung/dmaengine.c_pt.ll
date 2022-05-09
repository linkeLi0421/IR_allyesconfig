; ModuleID = '/llk/IR_all_yes/sound/soc/samsung/dmaengine.c_pt.bc'
source_filename = "../sound/soc/samsung/dmaengine.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+samsung_asoc_dma_platform_register\22, \22a\22\09"
module asm "\09.weak\09__crc_samsung_asoc_dma_platform_register\09\09\09\09"
module asm "\09.long\09__crc_samsung_asoc_dma_platform_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_samsung_asoc_dma_platform_register:\09\09\09\09\09"
module asm "\09.asciz \09\22samsung_asoc_dma_platform_register\22\09\09\09\09\09"
module asm "__kstrtabns_samsung_asoc_dma_platform_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }

@__kstrtab_samsung_asoc_dma_platform_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_samsung_asoc_dma_platform_register = external dso_local constant [0 x i8], align 1
@__ksymtab_samsung_asoc_dma_platform_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @samsung_asoc_dma_platform_register to i32), ptr @__kstrtab_samsung_asoc_dma_platform_register, ptr @__kstrtabns_samsung_asoc_dma_platform_register }, section "___ksymtab_gpl+samsung_asoc_dma_platform_register", align 4
@__UNIQUE_ID_author240 = internal constant [55 x i8] c"snd_soc_s3c_dma.author=Mark Brown <broonie@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [58 x i8] c"snd_soc_s3c_dma.description=Samsung dmaengine ASoC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [55 x i8] c"snd_soc_s3c_dma.file=sound/soc/samsung/snd-soc-s3c-dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [28 x i8] c"snd_soc_s3c_dma.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__ksymtab_samsung_asoc_dma_platform_register], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @samsung_asoc_dma_platform_register(ptr noundef %dev, ptr noundef %filter, ptr noundef %tx, ptr noundef %rx, ptr noundef %dma_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #2
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @snd_dmaengine_pcm_prepare_slave_config, ptr %call.i, align 4
  %compat_filter_fn = getelementptr inbounds %struct.snd_dmaengine_pcm_config, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %compat_filter_fn to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %filter, ptr %compat_filter_fn, align 4
  %dma_dev1 = getelementptr inbounds %struct.snd_dmaengine_pcm_config, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %dma_dev1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dma_dev, ptr %dma_dev1, align 4
  %chan_names = getelementptr inbounds %struct.snd_dmaengine_pcm_config, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %chan_names to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tx, ptr %chan_names, align 4
  %arrayidx3 = getelementptr %struct.snd_dmaengine_pcm_config, ptr %call.i, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rx, ptr %arrayidx3, align 4
  %call4 = tail call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev, ptr noundef nonnull %call.i, i32 noundef 1) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_prepare_slave_config(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
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

!0 = !{ptr @__ksymtab_samsung_asoc_dma_platform_register, !1, !"__ksymtab_samsung_asoc_dma_platform_register", i1 false, i1 false}
!1 = !{!"../sound/soc/samsung/dmaengine.c", i32 37, i32 1}
!2 = !{ptr @__UNIQUE_ID_author240, !3, !"__UNIQUE_ID_author240", i1 false, i1 false}
!3 = !{!"../sound/soc/samsung/dmaengine.c", i32 39, i32 1}
!4 = !{ptr @__UNIQUE_ID_description241, !5, !"__UNIQUE_ID_description241", i1 false, i1 false}
!5 = !{!"../sound/soc/samsung/dmaengine.c", i32 40, i32 1}
!6 = !{ptr @__UNIQUE_ID_file242, !7, !"__UNIQUE_ID_file242", i1 false, i1 false}
!7 = !{!"../sound/soc/samsung/dmaengine.c", i32 41, i32 1}
!8 = !{ptr @__UNIQUE_ID_license243, !7, !"__UNIQUE_ID_license243", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
