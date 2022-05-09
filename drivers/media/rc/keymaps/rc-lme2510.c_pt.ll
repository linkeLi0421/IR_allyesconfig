; ModuleID = '/llk/IR_all_yes/drivers/media/rc/keymaps/rc-lme2510.c_pt.bc'
source_filename = "../drivers/media/rc/keymaps/rc-lme2510.c"
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

@lme2510_map = internal global { %struct.rc_map_list, [52 x i8] } { %struct.rc_map_list { %struct.list_head zeroinitializer, %struct.rc_map { ptr @lme2510_rc, i32 66, i32 0, i32 0, i32 9, ptr @.str, %struct.spinlock zeroinitializer } }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_rc_lme2510__210_102_init_rc_lme2510_map6 = internal global ptr @init_rc_lme2510_map, section ".initcall6.init", align 4
@__exitcall_exit_rc_lme2510_map = internal global ptr @exit_rc_lme2510_map, section ".exitcall.exit", align 4
@__UNIQUE_ID_file211 = internal constant [52 x i8] c"rc_lme2510.file=drivers/media/rc/keymaps/rc-lme2510\00", section ".modinfo", align 1
@__UNIQUE_ID_license212 = internal constant [23 x i8] c"rc_lme2510.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author213 = internal constant [55 x i8] c"rc_lme2510.author=Malcolm Priestley tvboxspy@gmail.com\00", section ".modinfo", align 1
@lme2510_rc = internal global { [66 x %struct.rc_map_table], [256 x i8] } { [66 x %struct.rc_map_table] [%struct.rc_map_table { i64 4010981957, i32 512 }, %struct.rc_map_table { i64 4010975327, i32 513 }, %struct.rc_map_table { i64 4010979152, i32 514 }, %struct.rc_map_table { i64 4010975837, i32 515 }, %struct.rc_map_table { i64 4010982977, i32 516 }, %struct.rc_map_table { i64 4010997002, i32 517 }, %struct.rc_map_table { i64 4010982722, i32 518 }, %struct.rc_map_table { i64 4010981447, i32 519 }, %struct.rc_map_table { i64 4010980937, i32 520 }, %struct.rc_map_table { i64 4010998277, i32 521 }, %struct.rc_map_table { i64 4010982467, i32 116 }, %struct.rc_map_table { i64 4010981702, i32 370 }, %struct.rc_map_table { i64 4010998022, i32 119 }, %struct.rc_map_table { i64 4010998787, i32 439 }, %struct.rc_map_table { i64 4010999042, i32 119 }, %struct.rc_map_table { i64 4010975582, i32 115 }, %struct.rc_map_table { i64 4010976092, i32 114 }, %struct.rc_map_table { i64 4010997257, i32 402 }, %struct.rc_map_table { i64 4010992922, i32 403 }, %struct.rc_map_table { i64 4010991902, i32 207 }, %struct.rc_map_table { i64 4010992667, i32 372 }, %struct.rc_map_table { i64 4010976857, i32 113 }, %struct.rc_map_table { i64 4010976602, i32 377 }, %struct.rc_map_table { i64 4010993432, i32 167 }, %struct.rc_map_table { i64 4010997767, i32 365 }, %struct.rc_map_table { i64 4010999297, i32 128 }, %struct.rc_map_table { i64 4282444309, i32 512 }, %struct.rc_map_table { i64 4282447624, i32 513 }, %struct.rc_map_table { i64 4282447369, i32 514 }, %struct.rc_map_table { i64 4282447114, i32 515 }, %struct.rc_map_table { i64 4282446604, i32 516 }, %struct.rc_map_table { i64 4282446349, i32 517 }, %struct.rc_map_table { i64 4282446094, i32 518 }, %struct.rc_map_table { i64 4282445584, i32 519 }, %struct.rc_map_table { i64 4282445329, i32 520 }, %struct.rc_map_table { i64 4282445074, i32 521 }, %struct.rc_map_table { i64 4282449664, i32 116 }, %struct.rc_map_table { i64 4282448644, i32 439 }, %struct.rc_map_table { i64 4282443034, i32 119 }, %struct.rc_map_table { i64 4282449154, i32 115 }, %struct.rc_map_table { i64 4282448134, i32 114 }, %struct.rc_map_table { i64 4282449409, i32 402 }, %struct.rc_map_table { i64 4282448389, i32 403 }, %struct.rc_map_table { i64 4282444564, i32 372 }, %struct.rc_map_table { i64 4282443544, i32 167 }, %struct.rc_map_table { i64 4282444054, i32 128 }, %struct.rc_map_table { i64 4278248220, i32 512 }, %struct.rc_map_table { i64 4278253575, i32 513 }, %struct.rc_map_table { i64 4278250005, i32 514 }, %struct.rc_map_table { i64 4278253065, i32 515 }, %struct.rc_map_table { i64 4278249750, i32 516 }, %struct.rc_map_table { i64 4278248985, i32 517 }, %struct.rc_map_table { i64 4278252045, i32 518 }, %struct.rc_map_table { i64 4278252300, i32 519 }, %struct.rc_map_table { i64 4278249240, i32 520 }, %struct.rc_map_table { i64 4278231390, i32 521 }, %struct.rc_map_table { i64 4278237765, i32 116 }, %struct.rc_map_table { i64 4278238020, i32 439 }, %struct.rc_map_table { i64 4278236490, i32 119 }, %struct.rc_map_table { i64 4278237255, i32 115 }, %struct.rc_map_table { i64 4278238275, i32 114 }, %struct.rc_map_table { i64 4278237510, i32 402 }, %struct.rc_map_table { i64 4278239040, i32 403 }, %struct.rc_map_table { i64 4278253320, i32 372 }, %struct.rc_map_table { i64 4278238530, i32 167 }, %struct.rc_map_table { i64 4278232410, i32 128 }], [256 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rc-lme2510\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"lme2510_map\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 83, i32 27 }
@___asan_gen_.4 = private unnamed_addr constant [11 x i8] c"lme2510_rc\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 11, i32 28 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [41 x i8] c"../drivers/media/rc/keymaps/rc-lme2510.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 88, i32 15 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author213, ptr @__UNIQUE_ID_file211, ptr @__UNIQUE_ID_license212, ptr @__exitcall_exit_rc_lme2510_map, ptr @__initcall__kmod_rc_lme2510__210_102_init_rc_lme2510_map6, ptr @exit_rc_lme2510_map, ptr @lme2510_map, ptr @lme2510_rc, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lme2510_map to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lme2510_rc to i32), i32 1056, i32 1312, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_rc_lme2510_map() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @rc_map_unregister(ptr noundef nonnull @lme2510_map) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_map_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_rc_lme2510_map() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rc_map_register(ptr noundef nonnull @lme2510_map) #2
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

!0 = !{ptr @__initcall__kmod_rc_lme2510__210_102_init_rc_lme2510_map6, !1, !"__initcall__kmod_rc_lme2510__210_102_init_rc_lme2510_map6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/keymaps/rc-lme2510.c", i32 102, i32 1}
!2 = !{ptr @__exitcall_exit_rc_lme2510_map, !3, !"__exitcall_exit_rc_lme2510_map", i1 false, i1 false}
!3 = !{!"../drivers/media/rc/keymaps/rc-lme2510.c", i32 103, i32 1}
!4 = !{ptr @__UNIQUE_ID_file211, !5, !"__UNIQUE_ID_file211", i1 false, i1 false}
!5 = !{!"../drivers/media/rc/keymaps/rc-lme2510.c", i32 105, i32 1}
!6 = !{ptr @__UNIQUE_ID_license212, !5, !"__UNIQUE_ID_license212", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author213, !8, !"__UNIQUE_ID_author213", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/keymaps/rc-lme2510.c", i32 106, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/rc/keymaps/rc-lme2510.c", i32 88, i32 15}
!11 = !{ptr @lme2510_map, !12, !"lme2510_map", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/keymaps/rc-lme2510.c", i32 83, i32 27}
!13 = !{ptr @lme2510_rc, !14, !"lme2510_rc", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/keymaps/rc-lme2510.c", i32 11, i32 28}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
