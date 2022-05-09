; ModuleID = '/llk/IR_all_yes/drivers/w1/slaves/w1_smem.c_pt.bc'
source_filename = "../drivers/w1/slaves/w1_smem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.w1_family = type { %struct.list_head, i8, ptr, ptr, %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }

@w1_smem_family_01 = internal global { %struct.w1_family, [40 x i8] } { %struct.w1_family { %struct.list_head zeroinitializer, i8 1, ptr null, ptr null, %struct.atomic_t zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@w1_smem_family_81 = internal global { %struct.w1_family, [40 x i8] } { %struct.w1_family { %struct.list_head zeroinitializer, i8 -127, ptr null, ptr null, %struct.atomic_t zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_w1_smem__170_52_w1_smem_init6 = internal global ptr @w1_smem_init, section ".initcall6.init", align 4
@__exitcall_w1_smem_fini = internal global ptr @w1_smem_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [50 x i8] c"w1_smem.author=Evgeniy Polyakov <zbr@ioremap.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [84 x i8] c"w1_smem.description=Driver for 1-wire Dallas network protocol, 64bit memory family.\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [39 x i8] c"w1_smem.file=drivers/w1/slaves/w1_smem\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [20 x i8] c"w1_smem.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias175 = internal constant [29 x i8] c"w1_smem.alias=w1-family-0x01\00", section ".modinfo", align 1
@__UNIQUE_ID_alias176 = internal constant [29 x i8] c"w1_smem.alias=w1-family-0x81\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"w1_smem_family_01\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 21, i32 25 }
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"w1_smem_family_81\00", align 1
@___asan_gen_.5 = private constant [31 x i8] c"../drivers/w1/slaves/w1_smem.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 25, i32 25 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias175, ptr @__UNIQUE_ID_alias176, ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_w1_smem_fini, ptr @__initcall__kmod_w1_smem__170_52_w1_smem_init6, ptr @w1_smem_fini, ptr @w1_smem_family_01, ptr @w1_smem_family_81], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_smem_family_01 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_smem_family_81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w1_smem_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @w1_unregister_family(ptr noundef nonnull @w1_smem_family_01) #2
  tail call void @w1_unregister_family(ptr noundef nonnull @w1_smem_family_81) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_unregister_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_smem_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @w1_register_family(ptr noundef nonnull @w1_smem_family_01) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @w1_register_family(ptr noundef nonnull @w1_smem_family_81) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @w1_unregister_family(ptr noundef nonnull @w1_smem_family_01) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__initcall__kmod_w1_smem__170_52_w1_smem_init6, !1, !"__initcall__kmod_w1_smem__170_52_w1_smem_init6", i1 false, i1 false}
!1 = !{!"../drivers/w1/slaves/w1_smem.c", i32 52, i32 1}
!2 = !{ptr @__exitcall_w1_smem_fini, !3, !"__exitcall_w1_smem_fini", i1 false, i1 false}
!3 = !{!"../drivers/w1/slaves/w1_smem.c", i32 53, i32 1}
!4 = !{ptr @__UNIQUE_ID_author171, !5, !"__UNIQUE_ID_author171", i1 false, i1 false}
!5 = !{!"../drivers/w1/slaves/w1_smem.c", i32 55, i32 1}
!6 = !{ptr @__UNIQUE_ID_description172, !7, !"__UNIQUE_ID_description172", i1 false, i1 false}
!7 = !{!"../drivers/w1/slaves/w1_smem.c", i32 56, i32 1}
!8 = !{ptr @__UNIQUE_ID_file173, !9, !"__UNIQUE_ID_file173", i1 false, i1 false}
!9 = !{!"../drivers/w1/slaves/w1_smem.c", i32 57, i32 1}
!10 = !{ptr @__UNIQUE_ID_license174, !9, !"__UNIQUE_ID_license174", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias175, !12, !"__UNIQUE_ID_alias175", i1 false, i1 false}
!12 = !{!"../drivers/w1/slaves/w1_smem.c", i32 58, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias176, !14, !"__UNIQUE_ID_alias176", i1 false, i1 false}
!14 = !{!"../drivers/w1/slaves/w1_smem.c", i32 59, i32 1}
!15 = !{ptr @w1_smem_family_01, !16, !"w1_smem_family_01", i1 false, i1 false}
!16 = !{!"../drivers/w1/slaves/w1_smem.c", i32 21, i32 25}
!17 = !{ptr @w1_smem_family_81, !18, !"w1_smem_family_81", i1 false, i1 false}
!18 = !{!"../drivers/w1/slaves/w1_smem.c", i32 25, i32 25}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
