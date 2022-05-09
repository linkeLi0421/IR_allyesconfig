; ModuleID = '/llk/IR_all_yes/drivers/staging/media/hantro/sunxi_vpu_hw.c_pt.bc'
source_filename = "../drivers/staging/media/hantro/sunxi_vpu_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hantro_fmt = type { ptr, i32, i32, i32, i32, i32, %struct.v4l2_frmsize_stepwise, i8 }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.hantro_postproc_ops = type { ptr, ptr }
%struct.hantro_codec_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.hantro_irq = type { ptr, ptr }
%struct.hantro_variant = type { i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i8 }
%struct.hantro_dev = type { %struct.v4l2_device, ptr, %struct.media_device, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.spinlock, ptr, %struct.delayed_work }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.clk_bulk_data = type { ptr, ptr }

@sunxi_vpu_dec_fmts = internal constant { [2 x %struct.hantro_fmt], [56 x i8] } { [2 x %struct.hantro_fmt] [%struct.hantro_fmt { ptr null, i32 842093654, i32 -1, i32 0, i32 0, i32 0, %struct.v4l2_frmsize_stepwise zeroinitializer, i8 0 }, %struct.hantro_fmt { ptr null, i32 1178161238, i32 5, i32 0, i32 2, i32 0, %struct.v4l2_frmsize_stepwise { i32 48, i32 3840, i32 16, i32 48, i32 2160, i32 16 }, i8 0 }], [56 x i8] zeroinitializer }, align 32
@sunxi_vpu_postproc_fmts = internal constant { [1 x %struct.hantro_fmt], [44 x i8] } { [1 x %struct.hantro_fmt] [%struct.hantro_fmt { ptr null, i32 842094158, i32 -1, i32 0, i32 0, i32 0, %struct.v4l2_frmsize_stepwise zeroinitializer, i8 1 }], [44 x i8] zeroinitializer }, align 32
@hantro_g2_postproc_ops = external dso_local constant %struct.hantro_postproc_ops, align 4
@sunxi_vpu_codec_ops = internal constant { [6 x %struct.hantro_codec_ops], [40 x i8] } { [6 x %struct.hantro_codec_ops] [%struct.hantro_codec_ops zeroinitializer, %struct.hantro_codec_ops zeroinitializer, %struct.hantro_codec_ops zeroinitializer, %struct.hantro_codec_ops zeroinitializer, %struct.hantro_codec_ops zeroinitializer, %struct.hantro_codec_ops { ptr @hantro_vp9_dec_init, ptr @hantro_vp9_dec_exit, ptr @hantro_g2_vp9_dec_run, ptr @hantro_g2_vp9_dec_done, ptr @sunxi_vpu_reset }], [40 x i8] zeroinitializer }, align 32
@sunxi_irqs = internal constant { [1 x %struct.hantro_irq], [24 x i8] } { [1 x %struct.hantro_irq] [%struct.hantro_irq { ptr null, ptr @hantro_g2_irq }], [24 x i8] zeroinitializer }, align 32
@sunxi_clk_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str, ptr @.str.1], [24 x i8] zeroinitializer }, align 32
@sunxi_vpu_variant = dso_local constant { %struct.hantro_variant, [48 x i8] } { %struct.hantro_variant { i32 0, i32 0, ptr null, i32 0, ptr @sunxi_vpu_dec_fmts, i32 2, ptr @sunxi_vpu_postproc_fmts, i32 1, ptr @hantro_g2_postproc_ops, i32 1048576, ptr @sunxi_vpu_codec_ops, ptr @sunxi_vpu_hw_init, ptr null, ptr @sunxi_irqs, i32 1, ptr @sunxi_clk_names, i32 2, ptr null, i32 0, i8 -32 }, [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mod\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [19 x i8] c"sunxi_vpu_dec_fmts\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 20, i32 32 }
@___asan_gen_.5 = private unnamed_addr constant [24 x i8] c"sunxi_vpu_postproc_fmts\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 12, i32 32 }
@___asan_gen_.8 = private unnamed_addr constant [20 x i8] c"sunxi_vpu_codec_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 54, i32 38 }
@___asan_gen_.11 = private unnamed_addr constant [11 x i8] c"sunxi_irqs\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 64, i32 32 }
@___asan_gen_.14 = private unnamed_addr constant [16 x i8] c"sunxi_clk_names\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 68, i32 27 }
@___asan_gen_.17 = private unnamed_addr constant [18 x i8] c"sunxi_vpu_variant\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 70, i32 29 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 68, i32 49 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [47 x i8] c"../drivers/staging/media/hantro/sunxi_vpu_hw.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 68, i32 56 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @sunxi_vpu_dec_fmts, ptr @sunxi_vpu_postproc_fmts, ptr @sunxi_vpu_codec_ops, ptr @sunxi_irqs, ptr @sunxi_clk_names, ptr @sunxi_vpu_variant, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_vpu_dec_fmts to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_vpu_postproc_fmts to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_vpu_codec_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_irqs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_clk_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_vpu_variant to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_vpu_hw_init(ptr nocapture noundef readonly %vpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %clocks = getelementptr inbounds %struct.hantro_dev, ptr %vpu, i32 0, i32 7
  %0 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clocks, align 8
  %clk = getelementptr inbounds %struct.clk_bulk_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_set_rate(ptr noundef %3, i32 noundef 300000000) #2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_vp9_dec_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_vp9_dec_exit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_g2_vp9_dec_run(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hantro_g2_vp9_dec_done(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_vpu_reset(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %resets = getelementptr inbounds %struct.hantro_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %resets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resets, align 4
  %call = tail call i32 @reset_control_reset(ptr noundef %3) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hantro_g2_irq(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @sunxi_vpu_variant, !1, !"sunxi_vpu_variant", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/hantro/sunxi_vpu_hw.c", i32 70, i32 29}
!2 = !{ptr @sunxi_vpu_dec_fmts, !3, !"sunxi_vpu_dec_fmts", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/hantro/sunxi_vpu_hw.c", i32 20, i32 32}
!4 = !{ptr @sunxi_vpu_postproc_fmts, !5, !"sunxi_vpu_postproc_fmts", i1 false, i1 false}
!5 = !{!"../drivers/staging/media/hantro/sunxi_vpu_hw.c", i32 12, i32 32}
!6 = !{ptr @sunxi_vpu_codec_ops, !7, !"sunxi_vpu_codec_ops", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/hantro/sunxi_vpu_hw.c", i32 54, i32 38}
!8 = !{ptr @sunxi_irqs, !9, !"sunxi_irqs", i1 false, i1 false}
!9 = !{!"../drivers/staging/media/hantro/sunxi_vpu_hw.c", i32 64, i32 32}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/hantro/sunxi_vpu_hw.c", i32 68, i32 49}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/hantro/sunxi_vpu_hw.c", i32 68, i32 56}
!14 = !{ptr @sunxi_clk_names, !15, !"sunxi_clk_names", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/hantro/sunxi_vpu_hw.c", i32 68, i32 27}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
