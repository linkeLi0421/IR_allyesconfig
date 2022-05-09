; ModuleID = '/llk/IR_all_yes/drivers/leds/trigger/ledtrig-audio.c_pt.bc'
source_filename = "../drivers/leds/trigger/ledtrig-audio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ledtrig_audio_get\22, \22a\22\09"
module asm "\09.weak\09__crc_ledtrig_audio_get\09\09\09\09"
module asm "\09.long\09__crc_ledtrig_audio_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ledtrig_audio_get:\09\09\09\09\09"
module asm "\09.asciz \09\22ledtrig_audio_get\22\09\09\09\09\09"
module asm "__kstrtabns_ledtrig_audio_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ledtrig_audio_set\22, \22a\22\09"
module asm "\09.weak\09__crc_ledtrig_audio_set\09\09\09\09"
module asm "\09.long\09__crc_ledtrig_audio_set\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ledtrig_audio_set:\09\09\09\09\09"
module asm "\09.asciz \09\22ledtrig_audio_set\22\09\09\09\09\09"
module asm "__kstrtabns_ledtrig_audio_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.led_trigger = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }

@audio_state = internal global { [2 x i32], [24 x i8] } zeroinitializer, align 32
@__kstrtab_ledtrig_audio_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_ledtrig_audio_get = external dso_local constant [0 x i8], align 1
@__ksymtab_ledtrig_audio_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ledtrig_audio_get to i32), ptr @__kstrtab_ledtrig_audio_get, ptr @__kstrtabns_ledtrig_audio_get }, section "___ksymtab_gpl+ledtrig_audio_get", align 4
@ledtrig_audio = internal global { [2 x %struct.led_trigger], [32 x i8] } { [2 x %struct.led_trigger] [%struct.led_trigger { ptr @.str, ptr @ledtrig_audio_mute_activate, ptr null, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, %struct.led_trigger { ptr @.str.1, ptr @ledtrig_audio_micmute_activate, ptr null, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }], [32 x i8] zeroinitializer }, align 32
@__kstrtab_ledtrig_audio_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_ledtrig_audio_set = external dso_local constant [0 x i8], align 1
@__ksymtab_ledtrig_audio_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ledtrig_audio_set to i32), ptr @__kstrtab_ledtrig_audio_set, ptr @__kstrtabns_ledtrig_audio_set }, section "___ksymtab_gpl+ledtrig_audio_set", align 4
@__initcall__kmod_ledtrig_audio__170_55_ledtrig_audio_init6 = internal global ptr @ledtrig_audio_init, section ".initcall6.init", align 4
@__exitcall_ledtrig_audio_exit = internal global ptr @ledtrig_audio_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [61 x i8] c"ledtrig_audio.description=LED trigger for audio mute control\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [54 x i8] c"ledtrig_audio.file=drivers/leds/trigger/ledtrig-audio\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [29 x i8] c"ledtrig_audio.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio-mute\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio-micmute\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [12 x i8] c"audio_state\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 11, i32 28 }
@___asan_gen_.5 = private unnamed_addr constant [14 x i8] c"ledtrig_audio\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 25, i32 27 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 27, i32 15 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [40 x i8] c"../drivers/leds/trigger/ledtrig-audio.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 31, i32 15 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__exitcall_ledtrig_audio_exit, ptr @__initcall__kmod_ledtrig_audio__170_55_ledtrig_audio_init6, ptr @__ksymtab_ledtrig_audio_get, ptr @__ksymtab_ledtrig_audio_set, ptr @ledtrig_audio_exit, ptr @audio_state, ptr @ledtrig_audio, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_state to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ledtrig_audio to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ledtrig_audio_get(i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [2 x i32], ptr @audio_state, i32 0, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ledtrig_audio_set(i32 noundef %type, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [2 x i32], ptr @audio_state, i32 0, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %state, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr [2 x %struct.led_trigger], ptr @ledtrig_audio, i32 0, i32 %type
  tail call void @led_trigger_event(ptr noundef %arrayidx1, i32 noundef %state) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_event(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ledtrig_audio_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @led_trigger_register(ptr noundef nonnull @ledtrig_audio) #4
  %call1 = tail call i32 @led_trigger_register(ptr noundef getelementptr inbounds ([2 x %struct.led_trigger], ptr @ledtrig_audio, i32 0, i32 1)) #4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ledtrig_audio_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @led_trigger_unregister(ptr noundef nonnull @ledtrig_audio) #4
  tail call void @led_trigger_unregister(ptr noundef getelementptr inbounds ([2 x %struct.led_trigger], ptr @ledtrig_audio, i32 0, i32 1)) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ledtrig_audio_mute_activate(ptr noundef %led_cdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @audio_state, align 4
  tail call void @led_set_brightness_nosleep(ptr noundef %led_cdev, i32 noundef %0) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ledtrig_audio_micmute_activate(ptr noundef %led_cdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @audio_state, i32 0, i32 1), align 4
  tail call void @led_set_brightness_nosleep(ptr noundef %led_cdev, i32 noundef %0) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_set_brightness_nosleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_trigger_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__ksymtab_ledtrig_audio_get, !1, !"__ksymtab_ledtrig_audio_get", i1 false, i1 false}
!1 = !{!"../drivers/leds/trigger/ledtrig-audio.c", i32 40, i32 1}
!2 = !{ptr @__ksymtab_ledtrig_audio_set, !3, !"__ksymtab_ledtrig_audio_set", i1 false, i1 false}
!3 = !{!"../drivers/leds/trigger/ledtrig-audio.c", i32 47, i32 1}
!4 = !{ptr @__initcall__kmod_ledtrig_audio__170_55_ledtrig_audio_init6, !5, !"__initcall__kmod_ledtrig_audio__170_55_ledtrig_audio_init6", i1 false, i1 false}
!5 = !{!"../drivers/leds/trigger/ledtrig-audio.c", i32 55, i32 1}
!6 = !{ptr @__exitcall_ledtrig_audio_exit, !7, !"__exitcall_ledtrig_audio_exit", i1 false, i1 false}
!7 = !{!"../drivers/leds/trigger/ledtrig-audio.c", i32 62, i32 1}
!8 = !{ptr @__UNIQUE_ID_description171, !9, !"__UNIQUE_ID_description171", i1 false, i1 false}
!9 = !{!"../drivers/leds/trigger/ledtrig-audio.c", i32 64, i32 1}
!10 = !{ptr @__UNIQUE_ID_file172, !11, !"__UNIQUE_ID_file172", i1 false, i1 false}
!11 = !{!"../drivers/leds/trigger/ledtrig-audio.c", i32 65, i32 1}
!12 = !{ptr @__UNIQUE_ID_license173, !11, !"__UNIQUE_ID_license173", i1 false, i1 false}
!13 = !{ptr @audio_state, !14, !"audio_state", i1 false, i1 false}
!14 = !{!"../drivers/leds/trigger/ledtrig-audio.c", i32 11, i32 28}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/leds/trigger/ledtrig-audio.c", i32 27, i32 15}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/leds/trigger/ledtrig-audio.c", i32 31, i32 15}
!19 = !{ptr @ledtrig_audio, !20, !"ledtrig_audio", i1 false, i1 false}
!20 = !{!"../drivers/leds/trigger/ledtrig-audio.c", i32 25, i32 27}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
