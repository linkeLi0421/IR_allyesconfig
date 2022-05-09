; ModuleID = '/llk/IR_all_yes/drivers/gpu/ipu-v3/ipu-ic-csc.c_pt.bc'
source_filename = "../drivers/gpu/ipu-v3/ipu-ic-csc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__ipu_ic_calc_csc\22, \22a\22\09"
module asm "\09.weak\09__crc___ipu_ic_calc_csc\09\09\09\09"
module asm "\09.long\09__crc___ipu_ic_calc_csc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ipu_ic_calc_csc:\09\09\09\09\09"
module asm "\09.asciz \09\22__ipu_ic_calc_csc\22\09\09\09\09\09"
module asm "__kstrtabns___ipu_ic_calc_csc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ipu_ic_calc_csc\22, \22a\22\09"
module asm "\09.weak\09__crc_ipu_ic_calc_csc\09\09\09\09"
module asm "\09.long\09__crc_ipu_ic_calc_csc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipu_ic_calc_csc:\09\09\09\09\09"
module asm "\09.asciz \09\22ipu_ic_calc_csc\22\09\09\09\09\09"
module asm "__kstrtabns_ipu_ic_calc_csc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ipu_ic_csc_params = type { [3 x [3 x i16]], [3 x i16], i8 }
%struct.ipu_ic_colorspace = type { i32, i32, i32 }
%struct.ipu_ic_csc = type { %struct.ipu_ic_colorspace, %struct.ipu_ic_colorspace, %struct.ipu_ic_csc_params }

@__kstrtab___ipu_ic_calc_csc = external dso_local constant [0 x i8], align 1
@__kstrtabns___ipu_ic_calc_csc = external dso_local constant [0 x i8], align 1
@__ksymtab___ipu_ic_calc_csc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ipu_ic_calc_csc to i32), ptr @__kstrtab___ipu_ic_calc_csc, ptr @__kstrtabns___ipu_ic_calc_csc }, section "___ksymtab_gpl+__ipu_ic_calc_csc", align 4
@__kstrtab_ipu_ic_calc_csc = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipu_ic_calc_csc = external dso_local constant [0 x i8], align 1
@__ksymtab_ipu_ic_calc_csc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipu_ic_calc_csc to i32), ptr @__kstrtab_ipu_ic_calc_csc, ptr @__kstrtabns_ipu_ic_calc_csc }, section "___ksymtab_gpl+ipu_ic_calc_csc", align 4
@yuv2yuv = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @identity, ptr @yuvf2yuvl, ptr @yuvl2yuvf, ptr @identity], [16 x i8] zeroinitializer }, align 32
@rgb2rgb = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @identity, ptr @rgbf2rgbl, ptr @rgbl2rgbf, ptr @identity], [16 x i8] zeroinitializer }, align 32
@yuv2rgb_601 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @yuvf2rgbf_601, ptr @yuvf2rgbl_601, ptr @yuvl2rgbf_601, ptr @yuvl2rgbl_601], [16 x i8] zeroinitializer }, align 32
@rgb2yuv_601 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @rgbf2yuvf_601, ptr @rgbf2yuvl_601, ptr @rgbl2yuvf_601, ptr @rgbl2yuvl_601], [16 x i8] zeroinitializer }, align 32
@yuv2rgb_709 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @yuvf2rgbf_709, ptr @yuvf2rgbl_709, ptr @yuvl2rgbf_709, ptr @yuvl2rgbl_709], [16 x i8] zeroinitializer }, align 32
@rgb2yuv_709 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @rgbf2yuvf_709, ptr @rgbf2yuvl_709, ptr @rgbl2yuvf_709, ptr @rgbl2yuvl_709], [16 x i8] zeroinitializer }, align 32
@identity = internal constant { %struct.ipu_ic_csc_params, [38 x i8] } { %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 128, i16 0, i16 0], [3 x i16] [i16 0, i16 128, i16 0], [3 x i16] [i16 0, i16 0, i16 128]], [3 x i16] zeroinitializer, i8 -128 }, [38 x i8] zeroinitializer }, align 32
@yuvf2yuvl = internal constant { %struct.ipu_ic_csc_params, [38 x i8] } { %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 220, i16 0, i16 0], [3 x i16] [i16 0, i16 225, i16 0], [3 x i16] [i16 0, i16 0, i16 225]], [3 x i16] [i16 64, i16 62, i16 62], i8 96 }, [38 x i8] zeroinitializer }, align 32
@yuvl2yuvf = internal constant { %struct.ipu_ic_csc_params, [38 x i8] } { %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 149, i16 0, i16 0], [3 x i16] [i16 0, i16 146, i16 0], [3 x i16] [i16 0, i16 0, i16 146]], [3 x i16] [i16 -37, i16 -35, i16 -35], i8 -128 }, [38 x i8] zeroinitializer }, align 32
@rgbf2rgbl = internal constant { %struct.ipu_ic_csc_params, [38 x i8] } { %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 220, i16 0, i16 0], [3 x i16] [i16 0, i16 220, i16 0], [3 x i16] [i16 0, i16 0, i16 220]], [3 x i16] [i16 64, i16 64, i16 64], i8 64 }, [38 x i8] zeroinitializer }, align 32
@rgbl2rgbf = internal constant { %struct.ipu_ic_csc_params, [38 x i8] } { %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 149, i16 0, i16 0], [3 x i16] [i16 0, i16 149, i16 0], [3 x i16] [i16 0, i16 0, i16 149]], [3 x i16] [i16 -37, i16 -37, i16 -37], i8 -128 }, [38 x i8] zeroinitializer }, align 32
@yuvf2rgbf_601 = internal constant { %struct.ipu_ic_csc_params, [38 x i8] } { %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 128, i16 0, i16 179], [3 x i16] [i16 128, i16 -44, i16 -91], [3 x i16] [i16 128, i16 227, i16 0]], [3 x i16] [i16 -359, i16 271, i16 -454], i8 -128 }, [38 x i8] zeroinitializer }, align 32
@yuvf2rgbl_601 = internal constant { %struct.ipu_ic_csc_params, [38 x i8] } { %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 110, i16 0, i16 154], [3 x i16] [i16 110, i16 -38, i16 -78], [3 x i16] [i16 110, i16 195, i16 0]], [3 x i16] [i16 -276, i16 265, i16 -358], i8 -128 }, [38 x i8] zeroinitializer }, align 32
@yuvl2rgbf_601 = internal constant { %struct.ipu_ic_csc_params, [38 x i8] } { %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 75, i16 0, i16 102], [3 x i16] [i16 75, i16 -25, i16 -52], [3 x i16] [i16 75, i16 129, i16 0]], [3 x i16] [i16 -223, i16 136, i16 -277], i8 -64 }, [38 x i8] zeroinitializer }, align 32
@yuvl2rgbl_601 = internal constant { %struct.ipu_ic_csc_params, [38 x i8] } { %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 128, i16 0, i16 175], [3 x i16] [i16 128, i16 -43, i16 -89], [3 x i16] [i16 128, i16 222, i16 0]], [3 x i16] [i16 -351, i16 265, i16 -443], i8 -128 }, [38 x i8] zeroinitializer }, align 32
@rgbf2yuvf_601 = internal constant { %struct.ipu_ic_csc_params, [38 x i8] } { %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 77, i16 150, i16 29], [3 x i16] [i16 -43, i16 -85, i16 128], [3 x i16] [i16 128, i16 -107, i16 -21]], [3 x i16] [i16 0, i16 512, i16 512], i8 64 }, [38 x i8] zeroinitializer }, align 32
@rgbf2yuvl_601 = internal constant { %struct.ipu_ic_csc_params, [38 x i8] } { %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 66, i16 129, i16 25], [3 x i16] [i16 -38, i16 -74, i16 112], [3 x i16] [i16 112, i16 -94, i16 -18]], [3 x i16] [i16 64, i16 512, i16 512], i8 96 }, [38 x i8] zeroinitializer }, align 32
@rgbl2yuvf_601 = internal constant { %struct.ipu_ic_csc_params, [38 x i8] } { %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 89, i16 175, i16 34], [3 x i16] [i16 -50, i16 -99, i16 149], [3 x i16] [i16 149, i16 -125, i16 -24]], [3 x i16] [i16 -75, i16 512, i16 512], i8 64 }, [38 x i8] zeroinitializer }, align 32
@rgbl2yuvl_601 = internal constant { %struct.ipu_ic_csc_params, [38 x i8] } { %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 77, i16 150, i16 29], [3 x i16] [i16 -44, i16 -87, i16 131], [3 x i16] [i16 131, i16 -110, i16 -21]], [3 x i16] [i16 0, i16 512, i16 512], i8 96 }, [38 x i8] zeroinitializer }, align 32
@yuvf2rgbf_709 = internal constant { %struct.ipu_ic_csc_params, [38 x i8] } { %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 128, i16 0, i16 202], [3 x i16] [i16 128, i16 -24, i16 -60], [3 x i16] [i16 128, i16 238, i16 0]], [3 x i16] [i16 -403, i16 168, i16 -475], i8 -128 }, [38 x i8] zeroinitializer }, align 32
@yuvf2rgbl_709 = internal constant { %struct.ipu_ic_csc_params, [38 x i8] } { %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 110, i16 0, i16 173], [3 x i16] [i16 110, i16 -21, i16 -51], [3 x i16] [i16 110, i16 204, i16 0]], [3 x i16] [i16 -314, i16 176, i16 -376], i8 -128 }, [38 x i8] zeroinitializer }, align 32
@yuvl2rgbf_709 = internal constant { %struct.ipu_ic_csc_params, [38 x i8] } { %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 75, i16 0, i16 115], [3 x i16] [i16 75, i16 -14, i16 -34], [3 x i16] [i16 75, i16 135, i16 0]], [3 x i16] [i16 -248, i16 77, i16 -289], i8 -64 }, [38 x i8] zeroinitializer }, align 32
@yuvl2rgbl_709 = internal constant { %struct.ipu_ic_csc_params, [38 x i8] } { %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 128, i16 0, i16 197], [3 x i16] [i16 128, i16 -23, i16 -59], [3 x i16] [i16 128, i16 232, i16 0]], [3 x i16] [i16 -394, i16 164, i16 -464], i8 -128 }, [38 x i8] zeroinitializer }, align 32
@rgbf2yuvf_709 = internal constant { %struct.ipu_ic_csc_params, [38 x i8] } { %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 54, i16 183, i16 19], [3 x i16] [i16 -29, i16 -99, i16 128], [3 x i16] [i16 128, i16 -116, i16 -12]], [3 x i16] [i16 0, i16 512, i16 512], i8 64 }, [38 x i8] zeroinitializer }, align 32
@rgbf2yuvl_709 = internal constant { %struct.ipu_ic_csc_params, [38 x i8] } { %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 47, i16 157, i16 16], [3 x i16] [i16 -26, i16 -87, i16 112], [3 x i16] [i16 112, i16 -102, i16 -10]], [3 x i16] [i16 64, i16 512, i16 512], i8 96 }, [38 x i8] zeroinitializer }, align 32
@rgbl2yuvf_709 = internal constant { %struct.ipu_ic_csc_params, [38 x i8] } { %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 63, i16 213, i16 22], [3 x i16] [i16 -34, i16 -115, i16 149], [3 x i16] [i16 149, i16 -135, i16 -14]], [3 x i16] [i16 -75, i16 512, i16 512], i8 64 }, [38 x i8] zeroinitializer }, align 32
@rgbl2yuvl_709 = internal constant { %struct.ipu_ic_csc_params, [38 x i8] } { %struct.ipu_ic_csc_params { [3 x [3 x i16]] [[3 x i16] [i16 54, i16 183, i16 18], [3 x i16] [i16 -30, i16 -101, i16 131], [3 x i16] [i16 131, i16 -119, i16 -12]], [3 x i16] [i16 0, i16 512, i16 512], i8 96 }, [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.2 = private unnamed_addr constant [8 x i8] c"yuv2yuv\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 104, i32 40 }
@___asan_gen_.5 = private unnamed_addr constant [8 x i8] c"rgb2rgb\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 97, i32 40 }
@___asan_gen_.8 = private unnamed_addr constant [12 x i8] c"yuv2rgb_601\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 226, i32 40 }
@___asan_gen_.11 = private unnamed_addr constant [12 x i8] c"rgb2yuv_601\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 219, i32 40 }
@___asan_gen_.14 = private unnamed_addr constant [12 x i8] c"yuv2rgb_709\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 348, i32 40 }
@___asan_gen_.17 = private unnamed_addr constant [12 x i8] c"rgb2yuv_709\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 341, i32 40 }
@___asan_gen_.20 = private unnamed_addr constant [9 x i8] c"identity\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 18, i32 39 }
@___asan_gen_.23 = private unnamed_addr constant [10 x i8] c"yuvf2yuvl\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 69, i32 39 }
@___asan_gen_.26 = private unnamed_addr constant [10 x i8] c"yuvl2yuvf\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 87, i32 39 }
@___asan_gen_.29 = private unnamed_addr constant [10 x i8] c"rgbf2rgbl\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 35, i32 39 }
@___asan_gen_.32 = private unnamed_addr constant [10 x i8] c"rgbl2rgbf\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 52, i32 39 }
@___asan_gen_.35 = private unnamed_addr constant [14 x i8] c"yuvf2rgbf_601\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 176, i32 39 }
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"yuvf2rgbl_601\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 187, i32 39 }
@___asan_gen_.41 = private unnamed_addr constant [14 x i8] c"yuvl2rgbf_601\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 198, i32 39 }
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"yuvl2rgbl_601\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 209, i32 39 }
@___asan_gen_.47 = private unnamed_addr constant [14 x i8] c"rgbf2yuvf_601\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 118, i32 39 }
@___asan_gen_.50 = private unnamed_addr constant [14 x i8] c"rgbf2yuvl_601\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 129, i32 39 }
@___asan_gen_.53 = private unnamed_addr constant [14 x i8] c"rgbl2yuvf_601\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 141, i32 39 }
@___asan_gen_.56 = private unnamed_addr constant [14 x i8] c"rgbl2yuvl_601\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 152, i32 39 }
@___asan_gen_.59 = private unnamed_addr constant [14 x i8] c"yuvf2rgbf_709\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 298, i32 39 }
@___asan_gen_.62 = private unnamed_addr constant [14 x i8] c"yuvf2rgbl_709\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 309, i32 39 }
@___asan_gen_.65 = private unnamed_addr constant [14 x i8] c"yuvl2rgbf_709\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 320, i32 39 }
@___asan_gen_.68 = private unnamed_addr constant [14 x i8] c"yuvl2rgbl_709\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 331, i32 39 }
@___asan_gen_.71 = private unnamed_addr constant [14 x i8] c"rgbf2yuvf_709\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 240, i32 39 }
@___asan_gen_.74 = private unnamed_addr constant [14 x i8] c"rgbf2yuvl_709\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 251, i32 39 }
@___asan_gen_.77 = private unnamed_addr constant [14 x i8] c"rgbl2yuvf_709\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 263, i32 39 }
@___asan_gen_.80 = private unnamed_addr constant [14 x i8] c"rgbl2yuvl_709\00", align 1
@___asan_gen_.81 = private constant [35 x i8] c"../drivers/gpu/ipu-v3/ipu-ic-csc.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 274, i32 39 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__ksymtab___ipu_ic_calc_csc, ptr @__ksymtab_ipu_ic_calc_csc, ptr @yuv2yuv, ptr @rgb2rgb, ptr @yuv2rgb_601, ptr @rgb2yuv_601, ptr @yuv2rgb_709, ptr @rgb2yuv_709, ptr @identity, ptr @yuvf2yuvl, ptr @yuvl2yuvf, ptr @rgbf2rgbl, ptr @rgbl2rgbf, ptr @yuvf2rgbf_601, ptr @yuvf2rgbl_601, ptr @yuvl2rgbf_601, ptr @yuvl2rgbl_601, ptr @rgbf2yuvf_601, ptr @rgbf2yuvl_601, ptr @rgbl2yuvf_601, ptr @rgbl2yuvl_601, ptr @yuvf2rgbf_709, ptr @yuvf2rgbl_709, ptr @yuvl2rgbf_709, ptr @yuvl2rgbl_709, ptr @rgbf2yuvf_709, ptr @rgbf2yuvl_709, ptr @rgbl2yuvf_709, ptr @rgbl2yuvl_709], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuv2yuv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rgb2rgb to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuv2rgb_601 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rgb2yuv_601 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuv2rgb_709 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rgb2yuv_709 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @identity to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuvf2yuvl to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuvl2yuvf to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rgbf2rgbl to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rgbl2rgbf to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuvf2rgbf_601 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuvf2rgbl_601 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuvl2rgbf_601 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuvl2rgbl_601 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rgbf2yuvf_601 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rgbf2yuvl_601 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rgbl2yuvf_601 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rgbl2yuvl_601 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuvf2rgbf_709 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuvf2rgbl_709 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuvl2rgbf_709 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @yuvl2rgbl_709 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rgbf2yuvf_709 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rgbf2yuvl_709 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rgbl2yuvf_709 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rgbl2yuvl_709 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @__ipu_ic_calc_csc(ptr nocapture noundef %csc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %quant.i = getelementptr inbounds %struct.ipu_ic_colorspace, ptr %csc, i32 0, i32 1
  %0 = ptrtoint ptr %quant.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quant.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %2 = icmp ult i32 %1, 2
  %3 = select i1 %2, i32 0, i32 2
  %quant4.i = getelementptr inbounds %struct.ipu_ic_csc, ptr %csc, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %quant4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quant4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %6 = icmp ugt i32 %5, 1
  %7 = zext i1 %6 to i32
  %or.i = or i32 %3, %7
  %cs.i = getelementptr inbounds %struct.ipu_ic_colorspace, ptr %csc, i32 0, i32 2
  %8 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cs.i, align 4
  %cs14.i = getelementptr inbounds %struct.ipu_ic_csc, ptr %csc, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %cs14.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cs14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp15.i = icmp eq i32 %9, %11
  br i1 %cmp15.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp18.i = icmp eq i32 %9, 1
  br i1 %cmp18.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #3
  %arrayidx.i = getelementptr [4 x ptr], ptr @yuv2yuv, i32 0, i32 %or.i
  br label %cleanup.sink.split.i

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #3
  %arrayidx19.i = getelementptr [4 x ptr], ptr @rgb2rgb, i32 0, i32 %or.i
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %entry
  %out_cs.i = getelementptr inbounds %struct.ipu_ic_csc, ptr %csc, i32 0, i32 1
  %12 = ptrtoint ptr %out_cs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %out_cs.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.end.i.calc_csc_coeffs.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb25.i
  ]

if.end.i.calc_csc_coeffs.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %calc_csc_coeffs.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp23.i = icmp eq i32 %9, 1
  %cond24.i = select i1 %cmp23.i, ptr @yuv2rgb_601, ptr @rgb2yuv_601
  br label %sw.epilog.i

sw.bb25.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp28.i = icmp eq i32 %9, 1
  %cond29.i = select i1 %cmp28.i, ptr @yuv2rgb_709, ptr @rgb2yuv_709
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb25.i, %sw.bb.i
  %params_tbl.0.i = phi ptr [ %cond29.i, %sw.bb25.i ], [ %cond24.i, %sw.bb.i ]
  %arrayidx31.i = getelementptr ptr, ptr %params_tbl.0.i, i32 %or.i
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.epilog.i, %cond.false.i, %cond.true.i
  %arrayidx.sink.i = phi ptr [ %arrayidx.i, %cond.true.i ], [ %arrayidx19.i, %cond.false.i ], [ %arrayidx31.i, %sw.epilog.i ]
  %params.sink.i = getelementptr inbounds %struct.ipu_ic_csc, ptr %csc, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx.sink.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.sink.i, align 4
  %17 = call ptr @memcpy(ptr %params.sink.i, ptr %16, i32 26)
  br label %calc_csc_coeffs.exit

calc_csc_coeffs.exit:                             ; preds = %cleanup.sink.split.i, %if.end.i.calc_csc_coeffs.exit_crit_edge
  %retval.0.i = phi i32 [ -524, %if.end.i.calc_csc_coeffs.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ipu_ic_calc_csc(ptr nocapture noundef %csc, i32 noundef %in_enc, i32 noundef %in_quant, i32 noundef %in_cs, i32 noundef %out_enc, i32 noundef %out_quant, i32 noundef %out_cs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %csc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %in_enc, ptr %csc, align 4
  %quant2.i = getelementptr inbounds %struct.ipu_ic_colorspace, ptr %csc, i32 0, i32 1
  %1 = ptrtoint ptr %quant2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %in_quant, ptr %quant2.i, align 4
  %cs3.i = getelementptr inbounds %struct.ipu_ic_colorspace, ptr %csc, i32 0, i32 2
  %2 = ptrtoint ptr %cs3.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %in_cs, ptr %cs3.i, align 4
  %out_cs2 = getelementptr inbounds %struct.ipu_ic_csc, ptr %csc, i32 0, i32 1
  %3 = ptrtoint ptr %out_cs2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %out_enc, ptr %out_cs2, align 4
  %quant2.i5 = getelementptr inbounds %struct.ipu_ic_csc, ptr %csc, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %quant2.i5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %out_quant, ptr %quant2.i5, align 4
  %cs3.i6 = getelementptr inbounds %struct.ipu_ic_csc, ptr %csc, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %cs3.i6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %out_cs, ptr %cs3.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %in_quant)
  %6 = icmp ult i32 %in_quant, 2
  %7 = select i1 %6, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %out_quant)
  %8 = icmp ugt i32 %out_quant, 1
  %9 = zext i1 %8 to i32
  %or.i.i = or i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %out_cs, i32 %in_cs)
  %cmp15.i.i = icmp eq i32 %out_cs, %in_cs
  br i1 %cmp15.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %out_cs)
  %cmp18.i.i = icmp eq i32 %out_cs, 1
  br i1 %cmp18.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #3
  %arrayidx.i.i = getelementptr [4 x ptr], ptr @yuv2yuv, i32 0, i32 %or.i.i
  br label %cleanup.sink.split.i.i

cond.false.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #3
  %arrayidx19.i.i = getelementptr [4 x ptr], ptr @rgb2rgb, i32 0, i32 %or.i.i
  br label %cleanup.sink.split.i.i

if.end.i.i:                                       ; preds = %entry
  %10 = zext i32 %out_enc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %out_enc, label %if.end.i.i.__ipu_ic_calc_csc.exit_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb25.i.i
  ]

if.end.i.i.__ipu_ic_calc_csc.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %__ipu_ic_calc_csc.exit

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %in_cs)
  %cmp23.i.i = icmp eq i32 %in_cs, 1
  %cond24.i.i = select i1 %cmp23.i.i, ptr @yuv2rgb_601, ptr @rgb2yuv_601
  br label %sw.epilog.i.i

sw.bb25.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %in_cs)
  %cmp28.i.i = icmp eq i32 %in_cs, 1
  %cond29.i.i = select i1 %cmp28.i.i, ptr @yuv2rgb_709, ptr @rgb2yuv_709
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb25.i.i, %sw.bb.i.i
  %params_tbl.0.i.i = phi ptr [ %cond29.i.i, %sw.bb25.i.i ], [ %cond24.i.i, %sw.bb.i.i ]
  %arrayidx31.i.i = getelementptr ptr, ptr %params_tbl.0.i.i, i32 %or.i.i
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %sw.epilog.i.i, %cond.false.i.i, %cond.true.i.i
  %arrayidx.sink.i.i = phi ptr [ %arrayidx.i.i, %cond.true.i.i ], [ %arrayidx19.i.i, %cond.false.i.i ], [ %arrayidx31.i.i, %sw.epilog.i.i ]
  %params.sink.i.i = getelementptr inbounds %struct.ipu_ic_csc, ptr %csc, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.sink.i.i, align 4
  %13 = call ptr @memcpy(ptr %params.sink.i.i, ptr %12, i32 26)
  br label %__ipu_ic_calc_csc.exit

__ipu_ic_calc_csc.exit:                           ; preds = %cleanup.sink.split.i.i, %if.end.i.i.__ipu_ic_calc_csc.exit_crit_edge
  %retval.0.i.i = phi i32 [ -524, %if.end.i.i.__ipu_ic_calc_csc.exit_crit_edge ], [ 0, %cleanup.sink.split.i.i ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__ksymtab___ipu_ic_calc_csc, !1, !"__ksymtab___ipu_ic_calc_csc", i1 false, i1 false}
!1 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 394, i32 1}
!2 = !{ptr @__ksymtab_ipu_ic_calc_csc, !3, !"__ksymtab_ipu_ic_calc_csc", i1 false, i1 false}
!3 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 409, i32 1}
!4 = !{ptr @yuv2yuv, !5, !"yuv2yuv", i1 false, i1 false}
!5 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 104, i32 40}
!6 = !{ptr @identity, !7, !"identity", i1 false, i1 false}
!7 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 18, i32 39}
!8 = !{ptr @yuvf2yuvl, !9, !"yuvf2yuvl", i1 false, i1 false}
!9 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 69, i32 39}
!10 = !{ptr @yuvl2yuvf, !11, !"yuvl2yuvf", i1 false, i1 false}
!11 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 87, i32 39}
!12 = !{ptr @rgb2rgb, !13, !"rgb2rgb", i1 false, i1 false}
!13 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 97, i32 40}
!14 = !{ptr @rgbf2rgbl, !15, !"rgbf2rgbl", i1 false, i1 false}
!15 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 35, i32 39}
!16 = !{ptr @rgbl2rgbf, !17, !"rgbl2rgbf", i1 false, i1 false}
!17 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 52, i32 39}
!18 = !{ptr @yuv2rgb_601, !19, !"yuv2rgb_601", i1 false, i1 false}
!19 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 226, i32 40}
!20 = !{ptr @yuvf2rgbf_601, !21, !"yuvf2rgbf_601", i1 false, i1 false}
!21 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 176, i32 39}
!22 = !{ptr @yuvf2rgbl_601, !23, !"yuvf2rgbl_601", i1 false, i1 false}
!23 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 187, i32 39}
!24 = !{ptr @yuvl2rgbf_601, !25, !"yuvl2rgbf_601", i1 false, i1 false}
!25 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 198, i32 39}
!26 = !{ptr @yuvl2rgbl_601, !27, !"yuvl2rgbl_601", i1 false, i1 false}
!27 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 209, i32 39}
!28 = !{ptr @rgb2yuv_601, !29, !"rgb2yuv_601", i1 false, i1 false}
!29 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 219, i32 40}
!30 = !{ptr @rgbf2yuvf_601, !31, !"rgbf2yuvf_601", i1 false, i1 false}
!31 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 118, i32 39}
!32 = !{ptr @rgbf2yuvl_601, !33, !"rgbf2yuvl_601", i1 false, i1 false}
!33 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 129, i32 39}
!34 = !{ptr @rgbl2yuvf_601, !35, !"rgbl2yuvf_601", i1 false, i1 false}
!35 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 141, i32 39}
!36 = !{ptr @rgbl2yuvl_601, !37, !"rgbl2yuvl_601", i1 false, i1 false}
!37 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 152, i32 39}
!38 = !{ptr @yuv2rgb_709, !39, !"yuv2rgb_709", i1 false, i1 false}
!39 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 348, i32 40}
!40 = !{ptr @yuvf2rgbf_709, !41, !"yuvf2rgbf_709", i1 false, i1 false}
!41 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 298, i32 39}
!42 = !{ptr @yuvf2rgbl_709, !43, !"yuvf2rgbl_709", i1 false, i1 false}
!43 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 309, i32 39}
!44 = !{ptr @yuvl2rgbf_709, !45, !"yuvl2rgbf_709", i1 false, i1 false}
!45 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 320, i32 39}
!46 = !{ptr @yuvl2rgbl_709, !47, !"yuvl2rgbl_709", i1 false, i1 false}
!47 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 331, i32 39}
!48 = !{ptr @rgb2yuv_709, !49, !"rgb2yuv_709", i1 false, i1 false}
!49 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 341, i32 40}
!50 = !{ptr @rgbf2yuvf_709, !51, !"rgbf2yuvf_709", i1 false, i1 false}
!51 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 240, i32 39}
!52 = !{ptr @rgbf2yuvl_709, !53, !"rgbf2yuvl_709", i1 false, i1 false}
!53 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 251, i32 39}
!54 = !{ptr @rgbl2yuvf_709, !55, !"rgbl2yuvf_709", i1 false, i1 false}
!55 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 263, i32 39}
!56 = !{ptr @rgbl2yuvl_709, !57, !"rgbl2yuvl_709", i1 false, i1 false}
!57 = !{!"../drivers/gpu/ipu-v3/ipu-ic-csc.c", i32 274, i32 39}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
