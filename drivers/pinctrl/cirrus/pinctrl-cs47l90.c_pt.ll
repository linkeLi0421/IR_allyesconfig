; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/cirrus/pinctrl-cs47l90.c_pt.bc'
source_filename = "../drivers/pinctrl/cirrus/pinctrl-cs47l90.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.madera_pin_groups = type { ptr, ptr, i32 }
%struct.madera_pin_chip = type { i32, ptr, i32 }

@cs47l90_pin_groups = internal constant { [11 x %struct.madera_pin_groups], [60 x i8] } { [11 x %struct.madera_pin_groups] [%struct.madera_pin_groups { ptr @.str, ptr @cs47l90_aif1_pins, i32 4 }, %struct.madera_pin_groups { ptr @.str.1, ptr @cs47l90_aif2_pins, i32 4 }, %struct.madera_pin_groups { ptr @.str.2, ptr @cs47l90_aif3_pins, i32 4 }, %struct.madera_pin_groups { ptr @.str.3, ptr @cs47l90_aif4_pins, i32 4 }, %struct.madera_pin_groups { ptr @.str.4, ptr @cs47l90_mif1_pins, i32 2 }, %struct.madera_pin_groups { ptr @.str.5, ptr @cs47l90_mif2_pins, i32 2 }, %struct.madera_pin_groups { ptr @.str.6, ptr @cs47l90_mif3_pins, i32 2 }, %struct.madera_pin_groups { ptr @.str.7, ptr @cs47l90_dmic3_pins, i32 2 }, %struct.madera_pin_groups { ptr @.str.8, ptr @cs47l90_dmic4_pins, i32 2 }, %struct.madera_pin_groups { ptr @.str.9, ptr @cs47l90_dmic5_pins, i32 2 }, %struct.madera_pin_groups { ptr @.str.10, ptr @cs47l90_spk1_pins, i32 2 }], [60 x i8] zeroinitializer }, align 32
@cs47l90_pin_chip = dso_local constant { %struct.madera_pin_chip, [20 x i8] } { %struct.madera_pin_chip { i32 38, ptr @cs47l90_pin_groups, i32 11 }, [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aif1\00", [27 x i8] zeroinitializer }, align 32
@cs47l90_aif1_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 14, i32 15, i32 16, i32 17], [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aif2\00", [27 x i8] zeroinitializer }, align 32
@cs47l90_aif2_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 18, i32 19, i32 20, i32 21], [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aif3\00", [27 x i8] zeroinitializer }, align 32
@cs47l90_aif3_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 22, i32 23, i32 24, i32 25], [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aif4\00", [27 x i8] zeroinitializer }, align 32
@cs47l90_aif4_pins = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 26, i32 27, i32 28, i32 29], [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mif1\00", [27 x i8] zeroinitializer }, align 32
@cs47l90_mif1_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 8, i32 9], [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mif2\00", [27 x i8] zeroinitializer }, align 32
@cs47l90_mif2_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 10, i32 11], [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mif3\00", [27 x i8] zeroinitializer }, align 32
@cs47l90_mif3_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 12, i32 13], [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dmic3\00", [26 x i8] zeroinitializer }, align 32
@cs47l90_dmic3_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 34, i32 35], [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dmic4\00", [26 x i8] zeroinitializer }, align 32
@cs47l90_dmic4_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 30, i32 31], [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dmic5\00", [26 x i8] zeroinitializer }, align 32
@cs47l90_dmic5_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 32, i32 33], [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pdmspk1\00", [24 x i8] zeroinitializer }, align 32
@cs47l90_spk1_pins = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 36, i32 37], [24 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [19 x i8] c"cs47l90_pin_groups\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 35, i32 39 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"cs47l90_pin_chip\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 49, i32 30 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 36, i32 4 }
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"cs47l90_aif1_pins\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 26, i32 27 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 37, i32 4 }
@___asan_gen_.26 = private unnamed_addr constant [18 x i8] c"cs47l90_aif2_pins\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 27, i32 27 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 38, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant [18 x i8] c"cs47l90_aif3_pins\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 28, i32 27 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 39, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant [18 x i8] c"cs47l90_aif4_pins\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 29, i32 27 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 40, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant [18 x i8] c"cs47l90_mif1_pins\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 23, i32 27 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 41, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant [18 x i8] c"cs47l90_mif2_pins\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 24, i32 27 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 42, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant [18 x i8] c"cs47l90_mif3_pins\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 25, i32 27 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 43, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant [19 x i8] c"cs47l90_dmic3_pins\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 32, i32 27 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 44, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant [19 x i8] c"cs47l90_dmic4_pins\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 30, i32 27 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 45, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant [19 x i8] c"cs47l90_dmic5_pins\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 31, i32 27 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 46, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant [18 x i8] c"cs47l90_spk1_pins\00", align 1
@___asan_gen_.81 = private constant [44 x i8] c"../drivers/pinctrl/cirrus/pinctrl-cs47l90.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 33, i32 27 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @cs47l90_pin_groups, ptr @cs47l90_pin_chip, ptr @.str, ptr @cs47l90_aif1_pins, ptr @.str.1, ptr @cs47l90_aif2_pins, ptr @.str.2, ptr @cs47l90_aif3_pins, ptr @.str.3, ptr @cs47l90_aif4_pins, ptr @.str.4, ptr @cs47l90_mif1_pins, ptr @.str.5, ptr @cs47l90_mif2_pins, ptr @.str.6, ptr @cs47l90_mif3_pins, ptr @.str.7, ptr @cs47l90_dmic3_pins, ptr @.str.8, ptr @cs47l90_dmic4_pins, ptr @.str.9, ptr @cs47l90_dmic5_pins, ptr @.str.10, ptr @cs47l90_spk1_pins], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l90_pin_groups to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l90_pin_chip to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l90_aif1_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l90_aif2_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l90_aif3_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l90_aif4_pins to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l90_mif1_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l90_mif2_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l90_mif3_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l90_dmic3_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l90_dmic4_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l90_dmic5_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs47l90_spk1_pins to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @cs47l90_pin_chip, !1, !"cs47l90_pin_chip", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l90.c", i32 49, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l90.c", i32 36, i32 4}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l90.c", i32 37, i32 4}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l90.c", i32 38, i32 4}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l90.c", i32 39, i32 4}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l90.c", i32 40, i32 4}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l90.c", i32 41, i32 4}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l90.c", i32 42, i32 4}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l90.c", i32 43, i32 4}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l90.c", i32 44, i32 4}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l90.c", i32 45, i32 4}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l90.c", i32 46, i32 4}
!24 = !{ptr @cs47l90_pin_groups, !25, !"cs47l90_pin_groups", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l90.c", i32 35, i32 39}
!26 = !{ptr @cs47l90_aif1_pins, !27, !"cs47l90_aif1_pins", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l90.c", i32 26, i32 27}
!28 = !{ptr @cs47l90_aif2_pins, !29, !"cs47l90_aif2_pins", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l90.c", i32 27, i32 27}
!30 = !{ptr @cs47l90_aif3_pins, !31, !"cs47l90_aif3_pins", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l90.c", i32 28, i32 27}
!32 = !{ptr @cs47l90_aif4_pins, !33, !"cs47l90_aif4_pins", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l90.c", i32 29, i32 27}
!34 = !{ptr @cs47l90_mif1_pins, !35, !"cs47l90_mif1_pins", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l90.c", i32 23, i32 27}
!36 = !{ptr @cs47l90_mif2_pins, !37, !"cs47l90_mif2_pins", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l90.c", i32 24, i32 27}
!38 = !{ptr @cs47l90_mif3_pins, !39, !"cs47l90_mif3_pins", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l90.c", i32 25, i32 27}
!40 = !{ptr @cs47l90_dmic3_pins, !41, !"cs47l90_dmic3_pins", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l90.c", i32 32, i32 27}
!42 = !{ptr @cs47l90_dmic4_pins, !43, !"cs47l90_dmic4_pins", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l90.c", i32 30, i32 27}
!44 = !{ptr @cs47l90_dmic5_pins, !45, !"cs47l90_dmic5_pins", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l90.c", i32 31, i32 27}
!46 = !{ptr @cs47l90_spk1_pins, !47, !"cs47l90_spk1_pins", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/cirrus/pinctrl-cs47l90.c", i32 33, i32 27}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
