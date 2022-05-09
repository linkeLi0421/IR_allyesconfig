; ModuleID = '/llk/IR_all_yes/sound/soc/soc-devres.c_pt.bc'
source_filename = "../sound/soc/soc-devres.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+devm_snd_soc_register_dai\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_snd_soc_register_dai\09\09\09\09"
module asm "\09.long\09__crc_devm_snd_soc_register_dai\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_snd_soc_register_dai:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_snd_soc_register_dai\22\09\09\09\09\09"
module asm "__kstrtabns_devm_snd_soc_register_dai:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_snd_soc_register_component\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_snd_soc_register_component\09\09\09\09"
module asm "\09.long\09__crc_devm_snd_soc_register_component\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_snd_soc_register_component:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_snd_soc_register_component\22\09\09\09\09\09"
module asm "__kstrtabns_devm_snd_soc_register_component:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_snd_soc_register_card\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_snd_soc_register_card\09\09\09\09"
module asm "\09.long\09__crc_devm_snd_soc_register_card\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_snd_soc_register_card:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_snd_soc_register_card\22\09\09\09\09\09"
module asm "__kstrtabns_devm_snd_soc_register_card:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_snd_dmaengine_pcm_register\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_snd_dmaengine_pcm_register\09\09\09\09"
module asm "\09.long\09__crc_devm_snd_dmaengine_pcm_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_snd_dmaengine_pcm_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_snd_dmaengine_pcm_register\22\09\09\09\09\09"
module asm "__kstrtabns_devm_snd_dmaengine_pcm_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"devm_dai_release\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_devm_snd_soc_register_dai = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_snd_soc_register_dai = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_snd_soc_register_dai = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_snd_soc_register_dai to i32), ptr @__kstrtab_devm_snd_soc_register_dai, ptr @__kstrtabns_devm_snd_soc_register_dai }, section "___ksymtab_gpl+devm_snd_soc_register_dai", align 4
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"devm_component_release\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_devm_snd_soc_register_component = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_snd_soc_register_component = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_snd_soc_register_component = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_snd_soc_register_component to i32), ptr @__kstrtab_devm_snd_soc_register_component, ptr @__kstrtabns_devm_snd_soc_register_component }, section "___ksymtab_gpl+devm_snd_soc_register_component", align 4
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"devm_card_release\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_devm_snd_soc_register_card = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_snd_soc_register_card = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_snd_soc_register_card = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_snd_soc_register_card to i32), ptr @__kstrtab_devm_snd_soc_register_card, ptr @__kstrtabns_devm_snd_soc_register_card }, section "___ksymtab_gpl+devm_snd_soc_register_card", align 4
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"devm_dmaengine_pcm_release\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_devm_snd_dmaengine_pcm_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_snd_dmaengine_pcm_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_snd_dmaengine_pcm_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_snd_dmaengine_pcm_register to i32), ptr @__kstrtab_devm_snd_dmaengine_pcm_register, ptr @__kstrtabns_devm_snd_dmaengine_pcm_register }, section "___ksymtab_gpl+devm_snd_dmaengine_pcm_register", align 4
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 33, i32 8 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 73, i32 8 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 107, i32 8 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [26 x i8] c"../sound/soc/soc-devres.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 145, i32 8 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_devm_snd_dmaengine_pcm_register, ptr @__ksymtab_devm_snd_soc_register_card, ptr @__ksymtab_devm_snd_soc_register_component, ptr @__ksymtab_devm_snd_soc_register_dai, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_snd_soc_register_dai(ptr noundef %dev, ptr noundef %component, ptr noundef %dai_drv, i1 noundef zeroext %legacy_dai_naming) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_dai_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #2
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @snd_soc_register_dai(ptr noundef %component, ptr noundef %dai_drv, i1 noundef zeroext %legacy_dai_naming) #2
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %call, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call) #2
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @devres_free(ptr noundef nonnull %call) #2
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.else ], [ %call2, %if.then4 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_dai_release(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  tail call void @snd_soc_unregister_dai(ptr noundef %1) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_register_dai(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef %cmpnt_drv, ptr noundef %dai_drv, i32 noundef %num_dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_component_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.1) #2
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @snd_soc_register_component(ptr noundef %dev, ptr noundef %cmpnt_drv, ptr noundef %dai_drv, i32 noundef %num_dai) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %cmpnt_drv, ptr %call, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call) #2
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @devres_free(ptr noundef nonnull %call) #2
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.else ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_component_release(ptr noundef %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  tail call void @snd_soc_unregister_component_by_driver(ptr noundef %dev, ptr noundef %1) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_snd_soc_register_card(ptr noundef %dev, ptr noundef %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_card_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.2) #2
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @snd_soc_register_card(ptr noundef %card) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %card, ptr %call, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call) #2
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @devres_free(ptr noundef nonnull %call) #2
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.else ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_card_release(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %call = tail call i32 @snd_soc_unregister_card(ptr noundef %1) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_register_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev, ptr noundef %config, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_dmaengine_pcm_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.3) #2
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @snd_dmaengine_pcm_register(ptr noundef %dev, ptr noundef %config, i32 noundef %flags) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call) #2
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @devres_free(ptr noundef nonnull %call) #2
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.else ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_dmaengine_pcm_release(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  tail call void @snd_dmaengine_pcm_unregister(ptr noundef %1) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_unregister_dai(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_unregister_component_by_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_unregister_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dmaengine_pcm_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/soc-devres.c", i32 33, i32 8}
!2 = !{ptr @__ksymtab_devm_snd_soc_register_dai, !3, !"__ksymtab_devm_snd_soc_register_dai", i1 false, i1 false}
!3 = !{!"../sound/soc/soc-devres.c", i32 47, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/soc-devres.c", i32 73, i32 8}
!6 = !{ptr @__ksymtab_devm_snd_soc_register_component, !7, !"__ksymtab_devm_snd_soc_register_component", i1 false, i1 false}
!7 = !{!"../sound/soc/soc-devres.c", i32 87, i32 1}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/soc-devres.c", i32 107, i32 8}
!10 = !{ptr @__ksymtab_devm_snd_soc_register_card, !11, !"__ksymtab_devm_snd_soc_register_card", i1 false, i1 false}
!11 = !{!"../sound/soc/soc-devres.c", i32 121, i32 1}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/soc-devres.c", i32 145, i32 8}
!14 = !{ptr @__ksymtab_devm_snd_dmaengine_pcm_register, !15, !"__ksymtab_devm_snd_dmaengine_pcm_register", i1 false, i1 false}
!15 = !{!"../sound/soc/soc-devres.c", i32 159, i32 1}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
