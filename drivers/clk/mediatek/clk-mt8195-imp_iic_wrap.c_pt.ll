; ModuleID = '/llk/IR_all_yes/drivers/clk/mediatek/clk-mt8195-imp_iic_wrap.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mt8195-imp_iic_wrap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mtk_clk_desc = type { ptr, i32 }
%struct.mtk_gate = type { i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.mtk_gate_regs = type { i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_clk_mt8195_imp_iic_wrap__170_66_clk_mt8195_imp_iic_wrap_drv_init6 = internal global ptr @clk_mt8195_imp_iic_wrap_drv_init, section ".initcall6.init", align 4
@clk_mt8195_imp_iic_wrap_drv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_clk_simple_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_match_clk_mt8195_imp_iic_wrap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"clk-mt8195-imp_iic_wrap\00", [40 x i8] zeroinitializer }, align 32
@of_match_clk_mt8195_imp_iic_wrap = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8195-imp_iic_wrap_s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imp_iic_wrap_s_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8195-imp_iic_wrap_w\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imp_iic_wrap_w_desc }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@imp_iic_wrap_s_desc = internal constant { %struct.mtk_clk_desc, [24 x i8] } { %struct.mtk_clk_desc { ptr @imp_iic_wrap_s_clks, i32 3 }, [24 x i8] zeroinitializer }, align 32
@imp_iic_wrap_w_desc = internal constant { %struct.mtk_clk_desc, [24 x i8] } { %struct.mtk_clk_desc { ptr @imp_iic_wrap_w_clks, i32 5 }, [24 x i8] zeroinitializer }, align 32
@imp_iic_wrap_s_clks = internal constant { [3 x %struct.mtk_gate], [44 x i8] } { [3 x %struct.mtk_gate] [%struct.mtk_gate { i32 0, ptr @.str.1, ptr @.str.2, ptr @imp_iic_wrap_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 4096 }, %struct.mtk_gate { i32 1, ptr @.str.3, ptr @.str.2, ptr @imp_iic_wrap_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 4096 }, %struct.mtk_gate { i32 2, ptr @.str.4, ptr @.str.2, ptr @imp_iic_wrap_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 4096 }], [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imp_iic_wrap_s_i2c5\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"top_i2c\00", [24 x i8] zeroinitializer }, align 32
@imp_iic_wrap_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 3584, i32 3588, i32 3592 }, [20 x i8] zeroinitializer }, align 32
@mtk_clk_gate_ops_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imp_iic_wrap_s_i2c6\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imp_iic_wrap_s_i2c7\00", [44 x i8] zeroinitializer }, align 32
@imp_iic_wrap_w_clks = internal constant { [5 x %struct.mtk_gate], [52 x i8] } { [5 x %struct.mtk_gate] [%struct.mtk_gate { i32 0, ptr @.str.5, ptr @.str.2, ptr @imp_iic_wrap_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 4096 }, %struct.mtk_gate { i32 1, ptr @.str.6, ptr @.str.2, ptr @imp_iic_wrap_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 4096 }, %struct.mtk_gate { i32 2, ptr @.str.7, ptr @.str.2, ptr @imp_iic_wrap_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 4096 }, %struct.mtk_gate { i32 3, ptr @.str.8, ptr @.str.2, ptr @imp_iic_wrap_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 4096 }, %struct.mtk_gate { i32 4, ptr @.str.9, ptr @.str.2, ptr @imp_iic_wrap_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 4096 }], [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imp_iic_wrap_w_i2c0\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imp_iic_wrap_w_i2c1\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imp_iic_wrap_w_i2c2\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imp_iic_wrap_w_i2c3\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imp_iic_wrap_w_i2c4\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [28 x i8] c"clk_mt8195_imp_iic_wrap_drv\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 59, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 62, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [33 x i8] c"of_match_clk_mt8195_imp_iic_wrap\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 47, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant [20 x i8] c"imp_iic_wrap_s_desc\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 37, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant [20 x i8] c"imp_iic_wrap_w_desc\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 42, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"imp_iic_wrap_s_clks\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 23, i32 30 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 24, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [21 x i8] c"imp_iic_wrap_cg_regs\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 13, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 25, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 26, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [20 x i8] c"imp_iic_wrap_w_clks\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 29, i32 30 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 30, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 31, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 32, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 33, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [50 x i8] c"../drivers/clk/mediatek/clk-mt8195-imp_iic_wrap.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 34, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__initcall__kmod_clk_mt8195_imp_iic_wrap__170_66_clk_mt8195_imp_iic_wrap_drv_init6, ptr @clk_mt8195_imp_iic_wrap_drv, ptr @.str, ptr @of_match_clk_mt8195_imp_iic_wrap, ptr @imp_iic_wrap_s_desc, ptr @imp_iic_wrap_w_desc, ptr @imp_iic_wrap_s_clks, ptr @.str.1, ptr @.str.2, ptr @imp_iic_wrap_cg_regs, ptr @.str.3, ptr @.str.4, ptr @imp_iic_wrap_w_clks, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt8195_imp_iic_wrap_drv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_match_clk_mt8195_imp_iic_wrap to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imp_iic_wrap_s_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imp_iic_wrap_w_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imp_iic_wrap_s_clks to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imp_iic_wrap_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imp_iic_wrap_w_clks to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt8195_imp_iic_wrap_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @clk_mt8195_imp_iic_wrap_drv, ptr noundef null) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_clk_simple_probe(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__initcall__kmod_clk_mt8195_imp_iic_wrap__170_66_clk_mt8195_imp_iic_wrap_drv_init6, !1, !"__initcall__kmod_clk_mt8195_imp_iic_wrap__170_66_clk_mt8195_imp_iic_wrap_drv_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/mediatek/clk-mt8195-imp_iic_wrap.c", i32 66, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/mediatek/clk-mt8195-imp_iic_wrap.c", i32 62, i32 11}
!4 = !{ptr @clk_mt8195_imp_iic_wrap_drv, !5, !"clk_mt8195_imp_iic_wrap_drv", i1 false, i1 false}
!5 = !{!"../drivers/clk/mediatek/clk-mt8195-imp_iic_wrap.c", i32 59, i32 31}
!6 = !{ptr @of_match_clk_mt8195_imp_iic_wrap, !7, !"of_match_clk_mt8195_imp_iic_wrap", i1 false, i1 false}
!7 = !{!"../drivers/clk/mediatek/clk-mt8195-imp_iic_wrap.c", i32 47, i32 34}
!8 = !{ptr @imp_iic_wrap_s_desc, !9, !"imp_iic_wrap_s_desc", i1 false, i1 false}
!9 = !{!"../drivers/clk/mediatek/clk-mt8195-imp_iic_wrap.c", i32 37, i32 34}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/mediatek/clk-mt8195-imp_iic_wrap.c", i32 24, i32 2}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clk/mediatek/clk-mt8195-imp_iic_wrap.c", i32 25, i32 2}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/mediatek/clk-mt8195-imp_iic_wrap.c", i32 26, i32 2}
!17 = !{ptr @imp_iic_wrap_s_clks, !18, !"imp_iic_wrap_s_clks", i1 false, i1 false}
!18 = !{!"../drivers/clk/mediatek/clk-mt8195-imp_iic_wrap.c", i32 23, i32 30}
!19 = !{ptr @imp_iic_wrap_cg_regs, !20, !"imp_iic_wrap_cg_regs", i1 false, i1 false}
!20 = !{!"../drivers/clk/mediatek/clk-mt8195-imp_iic_wrap.c", i32 13, i32 35}
!21 = !{ptr @imp_iic_wrap_w_desc, !22, !"imp_iic_wrap_w_desc", i1 false, i1 false}
!22 = !{!"../drivers/clk/mediatek/clk-mt8195-imp_iic_wrap.c", i32 42, i32 34}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/mediatek/clk-mt8195-imp_iic_wrap.c", i32 30, i32 2}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/mediatek/clk-mt8195-imp_iic_wrap.c", i32 31, i32 2}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/mediatek/clk-mt8195-imp_iic_wrap.c", i32 32, i32 2}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/mediatek/clk-mt8195-imp_iic_wrap.c", i32 33, i32 2}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/mediatek/clk-mt8195-imp_iic_wrap.c", i32 34, i32 2}
!33 = !{ptr @imp_iic_wrap_w_clks, !34, !"imp_iic_wrap_w_clks", i1 false, i1 false}
!34 = !{!"../drivers/clk/mediatek/clk-mt8195-imp_iic_wrap.c", i32 29, i32 30}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
