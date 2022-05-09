; ModuleID = '/llk/IR_all_yes/drivers/media/rc/keymaps/rc-imon-mce.c_pt.bc'
source_filename = "../drivers/media/rc/keymaps/rc-imon-mce.c"
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

@imon_mce_map = internal global { %struct.rc_map_list, [52 x i8] } { %struct.rc_map_list { %struct.list_head zeroinitializer, %struct.rc_map { ptr @imon_mce, i32 74, i32 0, i32 0, i32 19, ptr @.str, %struct.spinlock zeroinitializer } }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_rc_imon_mce__210_135_init_rc_map_imon_mce6 = internal global ptr @init_rc_map_imon_mce, section ".initcall6.init", align 4
@__exitcall_exit_rc_map_imon_mce = internal global ptr @exit_rc_map_imon_mce, section ".exitcall.exit", align 4
@__UNIQUE_ID_file211 = internal constant [54 x i8] c"rc_imon_mce.file=drivers/media/rc/keymaps/rc-imon-mce\00", section ".modinfo", align 1
@__UNIQUE_ID_license212 = internal constant [24 x i8] c"rc_imon_mce.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author213 = internal constant [51 x i8] c"rc_imon_mce.author=Jarod Wilson <jarod@redhat.com>\00", section ".modinfo", align 1
@imon_mce = internal global { [74 x %struct.rc_map_table], [288 x i8] } { [74 x %struct.rc_map_table] [%struct.rc_map_table { i64 2148529173, i32 168 }, %struct.rc_map_table { i64 2148529172, i32 208 }, %struct.rc_map_table { i64 2148529179, i32 412 }, %struct.rc_map_table { i64 2148529178, i32 407 }, %struct.rc_map_table { i64 2148529174, i32 207 }, %struct.rc_map_table { i64 2148529176, i32 119 }, %struct.rc_map_table { i64 2148529177, i32 128 }, %struct.rc_map_table { i64 2148529175, i32 167 }, %struct.rc_map_table { i64 33554514, i32 103 }, %struct.rc_map_table { i64 33554513, i32 108 }, %struct.rc_map_table { i64 33554512, i32 105 }, %struct.rc_map_table { i64 33554511, i32 106 }, %struct.rc_map_table { i64 2148529182, i32 103 }, %struct.rc_map_table { i64 2148529183, i32 108 }, %struct.rc_map_table { i64 2148529184, i32 105 }, %struct.rc_map_table { i64 2148529185, i32 106 }, %struct.rc_map_table { i64 2148529163, i32 28 }, %struct.rc_map_table { i64 33554472, i32 28 }, %struct.rc_map_table { i64 2148529186, i32 352 }, %struct.rc_map_table { i64 33554474, i32 174 }, %struct.rc_map_table { i64 2148529187, i32 174 }, %struct.rc_map_table { i64 33554473, i32 111 }, %struct.rc_map_table { i64 2148529162, i32 111 }, %struct.rc_map_table { i64 2148529166, i32 113 }, %struct.rc_map_table { i64 2148529168, i32 115 }, %struct.rc_map_table { i64 2148529169, i32 114 }, %struct.rc_map_table { i64 2148529170, i32 402 }, %struct.rc_map_table { i64 2148529171, i32 403 }, %struct.rc_map_table { i64 33554462, i32 513 }, %struct.rc_map_table { i64 33554463, i32 514 }, %struct.rc_map_table { i64 33554464, i32 515 }, %struct.rc_map_table { i64 33554465, i32 516 }, %struct.rc_map_table { i64 33554466, i32 517 }, %struct.rc_map_table { i64 33554467, i32 518 }, %struct.rc_map_table { i64 33554468, i32 519 }, %struct.rc_map_table { i64 33554469, i32 520 }, %struct.rc_map_table { i64 33554470, i32 521 }, %struct.rc_map_table { i64 33554471, i32 512 }, %struct.rc_map_table { i64 2148529153, i32 513 }, %struct.rc_map_table { i64 2148529154, i32 514 }, %struct.rc_map_table { i64 2148529155, i32 515 }, %struct.rc_map_table { i64 2148529156, i32 516 }, %struct.rc_map_table { i64 2148529157, i32 517 }, %struct.rc_map_table { i64 2148529158, i32 518 }, %struct.rc_map_table { i64 2148529159, i32 519 }, %struct.rc_map_table { i64 2148529160, i32 520 }, %struct.rc_map_table { i64 2148529161, i32 521 }, %struct.rc_map_table { i64 2148529152, i32 512 }, %struct.rc_map_table { i64 35651621, i32 522 }, %struct.rc_map_table { i64 35651616, i32 523 }, %struct.rc_map_table { i64 2148529181, i32 522 }, %struct.rc_map_table { i64 2148529180, i32 523 }, %struct.rc_map_table { i64 2148529222, i32 377 }, %struct.rc_map_table { i64 2148529223, i32 392 }, %struct.rc_map_table { i64 2148529224, i32 366 }, %struct.rc_map_table { i64 2148529225, i32 212 }, %struct.rc_map_table { i64 2148529226, i32 393 }, %struct.rc_map_table { i64 2148529188, i32 389 }, %struct.rc_map_table { i64 2148529189, i32 386 }, %struct.rc_map_table { i64 2148529232, i32 385 }, %struct.rc_map_table { i64 2148529228, i32 368 }, %struct.rc_map_table { i64 2148529191, i32 372 }, %struct.rc_map_table { i64 2148529243, i32 398 }, %struct.rc_map_table { i64 2148529244, i32 399 }, %struct.rc_map_table { i64 2148529245, i32 400 }, %struct.rc_map_table { i64 2148529246, i32 401 }, %struct.rc_map_table { i64 2148529254, i32 398 }, %struct.rc_map_table { i64 2148529256, i32 400 }, %struct.rc_map_table { i64 2148529167, i32 358 }, %struct.rc_map_table { i64 2148529190, i32 365 }, %struct.rc_map_table { i64 2148529242, i32 370 }, %struct.rc_map_table { i64 2148529229, i32 369 }, %struct.rc_map_table { i64 2148529164, i32 116 }, %struct.rc_map_table { i64 2148529165, i32 226 }], [288 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rc-imon-mce\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"imon_mce_map\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 115, i32 27 }
@___asan_gen_.4 = private unnamed_addr constant [9 x i8] c"imon_mce\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 12, i32 28 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [42 x i8] c"../drivers/media/rc/keymaps/rc-imon-mce.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 121, i32 15 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author213, ptr @__UNIQUE_ID_file211, ptr @__UNIQUE_ID_license212, ptr @__exitcall_exit_rc_map_imon_mce, ptr @__initcall__kmod_rc_imon_mce__210_135_init_rc_map_imon_mce6, ptr @exit_rc_map_imon_mce, ptr @imon_mce_map, ptr @imon_mce, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_mce_map to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_mce to i32), i32 1184, i32 1472, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_rc_map_imon_mce() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @rc_map_unregister(ptr noundef nonnull @imon_mce_map) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_map_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_rc_map_imon_mce() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rc_map_register(ptr noundef nonnull @imon_mce_map) #2
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

!0 = !{ptr @__initcall__kmod_rc_imon_mce__210_135_init_rc_map_imon_mce6, !1, !"__initcall__kmod_rc_imon_mce__210_135_init_rc_map_imon_mce6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/keymaps/rc-imon-mce.c", i32 135, i32 1}
!2 = !{ptr @__exitcall_exit_rc_map_imon_mce, !3, !"__exitcall_exit_rc_map_imon_mce", i1 false, i1 false}
!3 = !{!"../drivers/media/rc/keymaps/rc-imon-mce.c", i32 136, i32 1}
!4 = !{ptr @__UNIQUE_ID_file211, !5, !"__UNIQUE_ID_file211", i1 false, i1 false}
!5 = !{!"../drivers/media/rc/keymaps/rc-imon-mce.c", i32 138, i32 1}
!6 = !{ptr @__UNIQUE_ID_license212, !5, !"__UNIQUE_ID_license212", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author213, !8, !"__UNIQUE_ID_author213", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/keymaps/rc-imon-mce.c", i32 139, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/rc/keymaps/rc-imon-mce.c", i32 121, i32 15}
!11 = !{ptr @imon_mce_map, !12, !"imon_mce_map", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/keymaps/rc-imon-mce.c", i32 115, i32 27}
!13 = !{ptr @imon_mce, !14, !"imon_mce", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/keymaps/rc-imon-mce.c", i32 12, i32 28}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
