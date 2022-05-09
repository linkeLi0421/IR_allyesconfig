; ModuleID = '/llk/IR_all_yes/drivers/staging/media/hantro/sama5d4_vdec_hw.c_pt.bc'
source_filename = "../drivers/staging/media/hantro/sama5d4_vdec_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hantro_fmt = type { ptr, i32, i32, i32, i32, i32, %struct.v4l2_frmsize_stepwise, i8 }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.hantro_postproc_ops = type { ptr, ptr }
%struct.hantro_codec_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.hantro_irq = type { ptr, ptr }
%struct.hantro_variant = type { i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i8 }

@sama5d4_vdec_fmts = internal constant { [4 x %struct.hantro_fmt], [48 x i8] } { [4 x %struct.hantro_fmt] [%struct.hantro_fmt { ptr null, i32 842094158, i32 -1, i32 0, i32 0, i32 0, %struct.v4l2_frmsize_stepwise zeroinitializer, i8 0 }, %struct.hantro_fmt { ptr null, i32 1395803981, i32 2, i32 0, i32 2, i32 0, %struct.v4l2_frmsize_stepwise { i32 48, i32 1280, i32 16, i32 48, i32 720, i32 16 }, i8 0 }, %struct.hantro_fmt { ptr null, i32 1178095702, i32 3, i32 0, i32 2, i32 0, %struct.v4l2_frmsize_stepwise { i32 48, i32 1280, i32 16, i32 48, i32 720, i32 16 }, i8 0 }, %struct.hantro_fmt { ptr null, i32 875967059, i32 1, i32 0, i32 2, i32 0, %struct.v4l2_frmsize_stepwise { i32 48, i32 1280, i32 16, i32 48, i32 720, i32 16 }, i8 0 }], [48 x i8] zeroinitializer }, align 32
@sama5d4_vdec_postproc_fmts = internal constant { [1 x %struct.hantro_fmt], [44 x i8] } { [1 x %struct.hantro_fmt] [%struct.hantro_fmt { ptr null, i32 1448695129, i32 -1, i32 0, i32 0, i32 0, %struct.v4l2_frmsize_stepwise zeroinitializer, i8 1 }], [44 x i8] zeroinitializer }, align 32
@hantro_g1_postproc_ops = external dso_local constant %struct.hantro_postproc_ops, align 4
@sama5d4_vdec_codec_ops = internal constant { [4 x %struct.hantro_codec_ops], [48 x i8] } { [4 x %struct.hantro_codec_ops] [%struct.hantro_codec_ops zeroinitializer, %struct.hantro_codec_ops { ptr @hantro_h264_dec_init, ptr @hantro_h264_dec_exit, ptr @hantro_g1_h264_dec_run, ptr null, ptr @hantro_g1_reset }, %struct.hantro_codec_ops { ptr @hantro_mpeg2_dec_init, ptr @hantro_mpeg2_dec_exit, ptr @hantro_g1_mpeg2_dec_run, ptr null, ptr @hantro_g1_reset }, %struct.hantro_codec_ops { ptr @hantro_vp8_dec_init, ptr @hantro_vp8_dec_exit, ptr @hantro_g1_vp8_dec_run, ptr null, ptr @hantro_g1_reset }], [48 x i8] zeroinitializer }, align 32
@sama5d4_irqs = internal constant { [1 x %struct.hantro_irq], [24 x i8] } { [1 x %struct.hantro_irq] [%struct.hantro_irq { ptr @.str, ptr @hantro_g1_irq }], [24 x i8] zeroinitializer }, align 32
@sama5d4_clk_names = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.1], [28 x i8] zeroinitializer }, align 32
@sama5d4_vdec_variant = dso_local constant { %struct.hantro_variant, [48 x i8] } { %struct.hantro_variant { i32 0, i32 0, ptr null, i32 0, ptr @sama5d4_vdec_fmts, i32 4, ptr @sama5d4_vdec_postproc_fmts, i32 1, ptr @hantro_g1_postproc_ops, i32 458752, ptr @sama5d4_vdec_codec_ops, ptr null, ptr null, ptr @sama5d4_irqs, i32 1, ptr @sama5d4_clk_names, i32 1, ptr null, i32 0, i8 0 }, [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdec\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdec_clk\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [18 x i8] c"sama5d4_vdec_fmts\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 22, i32 32 }
@___asan_gen_.5 = private unnamed_addr constant [27 x i8] c"sama5d4_vdec_postproc_fmts\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 14, i32 32 }
@___asan_gen_.8 = private unnamed_addr constant [23 x i8] c"sama5d4_vdec_codec_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 72, i32 38 }
@___asan_gen_.11 = private unnamed_addr constant [13 x i8] c"sama5d4_irqs\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 93, i32 32 }
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"sama5d4_clk_names\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 97, i32 27 }
@___asan_gen_.17 = private unnamed_addr constant [21 x i8] c"sama5d4_vdec_variant\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 99, i32 29 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 94, i32 4 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [50 x i8] c"../drivers/staging/media/hantro/sama5d4_vdec_hw.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 97, i32 51 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @sama5d4_vdec_fmts, ptr @sama5d4_vdec_postproc_fmts, ptr @sama5d4_vdec_codec_ops, ptr @sama5d4_irqs, ptr @sama5d4_clk_names, ptr @sama5d4_vdec_variant, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d4_vdec_fmts to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d4_vdec_postproc_fmts to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d4_vdec_codec_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d4_irqs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d4_clk_names to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d4_vdec_variant to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_h264_dec_init(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_h264_dec_exit(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_g1_h264_dec_run(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_g1_reset(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_mpeg2_dec_init(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_mpeg2_dec_exit(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_g1_mpeg2_dec_run(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_vp8_dec_init(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_vp8_dec_exit(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_g1_vp8_dec_run(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_g1_irq(i32 noundef, ptr noundef) #0

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #1 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @sama5d4_vdec_variant, !1, !"sama5d4_vdec_variant", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/hantro/sama5d4_vdec_hw.c", i32 99, i32 29}
!2 = !{ptr @sama5d4_vdec_fmts, !3, !"sama5d4_vdec_fmts", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/hantro/sama5d4_vdec_hw.c", i32 22, i32 32}
!4 = !{ptr @sama5d4_vdec_postproc_fmts, !5, !"sama5d4_vdec_postproc_fmts", i1 false, i1 false}
!5 = !{!"../drivers/staging/media/hantro/sama5d4_vdec_hw.c", i32 14, i32 32}
!6 = !{ptr @sama5d4_vdec_codec_ops, !7, !"sama5d4_vdec_codec_ops", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/hantro/sama5d4_vdec_hw.c", i32 72, i32 38}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/media/hantro/sama5d4_vdec_hw.c", i32 94, i32 4}
!10 = !{ptr @sama5d4_irqs, !11, !"sama5d4_irqs", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/hantro/sama5d4_vdec_hw.c", i32 93, i32 32}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/hantro/sama5d4_vdec_hw.c", i32 97, i32 51}
!14 = !{ptr @sama5d4_clk_names, !15, !"sama5d4_clk_names", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/hantro/sama5d4_vdec_hw.c", i32 97, i32 27}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
