; ModuleID = '/llk/IR_all_yes/drivers/media/rc/keymaps/rc-technisat-usb2.c_pt.bc'
source_filename = "../drivers/media/rc/keymaps/rc-technisat-usb2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rc_map_list = type { %struct.list_head, %struct.rc_map }
%struct.list_head = type { ptr, ptr }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rc_map_table = type { i64, i32 }

@technisat_usb2_map = internal global { %struct.rc_map_list, [52 x i8] } { %struct.rc_map_list { %struct.list_head zeroinitializer, %struct.rc_map { ptr @technisat_usb2, i32 33, i32 0, i32 0, i32 2, ptr @.str, %struct.spinlock zeroinitializer } }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_rc_technisat_usb2__210_86_init_rc_map6 = internal global ptr @init_rc_map, section ".initcall6.init", align 4
@__exitcall_exit_rc_map = internal global ptr @exit_rc_map, section ".exitcall.exit", align 4
@__UNIQUE_ID_author211 = internal constant [71 x i8] c"rc_technisat_usb2.author=Patrick Boettcher <pboettcher@kernellabs.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file212 = internal constant [66 x i8] c"rc_technisat_usb2.file=drivers/media/rc/keymaps/rc-technisat-usb2\00", section ".modinfo", align 1
@__UNIQUE_ID_license213 = internal constant [30 x i8] c"rc_technisat_usb2.license=GPL\00", section ".modinfo", align 1
@technisat_usb2 = internal global { [33 x %struct.rc_map_table], [144 x i8] } { [33 x %struct.rc_map_table] [%struct.rc_map_table { i64 2572, i32 116 }, %struct.rc_map_table { i64 2561, i32 513 }, %struct.rc_map_table { i64 2562, i32 514 }, %struct.rc_map_table { i64 2563, i32 515 }, %struct.rc_map_table { i64 2573, i32 113 }, %struct.rc_map_table { i64 2564, i32 516 }, %struct.rc_map_table { i64 2565, i32 517 }, %struct.rc_map_table { i64 2566, i32 518 }, %struct.rc_map_table { i64 2616, i32 393 }, %struct.rc_map_table { i64 2567, i32 519 }, %struct.rc_map_table { i64 2568, i32 520 }, %struct.rc_map_table { i64 2569, i32 521 }, %struct.rc_map_table { i64 2560, i32 512 }, %struct.rc_map_table { i64 2639, i32 358 }, %struct.rc_map_table { i64 2592, i32 402 }, %struct.rc_map_table { i64 2642, i32 139 }, %struct.rc_map_table { i64 2577, i32 115 }, %struct.rc_map_table { i64 2647, i32 352 }, %struct.rc_map_table { i64 2576, i32 114 }, %struct.rc_map_table { i64 2607, i32 365 }, %struct.rc_map_table { i64 2593, i32 403 }, %struct.rc_map_table { i64 2594, i32 173 }, %struct.rc_map_table { i64 2620, i32 388 }, %struct.rc_map_table { i64 2678, i32 28 }, %struct.rc_map_table { i64 2575, i32 138 }, %struct.rc_map_table { i64 2667, i32 398 }, %struct.rc_map_table { i64 2668, i32 399 }, %struct.rc_map_table { i64 2669, i32 400 }, %struct.rc_map_table { i64 2670, i32 401 }, %struct.rc_map_table { i64 2601, i32 128 }, %struct.rc_map_table { i64 2595, i32 368 }, %struct.rc_map_table { i64 2643, i32 377 }, %struct.rc_map_table { i64 2570, i32 362 }], [144 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rc-technisat-usb2\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"technisat_usb2_map\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 67, i32 27 }
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"technisat_usb2\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 31, i32 28 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [48 x i8] c"../drivers/media/rc/keymaps/rc-technisat-usb2.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 72, i32 15 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_file212, ptr @__UNIQUE_ID_license213, ptr @__exitcall_exit_rc_map, ptr @__initcall__kmod_rc_technisat_usb2__210_86_init_rc_map6, ptr @exit_rc_map, ptr @technisat_usb2_map, ptr @technisat_usb2, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2_map to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @technisat_usb2 to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_rc_map() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @rc_map_unregister(ptr noundef nonnull @technisat_usb2_map) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_map_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_rc_map() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rc_map_register(ptr noundef nonnull @technisat_usb2_map) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_map_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__initcall__kmod_rc_technisat_usb2__210_86_init_rc_map6, !1, !"__initcall__kmod_rc_technisat_usb2__210_86_init_rc_map6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/keymaps/rc-technisat-usb2.c", i32 86, i32 1}
!2 = !{ptr @__exitcall_exit_rc_map, !3, !"__exitcall_exit_rc_map", i1 false, i1 false}
!3 = !{!"../drivers/media/rc/keymaps/rc-technisat-usb2.c", i32 87, i32 1}
!4 = !{ptr @__UNIQUE_ID_author211, !5, !"__UNIQUE_ID_author211", i1 false, i1 false}
!5 = !{!"../drivers/media/rc/keymaps/rc-technisat-usb2.c", i32 89, i32 1}
!6 = !{ptr @__UNIQUE_ID_file212, !7, !"__UNIQUE_ID_file212", i1 false, i1 false}
!7 = !{!"../drivers/media/rc/keymaps/rc-technisat-usb2.c", i32 90, i32 1}
!8 = !{ptr @__UNIQUE_ID_license213, !7, !"__UNIQUE_ID_license213", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/rc/keymaps/rc-technisat-usb2.c", i32 72, i32 15}
!11 = !{ptr @technisat_usb2_map, !12, !"technisat_usb2_map", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/keymaps/rc-technisat-usb2.c", i32 67, i32 27}
!13 = !{ptr @technisat_usb2, !14, !"technisat_usb2", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/keymaps/rc-technisat-usb2.c", i32 31, i32 28}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
