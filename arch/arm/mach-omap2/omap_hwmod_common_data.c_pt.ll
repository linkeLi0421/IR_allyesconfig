; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/omap_hwmod_common_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/omap_hwmod_common_data.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sysc_regbits = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.omap_dss_dispc_dev_attr = type { i8, i8 }

@omap_hwmod_sysc_type1 = dso_local global { %struct.sysc_regbits, [24 x i8] } { %struct.sysc_regbits { i8 12, i8 8, i8 3, i8 2, i8 1, i8 0, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@omap_hwmod_sysc_type2 = dso_local global { %struct.sysc_regbits, [24 x i8] } { %struct.sysc_regbits { i8 4, i8 0, i8 2, i8 0, i8 0, i8 0, i8 16, i8 0 }, [24 x i8] zeroinitializer }, align 32
@omap_hwmod_sysc_type3 = dso_local global { %struct.sysc_regbits, [24 x i8] } { %struct.sysc_regbits { i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@omap2_3_dss_dispc_dev_attr = dso_local global { %struct.omap_dss_dispc_dev_attr, [30 x i8] } { %struct.omap_dss_dispc_dev_attr { i8 2, i8 0 }, [30 x i8] zeroinitializer }, align 32
@omap34xx_sr_sysc_fields = dso_local global { %struct.sysc_regbits, [24 x i8] } { %struct.sysc_regbits { i8 0, i8 20, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@omap36xx_sr_sysc_fields = dso_local global { %struct.sysc_regbits, [24 x i8] } { %struct.sysc_regbits { i8 0, i8 0, i8 24, i8 26, i8 0, i8 0, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@omap3_sham_sysc_fields = dso_local global { %struct.sysc_regbits, [24 x i8] } { %struct.sysc_regbits { i8 0, i8 0, i8 4, i8 0, i8 1, i8 0, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@omap3xxx_aes_sysc_fields = dso_local global { %struct.sysc_regbits, [24 x i8] } { %struct.sysc_regbits { i8 0, i8 0, i8 6, i8 0, i8 1, i8 0, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@omap_hwmod_sysc_type_mcasp = dso_local global { %struct.sysc_regbits, [24 x i8] } zeroinitializer, align 32
@omap_hwmod_sysc_type_usb_host_fs = dso_local global { %struct.sysc_regbits, [24 x i8] } { %struct.sysc_regbits { i8 4, i8 0, i8 2, i8 0, i8 1, i8 0, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [22 x i8] c"omap_hwmod_sysc_type1\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 30, i32 21 }
@___asan_gen_.4 = private unnamed_addr constant [22 x i8] c"omap_hwmod_sysc_type2\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 46, i32 21 }
@___asan_gen_.7 = private unnamed_addr constant [22 x i8] c"omap_hwmod_sysc_type3\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 57, i32 21 }
@___asan_gen_.10 = private unnamed_addr constant [27 x i8] c"omap2_3_dss_dispc_dev_attr\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 62, i32 32 }
@___asan_gen_.13 = private unnamed_addr constant [24 x i8] c"omap34xx_sr_sysc_fields\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 67, i32 21 }
@___asan_gen_.16 = private unnamed_addr constant [24 x i8] c"omap36xx_sr_sysc_fields\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 71, i32 21 }
@___asan_gen_.19 = private unnamed_addr constant [23 x i8] c"omap3_sham_sysc_fields\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 76, i32 21 }
@___asan_gen_.22 = private unnamed_addr constant [25 x i8] c"omap3xxx_aes_sysc_fields\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 82, i32 21 }
@___asan_gen_.25 = private unnamed_addr constant [27 x i8] c"omap_hwmod_sysc_type_mcasp\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 88, i32 21 }
@___asan_gen_.28 = private unnamed_addr constant [33 x i8] c"omap_hwmod_sysc_type_usb_host_fs\00", align 1
@___asan_gen_.29 = private constant [48 x i8] c"../arch/arm/mach-omap2/omap_hwmod_common_data.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 92, i32 21 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @omap_hwmod_sysc_type1, ptr @omap_hwmod_sysc_type2, ptr @omap_hwmod_sysc_type3, ptr @omap2_3_dss_dispc_dev_attr, ptr @omap34xx_sr_sysc_fields, ptr @omap36xx_sr_sysc_fields, ptr @omap3_sham_sysc_fields, ptr @omap3xxx_aes_sysc_fields, ptr @omap_hwmod_sysc_type_mcasp, ptr @omap_hwmod_sysc_type_usb_host_fs], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hwmod_sysc_type1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hwmod_sysc_type2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hwmod_sysc_type3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_3_dss_dispc_dev_attr to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap34xx_sr_sysc_fields to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap36xx_sr_sysc_fields to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_sham_sysc_fields to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3xxx_aes_sysc_fields to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hwmod_sysc_type_mcasp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_hwmod_sysc_type_usb_host_fs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @omap_hwmod_sysc_type1, !1, !"omap_hwmod_sysc_type1", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/omap_hwmod_common_data.c", i32 30, i32 21}
!2 = !{ptr @omap_hwmod_sysc_type2, !3, !"omap_hwmod_sysc_type2", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/omap_hwmod_common_data.c", i32 46, i32 21}
!4 = !{ptr @omap_hwmod_sysc_type3, !5, !"omap_hwmod_sysc_type3", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/omap_hwmod_common_data.c", i32 57, i32 21}
!6 = !{ptr @omap2_3_dss_dispc_dev_attr, !7, !"omap2_3_dss_dispc_dev_attr", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/omap_hwmod_common_data.c", i32 62, i32 32}
!8 = !{ptr @omap34xx_sr_sysc_fields, !9, !"omap34xx_sr_sysc_fields", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/omap_hwmod_common_data.c", i32 67, i32 21}
!10 = !{ptr @omap36xx_sr_sysc_fields, !11, !"omap36xx_sr_sysc_fields", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/omap_hwmod_common_data.c", i32 71, i32 21}
!12 = !{ptr @omap3_sham_sysc_fields, !13, !"omap3_sham_sysc_fields", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/omap_hwmod_common_data.c", i32 76, i32 21}
!14 = !{ptr @omap3xxx_aes_sysc_fields, !15, !"omap3xxx_aes_sysc_fields", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/omap_hwmod_common_data.c", i32 82, i32 21}
!16 = !{ptr @omap_hwmod_sysc_type_mcasp, !17, !"omap_hwmod_sysc_type_mcasp", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/omap_hwmod_common_data.c", i32 88, i32 21}
!18 = !{ptr @omap_hwmod_sysc_type_usb_host_fs, !19, !"omap_hwmod_sysc_type_usb_host_fs", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/omap_hwmod_common_data.c", i32 92, i32 21}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
