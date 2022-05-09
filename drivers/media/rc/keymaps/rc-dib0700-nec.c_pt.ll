; ModuleID = '/llk/IR_all_yes/drivers/media/rc/keymaps/rc-dib0700-nec.c_pt.bc'
source_filename = "../drivers/media/rc/keymaps/rc-dib0700-nec.c"
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

@dib0700_nec_map = internal global { %struct.rc_map_list, [52 x i8] } { %struct.rc_map_list { %struct.list_head zeroinitializer, %struct.rc_map { ptr @dib0700_nec_table, i32 70, i32 0, i32 0, i32 9, ptr @.str, %struct.spinlock zeroinitializer } }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_rc_dib0700_nec__210_116_init_rc_map6 = internal global ptr @init_rc_map, section ".initcall6.init", align 4
@__exitcall_exit_rc_map = internal global ptr @exit_rc_map, section ".exitcall.exit", align 4
@__UNIQUE_ID_file211 = internal constant [60 x i8] c"rc_dib0700_nec.file=drivers/media/rc/keymaps/rc-dib0700-nec\00", section ".modinfo", align 1
@__UNIQUE_ID_license212 = internal constant [27 x i8] c"rc_dib0700_nec.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author213 = internal constant [44 x i8] c"rc_dib0700_nec.author=Mauro Carvalho Chehab\00", section ".modinfo", align 1
@dib0700_nec_table = internal global { [70 x %struct.rc_map_table], [256 x i8] } { [70 x %struct.rc_map_table] [%struct.rc_map_table { i64 8809235, i32 113 }, %struct.rc_map_table { i64 8809234, i32 116 }, %struct.rc_map_table { i64 8809217, i32 513 }, %struct.rc_map_table { i64 8809218, i32 514 }, %struct.rc_map_table { i64 8809219, i32 515 }, %struct.rc_map_table { i64 8809220, i32 516 }, %struct.rc_map_table { i64 8809221, i32 517 }, %struct.rc_map_table { i64 8809222, i32 518 }, %struct.rc_map_table { i64 8809223, i32 519 }, %struct.rc_map_table { i64 8809224, i32 520 }, %struct.rc_map_table { i64 8809225, i32 521 }, %struct.rc_map_table { i64 8809216, i32 512 }, %struct.rc_map_table { i64 8809229, i32 402 }, %struct.rc_map_table { i64 8809241, i32 403 }, %struct.rc_map_table { i64 8809232, i32 115 }, %struct.rc_map_table { i64 8809228, i32 114 }, %struct.rc_map_table { i64 8809226, i32 212 }, %struct.rc_map_table { i64 8809227, i32 372 }, %struct.rc_map_table { i64 8809243, i32 14 }, %struct.rc_map_table { i64 8809237, i32 28 }, %struct.rc_map_table { i64 8809245, i32 103 }, %struct.rc_map_table { i64 8809246, i32 108 }, %struct.rc_map_table { i64 8809230, i32 105 }, %struct.rc_map_table { i64 8809231, i32 106 }, %struct.rc_map_table { i64 8809240, i32 167 }, %struct.rc_map_table { i64 8809242, i32 128 }, %struct.rc_map_table { i64 31232, i32 139 }, %struct.rc_map_table { i64 31233, i32 167 }, %struct.rc_map_table { i64 31234, i32 207 }, %struct.rc_map_table { i64 31235, i32 128 }, %struct.rc_map_table { i64 31248, i32 402 }, %struct.rc_map_table { i64 31249, i32 403 }, %struct.rc_map_table { i64 31250, i32 115 }, %struct.rc_map_table { i64 31251, i32 114 }, %struct.rc_map_table { i64 31296, i32 116 }, %struct.rc_map_table { i64 31297, i32 113 }, %struct.rc_map_table { i64 17665, i32 116 }, %struct.rc_map_table { i64 17666, i32 113 }, %struct.rc_map_table { i64 17667, i32 513 }, %struct.rc_map_table { i64 17668, i32 514 }, %struct.rc_map_table { i64 17669, i32 515 }, %struct.rc_map_table { i64 17670, i32 516 }, %struct.rc_map_table { i64 17671, i32 517 }, %struct.rc_map_table { i64 17672, i32 518 }, %struct.rc_map_table { i64 17673, i32 519 }, %struct.rc_map_table { i64 17674, i32 520 }, %struct.rc_map_table { i64 17675, i32 521 }, %struct.rc_map_table { i64 17676, i32 405 }, %struct.rc_map_table { i64 17677, i32 512 }, %struct.rc_map_table { i64 17678, i32 28 }, %struct.rc_map_table { i64 17679, i32 398 }, %struct.rc_map_table { i64 17680, i32 402 }, %struct.rc_map_table { i64 17681, i32 399 }, %struct.rc_map_table { i64 17682, i32 114 }, %struct.rc_map_table { i64 17683, i32 352 }, %struct.rc_map_table { i64 17684, i32 115 }, %struct.rc_map_table { i64 17685, i32 400 }, %struct.rc_map_table { i64 17686, i32 403 }, %struct.rc_map_table { i64 17687, i32 401 }, %struct.rc_map_table { i64 17688, i32 105 }, %struct.rc_map_table { i64 17689, i32 164 }, %struct.rc_map_table { i64 17690, i32 106 }, %struct.rc_map_table { i64 17691, i32 168 }, %struct.rc_map_table { i64 17692, i32 38 }, %struct.rc_map_table { i64 17693, i32 208 }, %struct.rc_map_table { i64 17694, i32 128 }, %struct.rc_map_table { i64 17695, i32 139 }, %struct.rc_map_table { i64 17728, i32 167 }, %struct.rc_map_table { i64 17729, i32 375 }, %struct.rc_map_table { i64 17730, i32 353 }], [256 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rc-dib0700-nec\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"dib0700_nec_map\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 97, i32 27 }
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"dib0700_nec_table\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 16, i32 28 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [45 x i8] c"../drivers/media/rc/keymaps/rc-dib0700-nec.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 102, i32 15 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author213, ptr @__UNIQUE_ID_file211, ptr @__UNIQUE_ID_license212, ptr @__exitcall_exit_rc_map, ptr @__initcall__kmod_rc_dib0700_nec__210_116_init_rc_map6, ptr @exit_rc_map, ptr @dib0700_nec_map, ptr @dib0700_nec_table, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_nec_map to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0700_nec_table to i32), i32 1120, i32 1376, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_rc_map() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @rc_map_unregister(ptr noundef nonnull @dib0700_nec_map) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_map_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_rc_map() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rc_map_register(ptr noundef nonnull @dib0700_nec_map) #2
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

!0 = !{ptr @__initcall__kmod_rc_dib0700_nec__210_116_init_rc_map6, !1, !"__initcall__kmod_rc_dib0700_nec__210_116_init_rc_map6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/keymaps/rc-dib0700-nec.c", i32 116, i32 1}
!2 = !{ptr @__exitcall_exit_rc_map, !3, !"__exitcall_exit_rc_map", i1 false, i1 false}
!3 = !{!"../drivers/media/rc/keymaps/rc-dib0700-nec.c", i32 117, i32 1}
!4 = !{ptr @__UNIQUE_ID_file211, !5, !"__UNIQUE_ID_file211", i1 false, i1 false}
!5 = !{!"../drivers/media/rc/keymaps/rc-dib0700-nec.c", i32 119, i32 1}
!6 = !{ptr @__UNIQUE_ID_license212, !5, !"__UNIQUE_ID_license212", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author213, !8, !"__UNIQUE_ID_author213", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/keymaps/rc-dib0700-nec.c", i32 120, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/rc/keymaps/rc-dib0700-nec.c", i32 102, i32 15}
!11 = !{ptr @dib0700_nec_map, !12, !"dib0700_nec_map", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/keymaps/rc-dib0700-nec.c", i32 97, i32 27}
!13 = !{ptr @dib0700_nec_table, !14, !"dib0700_nec_table", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/keymaps/rc-dib0700-nec.c", i32 16, i32 28}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
