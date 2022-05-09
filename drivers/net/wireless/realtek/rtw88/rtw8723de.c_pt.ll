; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtw88/rtw8723de.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtw88/rtw8723de.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtw_chip_info = type { ptr, i8, ptr, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i16], ptr, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32], [2 x i32], ptr, i8, ptr, ptr, ptr, ptr, [4 x ptr], ptr, ptr, i32, i8, i16, i8, i8, ptr, i8, i8, ptr, i8, i8, ptr, ptr, i8, [3 x i32], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@__initcall__kmod_rtw88_8723de__421_27_rtw_8723de_driver_init6 = internal global ptr @rtw_8723de_driver_init, section ".initcall6.init", align 4
@rtw_8723de_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @rtw_8723de_id_table, ptr @rtw_pci_probe, ptr @rtw_pci_remove, ptr null, ptr null, ptr @rtw_pci_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtw_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rtw_8723de_driver_exit = internal global ptr @rtw_8723de_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author422 = internal constant [40 x i8] c"rtw88_8723de.author=Realtek Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description423 = internal constant [64 x i8] c"rtw88_8723de.description=Realtek 802.11n wireless 8723de driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file424 = internal constant [66 x i8] c"rtw88_8723de.file=drivers/net/wireless/realtek/rtw88/rtw88_8723de\00", section ".modinfo", align 1
@__UNIQUE_ID_license425 = internal constant [34 x i8] c"rtw88_8723de.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtw88_8723de\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtw_8723de\00", [21 x i8] zeroinitializer }, align 32
@rtw_8723de_id_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4332, i32 55075, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @rtw8723d_hw_spec to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@rtw_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@rtw8723d_hw_spec = external dso_local global %struct.rtw_chip_info, align 4
@___asan_gen_.2 = private unnamed_addr constant [18 x i8] c"rtw_8723de_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 19, i32 26 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 27, i32 1 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 20, i32 10 }
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"rtw_8723de_id_table\00", align 1
@___asan_gen_.12 = private constant [50 x i8] c"../drivers/net/wireless/realtek/rtw88/rtw8723de.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 10, i32 35 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author422, ptr @__UNIQUE_ID_description423, ptr @__UNIQUE_ID_file424, ptr @__UNIQUE_ID_license425, ptr @__exitcall_rtw_8723de_driver_exit, ptr @__initcall__kmod_rtw88_8723de__421_27_rtw_8723de_driver_init6, ptr @rtw_8723de_driver_exit, ptr @rtw_8723de_driver, ptr @.str, ptr @.str.1, ptr @rtw_8723de_id_table], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_8723de_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtw_8723de_id_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtw_8723de_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @rtw_8723de_driver, ptr noundef null, ptr noundef nonnull @.str) #2
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rtw_8723de_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @pci_unregister_driver(ptr noundef nonnull @rtw_8723de_driver) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtw_pci_probe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_pci_remove(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtw_pci_shutdown(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__initcall__kmod_rtw88_8723de__421_27_rtw_8723de_driver_init6, !1, !"__initcall__kmod_rtw88_8723de__421_27_rtw_8723de_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723de.c", i32 27, i32 1}
!2 = !{ptr @__exitcall_rtw_8723de_driver_exit, !1, !"__exitcall_rtw_8723de_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author422, !4, !"__UNIQUE_ID_author422", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723de.c", i32 29, i32 1}
!5 = !{ptr @__UNIQUE_ID_description423, !6, !"__UNIQUE_ID_description423", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723de.c", i32 30, i32 1}
!7 = !{ptr @__UNIQUE_ID_file424, !8, !"__UNIQUE_ID_file424", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723de.c", i32 31, i32 1}
!9 = !{ptr @__UNIQUE_ID_license425, !8, !"__UNIQUE_ID_license425", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723de.c", i32 20, i32 10}
!13 = !{ptr @rtw_8723de_driver, !14, !"rtw_8723de_driver", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723de.c", i32 19, i32 26}
!15 = !{ptr @rtw_8723de_id_table, !16, !"rtw_8723de_id_table", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/realtek/rtw88/rtw8723de.c", i32 10, i32 35}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
