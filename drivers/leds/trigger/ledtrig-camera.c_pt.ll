; ModuleID = '/llk/IR_all_yes/drivers/leds/trigger/ledtrig-camera.c_pt.bc'
source_filename = "../drivers/leds/trigger/ledtrig-camera.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ledtrig_flash_ctrl\22, \22a\22\09"
module asm "\09.weak\09__crc_ledtrig_flash_ctrl\09\09\09\09"
module asm "\09.long\09__crc_ledtrig_flash_ctrl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ledtrig_flash_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22ledtrig_flash_ctrl\22\09\09\09\09\09"
module asm "__kstrtabns_ledtrig_flash_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ledtrig_torch_ctrl\22, \22a\22\09"
module asm "\09.weak\09__crc_ledtrig_torch_ctrl\09\09\09\09"
module asm "\09.long\09__crc_ledtrig_torch_ctrl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ledtrig_torch_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22ledtrig_torch_ctrl\22\09\09\09\09\09"
module asm "__kstrtabns_ledtrig_torch_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@ledtrig_flash = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_ledtrig_flash_ctrl = external dso_local constant [0 x i8], align 1
@__kstrtabns_ledtrig_flash_ctrl = external dso_local constant [0 x i8], align 1
@__ksymtab_ledtrig_flash_ctrl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ledtrig_flash_ctrl to i32), ptr @__kstrtab_ledtrig_flash_ctrl, ptr @__kstrtabns_ledtrig_flash_ctrl }, section "___ksymtab_gpl+ledtrig_flash_ctrl", align 4
@ledtrig_torch = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_ledtrig_torch_ctrl = external dso_local constant [0 x i8], align 1
@__kstrtabns_ledtrig_torch_ctrl = external dso_local constant [0 x i8], align 1
@__ksymtab_ledtrig_torch_ctrl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ledtrig_torch_ctrl to i32), ptr @__kstrtab_ledtrig_torch_ctrl, ptr @__kstrtabns_ledtrig_torch_ctrl }, section "___ksymtab_gpl+ledtrig_torch_ctrl", align 4
@__initcall__kmod_ledtrig_camera__170_42_ledtrig_camera_init6 = internal global ptr @ledtrig_camera_init, section ".initcall6.init", align 4
@__exitcall_ledtrig_camera_exit = internal global ptr @ledtrig_camera_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [70 x i8] c"ledtrig_camera.description=LED Trigger for Camera Flash/Torch Control\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [31 x i8] c"ledtrig_camera.author=Milo Kim\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [56 x i8] c"ledtrig_camera.file=drivers/leds/trigger/ledtrig-camera\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [30 x i8] c"ledtrig_camera.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flash\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"torch\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [14 x i8] c"ledtrig_flash\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 17, i32 1 }
@___asan_gen_.5 = private unnamed_addr constant [14 x i8] c"ledtrig_torch\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 18, i32 1 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 38, i32 30 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [41 x i8] c"../drivers/leds/trigger/ledtrig-camera.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 39, i32 30 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_ledtrig_camera_exit, ptr @__initcall__kmod_ledtrig_camera__170_42_ledtrig_camera_init6, ptr @__ksymtab_ledtrig_flash_ctrl, ptr @__ksymtab_ledtrig_torch_ctrl, ptr @ledtrig_camera_exit, ptr @ledtrig_flash, ptr @ledtrig_torch, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ledtrig_flash to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ledtrig_torch to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ledtrig_flash_ctrl(i1 noundef zeroext %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %on, i32 255, i32 0
  %0 = load ptr, ptr @ledtrig_flash, align 4
  tail call void @led_trigger_event(ptr noundef %0, i32 noundef %cond) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ledtrig_torch_ctrl(i1 noundef zeroext %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %on, i32 255, i32 0
  %0 = load ptr, ptr @ledtrig_torch, align 4
  tail call void @led_trigger_event(ptr noundef %0, i32 noundef %cond) #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ledtrig_camera_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @led_trigger_register_simple(ptr noundef nonnull @.str, ptr noundef nonnull @ledtrig_flash) #3
  tail call void @led_trigger_register_simple(ptr noundef nonnull @.str.1, ptr noundef nonnull @ledtrig_torch) #3
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ledtrig_camera_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = load ptr, ptr @ledtrig_torch, align 4
  tail call void @led_trigger_unregister_simple(ptr noundef %0) #3
  %1 = load ptr, ptr @ledtrig_flash, align 4
  tail call void @led_trigger_unregister_simple(ptr noundef %1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_unregister_simple(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_register_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__ksymtab_ledtrig_flash_ctrl, !1, !"__ksymtab_ledtrig_flash_ctrl", i1 false, i1 false}
!1 = !{!"../drivers/leds/trigger/ledtrig-camera.c", i32 26, i32 1}
!2 = !{ptr @__ksymtab_ledtrig_torch_ctrl, !3, !"__ksymtab_ledtrig_torch_ctrl", i1 false, i1 false}
!3 = !{!"../drivers/leds/trigger/ledtrig-camera.c", i32 34, i32 1}
!4 = !{ptr @__initcall__kmod_ledtrig_camera__170_42_ledtrig_camera_init6, !5, !"__initcall__kmod_ledtrig_camera__170_42_ledtrig_camera_init6", i1 false, i1 false}
!5 = !{!"../drivers/leds/trigger/ledtrig-camera.c", i32 42, i32 1}
!6 = !{ptr @__exitcall_ledtrig_camera_exit, !7, !"__exitcall_ledtrig_camera_exit", i1 false, i1 false}
!7 = !{!"../drivers/leds/trigger/ledtrig-camera.c", i32 49, i32 1}
!8 = !{ptr @__UNIQUE_ID_description171, !9, !"__UNIQUE_ID_description171", i1 false, i1 false}
!9 = !{!"../drivers/leds/trigger/ledtrig-camera.c", i32 51, i32 1}
!10 = !{ptr @__UNIQUE_ID_author172, !11, !"__UNIQUE_ID_author172", i1 false, i1 false}
!11 = !{!"../drivers/leds/trigger/ledtrig-camera.c", i32 52, i32 1}
!12 = !{ptr @__UNIQUE_ID_file173, !13, !"__UNIQUE_ID_file173", i1 false, i1 false}
!13 = !{!"../drivers/leds/trigger/ledtrig-camera.c", i32 53, i32 1}
!14 = !{ptr @__UNIQUE_ID_license174, !13, !"__UNIQUE_ID_license174", i1 false, i1 false}
!15 = !{ptr @ledtrig_flash, !16, !"ledtrig_flash", i1 false, i1 false}
!16 = !{!"../drivers/leds/trigger/ledtrig-camera.c", i32 17, i32 1}
!17 = !{ptr @ledtrig_torch, !18, !"ledtrig_torch", i1 false, i1 false}
!18 = !{!"../drivers/leds/trigger/ledtrig-camera.c", i32 18, i32 1}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/leds/trigger/ledtrig-camera.c", i32 38, i32 30}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/leds/trigger/ledtrig-camera.c", i32 39, i32 30}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
