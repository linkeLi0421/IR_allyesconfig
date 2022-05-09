; ModuleID = '/llk/IR_all_yes/drivers/mfd/tqmx86.c_pt.bc'
source_filename = "../drivers/mfd/tqmx86.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@__param_str_gpio_irq = internal constant [16 x i8] c"tqmx86.gpio_irq\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@gpio_irq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_gpio_irq = internal constant %struct.kernel_param { ptr @__param_str_gpio_irq, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @gpio_irq } }, section "__param", align 4
@__UNIQUE_ID_gpio_irqtype288 = internal constant [30 x i8] c"tqmx86.parmtype=gpio_irq:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_gpio_irq289 = internal constant [48 x i8] c"tqmx86.parm=gpio_irq:GPIO IRQ number (7, 9, 12)\00", section ".modinfo", align 1
@__initcall__kmod_tqmx86__290_303_tqmx86_init6 = internal global ptr @tqmx86_init, section ".initcall6.init", align 4
@__UNIQUE_ID_description291 = internal constant [42 x i8] c"tqmx86.description=TQMx86 PLD Core Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [43 x i8] c"tqmx86.author=Andrew Lunn <andrew@lunn.ch>\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [31 x i8] c"tqmx86.file=drivers/mfd/tqmx86\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [19 x i8] c"tqmx86.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias295 = internal constant [29 x i8] c"tqmx86.alias=platform:tqmx86\00", section ".modinfo", align 1
@tqmx86_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013tqmx86: Invalid GPIO IRQ (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tqmx86_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/mfd/tqmx86.c\00", [43 x i8] zeroinitializer }, align 32
@tqmx86_probe._entry_ptr = internal global ptr @tqmx86_probe._entry, section ".printk_index", align 4
@tqmx86_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 214, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Found %s - Board ID %d, PCB Revision %d, PLD Revision %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tqmx86_probe._entry_ptr.9 = internal global ptr @tqmx86_probe._entry.5, section ".printk_index", align 4
@tqmx86_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 224, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"GPIO interrupts not supported.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tqmx86_probe._entry_ptr.13 = internal global ptr @tqmx86_probe._entry.10, section ".printk_index", align 4
@tqmx86_board_id_to_clk_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 172, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"unknown board %d, assuming 24MHz LPC clock\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tqmx86_board_id_to_clk_rate\00", [36 x i8] zeroinitializer }, align 32
@tqmx86_board_id_to_clk_rate._entry_ptr = internal global ptr @tqmx86_board_id_to_clk_rate._entry, section ".printk_index", align 4
@___asan_gen_.34 = private unnamed_addr constant [9 x i8] c"gpio_irq\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 56, i32 13 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 200, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 212, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 224, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [24 x i8] c"../drivers/mfd/tqmx86.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 171, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_alias295, ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_gpio_irq289, ptr @__UNIQUE_ID_gpio_irqtype288, ptr @__UNIQUE_ID_license294, ptr @__initcall__kmod_tqmx86__290_303_tqmx86_init6, ptr @__param_gpio_irq, ptr @tqmx86_board_id_to_clk_rate._entry, ptr @tqmx86_board_id_to_clk_rate._entry_ptr, ptr @tqmx86_probe._entry, ptr @tqmx86_probe._entry.10, ptr @tqmx86_probe._entry.5, ptr @tqmx86_probe._entry_ptr, ptr @tqmx86_probe._entry_ptr.13, ptr @tqmx86_probe._entry_ptr.9, ptr @gpio_irq, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_irq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tqmx86_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tqmx86_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tqmx86_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tqmx86_board_id_to_clk_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tqmx86_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -19
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !35, !36, !37, !38, !39, !41, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !80, !81, !83, !85, !87, !89, !91, !93, !95, !97}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @__param_gpio_irq, !1, !"__param_gpio_irq", i1 false, i1 false}
!1 = !{!"../drivers/mfd/tqmx86.c", i32 57, i32 1}
!2 = !{ptr @__UNIQUE_ID_gpio_irqtype288, !1, !"__UNIQUE_ID_gpio_irqtype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_gpio_irq289, !4, !"__UNIQUE_ID_gpio_irq289", i1 false, i1 false}
!4 = !{!"../drivers/mfd/tqmx86.c", i32 58, i32 1}
!5 = !{ptr @__initcall__kmod_tqmx86__290_303_tqmx86_init6, !6, !"__initcall__kmod_tqmx86__290_303_tqmx86_init6", i1 false, i1 false}
!6 = !{!"../drivers/mfd/tqmx86.c", i32 303, i32 1}
!7 = !{ptr @__UNIQUE_ID_description291, !8, !"__UNIQUE_ID_description291", i1 false, i1 false}
!8 = !{!"../drivers/mfd/tqmx86.c", i32 305, i32 1}
!9 = !{ptr @__UNIQUE_ID_author292, !10, !"__UNIQUE_ID_author292", i1 false, i1 false}
!10 = !{!"../drivers/mfd/tqmx86.c", i32 306, i32 1}
!11 = !{ptr @__UNIQUE_ID_file293, !12, !"__UNIQUE_ID_file293", i1 false, i1 false}
!12 = !{!"../drivers/mfd/tqmx86.c", i32 307, i32 1}
!13 = !{ptr @__UNIQUE_ID_license294, !12, !"__UNIQUE_ID_license294", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_alias295, !15, !"__UNIQUE_ID_alias295", i1 false, i1 false}
!15 = !{!"../drivers/mfd/tqmx86.c", i32 308, i32 1}
!16 = !{ptr @gpio_irq, !17, !"gpio_irq", i1 false, i1 false}
!17 = !{!"../drivers/mfd/tqmx86.c", i32 56, i32 13}
!18 = !{ptr @__param_str_gpio_irq, !1, !"__param_str_gpio_irq", i1 false, i1 false}
!19 = distinct !{null, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mfd/tqmx86.c", i32 269, i32 12}
!21 = distinct !{null, !22, !"tqmx86_dmi_table", i1 false, i1 false}
!22 = !{!"../drivers/mfd/tqmx86.c", i32 267, i32 35}
!23 = distinct !{null, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mfd/tqmx86.c", i32 256, i32 31}
!25 = distinct !{null, !26, !"tqmx86_driver", i1 false, i1 false}
!26 = !{!"../drivers/mfd/tqmx86.c", i32 288, i32 31}
!27 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mfd/tqmx86.c", i32 200, i32 3}
!29 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @tqmx86_probe._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @tqmx86_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mfd/tqmx86.c", i32 212, i32 2}
!35 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @tqmx86_probe._entry.5, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @tqmx86_probe._entry_ptr.9, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mfd/tqmx86.c", i32 224, i32 4}
!41 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @tqmx86_probe._entry.10, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @tqmx86_probe._entry_ptr.13, !40, !"_entry_ptr", i1 false, i1 false}
!44 = distinct !{null, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mfd/tqmx86.c", i32 118, i32 10}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mfd/tqmx86.c", i32 120, i32 10}
!48 = distinct !{null, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mfd/tqmx86.c", i32 122, i32 10}
!50 = distinct !{null, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mfd/tqmx86.c", i32 124, i32 10}
!52 = distinct !{null, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mfd/tqmx86.c", i32 126, i32 10}
!54 = distinct !{null, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mfd/tqmx86.c", i32 128, i32 10}
!56 = distinct !{null, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mfd/tqmx86.c", i32 130, i32 10}
!58 = distinct !{null, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mfd/tqmx86.c", i32 132, i32 10}
!60 = distinct !{null, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mfd/tqmx86.c", i32 134, i32 10}
!62 = distinct !{null, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mfd/tqmx86.c", i32 136, i32 10}
!64 = distinct !{null, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mfd/tqmx86.c", i32 138, i32 10}
!66 = distinct !{null, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mfd/tqmx86.c", i32 140, i32 10}
!68 = distinct !{null, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mfd/tqmx86.c", i32 142, i32 10}
!70 = distinct !{null, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mfd/tqmx86.c", i32 144, i32 10}
!72 = distinct !{null, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mfd/tqmx86.c", i32 146, i32 10}
!74 = distinct !{null, !75, !"tqmx_gpio_resources", i1 false, i1 false}
!75 = !{!"../drivers/mfd/tqmx86.c", i32 72, i32 24}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mfd/tqmx86.c", i32 171, i32 3}
!78 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @tqmx86_board_id_to_clk_rate._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @tqmx86_board_id_to_clk_rate._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = distinct !{null, !82, !"ocores_platform_data", i1 false, i1 false}
!82 = !{!"../drivers/mfd/tqmx86.c", i32 84, i32 40}
!83 = distinct !{null, !84, !"tqmx86_i2c_devices", i1 false, i1 false}
!84 = !{!"../drivers/mfd/tqmx86.c", i32 77, i32 30}
!85 = distinct !{null, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mfd/tqmx86.c", i32 91, i32 11}
!87 = distinct !{null, !88, !"tqmx86_i2c_soft_dev", i1 false, i1 false}
!88 = !{!"../drivers/mfd/tqmx86.c", i32 89, i32 30}
!89 = distinct !{null, !90, !"tqmx_i2c_soft_resources", i1 false, i1 false}
!90 = !{!"../drivers/mfd/tqmx86.c", i32 60, i32 30}
!91 = distinct !{null, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mfd/tqmx86.c", i32 101, i32 11}
!93 = distinct !{null, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mfd/tqmx86.c", i32 107, i32 11}
!95 = distinct !{null, !96, !"tqmx86_devs", i1 false, i1 false}
!96 = !{!"../drivers/mfd/tqmx86.c", i32 99, i32 30}
!97 = distinct !{null, !98, !"tqmx_watchdog_resources", i1 false, i1 false}
!98 = !{!"../drivers/mfd/tqmx86.c", i32 64, i32 30}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
