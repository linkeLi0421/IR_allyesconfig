; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/cirrus/pinctrl-cs47l92.c_pt.bc'
source_filename = "../drivers/pinctrl/cirrus/pinctrl-cs47l92.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.madera_pin_groups = type { ptr, ptr, i32 }
%struct.madera_pin_chip = type { i32, ptr, i32 }

@cs47l92_pin_groups = internal constant { [4 x %struct.madera_pin_groups], [48 x i8] } { [4 x %struct.madera_pin_groups] [%struct.madera_pin_groups { ptr @.str, ptr @cs47l92_aif1_pins, i32 4 }, %struct.madera_pin_groups { ptr @.str.1, ptr @cs47l92_aif2_pins, i32 4 }, %struct.madera_pin_groups { ptr @.str.2, ptr @cs47l92_aif3_pins, i32 4 }, %struct.madera_pin_groups { ptr @.str.3, ptr @cs47l92_spk1_pins, i32 2 }], [48 x i8] zeroinitializer }, align 32
@cs47l92_pin_chip = dso_local constant { %struct.madera_pin_chip, [20 x i8] } { %struct.madera_pin_chip { i32 16, ptr @cs47l92_pin_groups, i32 4 }, [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aif1\00", [27 x i8] zeroinitializer }, align 32
@cs47l92_aif1_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 5, i32 6, i32 7], [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aif2\00", [27 x i8] zeroinitializer }, align 32
@cs47l92_aif2_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 8, i32 9, i32 10, i32 11], [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aif3\00", [27 x i8] zeroinitializer }, align 32
@cs47l92_aif3_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 12, i32 13, i32 14, i32 15], [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pdmspk1\00", [24 x i8] zeroinitializer }, align 32
@cs47l92_spk1_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 2, i32 3], [24 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [19 x i8] c"cs47l92_pin_groups\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 29, i32 39 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"cs47l92_pin_chip\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 36, i32 30 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 30, i32 4 }
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"cs47l92_aif1_pins\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 25, i32 27 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 31, i32 4 }
@___asan_gen_.19 = private unnamed_addr constant [18 x i8] c"cs47l92_aif2_pins\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 26, i32 27 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 32, i32 4 }
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"cs47l92_aif3_pins\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 27, i32 27 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 33, i32 4 }
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"cs47l92_spk1_pins\00", align 1
@___asan_gen_.32 = private constant [44 x i8] c"../drivers/pinctrl/cirrus/pinctrl-cs47l92.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 24, i32 27 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @cs47l92_pin_groups, ptr @cs47l92_pin_chip, ptr @.str, ptr @cs47l92_aif1_pins, ptr @.str.1, ptr @cs47l92_aif2_pins, ptr @.str.2, ptr @cs47l92_aif3_pins, ptr @.str.3, ptr @cs47l92_spk1_pins], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l92_pin_groups to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l92_pin_chip to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l92_aif1_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l92_aif2_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l92_aif3_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l92_spk1_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @cs47l92_pin_chip, !1, !"cs47l92_pin_chip", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l92.c", i32 36, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l92.c", i32 30, i32 4}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l92.c", i32 31, i32 4}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l92.c", i32 32, i32 4}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l92.c", i32 33, i32 4}
!10 = !{ptr @cs47l92_pin_groups, !11, !"cs47l92_pin_groups", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l92.c", i32 29, i32 39}
!12 = !{ptr @cs47l92_aif1_pins, !13, !"cs47l92_aif1_pins", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l92.c", i32 25, i32 27}
!14 = !{ptr @cs47l92_aif2_pins, !15, !"cs47l92_aif2_pins", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l92.c", i32 26, i32 27}
!16 = !{ptr @cs47l92_aif3_pins, !17, !"cs47l92_aif3_pins", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l92.c", i32 27, i32 27}
!18 = !{ptr @cs47l92_spk1_pins, !19, !"cs47l92_spk1_pins", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l92.c", i32 24, i32 27}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
