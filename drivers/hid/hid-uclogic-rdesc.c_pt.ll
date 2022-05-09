; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-uclogic-rdesc.c_pt.bc'
source_filename = "../drivers/hid/hid-uclogic-rdesc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@uclogic_rdesc_wp4030u_fixed_arr = dso_local global { [73 x i8], [55 x i8] } { [73 x i8] c"\05\0D\09\02\A1\01\85\09\09 \A0u\01\09B\09D\09F\14%\01\95\03\81\02\95\05\81\01u\10\95\01\14\A4\05\01U\FDe\134\090F\A0\0F&\FF\7F\81\02\091F\B8\0B&\FF\7F\81\02\B4\090&\FF\03\81\02\C0\C0", [55 x i8] zeroinitializer }, align 32
@uclogic_rdesc_wp4030u_fixed_size = dso_local constant { i32, [28 x i8] } { i32 73, [28 x i8] zeroinitializer }, align 32
@uclogic_rdesc_wp5540u_fixed_arr = dso_local global { [133 x i8], [59 x i8] } { [133 x i8] c"\05\0D\09\02\A1\01\85\09\09 \A0u\01\09B\09D\09F\14%\01\95\03\81\02\95\05\81\01u\10\95\01\14\A4\05\01U\FDe\134\090F|\15&\FF\7F\81\02\091F\A0\0F&\FF\7F\81\02\B4\090&\FF\03\81\02\C0\C0\05\01\09\02\A1\01\85\08\09\01\A0u\01\05\09\19\01)\03\14%\01\95\03\81\02\95\05\81\01\05\01u\08\090\091\15\81%\7F\95\02\81\06\098\15\FF%\01\95\01\81\06\81\01\C0\C0", [59 x i8] zeroinitializer }, align 32
@uclogic_rdesc_wp5540u_fixed_size = dso_local constant { i32, [28 x i8] } { i32 133, [28 x i8] zeroinitializer }, align 32
@uclogic_rdesc_wp8060u_fixed_arr = dso_local global { [133 x i8], [59 x i8] } { [133 x i8] c"\05\0D\09\02\A1\01\85\09\09 \A0u\01\09B\09D\09F\14%\01\95\03\81\02\95\05\81\01u\10\95\01\14\A4\05\01U\FDe\134\090F@\1F&\FF\7F\81\02\091Fp\17&\FF\7F\81\02\B4\090&\FF\03\81\02\C0\C0\05\01\09\02\A1\01\85\08\09\01\A0u\01\05\09\19\01)\03\14%\01\95\03\81\02\95\05\81\01\05\01u\08\090\091\15\81%\7F\95\02\81\06\098\15\FF%\01\95\01\81\06\81\01\C0\C0", [59 x i8] zeroinitializer }, align 32
@uclogic_rdesc_wp8060u_fixed_size = dso_local constant { i32, [28 x i8] } { i32 133, [28 x i8] zeroinitializer }, align 32
@uclogic_rdesc_wp1062_fixed_arr = dso_local global { [79 x i8], [49 x i8] } { [79 x i8] c"\05\0D\09\02\A1\01\85\09\09 \A0u\01\09B\09D\09F\14%\01\95\03\81\02\95\04\81\01\092\95\01\81\02u\10\95\01\14\A4\05\01U\FDe\134\090F\10'& N\81\02\091F\B7\19&n3\81\02\B4\090&\FF\03\81\02\C0\C0", [49 x i8] zeroinitializer }, align 32
@uclogic_rdesc_wp1062_fixed_size = dso_local constant { i32, [28 x i8] } { i32 79, [28 x i8] zeroinitializer }, align 32
@uclogic_rdesc_pf1209_fixed_arr = dso_local global { [133 x i8], [59 x i8] } { [133 x i8] c"\05\0D\09\02\A1\01\85\09\09 \A0u\01\09B\09D\09F\14%\01\95\03\81\02\95\05\81\01u\10\95\01\14\A4\05\01U\FDe\134\090F\E0.&\FF\7F\81\02\091F(#&\FF\7F\81\02\B4\090&\FF\03\81\02\C0\C0\05\01\09\02\A1\01\85\08\09\01\A0u\01\05\09\19\01)\03\14%\01\95\03\81\02\95\05\81\01\05\01u\08\090\091\15\81%\7F\95\02\81\06\098\15\FF%\01\95\01\81\06\81\01\C0\C0", [59 x i8] zeroinitializer }, align 32
@uclogic_rdesc_pf1209_fixed_size = dso_local constant { i32, [28 x i8] } { i32 133, [28 x i8] zeroinitializer }, align 32
@uclogic_rdesc_twhl850_fixed0_arr = dso_local global { [76 x i8], [52 x i8] } { [76 x i8] c"\05\0D\09\02\A1\01\85\09\09 \A0\14%\01u\01\95\03\09B\09D\09F\81\02\81\03\95\01\092\81\02\81\03u\10\A4\05\01e\13U\FD4\090F@\1F&\00}\81\02\091F\88\13& N\81\02\B4\090&\FF\03\81\02\C0\C0", [52 x i8] zeroinitializer }, align 32
@uclogic_rdesc_twhl850_fixed0_size = dso_local constant { i32, [28 x i8] } { i32 76, [28 x i8] zeroinitializer }, align 32
@uclogic_rdesc_twhl850_fixed1_arr = dso_local global { [64 x i8], [32 x i8] } { [64 x i8] c"\05\01\09\02\A1\01\85\01\09\01\A0\05\09u\01\95\03\19\01)\03\14%\01\81\02\95\05\81\03\05\01\090\091\16\00\80&\FF\7Fu\10\95\02\81\06\098\15\FF%\01\95\01u\08\81\06\81\03\C0\C0", [32 x i8] zeroinitializer }, align 32
@uclogic_rdesc_twhl850_fixed1_size = dso_local constant { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@uclogic_rdesc_twhl850_fixed2_arr = dso_local global { [35 x i8], [61 x i8] } { [35 x i8] c"\05\01\09\06\A1\01\85\03\05\07\14\19\E0)\E7%\01u\01\95\08\81\02\18)\FF&\FF\00u\08\95\06\80\C0", [61 x i8] zeroinitializer }, align 32
@uclogic_rdesc_twhl850_fixed2_size = dso_local constant { i32, [28 x i8] } { i32 35, [28 x i8] zeroinitializer }, align 32
@uclogic_rdesc_twha60_fixed0_arr = dso_local global { [81 x i8], [47 x i8] } { [81 x i8] c"\05\0D\09\02\A1\01\85\09\09 \A0u\01\09B\09D\09F\14%\01\95\03\81\02\95\04\81\01\092\95\01\81\02u\10\95\01\14\A4\05\01U\FDe\134\090F\10''?\9C\00\00\81\02\091Fj\18&\A7a\81\02\B4\090&\FF\03\81\02\C0\C0", [47 x i8] zeroinitializer }, align 32
@uclogic_rdesc_twha60_fixed0_size = dso_local constant { i32, [28 x i8] } { i32 81, [28 x i8] zeroinitializer }, align 32
@uclogic_rdesc_twha60_fixed1_arr = dso_local global { [40 x i8], [56 x i8] } { [40 x i8] c"\05\01\09\06\A1\01\85\05\05\07\14%\01u\01\95\08\81\01\95\0C\19:)E\81\02\95\0C\19h)s\81\02\95\08\81\01\C0", [56 x i8] zeroinitializer }, align 32
@uclogic_rdesc_twha60_fixed1_size = dso_local constant { i32, [28 x i8] } { i32 40, [28 x i8] zeroinitializer }, align 32
@uclogic_rdesc_pen_v1_template_arr = dso_local constant { [92 x i8], [36 x i8] } { [92 x i8] c"\05\0D\09\02\A1\01\85\07\09 \A0\14%\01u\01\09B\09D\09F\95\03\81\02\95\03\81\03\092\95\01\81\02\95\01\81\03u\10\95\01\A4\05\01e\13U\FD4\090'\FE\ED\1D\00G\FE\ED\1D\01\81\02\091'\FE\ED\1D\02G\FE\ED\1D\03\81\02\B4\090'\FE\ED\1D\04\81\02\C0\C0", [36 x i8] zeroinitializer }, align 32
@uclogic_rdesc_pen_v1_template_size = dso_local constant { i32, [28 x i8] } { i32 92, [28 x i8] zeroinitializer }, align 32
@uclogic_rdesc_pen_v2_template_arr = dso_local constant { [96 x i8], [32 x i8] } { [96 x i8] c"\05\0D\09\02\A1\01\85\08\09 \A0\14%\01u\01\09B\09D\09F\95\03\81\02\95\03\81\03\092\95\01\81\02\95\01\81\03\95\01\A4\05\01e\13U\FDu\184\090'\FE\ED\1D\00G\FE\ED\1D\01\81\02\091'\FE\ED\1D\02G\FE\ED\1D\03\81\02\B4\090u\10'\FE\ED\1D\04\81\02\81\03\C0\C0", [32 x i8] zeroinitializer }, align 32
@uclogic_rdesc_pen_v2_template_size = dso_local constant { i32, [28 x i8] } { i32 96, [28 x i8] zeroinitializer }, align 32
@uclogic_rdesc_buttonpad_v1_arr = dso_local constant { [70 x i8], [58 x i8] } { [70 x i8] c"\05\01\09\07\A1\01\85\F7\14%\01u\01\05\0D\099\A0\09D\95\01\81\02\05\01\090\091\95\02\81\02\95\15\81\01\05\09\19\01)\0A\95\0A\81\02\C0\05\01\09\05\A0\05\09\19\01)\02\95\02\81\02\95\14\81\01\C0\C0", [58 x i8] zeroinitializer }, align 32
@uclogic_rdesc_buttonpad_v1_size = dso_local constant { i32, [28 x i8] } { i32 70, [28 x i8] zeroinitializer }, align 32
@uclogic_rdesc_buttonpad_v2_arr = dso_local constant { [70 x i8], [58 x i8] } { [70 x i8] c"\05\01\09\07\A1\01\85\F7\14%\01u\01\05\0D\099\A0\09D\95\01\81\02\05\01\090\091\95\02\81\02\95\15\81\01\05\09\19\01)\0A\95\0A\81\02\C0\05\01\09\05\A0\05\09\19\01)\02\95\02\81\02\954\81\01\C0\C0", [58 x i8] zeroinitializer }, align 32
@uclogic_rdesc_buttonpad_v2_size = dso_local constant { i32, [28 x i8] } { i32 70, [28 x i8] zeroinitializer }, align 32
@uclogic_rdesc_ugee_ex07_buttonpad_arr = dso_local constant { [39 x i8], [57 x i8] } { [39 x i8] c"\05\01\09\07\A1\01\85\06\05\0D\099\A0\05\09u\01\19\03)\06\95\04\81\02\95\1A\81\03\19\01)\02\95\02\81\02\C0\C0", [57 x i8] zeroinitializer }, align 32
@uclogic_rdesc_ugee_ex07_buttonpad_size = dso_local constant { i32, [28 x i8] } { i32 39, [28 x i8] zeroinitializer }, align 32
@uclogic_rdesc_ugee_g5_frame_arr = dso_local constant { [94 x i8], [34 x i8] } { [94 x i8] c"\05\01\09\07\A1\01\85\06\05\0D\099\A0\14%\01\05\01\05\09\19\01)\05u\01\95\05\81\02u\01\95\03\81\01\05\0D\0A\FF\FF&\FF\00u\08\95\01\81\02%\01\09Du\01\95\01\81\02\05\01\090\091u\01\95\02\81\02u\01\95\0B\81\01\05\01\098\15\FF%\01u\02\95\01\81\06\C0\C0", [34 x i8] zeroinitializer }, align 32
@uclogic_rdesc_ugee_g5_frame_size = dso_local constant { i32, [28 x i8] } { i32 94, [28 x i8] zeroinitializer }, align 32
@uclogic_rdesc_xppen_deco01_frame_arr = dso_local constant { [52 x i8], [44 x i8] } { [52 x i8] c"\05\01\09\07\A1\01\85\06\14%\01u\01\05\0D\099\A0\05\09\19\01)\08\95\08\81\02\05\0D\09D\95\01\81\02\05\01\090\091\95\02\81\02\95\15\81\01\C0\C0", [44 x i8] zeroinitializer }, align 32
@uclogic_rdesc_xppen_deco01_frame_size = dso_local constant { i32, [28 x i8] } { i32 52, [28 x i8] zeroinitializer }, align 32
@uclogic_rdesc_template_apply.head = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\FE\ED\1D", [29 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [32 x i8] c"uclogic_rdesc_wp4030u_fixed_arr\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 22, i32 6 }
@___asan_gen_.4 = private unnamed_addr constant [33 x i8] c"uclogic_rdesc_wp4030u_fixed_size\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 63, i32 14 }
@___asan_gen_.7 = private unnamed_addr constant [32 x i8] c"uclogic_rdesc_wp5540u_fixed_arr\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 67, i32 6 }
@___asan_gen_.10 = private unnamed_addr constant [33 x i8] c"uclogic_rdesc_wp5540u_fixed_size\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 140, i32 14 }
@___asan_gen_.13 = private unnamed_addr constant [32 x i8] c"uclogic_rdesc_wp8060u_fixed_arr\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 144, i32 6 }
@___asan_gen_.16 = private unnamed_addr constant [33 x i8] c"uclogic_rdesc_wp8060u_fixed_size\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 217, i32 14 }
@___asan_gen_.19 = private unnamed_addr constant [31 x i8] c"uclogic_rdesc_wp1062_fixed_arr\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 221, i32 6 }
@___asan_gen_.22 = private unnamed_addr constant [32 x i8] c"uclogic_rdesc_wp1062_fixed_size\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 265, i32 14 }
@___asan_gen_.25 = private unnamed_addr constant [31 x i8] c"uclogic_rdesc_pf1209_fixed_arr\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 269, i32 6 }
@___asan_gen_.28 = private unnamed_addr constant [32 x i8] c"uclogic_rdesc_pf1209_fixed_size\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 342, i32 14 }
@___asan_gen_.31 = private unnamed_addr constant [33 x i8] c"uclogic_rdesc_twhl850_fixed0_arr\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 346, i32 6 }
@___asan_gen_.34 = private unnamed_addr constant [34 x i8] c"uclogic_rdesc_twhl850_fixed0_size\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 388, i32 14 }
@___asan_gen_.37 = private unnamed_addr constant [33 x i8] c"uclogic_rdesc_twhl850_fixed1_arr\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 392, i32 6 }
@___asan_gen_.40 = private unnamed_addr constant [34 x i8] c"uclogic_rdesc_twhl850_fixed1_size\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 428, i32 14 }
@___asan_gen_.43 = private unnamed_addr constant [33 x i8] c"uclogic_rdesc_twhl850_fixed2_arr\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 432, i32 6 }
@___asan_gen_.46 = private unnamed_addr constant [34 x i8] c"uclogic_rdesc_twhl850_fixed2_size\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 454, i32 14 }
@___asan_gen_.49 = private unnamed_addr constant [32 x i8] c"uclogic_rdesc_twha60_fixed0_arr\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 458, i32 6 }
@___asan_gen_.52 = private unnamed_addr constant [33 x i8] c"uclogic_rdesc_twha60_fixed0_size\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 503, i32 14 }
@___asan_gen_.55 = private unnamed_addr constant [32 x i8] c"uclogic_rdesc_twha60_fixed1_arr\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 507, i32 6 }
@___asan_gen_.58 = private unnamed_addr constant [33 x i8] c"uclogic_rdesc_twha60_fixed1_size\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 531, i32 14 }
@___asan_gen_.61 = private unnamed_addr constant [34 x i8] c"uclogic_rdesc_pen_v1_template_arr\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 535, i32 12 }
@___asan_gen_.64 = private unnamed_addr constant [35 x i8] c"uclogic_rdesc_pen_v1_template_size\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 585, i32 14 }
@___asan_gen_.67 = private unnamed_addr constant [34 x i8] c"uclogic_rdesc_pen_v2_template_arr\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 589, i32 12 }
@___asan_gen_.70 = private unnamed_addr constant [35 x i8] c"uclogic_rdesc_pen_v2_template_size\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 641, i32 14 }
@___asan_gen_.73 = private unnamed_addr constant [31 x i8] c"uclogic_rdesc_buttonpad_v1_arr\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 691, i32 12 }
@___asan_gen_.76 = private unnamed_addr constant [32 x i8] c"uclogic_rdesc_buttonpad_v1_size\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 694, i32 14 }
@___asan_gen_.79 = private unnamed_addr constant [31 x i8] c"uclogic_rdesc_buttonpad_v2_arr\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 698, i32 12 }
@___asan_gen_.82 = private unnamed_addr constant [32 x i8] c"uclogic_rdesc_buttonpad_v2_size\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 701, i32 14 }
@___asan_gen_.85 = private unnamed_addr constant [38 x i8] c"uclogic_rdesc_ugee_ex07_buttonpad_arr\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 705, i32 12 }
@___asan_gen_.88 = private unnamed_addr constant [39 x i8] c"uclogic_rdesc_ugee_ex07_buttonpad_size\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 728, i32 14 }
@___asan_gen_.91 = private unnamed_addr constant [32 x i8] c"uclogic_rdesc_ugee_g5_frame_arr\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 732, i32 12 }
@___asan_gen_.94 = private unnamed_addr constant [33 x i8] c"uclogic_rdesc_ugee_g5_frame_size\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 782, i32 14 }
@___asan_gen_.97 = private unnamed_addr constant [37 x i8] c"uclogic_rdesc_xppen_deco01_frame_arr\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 786, i32 12 }
@___asan_gen_.100 = private unnamed_addr constant [38 x i8] c"uclogic_rdesc_xppen_deco01_frame_size\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 817, i32 14 }
@___asan_gen_.103 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@___asan_gen_.104 = private constant [35 x i8] c"../drivers/hid/hid-uclogic-rdesc.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 841, i32 20 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @uclogic_rdesc_wp4030u_fixed_arr, ptr @uclogic_rdesc_wp4030u_fixed_size, ptr @uclogic_rdesc_wp5540u_fixed_arr, ptr @uclogic_rdesc_wp5540u_fixed_size, ptr @uclogic_rdesc_wp8060u_fixed_arr, ptr @uclogic_rdesc_wp8060u_fixed_size, ptr @uclogic_rdesc_wp1062_fixed_arr, ptr @uclogic_rdesc_wp1062_fixed_size, ptr @uclogic_rdesc_pf1209_fixed_arr, ptr @uclogic_rdesc_pf1209_fixed_size, ptr @uclogic_rdesc_twhl850_fixed0_arr, ptr @uclogic_rdesc_twhl850_fixed0_size, ptr @uclogic_rdesc_twhl850_fixed1_arr, ptr @uclogic_rdesc_twhl850_fixed1_size, ptr @uclogic_rdesc_twhl850_fixed2_arr, ptr @uclogic_rdesc_twhl850_fixed2_size, ptr @uclogic_rdesc_twha60_fixed0_arr, ptr @uclogic_rdesc_twha60_fixed0_size, ptr @uclogic_rdesc_twha60_fixed1_arr, ptr @uclogic_rdesc_twha60_fixed1_size, ptr @uclogic_rdesc_pen_v1_template_arr, ptr @uclogic_rdesc_pen_v1_template_size, ptr @uclogic_rdesc_pen_v2_template_arr, ptr @uclogic_rdesc_pen_v2_template_size, ptr @uclogic_rdesc_buttonpad_v1_arr, ptr @uclogic_rdesc_buttonpad_v1_size, ptr @uclogic_rdesc_buttonpad_v2_arr, ptr @uclogic_rdesc_buttonpad_v2_size, ptr @uclogic_rdesc_ugee_ex07_buttonpad_arr, ptr @uclogic_rdesc_ugee_ex07_buttonpad_size, ptr @uclogic_rdesc_ugee_g5_frame_arr, ptr @uclogic_rdesc_ugee_g5_frame_size, ptr @uclogic_rdesc_xppen_deco01_frame_arr, ptr @uclogic_rdesc_xppen_deco01_frame_size, ptr @uclogic_rdesc_template_apply.head], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_wp4030u_fixed_arr to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_wp4030u_fixed_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_wp5540u_fixed_arr to i32), i32 133, i32 192, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_wp5540u_fixed_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_wp8060u_fixed_arr to i32), i32 133, i32 192, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_wp8060u_fixed_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_wp1062_fixed_arr to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_wp1062_fixed_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_pf1209_fixed_arr to i32), i32 133, i32 192, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_pf1209_fixed_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_twhl850_fixed0_arr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_twhl850_fixed0_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_twhl850_fixed1_arr to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_twhl850_fixed1_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_twhl850_fixed2_arr to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_twhl850_fixed2_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_twha60_fixed0_arr to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_twha60_fixed0_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_twha60_fixed1_arr to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_twha60_fixed1_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_pen_v1_template_arr to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_pen_v1_template_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_pen_v2_template_arr to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_pen_v2_template_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_buttonpad_v1_arr to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_buttonpad_v1_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_buttonpad_v2_arr to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_buttonpad_v2_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_ugee_ex07_buttonpad_arr to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_ugee_ex07_buttonpad_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_ugee_g5_frame_arr to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_ugee_g5_frame_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_xppen_deco01_frame_arr to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_xppen_deco01_frame_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_rdesc_template_apply.head to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @uclogic_rdesc_template_apply(ptr noundef %template_ptr, i32 noundef %template_size, ptr nocapture noundef readonly %param_list, i32 noundef %param_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmemdup(ptr noundef %template_ptr, i32 noundef %template_size, i32 noundef 3264) #4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %add.ptr1 = getelementptr i8, ptr %call, i32 %template_size
  %add.ptr24 = getelementptr i8, ptr %call, i32 3
  %cmp225 = icmp ult ptr %add.ptr24, %add.ptr1
  br i1 %cmp225, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %add.ptr28 = phi ptr [ %add.ptr, %if.end11.for.body_crit_edge ], [ %add.ptr24, %for.cond.preheader.for.body_crit_edge ]
  %p.026 = phi ptr [ %incdec.ptr, %if.end11.for.body_crit_edge ], [ %call, %for.cond.preheader.for.body_crit_edge ]
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(3) %p.026, ptr noundef nonnull dereferenceable(3) @uclogic_rdesc_template_apply.head, i32 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp4 = icmp eq i32 %bcmp, 0
  br i1 %cmp4, label %land.lhs.true, label %for.body.if.end11_crit_edge

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

land.lhs.true:                                    ; preds = %for.body
  %0 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr28, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %param_num)
  %cmp5 = icmp ult i32 %conv, %param_num
  br i1 %cmp5, label %if.then7, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx9 = getelementptr i32, ptr %param_list, i32 %conv
  %2 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx9, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %p.026 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %p.026, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %land.lhs.true.if.end11_crit_edge, %for.body.if.end11_crit_edge
  %.sink = phi i32 [ 4, %if.then7 ], [ 1, %land.lhs.true.if.end11_crit_edge ], [ 1, %for.body.if.end11_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %p.026, i32 %.sink
  %add.ptr = getelementptr i8, ptr %incdec.ptr, i32 3
  %cmp2 = icmp ult ptr %add.ptr, %add.ptr1
  br i1 %cmp2, label %if.end11.for.body_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup:                                          ; preds = %if.end11.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nofree nounwind readonly willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @uclogic_rdesc_wp4030u_fixed_arr, !1, !"uclogic_rdesc_wp4030u_fixed_arr", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 22, i32 6}
!2 = !{ptr @uclogic_rdesc_wp4030u_fixed_size, !3, !"uclogic_rdesc_wp4030u_fixed_size", i1 false, i1 false}
!3 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 63, i32 14}
!4 = !{ptr @uclogic_rdesc_wp5540u_fixed_arr, !5, !"uclogic_rdesc_wp5540u_fixed_arr", i1 false, i1 false}
!5 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 67, i32 6}
!6 = !{ptr @uclogic_rdesc_wp5540u_fixed_size, !7, !"uclogic_rdesc_wp5540u_fixed_size", i1 false, i1 false}
!7 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 140, i32 14}
!8 = !{ptr @uclogic_rdesc_wp8060u_fixed_arr, !9, !"uclogic_rdesc_wp8060u_fixed_arr", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 144, i32 6}
!10 = !{ptr @uclogic_rdesc_wp8060u_fixed_size, !11, !"uclogic_rdesc_wp8060u_fixed_size", i1 false, i1 false}
!11 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 217, i32 14}
!12 = !{ptr @uclogic_rdesc_wp1062_fixed_arr, !13, !"uclogic_rdesc_wp1062_fixed_arr", i1 false, i1 false}
!13 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 221, i32 6}
!14 = !{ptr @uclogic_rdesc_wp1062_fixed_size, !15, !"uclogic_rdesc_wp1062_fixed_size", i1 false, i1 false}
!15 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 265, i32 14}
!16 = !{ptr @uclogic_rdesc_pf1209_fixed_arr, !17, !"uclogic_rdesc_pf1209_fixed_arr", i1 false, i1 false}
!17 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 269, i32 6}
!18 = !{ptr @uclogic_rdesc_pf1209_fixed_size, !19, !"uclogic_rdesc_pf1209_fixed_size", i1 false, i1 false}
!19 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 342, i32 14}
!20 = !{ptr @uclogic_rdesc_twhl850_fixed0_arr, !21, !"uclogic_rdesc_twhl850_fixed0_arr", i1 false, i1 false}
!21 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 346, i32 6}
!22 = !{ptr @uclogic_rdesc_twhl850_fixed0_size, !23, !"uclogic_rdesc_twhl850_fixed0_size", i1 false, i1 false}
!23 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 388, i32 14}
!24 = !{ptr @uclogic_rdesc_twhl850_fixed1_arr, !25, !"uclogic_rdesc_twhl850_fixed1_arr", i1 false, i1 false}
!25 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 392, i32 6}
!26 = !{ptr @uclogic_rdesc_twhl850_fixed1_size, !27, !"uclogic_rdesc_twhl850_fixed1_size", i1 false, i1 false}
!27 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 428, i32 14}
!28 = !{ptr @uclogic_rdesc_twhl850_fixed2_arr, !29, !"uclogic_rdesc_twhl850_fixed2_arr", i1 false, i1 false}
!29 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 432, i32 6}
!30 = !{ptr @uclogic_rdesc_twhl850_fixed2_size, !31, !"uclogic_rdesc_twhl850_fixed2_size", i1 false, i1 false}
!31 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 454, i32 14}
!32 = !{ptr @uclogic_rdesc_twha60_fixed0_arr, !33, !"uclogic_rdesc_twha60_fixed0_arr", i1 false, i1 false}
!33 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 458, i32 6}
!34 = !{ptr @uclogic_rdesc_twha60_fixed0_size, !35, !"uclogic_rdesc_twha60_fixed0_size", i1 false, i1 false}
!35 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 503, i32 14}
!36 = !{ptr @uclogic_rdesc_twha60_fixed1_arr, !37, !"uclogic_rdesc_twha60_fixed1_arr", i1 false, i1 false}
!37 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 507, i32 6}
!38 = !{ptr @uclogic_rdesc_twha60_fixed1_size, !39, !"uclogic_rdesc_twha60_fixed1_size", i1 false, i1 false}
!39 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 531, i32 14}
!40 = !{ptr @uclogic_rdesc_pen_v1_template_arr, !41, !"uclogic_rdesc_pen_v1_template_arr", i1 false, i1 false}
!41 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 535, i32 12}
!42 = !{ptr @uclogic_rdesc_pen_v1_template_size, !43, !"uclogic_rdesc_pen_v1_template_size", i1 false, i1 false}
!43 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 585, i32 14}
!44 = !{ptr @uclogic_rdesc_pen_v2_template_arr, !45, !"uclogic_rdesc_pen_v2_template_arr", i1 false, i1 false}
!45 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 589, i32 12}
!46 = !{ptr @uclogic_rdesc_pen_v2_template_size, !47, !"uclogic_rdesc_pen_v2_template_size", i1 false, i1 false}
!47 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 641, i32 14}
!48 = !{ptr @uclogic_rdesc_buttonpad_v1_arr, !49, !"uclogic_rdesc_buttonpad_v1_arr", i1 false, i1 false}
!49 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 691, i32 12}
!50 = !{ptr @uclogic_rdesc_buttonpad_v1_size, !51, !"uclogic_rdesc_buttonpad_v1_size", i1 false, i1 false}
!51 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 694, i32 14}
!52 = !{ptr @uclogic_rdesc_buttonpad_v2_arr, !53, !"uclogic_rdesc_buttonpad_v2_arr", i1 false, i1 false}
!53 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 698, i32 12}
!54 = !{ptr @uclogic_rdesc_buttonpad_v2_size, !55, !"uclogic_rdesc_buttonpad_v2_size", i1 false, i1 false}
!55 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 701, i32 14}
!56 = !{ptr @uclogic_rdesc_ugee_ex07_buttonpad_arr, !57, !"uclogic_rdesc_ugee_ex07_buttonpad_arr", i1 false, i1 false}
!57 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 705, i32 12}
!58 = !{ptr @uclogic_rdesc_ugee_ex07_buttonpad_size, !59, !"uclogic_rdesc_ugee_ex07_buttonpad_size", i1 false, i1 false}
!59 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 728, i32 14}
!60 = !{ptr @uclogic_rdesc_ugee_g5_frame_arr, !61, !"uclogic_rdesc_ugee_g5_frame_arr", i1 false, i1 false}
!61 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 732, i32 12}
!62 = !{ptr @uclogic_rdesc_ugee_g5_frame_size, !63, !"uclogic_rdesc_ugee_g5_frame_size", i1 false, i1 false}
!63 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 782, i32 14}
!64 = !{ptr @uclogic_rdesc_xppen_deco01_frame_arr, !65, !"uclogic_rdesc_xppen_deco01_frame_arr", i1 false, i1 false}
!65 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 786, i32 12}
!66 = !{ptr @uclogic_rdesc_xppen_deco01_frame_size, !67, !"uclogic_rdesc_xppen_deco01_frame_size", i1 false, i1 false}
!67 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 817, i32 14}
!68 = !{ptr @uclogic_rdesc_template_apply.head, !69, !"head", i1 false, i1 false}
!69 = !{!"../drivers/hid/hid-uclogic-rdesc.c", i32 841, i32 20}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
