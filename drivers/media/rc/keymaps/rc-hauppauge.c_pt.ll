; ModuleID = '/llk/IR_all_yes/drivers/media/rc/keymaps/rc-hauppauge.c_pt.bc'
source_filename = "../drivers/media/rc/keymaps/rc-hauppauge.c"
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

@rc5_hauppauge_new_map = internal global { %struct.rc_map_list, [52 x i8] } { %struct.rc_map_list { %struct.list_head zeroinitializer, %struct.rc_map { ptr @rc5_hauppauge_new, i32 173, i32 0, i32 0, i32 2, ptr @.str, %struct.spinlock zeroinitializer } }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_rc_hauppauge__210_285_init_rc_map_rc5_hauppauge_new6 = internal global ptr @init_rc_map_rc5_hauppauge_new, section ".initcall6.init", align 4
@__exitcall_exit_rc_map_rc5_hauppauge_new = internal global ptr @exit_rc_map_rc5_hauppauge_new, section ".exitcall.exit", align 4
@__UNIQUE_ID_file211 = internal constant [56 x i8] c"rc_hauppauge.file=drivers/media/rc/keymaps/rc-hauppauge\00", section ".modinfo", align 1
@__UNIQUE_ID_license212 = internal constant [25 x i8] c"rc_hauppauge.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author213 = internal constant [42 x i8] c"rc_hauppauge.author=Mauro Carvalho Chehab\00", section ".modinfo", align 1
@rc5_hauppauge_new = internal global { [173 x %struct.rc_map_table], [688 x i8] } { [173 x %struct.rc_map_table] [%struct.rc_map_table { i64 7739, i32 353 }, %struct.rc_map_table { i64 7741, i32 356 }, %struct.rc_map_table { i64 7708, i32 377 }, %struct.rc_map_table { i64 7704, i32 393 }, %struct.rc_map_table { i64 7705, i32 392 }, %struct.rc_map_table { i64 7706, i32 212 }, %struct.rc_map_table { i64 7707, i32 365 }, %struct.rc_map_table { i64 7692, i32 385 }, %struct.rc_map_table { i64 7700, i32 103 }, %struct.rc_map_table { i64 7701, i32 108 }, %struct.rc_map_table { i64 7702, i32 105 }, %struct.rc_map_table { i64 7703, i32 106 }, %struct.rc_map_table { i64 7717, i32 352 }, %struct.rc_map_table { i64 7711, i32 174 }, %struct.rc_map_table { i64 7693, i32 139 }, %struct.rc_map_table { i64 7696, i32 115 }, %struct.rc_map_table { i64 7697, i32 114 }, %struct.rc_map_table { i64 7698, i32 412 }, %struct.rc_map_table { i64 7695, i32 113 }, %struct.rc_map_table { i64 7712, i32 402 }, %struct.rc_map_table { i64 7713, i32 403 }, %struct.rc_map_table { i64 7735, i32 167 }, %struct.rc_map_table { i64 7734, i32 128 }, %struct.rc_map_table { i64 7730, i32 168 }, %struct.rc_map_table { i64 7733, i32 207 }, %struct.rc_map_table { i64 7732, i32 208 }, %struct.rc_map_table { i64 7716, i32 165 }, %struct.rc_map_table { i64 7728, i32 119 }, %struct.rc_map_table { i64 7710, i32 163 }, %struct.rc_map_table { i64 7681, i32 513 }, %struct.rc_map_table { i64 7682, i32 514 }, %struct.rc_map_table { i64 7683, i32 515 }, %struct.rc_map_table { i64 7684, i32 516 }, %struct.rc_map_table { i64 7685, i32 517 }, %struct.rc_map_table { i64 7686, i32 518 }, %struct.rc_map_table { i64 7687, i32 519 }, %struct.rc_map_table { i64 7688, i32 520 }, %struct.rc_map_table { i64 7689, i32 521 }, %struct.rc_map_table { i64 7690, i32 388 }, %struct.rc_map_table { i64 7680, i32 512 }, %struct.rc_map_table { i64 7694, i32 370 }, %struct.rc_map_table { i64 7691, i32 398 }, %struct.rc_map_table { i64 7726, i32 399 }, %struct.rc_map_table { i64 7736, i32 400 }, %struct.rc_map_table { i64 7721, i32 401 }, %struct.rc_map_table { i64 7997, i32 356 }, %struct.rc_map_table { i64 7995, i32 353 }, %struct.rc_map_table { i64 7936, i32 512 }, %struct.rc_map_table { i64 7937, i32 513 }, %struct.rc_map_table { i64 7938, i32 514 }, %struct.rc_map_table { i64 7939, i32 515 }, %struct.rc_map_table { i64 7940, i32 516 }, %struct.rc_map_table { i64 7941, i32 517 }, %struct.rc_map_table { i64 7942, i32 518 }, %struct.rc_map_table { i64 7943, i32 519 }, %struct.rc_map_table { i64 7944, i32 520 }, %struct.rc_map_table { i64 7945, i32 521 }, %struct.rc_map_table { i64 7967, i32 174 }, %struct.rc_map_table { i64 7949, i32 139 }, %struct.rc_map_table { i64 7952, i32 115 }, %struct.rc_map_table { i64 7953, i32 114 }, %struct.rc_map_table { i64 7968, i32 402 }, %struct.rc_map_table { i64 7969, i32 403 }, %struct.rc_map_table { i64 7973, i32 28 }, %struct.rc_map_table { i64 7947, i32 398 }, %struct.rc_map_table { i64 7982, i32 399 }, %struct.rc_map_table { i64 7992, i32 400 }, %struct.rc_map_table { i64 7977, i32 401 }, %struct.rc_map_table { i64 7951, i32 113 }, %struct.rc_map_table { i64 7948, i32 385 }, %struct.rc_map_table { i64 7996, i32 372 }, %struct.rc_map_table { i64 7986, i32 168 }, %struct.rc_map_table { i64 7989, i32 207 }, %struct.rc_map_table { i64 7988, i32 208 }, %struct.rc_map_table { i64 7991, i32 167 }, %struct.rc_map_table { i64 7990, i32 128 }, %struct.rc_map_table { i64 7984, i32 119 }, %struct.rc_map_table { i64 7972, i32 165 }, %struct.rc_map_table { i64 7966, i32 163 }, %struct.rc_map_table { i64 7424, i32 512 }, %struct.rc_map_table { i64 7425, i32 513 }, %struct.rc_map_table { i64 7426, i32 514 }, %struct.rc_map_table { i64 7427, i32 515 }, %struct.rc_map_table { i64 7428, i32 516 }, %struct.rc_map_table { i64 7429, i32 517 }, %struct.rc_map_table { i64 7430, i32 518 }, %struct.rc_map_table { i64 7431, i32 519 }, %struct.rc_map_table { i64 7432, i32 520 }, %struct.rc_map_table { i64 7433, i32 521 }, %struct.rc_map_table { i64 7434, i32 388 }, %struct.rc_map_table { i64 7437, i32 139 }, %struct.rc_map_table { i64 7439, i32 113 }, %struct.rc_map_table { i64 7440, i32 115 }, %struct.rc_map_table { i64 7441, i32 114 }, %struct.rc_map_table { i64 7442, i32 412 }, %struct.rc_map_table { i64 7444, i32 103 }, %struct.rc_map_table { i64 7445, i32 108 }, %struct.rc_map_table { i64 7446, i32 105 }, %struct.rc_map_table { i64 7447, i32 106 }, %struct.rc_map_table { i64 7452, i32 377 }, %struct.rc_map_table { i64 7454, i32 407 }, %struct.rc_map_table { i64 7455, i32 174 }, %struct.rc_map_table { i64 7456, i32 402 }, %struct.rc_map_table { i64 7457, i32 403 }, %struct.rc_map_table { i64 7460, i32 405 }, %struct.rc_map_table { i64 7461, i32 352 }, %struct.rc_map_table { i64 7472, i32 119 }, %struct.rc_map_table { i64 7474, i32 168 }, %struct.rc_map_table { i64 7476, i32 208 }, %struct.rc_map_table { i64 7477, i32 207 }, %struct.rc_map_table { i64 7478, i32 128 }, %struct.rc_map_table { i64 7479, i32 167 }, %struct.rc_map_table { i64 7483, i32 354 }, %struct.rc_map_table { i64 7485, i32 116 }, %struct.rc_map_table { i64 7487, i32 102 }, %struct.rc_map_table { i64 7227, i32 354 }, %struct.rc_map_table { i64 7229, i32 116 }, %struct.rc_map_table { i64 7188, i32 103 }, %struct.rc_map_table { i64 7189, i32 108 }, %struct.rc_map_table { i64 7190, i32 105 }, %struct.rc_map_table { i64 7191, i32 106 }, %struct.rc_map_table { i64 7205, i32 352 }, %struct.rc_map_table { i64 7168, i32 512 }, %struct.rc_map_table { i64 7169, i32 513 }, %struct.rc_map_table { i64 7170, i32 514 }, %struct.rc_map_table { i64 7171, i32 515 }, %struct.rc_map_table { i64 7172, i32 516 }, %struct.rc_map_table { i64 7173, i32 517 }, %struct.rc_map_table { i64 7174, i32 518 }, %struct.rc_map_table { i64 7175, i32 519 }, %struct.rc_map_table { i64 7176, i32 520 }, %struct.rc_map_table { i64 7177, i32 521 }, %struct.rc_map_table { i64 7199, i32 174 }, %struct.rc_map_table { i64 7181, i32 139 }, %struct.rc_map_table { i64 7196, i32 377 }, %struct.rc_map_table { i64 7184, i32 115 }, %struct.rc_map_table { i64 7185, i32 114 }, %struct.rc_map_table { i64 7200, i32 402 }, %struct.rc_map_table { i64 7201, i32 403 }, %struct.rc_map_table { i64 7183, i32 113 }, %struct.rc_map_table { i64 7186, i32 412 }, %struct.rc_map_table { i64 7222, i32 128 }, %struct.rc_map_table { i64 7223, i32 167 }, %struct.rc_map_table { i64 7204, i32 405 }, %struct.rc_map_table { i64 7198, i32 407 }, %struct.rc_map_table { i64 7178, i32 388 }, %struct.rc_map_table { i64 7182, i32 370 }, %struct.rc_map_table { i64 7218, i32 168 }, %struct.rc_map_table { i64 7216, i32 119 }, %struct.rc_map_table { i64 7221, i32 207 }, %struct.rc_map_table { i64 7220, i32 208 }, %struct.rc_map_table { i64 15, i32 377 }, %struct.rc_map_table { i64 31, i32 377 }, %struct.rc_map_table { i64 32, i32 402 }, %struct.rc_map_table { i64 12, i32 385 }, %struct.rc_map_table { i64 17, i32 114 }, %struct.rc_map_table { i64 46, i32 372 }, %struct.rc_map_table { i64 16, i32 115 }, %struct.rc_map_table { i64 13, i32 113 }, %struct.rc_map_table { i64 33, i32 403 }, %struct.rc_map_table { i64 34, i32 393 }, %struct.rc_map_table { i64 1, i32 513 }, %struct.rc_map_table { i64 2, i32 514 }, %struct.rc_map_table { i64 3, i32 515 }, %struct.rc_map_table { i64 4, i32 516 }, %struct.rc_map_table { i64 5, i32 517 }, %struct.rc_map_table { i64 6, i32 518 }, %struct.rc_map_table { i64 7, i32 519 }, %struct.rc_map_table { i64 8, i32 520 }, %struct.rc_map_table { i64 9, i32 521 }, %struct.rc_map_table { i64 30, i32 398 }, %struct.rc_map_table { i64 0, i32 512 }, %struct.rc_map_table { i64 38, i32 142 }], [688 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-hauppauge\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [22 x i8] c"rc5_hauppauge_new_map\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 266, i32 27 }
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"rc5_hauppauge_new\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 24, i32 28 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [43 x i8] c"../drivers/media/rc/keymaps/rc-hauppauge.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 271, i32 15 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author213, ptr @__UNIQUE_ID_file211, ptr @__UNIQUE_ID_license212, ptr @__exitcall_exit_rc_map_rc5_hauppauge_new, ptr @__initcall__kmod_rc_hauppauge__210_285_init_rc_map_rc5_hauppauge_new6, ptr @exit_rc_map_rc5_hauppauge_new, ptr @rc5_hauppauge_new_map, ptr @rc5_hauppauge_new, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5_hauppauge_new_map to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5_hauppauge_new to i32), i32 2768, i32 3456, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_rc_map_rc5_hauppauge_new() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @rc_map_unregister(ptr noundef nonnull @rc5_hauppauge_new_map) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_map_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_rc_map_rc5_hauppauge_new() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rc_map_register(ptr noundef nonnull @rc5_hauppauge_new_map) #2
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

!0 = !{ptr @__initcall__kmod_rc_hauppauge__210_285_init_rc_map_rc5_hauppauge_new6, !1, !"__initcall__kmod_rc_hauppauge__210_285_init_rc_map_rc5_hauppauge_new6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/keymaps/rc-hauppauge.c", i32 285, i32 1}
!2 = !{ptr @__exitcall_exit_rc_map_rc5_hauppauge_new, !3, !"__exitcall_exit_rc_map_rc5_hauppauge_new", i1 false, i1 false}
!3 = !{!"../drivers/media/rc/keymaps/rc-hauppauge.c", i32 286, i32 1}
!4 = !{ptr @__UNIQUE_ID_file211, !5, !"__UNIQUE_ID_file211", i1 false, i1 false}
!5 = !{!"../drivers/media/rc/keymaps/rc-hauppauge.c", i32 288, i32 1}
!6 = !{ptr @__UNIQUE_ID_license212, !5, !"__UNIQUE_ID_license212", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author213, !8, !"__UNIQUE_ID_author213", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/keymaps/rc-hauppauge.c", i32 289, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/rc/keymaps/rc-hauppauge.c", i32 271, i32 15}
!11 = !{ptr @rc5_hauppauge_new_map, !12, !"rc5_hauppauge_new_map", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/keymaps/rc-hauppauge.c", i32 266, i32 27}
!13 = !{ptr @rc5_hauppauge_new, !14, !"rc5_hauppauge_new", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/keymaps/rc-hauppauge.c", i32 24, i32 28}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
