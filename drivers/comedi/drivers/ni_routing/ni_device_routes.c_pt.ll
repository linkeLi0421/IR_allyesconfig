; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/ni_routing/ni_device_routes.c_pt.bc'
source_filename = "../drivers/comedi/drivers/ni_routing/ni_device_routes.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ni_device_routes = type { ptr, i32, ptr }

@ni_pxi_6030e_device_routes = external dso_local global %struct.ni_device_routes, align 4
@ni_pci_6070e_device_routes = external dso_local global %struct.ni_device_routes, align 4
@ni_pci_6220_device_routes = external dso_local global %struct.ni_device_routes, align 4
@ni_pci_6221_device_routes = external dso_local global %struct.ni_device_routes, align 4
@ni_pxi_6224_device_routes = external dso_local global %struct.ni_device_routes, align 4
@ni_pxi_6225_device_routes = external dso_local global %struct.ni_device_routes, align 4
@ni_pci_6229_device_routes = external dso_local global %struct.ni_device_routes, align 4
@ni_pci_6251_device_routes = external dso_local global %struct.ni_device_routes, align 4
@ni_pxi_6251_device_routes = external dso_local global %struct.ni_device_routes, align 4
@ni_pxie_6251_device_routes = external dso_local global %struct.ni_device_routes, align 4
@ni_pci_6254_device_routes = external dso_local global %struct.ni_device_routes, align 4
@ni_pci_6259_device_routes = external dso_local global %struct.ni_device_routes, align 4
@ni_pci_6534_device_routes = external dso_local global %struct.ni_device_routes, align 4
@ni_pci_6602_device_routes = external dso_local global %struct.ni_device_routes, align 4
@ni_pci_6713_device_routes = external dso_local global %struct.ni_device_routes, align 4
@ni_pci_6723_device_routes = external dso_local global %struct.ni_device_routes, align 4
@ni_pci_6733_device_routes = external dso_local global %struct.ni_device_routes, align 4
@ni_pxi_6733_device_routes = external dso_local global %struct.ni_device_routes, align 4
@ni_device_routes_list = dso_local constant { [19 x ptr], [52 x i8] } { [19 x ptr] [ptr @ni_pxi_6030e_device_routes, ptr @ni_pci_6070e_device_routes, ptr @ni_pci_6220_device_routes, ptr @ni_pci_6221_device_routes, ptr @ni_pxi_6224_device_routes, ptr @ni_pxi_6225_device_routes, ptr @ni_pci_6229_device_routes, ptr @ni_pci_6251_device_routes, ptr @ni_pxi_6251_device_routes, ptr @ni_pxie_6251_device_routes, ptr @ni_pci_6254_device_routes, ptr @ni_pci_6259_device_routes, ptr @ni_pci_6534_device_routes, ptr @ni_pci_6602_device_routes, ptr @ni_pci_6713_device_routes, ptr @ni_pci_6723_device_routes, ptr @ni_pci_6733_device_routes, ptr @ni_pxi_6733_device_routes, ptr null], [52 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [22 x i8] c"ni_device_routes_list\00", align 1
@___asan_gen_.2 = private constant [56 x i8] c"../drivers/comedi/drivers/ni_routing/ni_device_routes.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 30, i32 32 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @ni_device_routes_list], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_device_routes_list to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @ni_device_routes_list, !1, !"ni_device_routes_list", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/ni_routing/ni_device_routes.c", i32 30, i32 32}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
