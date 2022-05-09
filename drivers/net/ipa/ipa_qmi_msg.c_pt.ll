; ModuleID = '/llk/IR_all_yes/drivers/net/ipa/ipa_qmi_msg.c_pt.bc'
source_filename = "../drivers/net/ipa/ipa_qmi_msg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qmi_elem_info = type { i32, i32, i32, i32, i8, i32, ptr }

@ipa_indication_register_req_ei = dso_local global { [11 x %struct.qmi_elem_info], [76 x i8] } { [11 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 16, i32 0, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 16, i32 1, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 17, i32 2, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 17, i32 3, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 18, i32 4, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 18, i32 5, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 19, i32 6, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 19, i32 7, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 20, i32 8, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 20, i32 9, ptr null }, %struct.qmi_elem_info zeroinitializer], [76 x i8] zeroinitializer }, align 32
@qmi_response_type_v01_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@ipa_indication_register_rsp_ei = dso_local global { [2 x %struct.qmi_elem_info], [40 x i8] } { [2 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 9, i32 1, i32 4, i32 0, i8 2, i32 0, ptr @qmi_response_type_v01_ei }, %struct.qmi_elem_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@ipa_driver_init_complete_req_ei = dso_local global { [2 x %struct.qmi_elem_info], [40 x i8] } { [2 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 1, i32 0, ptr null }, %struct.qmi_elem_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@ipa_driver_init_complete_rsp_ei = dso_local global { [2 x %struct.qmi_elem_info], [40 x i8] } { [2 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 9, i32 1, i32 4, i32 0, i8 2, i32 0, ptr @qmi_response_type_v01_ei }, %struct.qmi_elem_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@ipa_init_complete_ind_ei = dso_local global { [2 x %struct.qmi_elem_info], [40 x i8] } { [2 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 9, i32 1, i32 4, i32 0, i8 2, i32 0, ptr @qmi_response_type_v01_ei }, %struct.qmi_elem_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@ipa_mem_bounds_ei = dso_local global { [3 x %struct.qmi_elem_info], [44 x i8] } { [3 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 0, i32 0, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 0, i32 4, ptr null }, %struct.qmi_elem_info zeroinitializer], [44 x i8] zeroinitializer }, align 32
@ipa_mem_array_ei = dso_local global { [3 x %struct.qmi_elem_info], [44 x i8] } { [3 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 0, i32 0, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 0, i32 4, ptr null }, %struct.qmi_elem_info zeroinitializer], [44 x i8] zeroinitializer }, align 32
@ipa_mem_range_ei = dso_local global { [3 x %struct.qmi_elem_info], [44 x i8] } { [3 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 0, i32 0, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 0, i32 4, ptr null }, %struct.qmi_elem_info zeroinitializer], [44 x i8] zeroinitializer }, align 32
@ipa_init_modem_driver_req_ei = dso_local global { [39 x %struct.qmi_elem_info], [284 x i8] } { [39 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 16, i32 0, ptr null }, %struct.qmi_elem_info { i32 8, i32 1, i32 4, i32 0, i8 16, i32 4, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 17, i32 8, ptr null }, %struct.qmi_elem_info { i32 9, i32 1, i32 8, i32 0, i8 17, i32 12, ptr @ipa_mem_bounds_ei }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 18, i32 20, ptr null }, %struct.qmi_elem_info { i32 9, i32 1, i32 8, i32 0, i8 18, i32 24, ptr @ipa_mem_array_ei }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 19, i32 32, ptr null }, %struct.qmi_elem_info { i32 9, i32 1, i32 8, i32 0, i8 19, i32 36, ptr @ipa_mem_array_ei }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 20, i32 44, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 20, i32 48, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 21, i32 52, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 21, i32 56, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 22, i32 60, ptr null }, %struct.qmi_elem_info { i32 9, i32 1, i32 8, i32 0, i8 22, i32 64, ptr @ipa_mem_range_ei }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 23, i32 72, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 23, i32 76, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 24, i32 80, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 24, i32 81, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 25, i32 82, ptr null }, %struct.qmi_elem_info { i32 9, i32 1, i32 8, i32 0, i8 25, i32 84, ptr @ipa_mem_bounds_ei }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 26, i32 92, ptr null }, %struct.qmi_elem_info { i32 9, i32 1, i32 8, i32 0, i8 26, i32 96, ptr @ipa_mem_bounds_ei }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 27, i32 104, ptr null }, %struct.qmi_elem_info { i32 9, i32 1, i32 8, i32 0, i8 27, i32 108, ptr @ipa_mem_array_ei }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 28, i32 116, ptr null }, %struct.qmi_elem_info { i32 9, i32 1, i32 8, i32 0, i8 28, i32 120, ptr @ipa_mem_array_ei }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 29, i32 128, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 29, i32 132, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 30, i32 136, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 30, i32 140, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 31, i32 144, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 31, i32 148, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 32, i32 152, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 32, i32 156, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 33, i32 160, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 33, i32 164, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 34, i32 168, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 34, i32 172, ptr null }, %struct.qmi_elem_info zeroinitializer], [284 x i8] zeroinitializer }, align 32
@ipa_init_modem_driver_rsp_ei = dso_local global { [8 x %struct.qmi_elem_info], [32 x i8] } { [8 x %struct.qmi_elem_info] [%struct.qmi_elem_info { i32 9, i32 1, i32 4, i32 0, i8 2, i32 0, ptr @qmi_response_type_v01_ei }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 16, i32 4, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 16, i32 8, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 17, i32 12, ptr null }, %struct.qmi_elem_info { i32 5, i32 1, i32 4, i32 0, i8 17, i32 16, ptr null }, %struct.qmi_elem_info { i32 1, i32 1, i32 1, i32 0, i8 18, i32 20, ptr null }, %struct.qmi_elem_info { i32 3, i32 1, i32 1, i32 0, i8 18, i32 21, ptr null }, %struct.qmi_elem_info zeroinitializer], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [31 x i8] c"ipa_indication_register_req_ei\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 12, i32 22 }
@___asan_gen_.4 = private unnamed_addr constant [31 x i8] c"ipa_indication_register_rsp_ei\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 119, i32 22 }
@___asan_gen_.7 = private unnamed_addr constant [32 x i8] c"ipa_driver_init_complete_req_ei\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 137, i32 22 }
@___asan_gen_.10 = private unnamed_addr constant [32 x i8] c"ipa_driver_init_complete_rsp_ei\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 154, i32 22 }
@___asan_gen_.13 = private unnamed_addr constant [25 x i8] c"ipa_init_complete_ind_ei\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 172, i32 22 }
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"ipa_mem_bounds_ei\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 190, i32 22 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"ipa_mem_array_ei\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 211, i32 22 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"ipa_mem_range_ei\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 232, i32 22 }
@___asan_gen_.25 = private unnamed_addr constant [29 x i8] c"ipa_init_modem_driver_req_ei\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 253, i32 22 }
@___asan_gen_.28 = private unnamed_addr constant [29 x i8] c"ipa_init_modem_driver_rsp_ei\00", align 1
@___asan_gen_.29 = private constant [33 x i8] c"../drivers/net/ipa/ipa_qmi_msg.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 648, i32 22 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @ipa_indication_register_req_ei, ptr @ipa_indication_register_rsp_ei, ptr @ipa_driver_init_complete_req_ei, ptr @ipa_driver_init_complete_rsp_ei, ptr @ipa_init_complete_ind_ei, ptr @ipa_mem_bounds_ei, ptr @ipa_mem_array_ei, ptr @ipa_mem_range_ei, ptr @ipa_init_modem_driver_req_ei, ptr @ipa_init_modem_driver_rsp_ei], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_indication_register_req_ei to i32), i32 308, i32 384, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_indication_register_rsp_ei to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_driver_init_complete_req_ei to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_driver_init_complete_rsp_ei to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_init_complete_ind_ei to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_mem_bounds_ei to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_mem_array_ei to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_mem_range_ei to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_init_modem_driver_req_ei to i32), i32 1092, i32 1376, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_init_modem_driver_rsp_ei to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }]
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

!0 = !{ptr @ipa_indication_register_req_ei, !1, !"ipa_indication_register_req_ei", i1 false, i1 false}
!1 = !{!"../drivers/net/ipa/ipa_qmi_msg.c", i32 12, i32 22}
!2 = !{ptr @ipa_indication_register_rsp_ei, !3, !"ipa_indication_register_rsp_ei", i1 false, i1 false}
!3 = !{!"../drivers/net/ipa/ipa_qmi_msg.c", i32 119, i32 22}
!4 = !{ptr @ipa_driver_init_complete_req_ei, !5, !"ipa_driver_init_complete_req_ei", i1 false, i1 false}
!5 = !{!"../drivers/net/ipa/ipa_qmi_msg.c", i32 137, i32 22}
!6 = !{ptr @ipa_driver_init_complete_rsp_ei, !7, !"ipa_driver_init_complete_rsp_ei", i1 false, i1 false}
!7 = !{!"../drivers/net/ipa/ipa_qmi_msg.c", i32 154, i32 22}
!8 = !{ptr @ipa_init_complete_ind_ei, !9, !"ipa_init_complete_ind_ei", i1 false, i1 false}
!9 = !{!"../drivers/net/ipa/ipa_qmi_msg.c", i32 172, i32 22}
!10 = !{ptr @ipa_mem_bounds_ei, !11, !"ipa_mem_bounds_ei", i1 false, i1 false}
!11 = !{!"../drivers/net/ipa/ipa_qmi_msg.c", i32 190, i32 22}
!12 = !{ptr @ipa_mem_array_ei, !13, !"ipa_mem_array_ei", i1 false, i1 false}
!13 = !{!"../drivers/net/ipa/ipa_qmi_msg.c", i32 211, i32 22}
!14 = !{ptr @ipa_mem_range_ei, !15, !"ipa_mem_range_ei", i1 false, i1 false}
!15 = !{!"../drivers/net/ipa/ipa_qmi_msg.c", i32 232, i32 22}
!16 = !{ptr @ipa_init_modem_driver_req_ei, !17, !"ipa_init_modem_driver_req_ei", i1 false, i1 false}
!17 = !{!"../drivers/net/ipa/ipa_qmi_msg.c", i32 253, i32 22}
!18 = !{ptr @ipa_init_modem_driver_rsp_ei, !19, !"ipa_init_modem_driver_rsp_ei", i1 false, i1 false}
!19 = !{!"../drivers/net/ipa/ipa_qmi_msg.c", i32 648, i32 22}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
