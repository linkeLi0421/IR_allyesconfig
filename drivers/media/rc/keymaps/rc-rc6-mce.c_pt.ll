; ModuleID = '/llk/IR_all_yes/drivers/media/rc/keymaps/rc-rc6-mce.c_pt.bc'
source_filename = "../drivers/media/rc/keymaps/rc-rc6-mce.c"
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

@rc6_mce_map = internal global { %struct.rc_map_list, [52 x i8] } { %struct.rc_map_list { %struct.list_head zeroinitializer, %struct.rc_map { ptr @rc6_mce, i32 64, i32 0, i32 0, i32 19, ptr @.str, %struct.spinlock zeroinitializer } }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_rc_rc6_mce__210_112_init_rc_map_rc6_mce6 = internal global ptr @init_rc_map_rc6_mce, section ".initcall6.init", align 4
@__exitcall_exit_rc_map_rc6_mce = internal global ptr @exit_rc_map_rc6_mce, section ".exitcall.exit", align 4
@__UNIQUE_ID_file211 = internal constant [52 x i8] c"rc_rc6_mce.file=drivers/media/rc/keymaps/rc-rc6-mce\00", section ".modinfo", align 1
@__UNIQUE_ID_license212 = internal constant [23 x i8] c"rc_rc6_mce.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author213 = internal constant [50 x i8] c"rc_rc6_mce.author=Jarod Wilson <jarod@redhat.com>\00", section ".modinfo", align 1
@rc6_mce = internal global { [64 x %struct.rc_map_table], [256 x i8] } { [64 x %struct.rc_map_table] [%struct.rc_map_table { i64 2148467712, i32 512 }, %struct.rc_map_table { i64 2148467713, i32 513 }, %struct.rc_map_table { i64 2148467714, i32 514 }, %struct.rc_map_table { i64 2148467715, i32 515 }, %struct.rc_map_table { i64 2148467716, i32 516 }, %struct.rc_map_table { i64 2148467717, i32 517 }, %struct.rc_map_table { i64 2148467718, i32 518 }, %struct.rc_map_table { i64 2148467719, i32 519 }, %struct.rc_map_table { i64 2148467720, i32 520 }, %struct.rc_map_table { i64 2148467721, i32 521 }, %struct.rc_map_table { i64 2148467722, i32 111 }, %struct.rc_map_table { i64 2148467723, i32 28 }, %struct.rc_map_table { i64 2148467724, i32 142 }, %struct.rc_map_table { i64 2148467725, i32 226 }, %struct.rc_map_table { i64 2148467726, i32 113 }, %struct.rc_map_table { i64 2148467727, i32 358 }, %struct.rc_map_table { i64 2148467728, i32 115 }, %struct.rc_map_table { i64 2148467729, i32 114 }, %struct.rc_map_table { i64 2148467730, i32 402 }, %struct.rc_map_table { i64 2148467731, i32 403 }, %struct.rc_map_table { i64 2148467732, i32 208 }, %struct.rc_map_table { i64 2148467733, i32 168 }, %struct.rc_map_table { i64 2148467734, i32 207 }, %struct.rc_map_table { i64 2148467735, i32 167 }, %struct.rc_map_table { i64 2148467736, i32 119 }, %struct.rc_map_table { i64 2148467737, i32 128 }, %struct.rc_map_table { i64 2148467738, i32 407 }, %struct.rc_map_table { i64 2148467739, i32 412 }, %struct.rc_map_table { i64 2148467740, i32 523 }, %struct.rc_map_table { i64 2148467741, i32 522 }, %struct.rc_map_table { i64 2148467742, i32 103 }, %struct.rc_map_table { i64 2148467743, i32 108 }, %struct.rc_map_table { i64 2148467744, i32 105 }, %struct.rc_map_table { i64 2148467745, i32 106 }, %struct.rc_map_table { i64 2148467746, i32 352 }, %struct.rc_map_table { i64 2148467747, i32 174 }, %struct.rc_map_table { i64 2148467748, i32 389 }, %struct.rc_map_table { i64 2148467749, i32 386 }, %struct.rc_map_table { i64 2148467750, i32 365 }, %struct.rc_map_table { i64 2148467751, i32 372 }, %struct.rc_map_table { i64 2148467762, i32 373 }, %struct.rc_map_table { i64 2148467763, i32 425 }, %struct.rc_map_table { i64 2148467764, i32 161 }, %struct.rc_map_table { i64 2148467770, i32 225 }, %struct.rc_map_table { i64 2148467782, i32 377 }, %struct.rc_map_table { i64 2148467783, i32 392 }, %struct.rc_map_table { i64 2148467784, i32 366 }, %struct.rc_map_table { i64 2148467785, i32 212 }, %struct.rc_map_table { i64 2148467786, i32 393 }, %struct.rc_map_table { i64 2148467788, i32 368 }, %struct.rc_map_table { i64 2148467789, i32 369 }, %struct.rc_map_table { i64 2148467790, i32 210 }, %struct.rc_map_table { i64 2148467792, i32 385 }, %struct.rc_map_table { i64 2148467802, i32 370 }, %struct.rc_map_table { i64 2148467803, i32 398 }, %struct.rc_map_table { i64 2148467804, i32 399 }, %struct.rc_map_table { i64 2148467805, i32 400 }, %struct.rc_map_table { i64 2148467806, i32 401 }, %struct.rc_map_table { i64 2148467813, i32 356 }, %struct.rc_map_table { i64 2148467817, i32 430 }, %struct.rc_map_table { i64 2148467822, i32 164 }, %struct.rc_map_table { i64 2148467823, i32 387 }, %struct.rc_map_table { i64 2148467840, i32 224 }, %struct.rc_map_table { i64 2148467841, i32 164 }], [256 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rc-rc6-mce\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"rc6_mce_map\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 93, i32 27 }
@___asan_gen_.4 = private unnamed_addr constant [8 x i8] c"rc6_mce\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 14, i32 28 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [41 x i8] c"../drivers/media/rc/keymaps/rc-rc6-mce.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 98, i32 15 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author213, ptr @__UNIQUE_ID_file211, ptr @__UNIQUE_ID_license212, ptr @__exitcall_exit_rc_map_rc6_mce, ptr @__initcall__kmod_rc_rc6_mce__210_112_init_rc_map_rc6_mce6, ptr @exit_rc_map_rc6_mce, ptr @rc6_mce_map, ptr @rc6_mce, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc6_mce_map to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc6_mce to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_rc_map_rc6_mce() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @rc_map_unregister(ptr noundef nonnull @rc6_mce_map) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_map_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_rc_map_rc6_mce() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rc_map_register(ptr noundef nonnull @rc6_mce_map) #2
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

!0 = !{ptr @__initcall__kmod_rc_rc6_mce__210_112_init_rc_map_rc6_mce6, !1, !"__initcall__kmod_rc_rc6_mce__210_112_init_rc_map_rc6_mce6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/keymaps/rc-rc6-mce.c", i32 112, i32 1}
!2 = !{ptr @__exitcall_exit_rc_map_rc6_mce, !3, !"__exitcall_exit_rc_map_rc6_mce", i1 false, i1 false}
!3 = !{!"../drivers/media/rc/keymaps/rc-rc6-mce.c", i32 113, i32 1}
!4 = !{ptr @__UNIQUE_ID_file211, !5, !"__UNIQUE_ID_file211", i1 false, i1 false}
!5 = !{!"../drivers/media/rc/keymaps/rc-rc6-mce.c", i32 115, i32 1}
!6 = !{ptr @__UNIQUE_ID_license212, !5, !"__UNIQUE_ID_license212", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author213, !8, !"__UNIQUE_ID_author213", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/keymaps/rc-rc6-mce.c", i32 116, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/rc/keymaps/rc-rc6-mce.c", i32 98, i32 15}
!11 = !{ptr @rc6_mce_map, !12, !"rc6_mce_map", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/keymaps/rc-rc6-mce.c", i32 93, i32 27}
!13 = !{ptr @rc6_mce, !14, !"rc6_mce", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/keymaps/rc-rc6-mce.c", i32 14, i32 28}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
