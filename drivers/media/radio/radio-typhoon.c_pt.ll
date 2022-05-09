; ModuleID = '/llk/IR_all_yes/drivers/media/radio/radio-typhoon.c_pt.bc'
source_filename = "../drivers/media/radio/radio-typhoon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@__UNIQUE_ID_author292 = internal constant [39 x i8] c"radio_typhoon.author=Dr. Henrik Seidel\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [81 x i8] c"radio_typhoon.description=A driver for the Typhoon radio card (a.k.a. EcoRadio).\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [53 x i8] c"radio_typhoon.file=drivers/media/radio/radio-typhoon\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [26 x i8] c"radio_typhoon.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version296 = internal constant [29 x i8] c"radio_typhoon.version=0.1.99\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"radio_typhoon\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.1.99\00", [25 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_io = internal constant [17 x i8] c"radio_typhoon.io\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_io = internal constant %struct.kparam_array { i32 2, i32 4, ptr null, ptr @param_ops_int, ptr @io }, align 4
@__param_io = internal constant %struct.kernel_param { ptr @__param_str_io, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_io } }, section "__param", align 4
@__UNIQUE_ID_iotype297 = internal constant [39 x i8] c"radio_typhoon.parmtype=io:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_io298 = internal constant [73 x i8] c"radio_typhoon.parm=io:I/O addresses of the Typhoon card (0x316 or 0x336)\00", section ".modinfo", align 1
@__param_str_radio_nr = internal constant [23 x i8] c"radio_typhoon.radio_nr\00", align 1
@__param_arr_radio_nr = internal constant %struct.kparam_array { i32 2, i32 4, ptr null, ptr @param_ops_int, ptr @radio_nr }, align 4
@__param_radio_nr = internal constant %struct.kernel_param { ptr @__param_str_radio_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_radio_nr } }, section "__param", align 4
@__UNIQUE_ID_radio_nrtype299 = internal constant [45 x i8] c"radio_typhoon.parmtype=radio_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_radio_nr300 = internal constant [49 x i8] c"radio_typhoon.parm=radio_nr:Radio device numbers\00", section ".modinfo", align 1
@__param_str_mutefreq = internal constant [23 x i8] c"radio_typhoon.mutefreq\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@mutefreq = internal global { i32, [28 x i8] } { i32 87500, [28 x i8] zeroinitializer }, align 32
@__param_mutefreq = internal constant %struct.kernel_param { ptr @__param_str_mutefreq, ptr null, ptr @param_ops_ulong, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @mutefreq } }, section "__param", align 4
@__UNIQUE_ID_mutefreqtype301 = internal constant [38 x i8] c"radio_typhoon.parmtype=mutefreq:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_mutefreq302 = internal constant [73 x i8] c"radio_typhoon.parm=mutefreq:Frequency used when muting the card (in kHz)\00", section ".modinfo", align 1
@__initcall__kmod_radio_typhoon__303_179_typhoon_init6 = internal global ptr @typhoon_init, section ".initcall6.init", align 4
@__exitcall_typhoon_exit = internal global ptr @typhoon_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@io = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 790, i32 -1], [24 x i8] zeroinitializer }, align 32
@radio_nr = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 -1, i32 -1], [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"radio-typhoon\00", [18 x i8] zeroinitializer }, align 32
@typhoon_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013%s: You must set a frequency (in kHz) used when muting the card,\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"typhoon_init\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/radio/radio-typhoon.c\00", [60 x i8] zeroinitializer }, align 32
@typhoon_init._entry_ptr = internal global ptr @typhoon_init._entry, section ".printk_index", align 4
@typhoon_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.7, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013%s: e.g. with \22mutefreq=87500\22 (87000 <= mutefreq <= 108000)\0A\00", [32 x i8] zeroinitializer }, align 32
@typhoon_init._entry_ptr.10 = internal global ptr @typhoon_init._entry.8, section ".printk_index", align 4
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 47, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant [9 x i8] c"mutefreq\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 62, i32 22 }
@___asan_gen_.23 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 59, i32 12 }
@___asan_gen_.26 = private unnamed_addr constant [9 x i8] c"radio_nr\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 61, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 147, i32 12 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 164, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [39 x i8] c"../drivers/media/radio/radio-typhoon.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 166, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_io298, ptr @__UNIQUE_ID_iotype297, ptr @__UNIQUE_ID_license295, ptr @__UNIQUE_ID_mutefreq302, ptr @__UNIQUE_ID_mutefreqtype301, ptr @__UNIQUE_ID_radio_nr300, ptr @__UNIQUE_ID_radio_nrtype299, ptr @__UNIQUE_ID_version296, ptr @__exitcall_typhoon_exit, ptr @__initcall__kmod_radio_typhoon__303_179_typhoon_init6, ptr @__modver_attr, ptr @__param_io, ptr @__param_mutefreq, ptr @__param_radio_nr, ptr @typhoon_exit, ptr @typhoon_init._entry, ptr @typhoon_init._entry.8, ptr @typhoon_init._entry_ptr, ptr @typhoon_init._entry_ptr.10, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mutefreq, ptr @io, ptr @radio_nr, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mutefreq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_nr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @typhoon_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @typhoon_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @typhoon_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @typhoon_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mutefreq, align 4
  %1 = add i32 %0, -108001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -21001, i32 %1)
  %2 = icmp ult i32 %1, -21001
  br i1 %2, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3) #7
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3) #7
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  ret i32 -19
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !21, !23, !25, !26, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !59, !61, !62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__UNIQUE_ID_author292, !1, !"__UNIQUE_ID_author292", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/radio-typhoon.c", i32 44, i32 1}
!2 = !{ptr @__UNIQUE_ID_description293, !3, !"__UNIQUE_ID_description293", i1 false, i1 false}
!3 = !{!"../drivers/media/radio/radio-typhoon.c", i32 45, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/radio/radio-typhoon.c", i32 46, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version296, !8, !"__UNIQUE_ID_version296", i1 false, i1 false}
!8 = !{!"../drivers/media/radio/radio-typhoon.c", i32 47, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_io, !14, !"__param_io", i1 false, i1 false}
!14 = !{!"../drivers/media/radio/radio-typhoon.c", i32 64, i32 1}
!15 = !{ptr @__UNIQUE_ID_iotype297, !14, !"__UNIQUE_ID_iotype297", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_io298, !17, !"__UNIQUE_ID_io298", i1 false, i1 false}
!17 = !{!"../drivers/media/radio/radio-typhoon.c", i32 65, i32 1}
!18 = !{ptr @__param_radio_nr, !19, !"__param_radio_nr", i1 false, i1 false}
!19 = !{!"../drivers/media/radio/radio-typhoon.c", i32 66, i32 1}
!20 = !{ptr @__UNIQUE_ID_radio_nrtype299, !19, !"__UNIQUE_ID_radio_nrtype299", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_radio_nr300, !22, !"__UNIQUE_ID_radio_nr300", i1 false, i1 false}
!22 = !{!"../drivers/media/radio/radio-typhoon.c", i32 67, i32 1}
!23 = !{ptr @__param_mutefreq, !24, !"__param_mutefreq", i1 false, i1 false}
!24 = !{!"../drivers/media/radio/radio-typhoon.c", i32 68, i32 1}
!25 = !{ptr @__UNIQUE_ID_mutefreqtype301, !24, !"__UNIQUE_ID_mutefreqtype301", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_mutefreq302, !27, !"__UNIQUE_ID_mutefreq302", i1 false, i1 false}
!27 = !{!"../drivers/media/radio/radio-typhoon.c", i32 69, i32 1}
!28 = !{ptr @__initcall__kmod_radio_typhoon__303_179_typhoon_init6, !29, !"__initcall__kmod_radio_typhoon__303_179_typhoon_init6", i1 false, i1 false}
!29 = !{!"../drivers/media/radio/radio-typhoon.c", i32 179, i32 1}
!30 = !{ptr @__exitcall_typhoon_exit, !31, !"__exitcall_typhoon_exit", i1 false, i1 false}
!31 = !{!"../drivers/media/radio/radio-typhoon.c", i32 180, i32 1}
!32 = !{ptr @__param_str_io, !14, !"__param_str_io", i1 false, i1 false}
!33 = !{ptr @__param_arr_io, !14, !"__param_arr_io", i1 false, i1 false}
!34 = !{ptr @io, !35, !"io", i1 false, i1 false}
!35 = !{!"../drivers/media/radio/radio-typhoon.c", i32 59, i32 12}
!36 = !{ptr @__param_str_radio_nr, !19, !"__param_str_radio_nr", i1 false, i1 false}
!37 = !{ptr @__param_arr_radio_nr, !19, !"__param_arr_radio_nr", i1 false, i1 false}
!38 = !{ptr @radio_nr, !39, !"radio_nr", i1 false, i1 false}
!39 = !{!"../drivers/media/radio/radio-typhoon.c", i32 61, i32 12}
!40 = !{ptr @__param_str_mutefreq, !24, !"__param_str_mutefreq", i1 false, i1 false}
!41 = !{ptr @mutefreq, !42, !"mutefreq", i1 false, i1 false}
!42 = !{!"../drivers/media/radio/radio-typhoon.c", i32 62, i32 22}
!43 = !{ptr @.str.3, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/radio/radio-typhoon.c", i32 147, i32 12}
!45 = distinct !{null, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/radio/radio-typhoon.c", i32 155, i32 10}
!47 = distinct !{null, !48, !"typhoon_driver", i1 false, i1 false}
!48 = !{!"../drivers/media/radio/radio-typhoon.c", i32 141, i32 32}
!49 = distinct !{null, !50, !"typhoon_ops", i1 false, i1 false}
!50 = !{!"../drivers/media/radio/radio-typhoon.c", i32 133, i32 35}
!51 = distinct !{null, !52, !"typhoon_ioports", i1 false, i1 false}
!52 = !{!"../drivers/media/radio/radio-typhoon.c", i32 139, i32 18}
!53 = !{ptr @.str.5, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/radio/radio-typhoon.c", i32 164, i32 3}
!55 = !{ptr @.str.6, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.7, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @typhoon_init._entry, !54, !"_entry", i1 false, i1 false}
!58 = !{ptr @typhoon_init._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.9, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/radio/radio-typhoon.c", i32 166, i32 3}
!61 = !{ptr @typhoon_init._entry.8, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @typhoon_init._entry_ptr.10, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
