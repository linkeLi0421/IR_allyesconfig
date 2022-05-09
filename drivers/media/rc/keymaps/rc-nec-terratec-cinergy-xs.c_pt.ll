; ModuleID = '/llk/IR_all_yes/drivers/media/rc/keymaps/rc-nec-terratec-cinergy-xs.c_pt.bc'
source_filename = "../drivers/media/rc/keymaps/rc-nec-terratec-cinergy-xs.c"
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

@nec_terratec_cinergy_xs_map = internal global { %struct.rc_map_list, [52 x i8] } { %struct.rc_map_list { %struct.list_head zeroinitializer, %struct.rc_map { ptr @nec_terratec_cinergy_xs, i32 85, i32 0, i32 0, i32 9, ptr @.str, %struct.spinlock zeroinitializer } }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_rc_nec_terratec_cinergy_xs__210_149_init_rc_map_nec_terratec_cinergy_xs6 = internal global ptr @init_rc_map_nec_terratec_cinergy_xs, section ".initcall6.init", align 4
@__exitcall_exit_rc_map_nec_terratec_cinergy_xs = internal global ptr @exit_rc_map_nec_terratec_cinergy_xs, section ".exitcall.exit", align 4
@__UNIQUE_ID_file211 = internal constant [84 x i8] c"rc_nec_terratec_cinergy_xs.file=drivers/media/rc/keymaps/rc-nec-terratec-cinergy-xs\00", section ".modinfo", align 1
@__UNIQUE_ID_license212 = internal constant [39 x i8] c"rc_nec_terratec_cinergy_xs.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author213 = internal constant [56 x i8] c"rc_nec_terratec_cinergy_xs.author=Mauro Carvalho Chehab\00", section ".modinfo", align 1
@nec_terratec_cinergy_xs = internal global { [85 x %struct.rc_map_table], [336 x i8] } { [85 x %struct.rc_map_table] [%struct.rc_map_table { i64 5185, i32 102 }, %struct.rc_map_table { i64 5121, i32 356 }, %struct.rc_map_table { i64 5186, i32 139 }, %struct.rc_map_table { i64 5187, i32 370 }, %struct.rc_map_table { i64 5188, i32 388 }, %struct.rc_map_table { i64 5189, i32 111 }, %struct.rc_map_table { i64 5122, i32 513 }, %struct.rc_map_table { i64 5123, i32 514 }, %struct.rc_map_table { i64 5124, i32 515 }, %struct.rc_map_table { i64 5125, i32 516 }, %struct.rc_map_table { i64 5126, i32 517 }, %struct.rc_map_table { i64 5127, i32 518 }, %struct.rc_map_table { i64 5128, i32 519 }, %struct.rc_map_table { i64 5129, i32 520 }, %struct.rc_map_table { i64 5130, i32 521 }, %struct.rc_map_table { i64 5132, i32 512 }, %struct.rc_map_table { i64 5131, i32 386 }, %struct.rc_map_table { i64 5133, i32 373 }, %struct.rc_map_table { i64 5190, i32 377 }, %struct.rc_map_table { i64 5191, i32 389 }, %struct.rc_map_table { i64 5193, i32 393 }, %struct.rc_map_table { i64 5194, i32 385 }, %struct.rc_map_table { i64 5195, i32 212 }, %struct.rc_map_table { i64 5136, i32 103 }, %struct.rc_map_table { i64 5137, i32 105 }, %struct.rc_map_table { i64 5138, i32 352 }, %struct.rc_map_table { i64 5139, i32 106 }, %struct.rc_map_table { i64 5140, i32 108 }, %struct.rc_map_table { i64 5135, i32 365 }, %struct.rc_map_table { i64 5142, i32 358 }, %struct.rc_map_table { i64 5197, i32 14 }, %struct.rc_map_table { i64 5148, i32 115 }, %struct.rc_map_table { i64 5150, i32 114 }, %struct.rc_map_table { i64 5196, i32 207 }, %struct.rc_map_table { i64 5149, i32 113 }, %struct.rc_map_table { i64 5147, i32 402 }, %struct.rc_map_table { i64 5151, i32 403 }, %struct.rc_map_table { i64 5143, i32 398 }, %struct.rc_map_table { i64 5144, i32 399 }, %struct.rc_map_table { i64 5145, i32 400 }, %struct.rc_map_table { i64 5146, i32 401 }, %struct.rc_map_table { i64 5208, i32 167 }, %struct.rc_map_table { i64 5192, i32 128 }, %struct.rc_map_table { i64 5184, i32 119 }, %struct.rc_map_table { i64 5204, i32 405 }, %struct.rc_map_table { i64 5198, i32 168 }, %struct.rc_map_table { i64 5199, i32 208 }, %struct.rc_map_table { i64 5212, i32 407 }, %struct.rc_map_table { i64 322305, i32 356 }, %struct.rc_map_table { i64 322306, i32 513 }, %struct.rc_map_table { i64 322307, i32 514 }, %struct.rc_map_table { i64 322308, i32 515 }, %struct.rc_map_table { i64 322309, i32 516 }, %struct.rc_map_table { i64 322310, i32 517 }, %struct.rc_map_table { i64 322311, i32 518 }, %struct.rc_map_table { i64 322312, i32 519 }, %struct.rc_map_table { i64 322313, i32 520 }, %struct.rc_map_table { i64 322314, i32 521 }, %struct.rc_map_table { i64 322316, i32 512 }, %struct.rc_map_table { i64 322315, i32 388 }, %struct.rc_map_table { i64 322317, i32 173 }, %struct.rc_map_table { i64 322318, i32 102 }, %struct.rc_map_table { i64 322319, i32 365 }, %struct.rc_map_table { i64 322320, i32 103 }, %struct.rc_map_table { i64 322321, i32 105 }, %struct.rc_map_table { i64 322322, i32 352 }, %struct.rc_map_table { i64 322323, i32 106 }, %struct.rc_map_table { i64 322324, i32 108 }, %struct.rc_map_table { i64 322325, i32 14 }, %struct.rc_map_table { i64 322326, i32 358 }, %struct.rc_map_table { i64 322327, i32 398 }, %struct.rc_map_table { i64 322328, i32 399 }, %struct.rc_map_table { i64 322329, i32 400 }, %struct.rc_map_table { i64 322330, i32 401 }, %struct.rc_map_table { i64 322332, i32 115 }, %struct.rc_map_table { i64 322334, i32 114 }, %struct.rc_map_table { i64 322333, i32 113 }, %struct.rc_map_table { i64 322331, i32 402 }, %struct.rc_map_table { i64 322335, i32 403 }, %struct.rc_map_table { i64 322368, i32 167 }, %struct.rc_map_table { i64 322380, i32 207 }, %struct.rc_map_table { i64 322392, i32 119 }, %struct.rc_map_table { i64 322388, i32 168 }, %struct.rc_map_table { i64 322376, i32 128 }, %struct.rc_map_table { i64 322396, i32 407 }], [336 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rc-nec-terratec-cinergy-xs\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [28 x i8] c"nec_terratec_cinergy_xs_map\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 130, i32 27 }
@___asan_gen_.4 = private unnamed_addr constant [24 x i8] c"nec_terratec_cinergy_xs\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 15, i32 28 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [57 x i8] c"../drivers/media/rc/keymaps/rc-nec-terratec-cinergy-xs.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 135, i32 15 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author213, ptr @__UNIQUE_ID_file211, ptr @__UNIQUE_ID_license212, ptr @__exitcall_exit_rc_map_nec_terratec_cinergy_xs, ptr @__initcall__kmod_rc_nec_terratec_cinergy_xs__210_149_init_rc_map_nec_terratec_cinergy_xs6, ptr @exit_rc_map_nec_terratec_cinergy_xs, ptr @nec_terratec_cinergy_xs_map, ptr @nec_terratec_cinergy_xs, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nec_terratec_cinergy_xs_map to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nec_terratec_cinergy_xs to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_rc_map_nec_terratec_cinergy_xs() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @rc_map_unregister(ptr noundef nonnull @nec_terratec_cinergy_xs_map) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_map_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_rc_map_nec_terratec_cinergy_xs() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rc_map_register(ptr noundef nonnull @nec_terratec_cinergy_xs_map) #2
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

!0 = !{ptr @__initcall__kmod_rc_nec_terratec_cinergy_xs__210_149_init_rc_map_nec_terratec_cinergy_xs6, !1, !"__initcall__kmod_rc_nec_terratec_cinergy_xs__210_149_init_rc_map_nec_terratec_cinergy_xs6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/keymaps/rc-nec-terratec-cinergy-xs.c", i32 149, i32 1}
!2 = !{ptr @__exitcall_exit_rc_map_nec_terratec_cinergy_xs, !3, !"__exitcall_exit_rc_map_nec_terratec_cinergy_xs", i1 false, i1 false}
!3 = !{!"../drivers/media/rc/keymaps/rc-nec-terratec-cinergy-xs.c", i32 150, i32 1}
!4 = !{ptr @__UNIQUE_ID_file211, !5, !"__UNIQUE_ID_file211", i1 false, i1 false}
!5 = !{!"../drivers/media/rc/keymaps/rc-nec-terratec-cinergy-xs.c", i32 152, i32 1}
!6 = !{ptr @__UNIQUE_ID_license212, !5, !"__UNIQUE_ID_license212", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author213, !8, !"__UNIQUE_ID_author213", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/keymaps/rc-nec-terratec-cinergy-xs.c", i32 153, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/rc/keymaps/rc-nec-terratec-cinergy-xs.c", i32 135, i32 15}
!11 = !{ptr @nec_terratec_cinergy_xs_map, !12, !"nec_terratec_cinergy_xs_map", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/keymaps/rc-nec-terratec-cinergy-xs.c", i32 130, i32 27}
!13 = !{ptr @nec_terratec_cinergy_xs, !14, !"nec_terratec_cinergy_xs", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/keymaps/rc-nec-terratec-cinergy-xs.c", i32 15, i32 28}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
