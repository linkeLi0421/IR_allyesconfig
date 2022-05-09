; ModuleID = '/llk/IR_all_yes/drivers/media/rc/keymaps/rc-avermedia-m135a.c_pt.bc'
source_filename = "../drivers/media/rc/keymaps/rc-avermedia-m135a.c"
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

@avermedia_m135a_map = internal global { %struct.rc_map_list, [52 x i8] } { %struct.rc_map_list { %struct.list_head zeroinitializer, %struct.rc_map { ptr @avermedia_m135a, i32 80, i32 0, i32 0, i32 9, ptr @.str, %struct.spinlock zeroinitializer } }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_rc_avermedia_m135a__210_140_init_rc_map_avermedia_m135a6 = internal global ptr @init_rc_map_avermedia_m135a, section ".initcall6.init", align 4
@__exitcall_exit_rc_map_avermedia_m135a = internal global ptr @exit_rc_map_avermedia_m135a, section ".exitcall.exit", align 4
@__UNIQUE_ID_file211 = internal constant [68 x i8] c"rc_avermedia_m135a.file=drivers/media/rc/keymaps/rc-avermedia-m135a\00", section ".modinfo", align 1
@__UNIQUE_ID_license212 = internal constant [31 x i8] c"rc_avermedia_m135a.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author213 = internal constant [48 x i8] c"rc_avermedia_m135a.author=Mauro Carvalho Chehab\00", section ".modinfo", align 1
@avermedia_m135a = internal global { [80 x %struct.rc_map_table], [320 x i8] } { [80 x %struct.rc_map_table] [%struct.rc_map_table { i64 512, i32 356 }, %struct.rc_map_table { i64 558, i32 52 }, %struct.rc_map_table { i64 513, i32 373 }, %struct.rc_map_table { i64 517, i32 513 }, %struct.rc_map_table { i64 518, i32 514 }, %struct.rc_map_table { i64 519, i32 515 }, %struct.rc_map_table { i64 521, i32 516 }, %struct.rc_map_table { i64 522, i32 517 }, %struct.rc_map_table { i64 523, i32 518 }, %struct.rc_map_table { i64 525, i32 519 }, %struct.rc_map_table { i64 526, i32 520 }, %struct.rc_map_table { i64 527, i32 521 }, %struct.rc_map_table { i64 529, i32 512 }, %struct.rc_map_table { i64 531, i32 106 }, %struct.rc_map_table { i64 530, i32 105 }, %struct.rc_map_table { i64 533, i32 139 }, %struct.rc_map_table { i64 535, i32 212 }, %struct.rc_map_table { i64 528, i32 410 }, %struct.rc_map_table { i64 771, i32 402 }, %struct.rc_map_table { i64 770, i32 403 }, %struct.rc_map_table { i64 543, i32 115 }, %struct.rc_map_table { i64 542, i32 114 }, %struct.rc_map_table { i64 524, i32 28 }, %struct.rc_map_table { i64 532, i32 113 }, %struct.rc_map_table { i64 520, i32 392 }, %struct.rc_map_table { i64 515, i32 388 }, %struct.rc_map_table { i64 516, i32 365 }, %struct.rc_map_table { i64 555, i32 378 }, %struct.rc_map_table { i64 541, i32 398 }, %struct.rc_map_table { i64 540, i32 400 }, %struct.rc_map_table { i64 769, i32 399 }, %struct.rc_map_table { i64 768, i32 401 }, %struct.rc_map_table { i64 538, i32 164 }, %struct.rc_map_table { i64 537, i32 167 }, %struct.rc_map_table { i64 536, i32 207 }, %struct.rc_map_table { i64 539, i32 128 }, %struct.rc_map_table { i64 1025, i32 356 }, %struct.rc_map_table { i64 1030, i32 113 }, %struct.rc_map_table { i64 1032, i32 373 }, %struct.rc_map_table { i64 1033, i32 513 }, %struct.rc_map_table { i64 1034, i32 514 }, %struct.rc_map_table { i64 1035, i32 515 }, %struct.rc_map_table { i64 1036, i32 516 }, %struct.rc_map_table { i64 1037, i32 517 }, %struct.rc_map_table { i64 1038, i32 518 }, %struct.rc_map_table { i64 1039, i32 519 }, %struct.rc_map_table { i64 1040, i32 520 }, %struct.rc_map_table { i64 1041, i32 521 }, %struct.rc_map_table { i64 1100, i32 52 }, %struct.rc_map_table { i64 1042, i32 512 }, %struct.rc_map_table { i64 1031, i32 173 }, %struct.rc_map_table { i64 1043, i32 392 }, %struct.rc_map_table { i64 1088, i32 375 }, %struct.rc_map_table { i64 1089, i32 102 }, %struct.rc_map_table { i64 1090, i32 158 }, %struct.rc_map_table { i64 1095, i32 103 }, %struct.rc_map_table { i64 1096, i32 108 }, %struct.rc_map_table { i64 1097, i32 105 }, %struct.rc_map_table { i64 1098, i32 106 }, %struct.rc_map_table { i64 1099, i32 352 }, %struct.rc_map_table { i64 1028, i32 115 }, %struct.rc_map_table { i64 1029, i32 114 }, %struct.rc_map_table { i64 1026, i32 402 }, %struct.rc_map_table { i64 1027, i32 403 }, %struct.rc_map_table { i64 1091, i32 398 }, %struct.rc_map_table { i64 1092, i32 399 }, %struct.rc_map_table { i64 1093, i32 400 }, %struct.rc_map_table { i64 1094, i32 401 }, %struct.rc_map_table { i64 1044, i32 388 }, %struct.rc_map_table { i64 1045, i32 365 }, %struct.rc_map_table { i64 1050, i32 378 }, %struct.rc_map_table { i64 1051, i32 212 }, %struct.rc_map_table { i64 1047, i32 167 }, %struct.rc_map_table { i64 1046, i32 164 }, %struct.rc_map_table { i64 1048, i32 128 }, %struct.rc_map_table { i64 1049, i32 119 }, %struct.rc_map_table { i64 1055, i32 412 }, %struct.rc_map_table { i64 1052, i32 168 }, %struct.rc_map_table { i64 1053, i32 159 }, %struct.rc_map_table { i64 1054, i32 407 }], [320 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rc-avermedia-m135a\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"avermedia_m135a_map\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 121, i32 27 }
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"avermedia_m135a\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 21, i32 28 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [49 x i8] c"../drivers/media/rc/keymaps/rc-avermedia-m135a.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 126, i32 15 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author213, ptr @__UNIQUE_ID_file211, ptr @__UNIQUE_ID_license212, ptr @__exitcall_exit_rc_map_avermedia_m135a, ptr @__initcall__kmod_rc_avermedia_m135a__210_140_init_rc_map_avermedia_m135a6, ptr @exit_rc_map_avermedia_m135a, ptr @avermedia_m135a_map, ptr @avermedia_m135a, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avermedia_m135a_map to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avermedia_m135a to i32), i32 1280, i32 1600, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_rc_map_avermedia_m135a() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @rc_map_unregister(ptr noundef nonnull @avermedia_m135a_map) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_map_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_rc_map_avermedia_m135a() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rc_map_register(ptr noundef nonnull @avermedia_m135a_map) #2
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

!0 = !{ptr @__initcall__kmod_rc_avermedia_m135a__210_140_init_rc_map_avermedia_m135a6, !1, !"__initcall__kmod_rc_avermedia_m135a__210_140_init_rc_map_avermedia_m135a6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/keymaps/rc-avermedia-m135a.c", i32 140, i32 1}
!2 = !{ptr @__exitcall_exit_rc_map_avermedia_m135a, !3, !"__exitcall_exit_rc_map_avermedia_m135a", i1 false, i1 false}
!3 = !{!"../drivers/media/rc/keymaps/rc-avermedia-m135a.c", i32 141, i32 1}
!4 = !{ptr @__UNIQUE_ID_file211, !5, !"__UNIQUE_ID_file211", i1 false, i1 false}
!5 = !{!"../drivers/media/rc/keymaps/rc-avermedia-m135a.c", i32 143, i32 1}
!6 = !{ptr @__UNIQUE_ID_license212, !5, !"__UNIQUE_ID_license212", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author213, !8, !"__UNIQUE_ID_author213", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/keymaps/rc-avermedia-m135a.c", i32 144, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/rc/keymaps/rc-avermedia-m135a.c", i32 126, i32 15}
!11 = !{ptr @avermedia_m135a_map, !12, !"avermedia_m135a_map", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/keymaps/rc-avermedia-m135a.c", i32 121, i32 27}
!13 = !{ptr @avermedia_m135a, !14, !"avermedia_m135a", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/keymaps/rc-avermedia-m135a.c", i32 21, i32 28}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
