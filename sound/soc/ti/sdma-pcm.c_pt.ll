; ModuleID = '/llk/IR_all_yes/sound/soc/ti/sdma-pcm.c_pt.bc'
source_filename = "../sound/soc/ti/sdma-pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sdma_pcm_platform_register\22, \22a\22\09"
module asm "\09.weak\09__crc_sdma_pcm_platform_register\09\09\09\09"
module asm "\09.long\09__crc_sdma_pcm_platform_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdma_pcm_platform_register:\09\09\09\09\09"
module asm "\09.asciz \09\22sdma_pcm_platform_register\22\09\09\09\09\09"
module asm "__kstrtabns_sdma_pcm_platform_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@sdma_dmaengine_pcm_config = internal constant { %struct.snd_dmaengine_pcm_config, [60 x i8] } { %struct.snd_dmaengine_pcm_config { ptr @snd_dmaengine_pcm_prepare_slave_config, ptr null, ptr null, ptr null, ptr null, [2 x ptr] zeroinitializer, ptr @sdma_pcm_hardware, i32 131072 }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_sdma_pcm_platform_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdma_pcm_platform_register = external dso_local constant [0 x i8], align 1
@__ksymtab_sdma_pcm_platform_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdma_pcm_platform_register to i32), ptr @__kstrtab_sdma_pcm_platform_register, ptr @__kstrtabns_sdma_pcm_platform_register }, section "___ksymtab_gpl+sdma_pcm_platform_register", align 4
@__UNIQUE_ID_author240 = internal constant [62 x i8] c"snd_soc_ti_sdma.author=Peter Ujfalusi <peter.ujfalusi@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [58 x i8] c"snd_soc_ti_sdma.description=sDMA PCM ASoC platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [50 x i8] c"snd_soc_ti_sdma.file=sound/soc/ti/snd-soc-ti-sdma\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [31 x i8] c"snd_soc_ti_sdma.license=GPL v2\00", section ".modinfo", align 1
@sdma_pcm_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 9175299, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 131072, i32 32, i32 65536, i32 2, i32 255, i32 0 }, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [26 x i8] c"sdma_dmaengine_pcm_config\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 30, i32 46 }
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"sdma_pcm_hardware\00", align 1
@___asan_gen_.5 = private constant [27 x i8] c"../sound/soc/ti/sdma-pcm.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 17, i32 38 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__ksymtab_sdma_pcm_platform_register, ptr @sdma_dmaengine_pcm_config, ptr @sdma_pcm_hardware], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_dmaengine_pcm_config to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdma_pcm_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdma_pcm_platform_register(ptr noundef %dev, ptr noundef %txdmachan, ptr noundef %rxdmachan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %txdmachan, null
  %tobool1.not = icmp eq ptr %rxdmachan, null
  %or.cond = and i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev, ptr noundef nonnull @sdma_dmaengine_pcm_config, i32 noundef 0) #2
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #2
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %0 = call ptr @memcpy(ptr %call.i, ptr @sdma_dmaengine_pcm_config, i32 36)
  %or.cond30 = or i1 %tobool.not, %tobool1.not
  %txdmachan.addr.0 = select i1 %tobool.not, ptr %rxdmachan, ptr %txdmachan
  %rxdmachan.addr.0 = select i1 %tobool.not, ptr null, ptr %rxdmachan
  %flags.0 = select i1 %or.cond30, i32 8, i32 0
  %chan_names = getelementptr inbounds %struct.snd_dmaengine_pcm_config, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %chan_names to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %txdmachan.addr.0, ptr %chan_names, align 4
  %arrayidx14 = getelementptr %struct.snd_dmaengine_pcm_config, ptr %call.i, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %rxdmachan.addr.0, ptr %arrayidx14, align 4
  %call15 = tail call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev, ptr noundef nonnull %call.i, i32 noundef %flags.0) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call15, %if.end5 ], [ %call, %if.then ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_prepare_slave_config(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__ksymtab_sdma_pcm_platform_register, !1, !"__ksymtab_sdma_pcm_platform_register", i1 false, i1 false}
!1 = !{!"../sound/soc/ti/sdma-pcm.c", i32 67, i32 1}
!2 = !{ptr @__UNIQUE_ID_author240, !3, !"__UNIQUE_ID_author240", i1 false, i1 false}
!3 = !{!"../sound/soc/ti/sdma-pcm.c", i32 69, i32 1}
!4 = !{ptr @__UNIQUE_ID_description241, !5, !"__UNIQUE_ID_description241", i1 false, i1 false}
!5 = !{!"../sound/soc/ti/sdma-pcm.c", i32 70, i32 1}
!6 = !{ptr @__UNIQUE_ID_file242, !7, !"__UNIQUE_ID_file242", i1 false, i1 false}
!7 = !{!"../sound/soc/ti/sdma-pcm.c", i32 71, i32 1}
!8 = !{ptr @__UNIQUE_ID_license243, !7, !"__UNIQUE_ID_license243", i1 false, i1 false}
!9 = !{ptr @sdma_dmaengine_pcm_config, !10, !"sdma_dmaengine_pcm_config", i1 false, i1 false}
!10 = !{!"../sound/soc/ti/sdma-pcm.c", i32 30, i32 46}
!11 = !{ptr @sdma_pcm_hardware, !12, !"sdma_pcm_hardware", i1 false, i1 false}
!12 = !{!"../sound/soc/ti/sdma-pcm.c", i32 17, i32 38}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
