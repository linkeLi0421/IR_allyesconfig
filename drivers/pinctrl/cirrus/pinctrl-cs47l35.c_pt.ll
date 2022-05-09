; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/cirrus/pinctrl-cs47l35.c_pt.bc'
source_filename = "../drivers/pinctrl/cirrus/pinctrl-cs47l35.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.madera_pin_groups = type { ptr, ptr, i32 }
%struct.madera_pin_chip = type { i32, ptr, i32 }

@cs47l35_pin_groups = internal constant { [5 x %struct.madera_pin_groups], [36 x i8] } { [5 x %struct.madera_pin_groups] [%struct.madera_pin_groups { ptr @.str, ptr @cs47l35_aif1_pins, i32 4 }, %struct.madera_pin_groups { ptr @.str.1, ptr @cs47l35_aif2_pins, i32 4 }, %struct.madera_pin_groups { ptr @.str.2, ptr @cs47l35_aif3_pins, i32 4 }, %struct.madera_pin_groups { ptr @.str.3, ptr @cs47l35_mif1_pins, i32 2 }, %struct.madera_pin_groups { ptr @.str.4, ptr @cs47l35_spk_pins, i32 2 }], [36 x i8] zeroinitializer }, align 32
@cs47l35_pin_chip = dso_local constant { %struct.madera_pin_chip, [20 x i8] } { %struct.madera_pin_chip { i32 16, ptr @cs47l35_pin_groups, i32 5 }, [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aif1\00", [27 x i8] zeroinitializer }, align 32
@cs47l35_aif1_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 7, i32 8, i32 9, i32 10], [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aif2\00", [27 x i8] zeroinitializer }, align 32
@cs47l35_aif2_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 11, i32 12, i32 13, i32 14], [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aif3\00", [27 x i8] zeroinitializer }, align 32
@cs47l35_aif3_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mif1\00", [27 x i8] zeroinitializer }, align 32
@cs47l35_mif1_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 6, i32 15], [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pdmspk1\00", [24 x i8] zeroinitializer }, align 32
@cs47l35_spk_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 4, i32 5], [24 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [19 x i8] c"cs47l35_pin_groups\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 29, i32 39 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"cs47l35_pin_chip\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 37, i32 30 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 30, i32 4 }
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"cs47l35_aif1_pins\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 25, i32 27 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 31, i32 4 }
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"cs47l35_aif2_pins\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 26, i32 27 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 32, i32 4 }
@___asan_gen_.26 = private unnamed_addr constant [18 x i8] c"cs47l35_aif3_pins\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 23, i32 27 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 33, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant [18 x i8] c"cs47l35_mif1_pins\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 27, i32 27 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 34, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"cs47l35_spk_pins\00", align 1
@___asan_gen_.39 = private constant [44 x i8] c"../drivers/pinctrl/cirrus/pinctrl-cs47l35.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 24, i32 27 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @cs47l35_pin_groups, ptr @cs47l35_pin_chip, ptr @.str, ptr @cs47l35_aif1_pins, ptr @.str.1, ptr @cs47l35_aif2_pins, ptr @.str.2, ptr @cs47l35_aif3_pins, ptr @.str.3, ptr @cs47l35_mif1_pins, ptr @.str.4, ptr @cs47l35_spk_pins], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l35_pin_groups to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l35_pin_chip to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l35_aif1_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l35_aif2_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l35_aif3_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l35_mif1_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l35_spk_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @cs47l35_pin_chip, !1, !"cs47l35_pin_chip", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l35.c", i32 37, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l35.c", i32 30, i32 4}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l35.c", i32 31, i32 4}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l35.c", i32 32, i32 4}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l35.c", i32 33, i32 4}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l35.c", i32 34, i32 4}
!12 = !{ptr @cs47l35_pin_groups, !13, !"cs47l35_pin_groups", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l35.c", i32 29, i32 39}
!14 = !{ptr @cs47l35_aif1_pins, !15, !"cs47l35_aif1_pins", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l35.c", i32 25, i32 27}
!16 = !{ptr @cs47l35_aif2_pins, !17, !"cs47l35_aif2_pins", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l35.c", i32 26, i32 27}
!18 = !{ptr @cs47l35_aif3_pins, !19, !"cs47l35_aif3_pins", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l35.c", i32 23, i32 27}
!20 = !{ptr @cs47l35_mif1_pins, !21, !"cs47l35_mif1_pins", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l35.c", i32 27, i32 27}
!22 = !{ptr @cs47l35_spk_pins, !23, !"cs47l35_spk_pins", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l35.c", i32 24, i32 27}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
