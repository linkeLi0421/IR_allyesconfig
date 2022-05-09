; ModuleID = '/llk/IR_all_yes/net/ipv4/udp_tunnel_stub.c_pt.bc'
source_filename = "../net/ipv4/udp_tunnel_stub.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+udp_tunnel_nic_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_udp_tunnel_nic_ops\09\09\09\09"
module asm "\09.long\09__crc_udp_tunnel_nic_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_tunnel_nic_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_tunnel_nic_ops\22\09\09\09\09\09"
module asm "__kstrtabns_udp_tunnel_nic_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@udp_tunnel_nic_ops = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_udp_tunnel_nic_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_tunnel_nic_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_tunnel_nic_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_tunnel_nic_ops to i32), ptr @__kstrtab_udp_tunnel_nic_ops, ptr @__kstrtabns_udp_tunnel_nic_ops }, section "___ksymtab_gpl+udp_tunnel_nic_ops", align 4
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"udp_tunnel_nic_ops\00", align 1
@___asan_gen_.2 = private constant [30 x i8] c"../net/ipv4/udp_tunnel_stub.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 6, i32 34 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_udp_tunnel_nic_ops, ptr @udp_tunnel_nic_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udp_tunnel_nic_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
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

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_udp_tunnel_nic_ops, !1, !"__ksymtab_udp_tunnel_nic_ops", i1 false, i1 false}
!1 = !{!"../net/ipv4/udp_tunnel_stub.c", i32 7, i32 1}
!2 = !{ptr @udp_tunnel_nic_ops, !3, !"udp_tunnel_nic_ops", i1 false, i1 false}
!3 = !{!"../net/ipv4/udp_tunnel_stub.c", i32 6, i32 34}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
