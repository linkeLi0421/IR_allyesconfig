; ModuleID = '/llk/IR_all_yes/arch/arm/mach-s3c/dev-uart-s3c64xx.c_pt.bc'
source_filename = "../arch/arm/mach-s3c/dev-uart-s3c64xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.s3c24xx_uart_resources = type { ptr, i32 }

@s3c64xx_uart0_resource = internal global { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 2130726912, i32 2130727167, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 69, i32 69, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@s3c64xx_uart1_resource = internal global { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 2130727936, i32 2130728191, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 70, i32 70, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@s3c6xx_uart2_resource = internal global { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 2130728960, i32 2130729215, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 71, i32 71, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@s3c64xx_uart3_resource = internal global { [2 x %struct.resource], [32 x i8] } { [2 x %struct.resource] [%struct.resource { i32 2130729984, i32 2130730239, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 72, i32 72, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@s3c64xx_uart_resources = dso_local local_unnamed_addr global [4 x %struct.s3c24xx_uart_resources] [%struct.s3c24xx_uart_resources { ptr @s3c64xx_uart0_resource, i32 2 }, %struct.s3c24xx_uart_resources { ptr @s3c64xx_uart1_resource, i32 2 }, %struct.s3c24xx_uart_resources { ptr @s3c6xx_uart2_resource, i32 2 }, %struct.s3c24xx_uart_resources { ptr @s3c64xx_uart3_resource, i32 2 }], section ".init.data", align 4
@___asan_gen_.1 = private unnamed_addr constant [23 x i8] c"s3c64xx_uart0_resource\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 27, i32 24 }
@___asan_gen_.4 = private unnamed_addr constant [23 x i8] c"s3c64xx_uart1_resource\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 32, i32 24 }
@___asan_gen_.7 = private unnamed_addr constant [22 x i8] c"s3c6xx_uart2_resource\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 37, i32 24 }
@___asan_gen_.10 = private unnamed_addr constant [23 x i8] c"s3c64xx_uart3_resource\00", align 1
@___asan_gen_.11 = private constant [40 x i8] c"../arch/arm/mach-s3c/dev-uart-s3c64xx.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 42, i32 24 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @s3c64xx_uart0_resource, ptr @s3c64xx_uart1_resource, ptr @s3c6xx_uart2_resource, ptr @s3c64xx_uart3_resource], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_uart0_resource to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_uart1_resource to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c6xx_uart2_resource to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_uart3_resource to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @s3c64xx_uart_resources, !1, !"s3c64xx_uart_resources", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-s3c/dev-uart-s3c64xx.c", i32 48, i32 31}
!2 = !{ptr @s3c64xx_uart0_resource, !3, !"s3c64xx_uart0_resource", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-s3c/dev-uart-s3c64xx.c", i32 27, i32 24}
!4 = !{ptr @s3c64xx_uart1_resource, !5, !"s3c64xx_uart1_resource", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-s3c/dev-uart-s3c64xx.c", i32 32, i32 24}
!6 = !{ptr @s3c6xx_uart2_resource, !7, !"s3c6xx_uart2_resource", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-s3c/dev-uart-s3c64xx.c", i32 37, i32 24}
!8 = !{ptr @s3c64xx_uart3_resource, !9, !"s3c64xx_uart3_resource", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-s3c/dev-uart-s3c64xx.c", i32 42, i32 24}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
