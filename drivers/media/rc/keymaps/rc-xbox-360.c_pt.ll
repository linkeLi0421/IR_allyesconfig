; ModuleID = '/llk/IR_all_yes/drivers/media/rc/keymaps/rc-xbox-360.c_pt.bc'
source_filename = "../drivers/media/rc/keymaps/rc-xbox-360.c"
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

@xbox_360_map = internal global { %struct.rc_map_list, [52 x i8] } { %struct.rc_map_list { %struct.list_head zeroinitializer, %struct.rc_map { ptr @xbox_360, i32 45, i32 0, i32 0, i32 19, ptr @.str, %struct.spinlock zeroinitializer } }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_rc_xbox_360__210_80_init_rc_map6 = internal global ptr @init_rc_map, section ".initcall6.init", align 4
@__exitcall_exit_rc_map = internal global ptr @exit_rc_map, section ".exitcall.exit", align 4
@__UNIQUE_ID_file211 = internal constant [54 x i8] c"rc_xbox_360.file=drivers/media/rc/keymaps/rc-xbox-360\00", section ".modinfo", align 1
@__UNIQUE_ID_license212 = internal constant [24 x i8] c"rc_xbox_360.license=GPL\00", section ".modinfo", align 1
@xbox_360 = internal global { [45 x %struct.rc_map_table], [176 x i8] } { [45 x %struct.rc_map_table] [%struct.rc_map_table { i64 161, i32 -2146470872 }, %struct.rc_map_table { i64 172, i32 -2146470812 }, %struct.rc_map_table { i64 116, i32 -2146470900 }, %struct.rc_map_table { i64 128, i32 -2146470887 }, %struct.rc_map_table { i64 119, i32 -2146470888 }, %struct.rc_map_table { i64 168, i32 -2146470891 }, %struct.rc_map_table { i64 208, i32 -2146470892 }, %struct.rc_map_table { i64 412, i32 -2146470885 }, %struct.rc_map_table { i64 407, i32 -2146470886 }, %struct.rc_map_table { i64 207, i32 -2146470890 }, %struct.rc_map_table { i64 130, i32 -2146470833 }, %struct.rc_map_table { i64 158, i32 -2146470877 }, %struct.rc_map_table { i64 619, i32 -2146470876 }, %struct.rc_map_table { i64 618, i32 -2146470831 }, %struct.rc_map_table { i64 358, i32 -2146470897 }, %struct.rc_map_table { i64 103, i32 -2146470882 }, %struct.rc_map_table { i64 105, i32 -2146470880 }, %struct.rc_map_table { i64 106, i32 -2146470879 }, %struct.rc_map_table { i64 108, i32 -2146470881 }, %struct.rc_map_table { i64 352, i32 -2146470878 }, %struct.rc_map_table { i64 400, i32 -2146470874 }, %struct.rc_map_table { i64 401, i32 -2146470808 }, %struct.rc_map_table { i64 399, i32 -2146470810 }, %struct.rc_map_table { i64 398, i32 -2146470875 }, %struct.rc_map_table { i64 115, i32 -2146470896 }, %struct.rc_map_table { i64 114, i32 -2146470895 }, %struct.rc_map_table { i64 113, i32 -2146470898 }, %struct.rc_map_table { i64 402, i32 -2146470804 }, %struct.rc_map_table { i64 403, i32 -2146470803 }, %struct.rc_map_table { i64 125, i32 -2146470899 }, %struct.rc_map_table { i64 28, i32 -2146470901 }, %struct.rc_map_table { i64 167, i32 -2146470889 }, %struct.rc_map_table { i64 355, i32 -2146470902 }, %struct.rc_map_table { i64 513, i32 -2146470911 }, %struct.rc_map_table { i64 514, i32 -2146470910 }, %struct.rc_map_table { i64 515, i32 -2146470909 }, %struct.rc_map_table { i64 516, i32 -2146470908 }, %struct.rc_map_table { i64 517, i32 -2146470907 }, %struct.rc_map_table { i64 518, i32 -2146470906 }, %struct.rc_map_table { i64 519, i32 -2146470905 }, %struct.rc_map_table { i64 520, i32 -2146470904 }, %struct.rc_map_table { i64 521, i32 -2146470903 }, %struct.rc_map_table { i64 512, i32 -2146470912 }, %struct.rc_map_table { i64 86, i32 -2146470883 }, %struct.rc_map_table { i64 223, i32 -2146470884 }], [176 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rc-xbox-360\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"xbox_360_map\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 61, i32 27 }
@___asan_gen_.4 = private unnamed_addr constant [9 x i8] c"xbox_360\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 12, i32 28 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [42 x i8] c"../drivers/media/rc/keymaps/rc-xbox-360.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 66, i32 15 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_file211, ptr @__UNIQUE_ID_license212, ptr @__exitcall_exit_rc_map, ptr @__initcall__kmod_rc_xbox_360__210_80_init_rc_map6, ptr @exit_rc_map, ptr @xbox_360_map, ptr @xbox_360, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbox_360_map to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xbox_360 to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_rc_map() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @rc_map_unregister(ptr noundef nonnull @xbox_360_map) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_map_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_rc_map() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rc_map_register(ptr noundef nonnull @xbox_360_map) #2
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__initcall__kmod_rc_xbox_360__210_80_init_rc_map6, !1, !"__initcall__kmod_rc_xbox_360__210_80_init_rc_map6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/keymaps/rc-xbox-360.c", i32 80, i32 1}
!2 = !{ptr @__exitcall_exit_rc_map, !3, !"__exitcall_exit_rc_map", i1 false, i1 false}
!3 = !{!"../drivers/media/rc/keymaps/rc-xbox-360.c", i32 81, i32 1}
!4 = !{ptr @__UNIQUE_ID_file211, !5, !"__UNIQUE_ID_file211", i1 false, i1 false}
!5 = !{!"../drivers/media/rc/keymaps/rc-xbox-360.c", i32 83, i32 1}
!6 = !{ptr @__UNIQUE_ID_license212, !5, !"__UNIQUE_ID_license212", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/keymaps/rc-xbox-360.c", i32 66, i32 15}
!9 = !{ptr @xbox_360_map, !10, !"xbox_360_map", i1 false, i1 false}
!10 = !{!"../drivers/media/rc/keymaps/rc-xbox-360.c", i32 61, i32 27}
!11 = !{ptr @xbox_360, !12, !"xbox_360", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/keymaps/rc-xbox-360.c", i32 12, i32 28}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
