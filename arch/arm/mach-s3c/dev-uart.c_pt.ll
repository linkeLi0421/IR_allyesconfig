; ModuleID = '/llk/IR_all_yes/arch/arm/mach-s3c/dev-uart.c_pt.bc'
source_filename = "../arch/arm/mach-s3c/dev-uart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@s3c24xx_uart_device0 = internal global { %struct.platform_device, [224 x i8] } zeroinitializer, align 32
@s3c24xx_uart_device1 = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr null, i32 1, i8 0, %struct.device zeroinitializer, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@s3c24xx_uart_device2 = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr null, i32 2, i8 0, %struct.device zeroinitializer, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@s3c24xx_uart_device3 = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr null, i32 3, i8 0, %struct.device zeroinitializer, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@s3c24xx_uart_src = dso_local global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @s3c24xx_uart_device0, ptr @s3c24xx_uart_device1, ptr @s3c24xx_uart_device2, ptr @s3c24xx_uart_device3], [16 x i8] zeroinitializer }, align 32
@s3c24xx_uart_devs = dso_local global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"s3c24xx_uart_device0\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 17, i32 31 }
@___asan_gen_.4 = private unnamed_addr constant [21 x i8] c"s3c24xx_uart_device1\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 21, i32 31 }
@___asan_gen_.7 = private unnamed_addr constant [21 x i8] c"s3c24xx_uart_device2\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 25, i32 31 }
@___asan_gen_.10 = private unnamed_addr constant [21 x i8] c"s3c24xx_uart_device3\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 29, i32 31 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"s3c24xx_uart_src\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 33, i32 25 }
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"s3c24xx_uart_devs\00", align 1
@___asan_gen_.17 = private constant [32 x i8] c"../arch/arm/mach-s3c/dev-uart.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 40, i32 25 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @s3c24xx_uart_device0, ptr @s3c24xx_uart_device1, ptr @s3c24xx_uart_device2, ptr @s3c24xx_uart_device3, ptr @s3c24xx_uart_src, ptr @s3c24xx_uart_devs], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_uart_device0 to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_uart_device1 to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_uart_device2 to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_uart_device3 to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_uart_src to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_uart_devs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @s3c24xx_uart_src, !1, !"s3c24xx_uart_src", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-s3c/dev-uart.c", i32 33, i32 25}
!2 = !{ptr @s3c24xx_uart_devs, !3, !"s3c24xx_uart_devs", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-s3c/dev-uart.c", i32 40, i32 25}
!4 = !{ptr @s3c24xx_uart_device0, !5, !"s3c24xx_uart_device0", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-s3c/dev-uart.c", i32 17, i32 31}
!6 = !{ptr @s3c24xx_uart_device1, !7, !"s3c24xx_uart_device1", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-s3c/dev-uart.c", i32 21, i32 31}
!8 = !{ptr @s3c24xx_uart_device2, !9, !"s3c24xx_uart_device2", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-s3c/dev-uart.c", i32 25, i32 31}
!10 = !{ptr @s3c24xx_uart_device3, !11, !"s3c24xx_uart_device3", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-s3c/dev-uart.c", i32 29, i32 31}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
