; ModuleID = '/llk/IR_all_yes/drivers/media/rc/winbond-cir.c_pt.bc'
source_filename = "../drivers/media/rc/winbond-cir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@__param_str_invert = internal constant [19 x i8] c"winbond_cir.invert\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@invert = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_invert = internal constant %struct.kernel_param { ptr @__param_str_invert, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @invert } }, section "__param", align 4
@__UNIQUE_ID_inverttype232 = internal constant [33 x i8] c"winbond_cir.parmtype=invert:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_invert233 = internal constant [63 x i8] c"winbond_cir.parm=invert:Invert the signal from the IR receiver\00", section ".modinfo", align 1
@__param_str_txandrx = internal constant [20 x i8] c"winbond_cir.txandrx\00", align 1
@txandrx = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_txandrx = internal constant %struct.kernel_param { ptr @__param_str_txandrx, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @txandrx } }, section "__param", align 4
@__UNIQUE_ID_txandrxtype234 = internal constant [34 x i8] c"winbond_cir.parmtype=txandrx:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_txandrx235 = internal constant [54 x i8] c"winbond_cir.parm=txandrx:Allow simultaneous TX and RX\00", section ".modinfo", align 1
@__initcall__kmod_winbond_cir__239_1215_wbcir_init6 = internal global ptr @wbcir_init, section ".initcall6.init", align 4
@__exitcall_wbcir_exit = internal global ptr @wbcir_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author240 = internal constant [55 x i8] c"winbond_cir.author=David H\C3\A4rdeman <david@hardeman.nu>\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [60 x i8] c"winbond_cir.description=Winbond SuperI/O Consumer IR Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [46 x i8] c"winbond_cir.file=drivers/media/rc/winbond-cir\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [24 x i8] c"winbond_cir.license=GPL\00", section ".modinfo", align 1
@wbcir_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1016, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid resources\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wbcir_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/media/rc/winbond-cir.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wbcir_probe._entry_ptr = internal global ptr @wbcir_probe._entry, section ".printk_index", align 4
@wbcir_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1037, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@wbcir_probe._entry_ptr.8 = internal global ptr @wbcir_probe._entry.7, section ".printk_index", align 4
@wbcir_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1094, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Region 0x%lx-0x%lx already in use!\0A\00", [60 x i8] zeroinitializer }, align 32
@wbcir_probe._entry_ptr.18 = internal global ptr @wbcir_probe._entry.16, section ".printk_index", align 4
@wbcir_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1101, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@wbcir_probe._entry_ptr.20 = internal global ptr @wbcir_probe._entry.19, section ".printk_index", align 4
@wbcir_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1108, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@wbcir_probe._entry_ptr.22 = internal global ptr @wbcir_probe._entry.21, section ".printk_index", align 4
@wbcir_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 1116, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to claim IRQ %u\0A\00", [40 x i8] zeroinitializer }, align 32
@wbcir_probe._entry_ptr.25 = internal global ptr @wbcir_probe._entry.23, section ".printk_index", align 4
@wbcir_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 1204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013winbond_cir: Unable to register driver\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wbcir_init\00", [21 x i8] zeroinitializer }, align 32
@wbcir_init._entry_ptr = internal global ptr @wbcir_init._entry, section ".printk_index", align 4
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"invert\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 214, i32 13 }
@___asan_gen_.31 = private unnamed_addr constant [8 x i8] c"txandrx\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 218, i32 13 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1016, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1037, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1093, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1100, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1107, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1116, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [34 x i8] c"../drivers/media/rc/winbond-cir.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1204, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_invert233, ptr @__UNIQUE_ID_inverttype232, ptr @__UNIQUE_ID_license243, ptr @__UNIQUE_ID_txandrx235, ptr @__UNIQUE_ID_txandrxtype234, ptr @__exitcall_wbcir_exit, ptr @__initcall__kmod_winbond_cir__239_1215_wbcir_init6, ptr @__param_invert, ptr @__param_txandrx, ptr @wbcir_exit, ptr @wbcir_init._entry, ptr @wbcir_init._entry_ptr, ptr @wbcir_probe._entry, ptr @wbcir_probe._entry.16, ptr @wbcir_probe._entry.19, ptr @wbcir_probe._entry.21, ptr @wbcir_probe._entry.23, ptr @wbcir_probe._entry.7, ptr @wbcir_probe._entry_ptr, ptr @wbcir_probe._entry_ptr.18, ptr @wbcir_probe._entry_ptr.20, ptr @wbcir_probe._entry_ptr.22, ptr @wbcir_probe._entry_ptr.25, ptr @wbcir_probe._entry_ptr.8, ptr @invert, ptr @txandrx, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.17, ptr @.str.24, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @invert to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @txandrx to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wbcir_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wbcir_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wbcir_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wbcir_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wbcir_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wbcir_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wbcir_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wbcir_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wbcir_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #6
  ret i32 -19
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !26, !27, !29, !31, !33, !35, !36, !37, !38, !39, !40, !41, !43, !44, !46, !47, !49, !50, !51, !53, !55, !57, !59, !61, !63, !64, !65, !67, !68, !70, !71, !73, !74, !75, !77, !78, !79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__param_invert, !1, !"__param_invert", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/winbond-cir.c", i32 215, i32 1}
!2 = !{ptr @__UNIQUE_ID_inverttype232, !1, !"__UNIQUE_ID_inverttype232", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_invert233, !4, !"__UNIQUE_ID_invert233", i1 false, i1 false}
!4 = !{!"../drivers/media/rc/winbond-cir.c", i32 216, i32 1}
!5 = !{ptr @__param_txandrx, !6, !"__param_txandrx", i1 false, i1 false}
!6 = !{!"../drivers/media/rc/winbond-cir.c", i32 219, i32 1}
!7 = !{ptr @__UNIQUE_ID_txandrxtype234, !6, !"__UNIQUE_ID_txandrxtype234", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_txandrx235, !9, !"__UNIQUE_ID_txandrx235", i1 false, i1 false}
!9 = !{!"../drivers/media/rc/winbond-cir.c", i32 220, i32 1}
!10 = !{ptr @__initcall__kmod_winbond_cir__239_1215_wbcir_init6, !11, !"__initcall__kmod_winbond_cir__239_1215_wbcir_init6", i1 false, i1 false}
!11 = !{!"../drivers/media/rc/winbond-cir.c", i32 1215, i32 1}
!12 = !{ptr @__exitcall_wbcir_exit, !13, !"__exitcall_wbcir_exit", i1 false, i1 false}
!13 = !{!"../drivers/media/rc/winbond-cir.c", i32 1216, i32 1}
!14 = !{ptr @__UNIQUE_ID_author240, !15, !"__UNIQUE_ID_author240", i1 false, i1 false}
!15 = !{!"../drivers/media/rc/winbond-cir.c", i32 1218, i32 1}
!16 = !{ptr @__UNIQUE_ID_description241, !17, !"__UNIQUE_ID_description241", i1 false, i1 false}
!17 = !{!"../drivers/media/rc/winbond-cir.c", i32 1219, i32 1}
!18 = !{ptr @__UNIQUE_ID_file242, !19, !"__UNIQUE_ID_file242", i1 false, i1 false}
!19 = !{!"../drivers/media/rc/winbond-cir.c", i32 1220, i32 1}
!20 = !{ptr @__UNIQUE_ID_license243, !19, !"__UNIQUE_ID_license243", i1 false, i1 false}
!21 = !{ptr @invert, !22, !"invert", i1 false, i1 false}
!22 = !{!"../drivers/media/rc/winbond-cir.c", i32 214, i32 13}
!23 = !{ptr @txandrx, !24, !"txandrx", i1 false, i1 false}
!24 = !{!"../drivers/media/rc/winbond-cir.c", i32 218, i32 13}
!25 = !{ptr @__param_str_invert, !1, !"__param_str_invert", i1 false, i1 false}
!26 = !{ptr @__param_str_txandrx, !6, !"__param_str_txandrx", i1 false, i1 false}
!27 = distinct !{null, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/rc/winbond-cir.c", i32 1188, i32 14}
!29 = distinct !{null, !30, !"wbcir_driver", i1 false, i1 false}
!30 = !{!"../drivers/media/rc/winbond-cir.c", i32 1187, i32 26}
!31 = distinct !{null, !32, !"wbcir_ids", i1 false, i1 false}
!32 = !{!"../drivers/media/rc/winbond-cir.c", i32 1181, i32 35}
!33 = !{ptr @.str.1, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/rc/winbond-cir.c", i32 1016, i32 3}
!35 = !{ptr @.str.2, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @wbcir_probe._entry, !34, !"_entry", i1 false, i1 false}
!40 = !{ptr @wbcir_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!41 = distinct !{null, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/media/rc/winbond-cir.c", i32 1028, i32 2}
!43 = distinct !{null, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @wbcir_probe._entry.7, !45, !"_entry", i1 false, i1 false}
!45 = !{!"../drivers/media/rc/winbond-cir.c", i32 1037, i32 3}
!46 = !{ptr @wbcir_probe._entry_ptr.8, !45, !"_entry_ptr", i1 false, i1 false}
!47 = distinct !{null, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/rc/winbond-cir.c", i32 1041, i32 2}
!49 = distinct !{null, !48, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !48, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!51 = distinct !{null, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/rc/winbond-cir.c", i32 1044, i32 19}
!53 = distinct !{null, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/rc/winbond-cir.c", i32 1045, i32 30}
!55 = distinct !{null, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/rc/winbond-cir.c", i32 1059, i32 27}
!57 = distinct !{null, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/rc/winbond-cir.c", i32 1060, i32 26}
!59 = distinct !{null, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/rc/winbond-cir.c", i32 1065, i32 24}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/rc/winbond-cir.c", i32 1093, i32 3}
!63 = !{ptr @wbcir_probe._entry.16, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @wbcir_probe._entry_ptr.18, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @wbcir_probe._entry.19, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/media/rc/winbond-cir.c", i32 1100, i32 3}
!67 = !{ptr @wbcir_probe._entry_ptr.20, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @wbcir_probe._entry.21, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../drivers/media/rc/winbond-cir.c", i32 1107, i32 3}
!70 = !{ptr @wbcir_probe._entry_ptr.22, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/rc/winbond-cir.c", i32 1116, i32 3}
!73 = !{ptr @wbcir_probe._entry.23, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @wbcir_probe._entry_ptr.25, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/rc/winbond-cir.c", i32 1204, i32 3}
!77 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @wbcir_init._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @wbcir_init._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
