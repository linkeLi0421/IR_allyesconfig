; ModuleID = '/llk/IR_all_yes/net/rxrpc/misc.c_pt.bc'
source_filename = "../net/rxrpc/misc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@rxrpc_max_backlog = dso_local local_unnamed_addr global i32 10, section ".data..read_mostly", align 4
@rxrpc_requested_ack_delay = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@rxrpc_soft_ack_delay = dso_local global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@rxrpc_idle_ack_delay = dso_local global { i32, [28 x i8] } { i32 50, [28 x i8] zeroinitializer }, align 32
@rxrpc_rx_window_size = dso_local global { i32, [28 x i8] } { i32 63, [28 x i8] zeroinitializer }, align 32
@rxrpc_rx_mtu = dso_local global { i32, [28 x i8] } { i32 5692, [28 x i8] zeroinitializer }, align 32
@rxrpc_rx_jumbo_max = dso_local global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@rxrpc_ack_priority = dso_local constant { [10 x i8], [22 x i8] } { [10 x i8] c"\00\02\04\05\06\07\00\08\01\03", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [26 x i8] c"rxrpc_requested_ack_delay\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 23, i32 15 }
@___asan_gen_.4 = private unnamed_addr constant [21 x i8] c"rxrpc_soft_ack_delay\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 32, i32 15 }
@___asan_gen_.7 = private unnamed_addr constant [21 x i8] c"rxrpc_idle_ack_delay\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 41, i32 15 }
@___asan_gen_.10 = private unnamed_addr constant [21 x i8] c"rxrpc_rx_window_size\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 49, i32 14 }
@___asan_gen_.13 = private unnamed_addr constant [13 x i8] c"rxrpc_rx_mtu\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 58, i32 14 }
@___asan_gen_.16 = private unnamed_addr constant [19 x i8] c"rxrpc_rx_jumbo_max\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 64, i32 14 }
@___asan_gen_.19 = private unnamed_addr constant [19 x i8] c"rxrpc_ack_priority\00", align 1
@___asan_gen_.20 = private constant [20 x i8] c"../net/rxrpc/misc.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 66, i32 10 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @rxrpc_requested_ack_delay, ptr @rxrpc_soft_ack_delay, ptr @rxrpc_idle_ack_delay, ptr @rxrpc_rx_window_size, ptr @rxrpc_rx_mtu, ptr @rxrpc_rx_jumbo_max, ptr @rxrpc_ack_priority], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_requested_ack_delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_soft_ack_delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_idle_ack_delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_rx_window_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_rx_mtu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_rx_jumbo_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rxrpc_ack_priority to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @rxrpc_max_backlog, !1, !"rxrpc_max_backlog", i1 false, i1 false}
!1 = !{!"../net/rxrpc/misc.c", i32 17, i32 14}
!2 = !{ptr @rxrpc_requested_ack_delay, !3, !"rxrpc_requested_ack_delay", i1 false, i1 false}
!3 = !{!"../net/rxrpc/misc.c", i32 23, i32 15}
!4 = !{ptr @rxrpc_soft_ack_delay, !5, !"rxrpc_soft_ack_delay", i1 false, i1 false}
!5 = !{!"../net/rxrpc/misc.c", i32 32, i32 15}
!6 = !{ptr @rxrpc_idle_ack_delay, !7, !"rxrpc_idle_ack_delay", i1 false, i1 false}
!7 = !{!"../net/rxrpc/misc.c", i32 41, i32 15}
!8 = !{ptr @rxrpc_rx_window_size, !9, !"rxrpc_rx_window_size", i1 false, i1 false}
!9 = !{!"../net/rxrpc/misc.c", i32 49, i32 14}
!10 = !{ptr @rxrpc_rx_mtu, !11, !"rxrpc_rx_mtu", i1 false, i1 false}
!11 = !{!"../net/rxrpc/misc.c", i32 58, i32 14}
!12 = !{ptr @rxrpc_rx_jumbo_max, !13, !"rxrpc_rx_jumbo_max", i1 false, i1 false}
!13 = !{!"../net/rxrpc/misc.c", i32 64, i32 14}
!14 = !{ptr @rxrpc_ack_priority, !15, !"rxrpc_ack_priority", i1 false, i1 false}
!15 = !{!"../net/rxrpc/misc.c", i32 66, i32 10}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
