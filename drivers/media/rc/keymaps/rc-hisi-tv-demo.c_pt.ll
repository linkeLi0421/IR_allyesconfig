; ModuleID = '/llk/IR_all_yes/drivers/media/rc/keymaps/rc-hisi-tv-demo.c_pt.bc'
source_filename = "../drivers/media/rc/keymaps/rc-hisi-tv-demo.c"
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

@hisi_tv_demo_map = internal global { %struct.rc_map_list, [52 x i8] } { %struct.rc_map_list { %struct.list_head zeroinitializer, %struct.rc_map { ptr @hisi_tv_demo_keymap, i32 41, i32 0, i32 0, i32 9, ptr @.str, %struct.spinlock zeroinitializer } }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_rc_hisi_tv_demo__210_74_init_rc_map_hisi_tv_demo6 = internal global ptr @init_rc_map_hisi_tv_demo, section ".initcall6.init", align 4
@__exitcall_exit_rc_map_hisi_tv_demo = internal global ptr @exit_rc_map_hisi_tv_demo, section ".exitcall.exit", align 4
@__UNIQUE_ID_file211 = internal constant [62 x i8] c"rc_hisi_tv_demo.file=drivers/media/rc/keymaps/rc-hisi-tv-demo\00", section ".modinfo", align 1
@__UNIQUE_ID_license212 = internal constant [31 x i8] c"rc_hisi_tv_demo.license=GPL v2\00", section ".modinfo", align 1
@hisi_tv_demo_keymap = internal global { [41 x %struct.rc_map_table], [176 x i8] } { [41 x %struct.rc_map_table] [%struct.rc_map_table { i64 146, i32 513 }, %struct.rc_map_table { i64 147, i32 514 }, %struct.rc_map_table { i64 204, i32 515 }, %struct.rc_map_table { i64 159, i32 516 }, %struct.rc_map_table { i64 142, i32 517 }, %struct.rc_map_table { i64 143, i32 518 }, %struct.rc_map_table { i64 200, i32 519 }, %struct.rc_map_table { i64 148, i32 520 }, %struct.rc_map_table { i64 138, i32 521 }, %struct.rc_map_table { i64 139, i32 512 }, %struct.rc_map_table { i64 206, i32 28 }, %struct.rc_map_table { i64 202, i32 103 }, %struct.rc_map_table { i64 153, i32 105 }, %struct.rc_map_table { i64 132, i32 104 }, %struct.rc_map_table { i64 193, i32 106 }, %struct.rc_map_table { i64 210, i32 108 }, %struct.rc_map_table { i64 137, i32 109 }, %struct.rc_map_table { i64 209, i32 113 }, %struct.rc_map_table { i64 152, i32 114 }, %struct.rc_map_table { i64 144, i32 115 }, %struct.rc_map_table { i64 156, i32 116 }, %struct.rc_map_table { i64 214, i32 128 }, %struct.rc_map_table { i64 151, i32 139 }, %struct.rc_map_table { i64 203, i32 158 }, %struct.rc_map_table { i64 218, i32 164 }, %struct.rc_map_table { i64 128, i32 358 }, %struct.rc_map_table { i64 195, i32 168 }, %struct.rc_map_table { i64 135, i32 172 }, %struct.rc_map_table { i64 208, i32 208 }, %struct.rc_map_table { i64 196, i32 213 }, %struct.rc_map_table { i64 130, i32 257 }, %struct.rc_map_table { i64 199, i32 258 }, %struct.rc_map_table { i64 134, i32 362 }, %struct.rc_map_table { i64 217, i32 370 }, %struct.rc_map_table { i64 133, i32 372 }, %struct.rc_map_table { i64 155, i32 398 }, %struct.rc_map_table { i64 154, i32 399 }, %struct.rc_map_table { i64 192, i32 400 }, %struct.rc_map_table { i64 194, i32 401 }, %struct.rc_map_table { i64 157, i32 403 }, %struct.rc_map_table { i64 207, i32 402 }], [176 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rc-hisi-tv-demo\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"hisi_tv_demo_map\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 55, i32 27 }
@___asan_gen_.4 = private unnamed_addr constant [20 x i8] c"hisi_tv_demo_keymap\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 11, i32 28 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [46 x i8] c"../drivers/media/rc/keymaps/rc-hisi-tv-demo.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 60, i32 13 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_file211, ptr @__UNIQUE_ID_license212, ptr @__exitcall_exit_rc_map_hisi_tv_demo, ptr @__initcall__kmod_rc_hisi_tv_demo__210_74_init_rc_map_hisi_tv_demo6, ptr @exit_rc_map_hisi_tv_demo, ptr @hisi_tv_demo_map, ptr @hisi_tv_demo_keymap, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_tv_demo_map to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_tv_demo_keymap to i32), i32 656, i32 832, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_rc_map_hisi_tv_demo() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @rc_map_unregister(ptr noundef nonnull @hisi_tv_demo_map) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_map_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_rc_map_hisi_tv_demo() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rc_map_register(ptr noundef nonnull @hisi_tv_demo_map) #2
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

!0 = !{ptr @__initcall__kmod_rc_hisi_tv_demo__210_74_init_rc_map_hisi_tv_demo6, !1, !"__initcall__kmod_rc_hisi_tv_demo__210_74_init_rc_map_hisi_tv_demo6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/keymaps/rc-hisi-tv-demo.c", i32 74, i32 1}
!2 = !{ptr @__exitcall_exit_rc_map_hisi_tv_demo, !3, !"__exitcall_exit_rc_map_hisi_tv_demo", i1 false, i1 false}
!3 = !{!"../drivers/media/rc/keymaps/rc-hisi-tv-demo.c", i32 75, i32 1}
!4 = !{ptr @__UNIQUE_ID_file211, !5, !"__UNIQUE_ID_file211", i1 false, i1 false}
!5 = !{!"../drivers/media/rc/keymaps/rc-hisi-tv-demo.c", i32 77, i32 1}
!6 = !{ptr @__UNIQUE_ID_license212, !5, !"__UNIQUE_ID_license212", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/keymaps/rc-hisi-tv-demo.c", i32 60, i32 13}
!9 = !{ptr @hisi_tv_demo_map, !10, !"hisi_tv_demo_map", i1 false, i1 false}
!10 = !{!"../drivers/media/rc/keymaps/rc-hisi-tv-demo.c", i32 55, i32 27}
!11 = !{ptr @hisi_tv_demo_keymap, !12, !"hisi_tv_demo_keymap", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/keymaps/rc-hisi-tv-demo.c", i32 11, i32 28}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
