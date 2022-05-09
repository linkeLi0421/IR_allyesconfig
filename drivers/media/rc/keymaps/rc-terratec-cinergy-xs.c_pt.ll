; ModuleID = '/llk/IR_all_yes/drivers/media/rc/keymaps/rc-terratec-cinergy-xs.c_pt.bc'
source_filename = "../drivers/media/rc/keymaps/rc-terratec-cinergy-xs.c"
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

@terratec_cinergy_xs_map = internal global { %struct.rc_map_list, [52 x i8] } { %struct.rc_map_list { %struct.list_head zeroinitializer, %struct.rc_map { ptr @terratec_cinergy_xs, i32 47, i32 0, i32 0, i32 0, ptr @.str, %struct.spinlock zeroinitializer } }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_rc_terratec_cinergy_xs__210_84_init_rc_map_terratec_cinergy_xs6 = internal global ptr @init_rc_map_terratec_cinergy_xs, section ".initcall6.init", align 4
@__exitcall_exit_rc_map_terratec_cinergy_xs = internal global ptr @exit_rc_map_terratec_cinergy_xs, section ".exitcall.exit", align 4
@__UNIQUE_ID_file211 = internal constant [76 x i8] c"rc_terratec_cinergy_xs.file=drivers/media/rc/keymaps/rc-terratec-cinergy-xs\00", section ".modinfo", align 1
@__UNIQUE_ID_license212 = internal constant [35 x i8] c"rc_terratec_cinergy_xs.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author213 = internal constant [52 x i8] c"rc_terratec_cinergy_xs.author=Mauro Carvalho Chehab\00", section ".modinfo", align 1
@terratec_cinergy_xs = internal global { [47 x %struct.rc_map_table], [176 x i8] } { [47 x %struct.rc_map_table] [%struct.rc_map_table { i64 65, i32 102 }, %struct.rc_map_table { i64 1, i32 116 }, %struct.rc_map_table { i64 66, i32 139 }, %struct.rc_map_table { i64 2, i32 513 }, %struct.rc_map_table { i64 3, i32 514 }, %struct.rc_map_table { i64 4, i32 515 }, %struct.rc_map_table { i64 67, i32 370 }, %struct.rc_map_table { i64 5, i32 516 }, %struct.rc_map_table { i64 6, i32 517 }, %struct.rc_map_table { i64 7, i32 518 }, %struct.rc_map_table { i64 68, i32 388 }, %struct.rc_map_table { i64 8, i32 519 }, %struct.rc_map_table { i64 9, i32 520 }, %struct.rc_map_table { i64 10, i32 521 }, %struct.rc_map_table { i64 69, i32 111 }, %struct.rc_map_table { i64 11, i32 386 }, %struct.rc_map_table { i64 12, i32 512 }, %struct.rc_map_table { i64 13, i32 373 }, %struct.rc_map_table { i64 70, i32 377 }, %struct.rc_map_table { i64 71, i32 389 }, %struct.rc_map_table { i64 73, i32 393 }, %struct.rc_map_table { i64 75, i32 390 }, %struct.rc_map_table { i64 16, i32 103 }, %struct.rc_map_table { i64 17, i32 105 }, %struct.rc_map_table { i64 18, i32 352 }, %struct.rc_map_table { i64 19, i32 106 }, %struct.rc_map_table { i64 20, i32 108 }, %struct.rc_map_table { i64 15, i32 365 }, %struct.rc_map_table { i64 22, i32 358 }, %struct.rc_map_table { i64 77, i32 14 }, %struct.rc_map_table { i64 28, i32 115 }, %struct.rc_map_table { i64 76, i32 207 }, %struct.rc_map_table { i64 27, i32 402 }, %struct.rc_map_table { i64 30, i32 114 }, %struct.rc_map_table { i64 29, i32 113 }, %struct.rc_map_table { i64 31, i32 403 }, %struct.rc_map_table { i64 23, i32 398 }, %struct.rc_map_table { i64 24, i32 399 }, %struct.rc_map_table { i64 25, i32 400 }, %struct.rc_map_table { i64 26, i32 401 }, %struct.rc_map_table { i64 88, i32 167 }, %struct.rc_map_table { i64 72, i32 128 }, %struct.rc_map_table { i64 64, i32 119 }, %struct.rc_map_table { i64 84, i32 405 }, %struct.rc_map_table { i64 78, i32 168 }, %struct.rc_map_table { i64 79, i32 208 }, %struct.rc_map_table { i64 92, i32 407 }], [176 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rc-terratec-cinergy-xs\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [24 x i8] c"terratec_cinergy_xs_map\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 65, i32 27 }
@___asan_gen_.4 = private unnamed_addr constant [20 x i8] c"terratec_cinergy_xs\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 15, i32 28 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [53 x i8] c"../drivers/media/rc/keymaps/rc-terratec-cinergy-xs.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 70, i32 15 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author213, ptr @__UNIQUE_ID_file211, ptr @__UNIQUE_ID_license212, ptr @__exitcall_exit_rc_map_terratec_cinergy_xs, ptr @__initcall__kmod_rc_terratec_cinergy_xs__210_84_init_rc_map_terratec_cinergy_xs6, ptr @exit_rc_map_terratec_cinergy_xs, ptr @terratec_cinergy_xs_map, ptr @terratec_cinergy_xs, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @terratec_cinergy_xs_map to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @terratec_cinergy_xs to i32), i32 752, i32 928, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_rc_map_terratec_cinergy_xs() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @rc_map_unregister(ptr noundef nonnull @terratec_cinergy_xs_map) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_map_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_rc_map_terratec_cinergy_xs() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rc_map_register(ptr noundef nonnull @terratec_cinergy_xs_map) #2
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__initcall__kmod_rc_terratec_cinergy_xs__210_84_init_rc_map_terratec_cinergy_xs6, !1, !"__initcall__kmod_rc_terratec_cinergy_xs__210_84_init_rc_map_terratec_cinergy_xs6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/keymaps/rc-terratec-cinergy-xs.c", i32 84, i32 1}
!2 = !{ptr @__exitcall_exit_rc_map_terratec_cinergy_xs, !3, !"__exitcall_exit_rc_map_terratec_cinergy_xs", i1 false, i1 false}
!3 = !{!"../drivers/media/rc/keymaps/rc-terratec-cinergy-xs.c", i32 85, i32 1}
!4 = !{ptr @__UNIQUE_ID_file211, !5, !"__UNIQUE_ID_file211", i1 false, i1 false}
!5 = !{!"../drivers/media/rc/keymaps/rc-terratec-cinergy-xs.c", i32 87, i32 1}
!6 = !{ptr @__UNIQUE_ID_license212, !5, !"__UNIQUE_ID_license212", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author213, !8, !"__UNIQUE_ID_author213", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/keymaps/rc-terratec-cinergy-xs.c", i32 88, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/rc/keymaps/rc-terratec-cinergy-xs.c", i32 70, i32 15}
!11 = !{ptr @terratec_cinergy_xs_map, !12, !"terratec_cinergy_xs_map", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/keymaps/rc-terratec-cinergy-xs.c", i32 65, i32 27}
!13 = !{ptr @terratec_cinergy_xs, !14, !"terratec_cinergy_xs", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/keymaps/rc-terratec-cinergy-xs.c", i32 15, i32 28}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
