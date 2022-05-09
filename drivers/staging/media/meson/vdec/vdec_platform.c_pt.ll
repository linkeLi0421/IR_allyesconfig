; ModuleID = '/llk/IR_all_yes/drivers/staging/media/meson/vdec/vdec_platform.c_pt.bc'
source_filename = "../drivers/staging/media/meson/vdec/vdec_platform.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amvdec_format = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, [4 x i32] }
%struct.vdec_platform = type { ptr, i32, i32 }
%struct.amvdec_ops = type { ptr, ptr, ptr, ptr }
%struct.amvdec_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@vdec_formats_gxbb = internal constant { [3 x %struct.amvdec_format], [36 x i8] } { [3 x %struct.amvdec_format] [%struct.amvdec_format { i32 875967048, i32 2, i32 24, i32 1920, i32 1080, i32 9, ptr @vdec_1_ops, ptr @codec_h264_ops, ptr @.str, [4 x i32] [i32 842091854, i32 0, i32 0, i32 0] }, %struct.amvdec_format { i32 826757197, i32 8, i32 8, i32 1920, i32 1080, i32 1, ptr @vdec_1_ops, ptr @codec_mpeg12_ops, ptr @.str.1, [4 x i32] [i32 842091854, i32 842091865, i32 0, i32 0] }, %struct.amvdec_format { i32 843534413, i32 8, i32 8, i32 1920, i32 1080, i32 1, ptr @vdec_1_ops, ptr @codec_mpeg12_ops, ptr @.str.1, [4 x i32] [i32 842091854, i32 842091865, i32 0, i32 0] }], [36 x i8] zeroinitializer }, align 32
@vdec_platform_gxbb = dso_local constant { %struct.vdec_platform, [20 x i8] } { %struct.vdec_platform { ptr @vdec_formats_gxbb, i32 3, i32 0 }, [20 x i8] zeroinitializer }, align 32
@vdec_formats_gxl = internal constant { [4 x %struct.amvdec_format], [48 x i8] } { [4 x %struct.amvdec_format] [%struct.amvdec_format { i32 809062486, i32 16, i32 24, i32 3840, i32 2160, i32 9, ptr @vdec_hevc_ops, ptr @codec_vp9_ops, ptr @.str.2, [4 x i32] [i32 842091854, i32 0, i32 0, i32 0] }, %struct.amvdec_format { i32 875967048, i32 2, i32 24, i32 3840, i32 2160, i32 9, ptr @vdec_1_ops, ptr @codec_h264_ops, ptr @.str.3, [4 x i32] [i32 842091854, i32 0, i32 0, i32 0] }, %struct.amvdec_format { i32 826757197, i32 8, i32 8, i32 1920, i32 1080, i32 1, ptr @vdec_1_ops, ptr @codec_mpeg12_ops, ptr @.str.1, [4 x i32] [i32 842091854, i32 842091865, i32 0, i32 0] }, %struct.amvdec_format { i32 843534413, i32 8, i32 8, i32 1920, i32 1080, i32 1, ptr @vdec_1_ops, ptr @codec_mpeg12_ops, ptr @.str.1, [4 x i32] [i32 842091854, i32 842091865, i32 0, i32 0] }], [48 x i8] zeroinitializer }, align 32
@vdec_platform_gxl = dso_local constant { %struct.vdec_platform, [20 x i8] } { %struct.vdec_platform { ptr @vdec_formats_gxl, i32 4, i32 1 }, [20 x i8] zeroinitializer }, align 32
@vdec_formats_gxm = internal constant { [3 x %struct.amvdec_format], [36 x i8] } { [3 x %struct.amvdec_format] [%struct.amvdec_format { i32 875967048, i32 2, i32 24, i32 3840, i32 2160, i32 9, ptr @vdec_1_ops, ptr @codec_h264_ops, ptr @.str.4, [4 x i32] [i32 842091854, i32 0, i32 0, i32 0] }, %struct.amvdec_format { i32 826757197, i32 8, i32 8, i32 1920, i32 1080, i32 1, ptr @vdec_1_ops, ptr @codec_mpeg12_ops, ptr @.str.1, [4 x i32] [i32 842091854, i32 842091865, i32 0, i32 0] }, %struct.amvdec_format { i32 843534413, i32 8, i32 8, i32 1920, i32 1080, i32 1, ptr @vdec_1_ops, ptr @codec_mpeg12_ops, ptr @.str.1, [4 x i32] [i32 842091854, i32 842091865, i32 0, i32 0] }], [36 x i8] zeroinitializer }, align 32
@vdec_platform_gxm = dso_local constant { %struct.vdec_platform, [20 x i8] } { %struct.vdec_platform { ptr @vdec_formats_gxm, i32 3, i32 2 }, [20 x i8] zeroinitializer }, align 32
@vdec_formats_g12a = internal constant { [4 x %struct.amvdec_format], [48 x i8] } { [4 x %struct.amvdec_format] [%struct.amvdec_format { i32 809062486, i32 16, i32 24, i32 3840, i32 2160, i32 9, ptr @vdec_hevc_ops, ptr @codec_vp9_ops, ptr @.str.5, [4 x i32] [i32 842091854, i32 0, i32 0, i32 0] }, %struct.amvdec_format { i32 875967048, i32 2, i32 24, i32 3840, i32 2160, i32 9, ptr @vdec_1_ops, ptr @codec_h264_ops, ptr @.str.6, [4 x i32] [i32 842091854, i32 0, i32 0, i32 0] }, %struct.amvdec_format { i32 826757197, i32 8, i32 8, i32 1920, i32 1080, i32 1, ptr @vdec_1_ops, ptr @codec_mpeg12_ops, ptr @.str.1, [4 x i32] [i32 842091854, i32 842091865, i32 0, i32 0] }, %struct.amvdec_format { i32 843534413, i32 8, i32 8, i32 1920, i32 1080, i32 1, ptr @vdec_1_ops, ptr @codec_mpeg12_ops, ptr @.str.1, [4 x i32] [i32 842091854, i32 842091865, i32 0, i32 0] }], [48 x i8] zeroinitializer }, align 32
@vdec_platform_g12a = dso_local constant { %struct.vdec_platform, [20 x i8] } { %struct.vdec_platform { ptr @vdec_formats_g12a, i32 4, i32 3 }, [20 x i8] zeroinitializer }, align 32
@vdec_formats_sm1 = internal constant { [4 x %struct.amvdec_format], [48 x i8] } { [4 x %struct.amvdec_format] [%struct.amvdec_format { i32 809062486, i32 16, i32 24, i32 3840, i32 2160, i32 9, ptr @vdec_hevc_ops, ptr @codec_vp9_ops, ptr @.str.7, [4 x i32] [i32 842091854, i32 0, i32 0, i32 0] }, %struct.amvdec_format { i32 875967048, i32 2, i32 24, i32 3840, i32 2160, i32 9, ptr @vdec_1_ops, ptr @codec_h264_ops, ptr @.str.6, [4 x i32] [i32 842091854, i32 0, i32 0, i32 0] }, %struct.amvdec_format { i32 826757197, i32 8, i32 8, i32 1920, i32 1080, i32 1, ptr @vdec_1_ops, ptr @codec_mpeg12_ops, ptr @.str.1, [4 x i32] [i32 842091854, i32 842091865, i32 0, i32 0] }, %struct.amvdec_format { i32 843534413, i32 8, i32 8, i32 1920, i32 1080, i32 1, ptr @vdec_1_ops, ptr @codec_mpeg12_ops, ptr @.str.1, [4 x i32] [i32 842091854, i32 842091865, i32 0, i32 0] }], [48 x i8] zeroinitializer }, align 32
@vdec_platform_sm1 = dso_local constant { %struct.vdec_platform, [20 x i8] } { %struct.vdec_platform { ptr @vdec_formats_sm1, i32 4, i32 4 }, [20 x i8] zeroinitializer }, align 32
@vdec_1_ops = external dso_local global %struct.amvdec_ops, align 4
@codec_h264_ops = external dso_local global %struct.amvdec_codec_ops, align 4
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"meson/vdec/gxbb_h264.bin\00", [39 x i8] zeroinitializer }, align 32
@codec_mpeg12_ops = external dso_local global %struct.amvdec_codec_ops, align 4
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"meson/vdec/gxl_mpeg12.bin\00", [38 x i8] zeroinitializer }, align 32
@vdec_hevc_ops = external dso_local global %struct.amvdec_ops, align 4
@codec_vp9_ops = external dso_local global %struct.amvdec_codec_ops, align 4
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"meson/vdec/gxl_vp9.bin\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"meson/vdec/gxl_h264.bin\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"meson/vdec/gxm_h264.bin\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"meson/vdec/g12a_vp9.bin\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"meson/vdec/g12a_h264.bin\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"meson/vdec/sm1_vp9_mmu.bin\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [18 x i8] c"vdec_formats_gxbb\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 16, i32 35 }
@___asan_gen_.11 = private unnamed_addr constant [19 x i8] c"vdec_platform_gxbb\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 242, i32 28 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"vdec_formats_gxl\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 54, i32 35 }
@___asan_gen_.17 = private unnamed_addr constant [18 x i8] c"vdec_platform_gxl\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 248, i32 28 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"vdec_formats_gxm\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 104, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"vdec_platform_gxm\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 254, i32 28 }
@___asan_gen_.26 = private unnamed_addr constant [18 x i8] c"vdec_formats_g12a\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 142, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"vdec_platform_g12a\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 260, i32 28 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"vdec_formats_sm1\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 192, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"vdec_platform_sm1\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 266, i32 28 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 25, i32 20 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 37, i32 20 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 63, i32 20 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 75, i32 20 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 113, i32 20 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 151, i32 20 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 163, i32 20 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [52 x i8] c"../drivers/staging/media/meson/vdec/vdec_platform.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 201, i32 20 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @vdec_formats_gxbb, ptr @vdec_platform_gxbb, ptr @vdec_formats_gxl, ptr @vdec_platform_gxl, ptr @vdec_formats_gxm, ptr @vdec_platform_gxm, ptr @vdec_formats_g12a, ptr @vdec_platform_g12a, ptr @vdec_formats_sm1, ptr @vdec_platform_sm1, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_formats_gxbb to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_platform_gxbb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_formats_gxl to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_platform_gxl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_formats_gxm to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_platform_gxm to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_formats_g12a to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_platform_g12a to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_formats_sm1 to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_platform_sm1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @vdec_platform_gxbb, !1, !"vdec_platform_gxbb", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/meson/vdec/vdec_platform.c", i32 242, i32 28}
!2 = !{ptr @vdec_platform_gxl, !3, !"vdec_platform_gxl", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/meson/vdec/vdec_platform.c", i32 248, i32 28}
!4 = !{ptr @vdec_platform_gxm, !5, !"vdec_platform_gxm", i1 false, i1 false}
!5 = !{!"../drivers/staging/media/meson/vdec/vdec_platform.c", i32 254, i32 28}
!6 = !{ptr @vdec_platform_g12a, !7, !"vdec_platform_g12a", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/meson/vdec/vdec_platform.c", i32 260, i32 28}
!8 = !{ptr @vdec_platform_sm1, !9, !"vdec_platform_sm1", i1 false, i1 false}
!9 = !{!"../drivers/staging/media/meson/vdec/vdec_platform.c", i32 266, i32 28}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/meson/vdec/vdec_platform.c", i32 25, i32 20}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/meson/vdec/vdec_platform.c", i32 37, i32 20}
!14 = !{ptr @vdec_formats_gxbb, !15, !"vdec_formats_gxbb", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/meson/vdec/vdec_platform.c", i32 16, i32 35}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/media/meson/vdec/vdec_platform.c", i32 63, i32 20}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/media/meson/vdec/vdec_platform.c", i32 75, i32 20}
!20 = !{ptr @vdec_formats_gxl, !21, !"vdec_formats_gxl", i1 false, i1 false}
!21 = !{!"../drivers/staging/media/meson/vdec/vdec_platform.c", i32 54, i32 35}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/media/meson/vdec/vdec_platform.c", i32 113, i32 20}
!24 = !{ptr @vdec_formats_gxm, !25, !"vdec_formats_gxm", i1 false, i1 false}
!25 = !{!"../drivers/staging/media/meson/vdec/vdec_platform.c", i32 104, i32 35}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/media/meson/vdec/vdec_platform.c", i32 151, i32 20}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/media/meson/vdec/vdec_platform.c", i32 163, i32 20}
!30 = !{ptr @vdec_formats_g12a, !31, !"vdec_formats_g12a", i1 false, i1 false}
!31 = !{!"../drivers/staging/media/meson/vdec/vdec_platform.c", i32 142, i32 35}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/media/meson/vdec/vdec_platform.c", i32 201, i32 20}
!34 = !{ptr @vdec_formats_sm1, !35, !"vdec_formats_sm1", i1 false, i1 false}
!35 = !{!"../drivers/staging/media/meson/vdec/vdec_platform.c", i32 192, i32 35}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
