; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/sigmadsp-regmap.c_pt.bc'
source_filename = "../sound/soc/codecs/sigmadsp-regmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+devm_sigmadsp_init_regmap\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_sigmadsp_init_regmap\09\09\09\09"
module asm "\09.long\09__crc_devm_sigmadsp_init_regmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_sigmadsp_init_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_sigmadsp_init_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_devm_sigmadsp_init_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sigmadsp = type { ptr, %struct.list_head, %struct.list_head, %struct.snd_pcm_hw_constraint_list, i32, ptr, ptr, %struct.mutex, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@__kstrtab_devm_sigmadsp_init_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_sigmadsp_init_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_sigmadsp_init_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_sigmadsp_init_regmap to i32), ptr @__kstrtab_devm_sigmadsp_init_regmap, ptr @__kstrtabns_devm_sigmadsp_init_regmap }, section "___ksymtab_gpl+devm_sigmadsp_init_regmap", align 4
@__UNIQUE_ID_author227 = internal constant [68 x i8] c"snd_soc_sigmadsp_regmap.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [68 x i8] c"snd_soc_sigmadsp_regmap.description=SigmaDSP regmap firmware loader\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [70 x i8] c"snd_soc_sigmadsp_regmap.file=sound/soc/codecs/snd-soc-sigmadsp-regmap\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [36 x i8] c"snd_soc_sigmadsp_regmap.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__ksymtab_devm_sigmadsp_init_regmap], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_sigmadsp_init_regmap(ptr noundef %dev, ptr noundef %regmap, ptr noundef %ops, ptr noundef %firmware_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_sigmadsp_init(ptr noundef %dev, ptr noundef %ops, ptr noundef %firmware_name) #2
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %control_data = getelementptr inbounds %struct.sigmadsp, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %control_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %regmap, ptr %control_data, align 4
  %write = getelementptr inbounds %struct.sigmadsp, ptr %call, i32 0, i32 9
  %1 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @sigmadsp_write_regmap, ptr %write, align 4
  %read = getelementptr inbounds %struct.sigmadsp, ptr %call, i32 0, i32 10
  %2 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @sigmadsp_read_regmap, ptr %read, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_sigmadsp_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sigmadsp_write_regmap(ptr noundef %control_data, i32 noundef %addr, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regmap_raw_write(ptr noundef %control_data, i32 noundef %addr, ptr noundef %data, i32 noundef %len) #2
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sigmadsp_read_regmap(ptr noundef %control_data, i32 noundef %addr, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regmap_raw_read(ptr noundef %control_data, i32 noundef %addr, ptr noundef %data, i32 noundef %len) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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

!0 = !{ptr @__ksymtab_devm_sigmadsp_init_regmap, !1, !"__ksymtab_devm_sigmadsp_init_regmap", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/sigmadsp-regmap.c", i32 55, i32 1}
!2 = !{ptr @__UNIQUE_ID_author227, !3, !"__UNIQUE_ID_author227", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/sigmadsp-regmap.c", i32 57, i32 1}
!4 = !{ptr @__UNIQUE_ID_description228, !5, !"__UNIQUE_ID_description228", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/sigmadsp-regmap.c", i32 58, i32 1}
!6 = !{ptr @__UNIQUE_ID_file229, !7, !"__UNIQUE_ID_file229", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/sigmadsp-regmap.c", i32 59, i32 1}
!8 = !{ptr @__UNIQUE_ID_license230, !7, !"__UNIQUE_ID_license230", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
