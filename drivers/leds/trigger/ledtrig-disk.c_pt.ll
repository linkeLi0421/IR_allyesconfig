; ModuleID = '/llk/IR_all_yes/drivers/leds/trigger/ledtrig-disk.c_pt.bc'
source_filename = "../drivers/leds/trigger/ledtrig-disk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ledtrig_disk_activity\22, \22a\22\09"
module asm "\09.weak\09__crc_ledtrig_disk_activity\09\09\09\09"
module asm "\09.long\09__crc_ledtrig_disk_activity\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ledtrig_disk_activity:\09\09\09\09\09"
module asm "\09.asciz \09\22ledtrig_disk_activity\22\09\09\09\09\09"
module asm "__kstrtabns_ledtrig_disk_activity:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@ledtrig_disk = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ledtrig_ide = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ledtrig_disk_write = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ledtrig_disk_read = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_ledtrig_disk_activity = external dso_local constant [0 x i8], align 1
@__kstrtabns_ledtrig_disk_activity = external dso_local constant [0 x i8], align 1
@__ksymtab_ledtrig_disk_activity = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ledtrig_disk_activity to i32), ptr @__kstrtab_ledtrig_disk_activity, ptr @__kstrtabns_ledtrig_disk_activity }, section "___ksymtab+ledtrig_disk_activity", align 4
@__initcall__kmod_ledtrig_disk__170_47_ledtrig_disk_init6 = internal global ptr @ledtrig_disk_init, section ".initcall6.init", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"disk-activity\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disk-read\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"disk-write\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ide-disk\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [13 x i8] c"ledtrig_disk\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 16, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [12 x i8] c"ledtrig_ide\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 19, i32 1 }
@___asan_gen_.10 = private unnamed_addr constant [19 x i8] c"ledtrig_disk_write\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 18, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"ledtrig_disk_read\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 17, i32 1 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 40, i32 30 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 41, i32 30 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 42, i32 30 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private constant [39 x i8] c"../drivers/leds/trigger/ledtrig-disk.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 43, i32 30 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__initcall__kmod_ledtrig_disk__170_47_ledtrig_disk_init6, ptr @__ksymtab_ledtrig_disk_activity, ptr @ledtrig_disk, ptr @ledtrig_ide, ptr @ledtrig_disk_write, ptr @ledtrig_disk_read, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ledtrig_disk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ledtrig_ide to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ledtrig_disk_write to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ledtrig_disk_read to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ledtrig_disk_activity(i1 noundef zeroext %write) #0 align 64 {
entry:
  %blink_delay = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blink_delay) #4
  %0 = ptrtoint ptr %blink_delay to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 30, ptr %blink_delay, align 4
  %1 = load ptr, ptr @ledtrig_disk, align 4
  call void @led_trigger_blink_oneshot(ptr noundef %1, ptr noundef nonnull %blink_delay, ptr noundef nonnull %blink_delay, i32 noundef 0) #4
  %2 = load ptr, ptr @ledtrig_ide, align 4
  call void @led_trigger_blink_oneshot(ptr noundef %2, ptr noundef nonnull %blink_delay, ptr noundef nonnull %blink_delay, i32 noundef 0) #4
  %ledtrig_disk_write.val = load ptr, ptr @ledtrig_disk_write, align 4
  %ledtrig_disk_read.val = load ptr, ptr @ledtrig_disk_read, align 4
  %3 = select i1 %write, ptr %ledtrig_disk_write.val, ptr %ledtrig_disk_read.val
  call void @led_trigger_blink_oneshot(ptr noundef %3, ptr noundef nonnull %blink_delay, ptr noundef nonnull %blink_delay, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blink_delay) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_blink_oneshot(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ledtrig_disk_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @led_trigger_register_simple(ptr noundef nonnull @.str, ptr noundef nonnull @ledtrig_disk) #4
  tail call void @led_trigger_register_simple(ptr noundef nonnull @.str.1, ptr noundef nonnull @ledtrig_disk_read) #4
  tail call void @led_trigger_register_simple(ptr noundef nonnull @.str.2, ptr noundef nonnull @ledtrig_disk_write) #4
  tail call void @led_trigger_register_simple(ptr noundef nonnull @.str.3, ptr noundef nonnull @ledtrig_ide) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_register_simple(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__ksymtab_ledtrig_disk_activity, !1, !"__ksymtab_ledtrig_disk_activity", i1 false, i1 false}
!1 = !{!"../drivers/leds/trigger/ledtrig-disk.c", i32 36, i32 1}
!2 = !{ptr @__initcall__kmod_ledtrig_disk__170_47_ledtrig_disk_init6, !3, !"__initcall__kmod_ledtrig_disk__170_47_ledtrig_disk_init6", i1 false, i1 false}
!3 = !{!"../drivers/leds/trigger/ledtrig-disk.c", i32 47, i32 1}
!4 = !{ptr @ledtrig_disk, !5, !"ledtrig_disk", i1 false, i1 false}
!5 = !{!"../drivers/leds/trigger/ledtrig-disk.c", i32 16, i32 1}
!6 = !{ptr @ledtrig_disk_read, !7, !"ledtrig_disk_read", i1 false, i1 false}
!7 = !{!"../drivers/leds/trigger/ledtrig-disk.c", i32 17, i32 1}
!8 = !{ptr @ledtrig_disk_write, !9, !"ledtrig_disk_write", i1 false, i1 false}
!9 = !{!"../drivers/leds/trigger/ledtrig-disk.c", i32 18, i32 1}
!10 = !{ptr @ledtrig_ide, !11, !"ledtrig_ide", i1 false, i1 false}
!11 = !{!"../drivers/leds/trigger/ledtrig-disk.c", i32 19, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/trigger/ledtrig-disk.c", i32 40, i32 30}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/trigger/ledtrig-disk.c", i32 41, i32 30}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/trigger/ledtrig-disk.c", i32 42, i32 30}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/leds/trigger/ledtrig-disk.c", i32 43, i32 30}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
