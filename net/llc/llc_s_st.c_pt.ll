; ModuleID = '/llk/IR_all_yes/net/llc/llc_s_st.c_pt.bc'
source_filename = "../net/llc/llc_s_st.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.llc_sap_state = type { i8, ptr }
%struct.llc_sap_state_trans = type { ptr, i8, ptr }

@llc_sap_inactive_state_transitions = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @llc_sap_inactive_state_trans_1, ptr @llc_sap_state_trans_end], [24 x i8] zeroinitializer }, align 32
@llc_sap_active_state_transitions = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @llc_sap_active_state_trans_2, ptr @llc_sap_active_state_trans_1, ptr @llc_sap_active_state_trans_3, ptr @llc_sap_active_state_trans_4, ptr @llc_sap_active_state_trans_5, ptr @llc_sap_active_state_trans_6, ptr @llc_sap_active_state_trans_7, ptr @llc_sap_active_state_trans_8, ptr @llc_sap_active_state_trans_9, ptr @llc_sap_state_trans_end], [56 x i8] zeroinitializer }, align 32
@llc_sap_state_table = dso_local global { [2 x %struct.llc_sap_state], [16 x i8] } { [2 x %struct.llc_sap_state] [%struct.llc_sap_state { i8 1, ptr @llc_sap_inactive_state_transitions }, %struct.llc_sap_state { i8 2, ptr @llc_sap_active_state_transitions }], [16 x i8] zeroinitializer }, align 32
@llc_sap_inactive_state_trans_1 = internal global { %struct.llc_sap_state_trans, [20 x i8] } { %struct.llc_sap_state_trans { ptr @llc_sap_ev_activation_req, i8 2, ptr @llc_sap_inactive_state_actions_1 }, [20 x i8] zeroinitializer }, align 32
@llc_sap_state_trans_end = internal global { %struct.llc_sap_state_trans, [20 x i8] } zeroinitializer, align 32
@llc_sap_inactive_state_actions_1 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @llc_sap_action_report_status, ptr null], [24 x i8] zeroinitializer }, align 32
@llc_sap_active_state_trans_2 = internal global { %struct.llc_sap_state_trans, [20 x i8] } { %struct.llc_sap_state_trans { ptr @llc_sap_ev_unitdata_req, i8 2, ptr @llc_sap_active_state_actions_2 }, [20 x i8] zeroinitializer }, align 32
@llc_sap_active_state_trans_1 = internal global { %struct.llc_sap_state_trans, [20 x i8] } { %struct.llc_sap_state_trans { ptr @llc_sap_ev_rx_ui, i8 2, ptr @llc_sap_active_state_actions_1 }, [20 x i8] zeroinitializer }, align 32
@llc_sap_active_state_trans_3 = internal global { %struct.llc_sap_state_trans, [20 x i8] } { %struct.llc_sap_state_trans { ptr @llc_sap_ev_xid_req, i8 2, ptr @llc_sap_active_state_actions_3 }, [20 x i8] zeroinitializer }, align 32
@llc_sap_active_state_trans_4 = internal global { %struct.llc_sap_state_trans, [20 x i8] } { %struct.llc_sap_state_trans { ptr @llc_sap_ev_rx_xid_c, i8 2, ptr @llc_sap_active_state_actions_4 }, [20 x i8] zeroinitializer }, align 32
@llc_sap_active_state_trans_5 = internal global { %struct.llc_sap_state_trans, [20 x i8] } { %struct.llc_sap_state_trans { ptr @llc_sap_ev_rx_xid_r, i8 2, ptr @llc_sap_active_state_actions_5 }, [20 x i8] zeroinitializer }, align 32
@llc_sap_active_state_trans_6 = internal global { %struct.llc_sap_state_trans, [20 x i8] } { %struct.llc_sap_state_trans { ptr @llc_sap_ev_test_req, i8 2, ptr @llc_sap_active_state_actions_6 }, [20 x i8] zeroinitializer }, align 32
@llc_sap_active_state_trans_7 = internal global { %struct.llc_sap_state_trans, [20 x i8] } { %struct.llc_sap_state_trans { ptr @llc_sap_ev_rx_test_c, i8 2, ptr @llc_sap_active_state_actions_7 }, [20 x i8] zeroinitializer }, align 32
@llc_sap_active_state_trans_8 = internal global { %struct.llc_sap_state_trans, [20 x i8] } { %struct.llc_sap_state_trans { ptr @llc_sap_ev_rx_test_r, i8 2, ptr @llc_sap_active_state_actions_8 }, [20 x i8] zeroinitializer }, align 32
@llc_sap_active_state_trans_9 = internal global { %struct.llc_sap_state_trans, [20 x i8] } { %struct.llc_sap_state_trans { ptr @llc_sap_ev_deactivation_req, i8 1, ptr @llc_sap_active_state_actions_9 }, [20 x i8] zeroinitializer }, align 32
@llc_sap_active_state_actions_2 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @llc_sap_action_send_ui, ptr null], [24 x i8] zeroinitializer }, align 32
@llc_sap_active_state_actions_1 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @llc_sap_action_unitdata_ind, ptr null], [24 x i8] zeroinitializer }, align 32
@llc_sap_active_state_actions_3 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @llc_sap_action_send_xid_c, ptr null], [24 x i8] zeroinitializer }, align 32
@llc_sap_active_state_actions_4 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @llc_sap_action_send_xid_r, ptr null], [24 x i8] zeroinitializer }, align 32
@llc_sap_active_state_actions_5 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @llc_sap_action_xid_ind, ptr null], [24 x i8] zeroinitializer }, align 32
@llc_sap_active_state_actions_6 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @llc_sap_action_send_test_c, ptr null], [24 x i8] zeroinitializer }, align 32
@llc_sap_active_state_actions_7 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @llc_sap_action_send_test_r, ptr null], [24 x i8] zeroinitializer }, align 32
@llc_sap_active_state_actions_8 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @llc_sap_action_test_ind, ptr null], [24 x i8] zeroinitializer }, align 32
@llc_sap_active_state_actions_9 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @llc_sap_action_report_status, ptr null], [24 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [35 x i8] c"llc_sap_inactive_state_transitions\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 44, i32 36 }
@___asan_gen_.4 = private unnamed_addr constant [33 x i8] c"llc_sap_active_state_transitions\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 160, i32 36 }
@___asan_gen_.7 = private unnamed_addr constant [20 x i8] c"llc_sap_state_table\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 174, i32 22 }
@___asan_gen_.10 = private unnamed_addr constant [31 x i8] c"llc_sap_inactive_state_trans_1\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 37, i32 35 }
@___asan_gen_.13 = private unnamed_addr constant [24 x i8] c"llc_sap_state_trans_end\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 27, i32 35 }
@___asan_gen_.16 = private unnamed_addr constant [33 x i8] c"llc_sap_inactive_state_actions_1\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 32, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant [29 x i8] c"llc_sap_active_state_trans_2\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 67, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant [29 x i8] c"llc_sap_active_state_trans_1\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 55, i32 35 }
@___asan_gen_.25 = private unnamed_addr constant [29 x i8] c"llc_sap_active_state_trans_3\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 79, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant [29 x i8] c"llc_sap_active_state_trans_4\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 91, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant [29 x i8] c"llc_sap_active_state_trans_5\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 103, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant [29 x i8] c"llc_sap_active_state_trans_6\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 115, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant [29 x i8] c"llc_sap_active_state_trans_7\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 127, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant [29 x i8] c"llc_sap_active_state_trans_8\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 139, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant [29 x i8] c"llc_sap_active_state_trans_9\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 153, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant [31 x i8] c"llc_sap_active_state_actions_2\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 62, i32 31 }
@___asan_gen_.49 = private unnamed_addr constant [31 x i8] c"llc_sap_active_state_actions_1\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 50, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant [31 x i8] c"llc_sap_active_state_actions_3\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 74, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant [31 x i8] c"llc_sap_active_state_actions_4\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 86, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant [31 x i8] c"llc_sap_active_state_actions_5\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 98, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant [31 x i8] c"llc_sap_active_state_actions_6\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 110, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant [31 x i8] c"llc_sap_active_state_actions_7\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 122, i32 31 }
@___asan_gen_.67 = private unnamed_addr constant [31 x i8] c"llc_sap_active_state_actions_8\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 134, i32 31 }
@___asan_gen_.70 = private unnamed_addr constant [31 x i8] c"llc_sap_active_state_actions_9\00", align 1
@___asan_gen_.71 = private constant [22 x i8] c"../net/llc/llc_s_st.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 148, i32 31 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @llc_sap_inactive_state_transitions, ptr @llc_sap_active_state_transitions, ptr @llc_sap_state_table, ptr @llc_sap_inactive_state_trans_1, ptr @llc_sap_state_trans_end, ptr @llc_sap_inactive_state_actions_1, ptr @llc_sap_active_state_trans_2, ptr @llc_sap_active_state_trans_1, ptr @llc_sap_active_state_trans_3, ptr @llc_sap_active_state_trans_4, ptr @llc_sap_active_state_trans_5, ptr @llc_sap_active_state_trans_6, ptr @llc_sap_active_state_trans_7, ptr @llc_sap_active_state_trans_8, ptr @llc_sap_active_state_trans_9, ptr @llc_sap_active_state_actions_2, ptr @llc_sap_active_state_actions_1, ptr @llc_sap_active_state_actions_3, ptr @llc_sap_active_state_actions_4, ptr @llc_sap_active_state_actions_5, ptr @llc_sap_active_state_actions_6, ptr @llc_sap_active_state_actions_7, ptr @llc_sap_active_state_actions_8, ptr @llc_sap_active_state_actions_9], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sap_inactive_state_transitions to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sap_active_state_transitions to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sap_state_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sap_inactive_state_trans_1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sap_state_trans_end to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sap_inactive_state_actions_1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sap_active_state_trans_2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sap_active_state_trans_1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sap_active_state_trans_3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sap_active_state_trans_4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sap_active_state_trans_5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sap_active_state_trans_6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sap_active_state_trans_7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sap_active_state_trans_8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sap_active_state_trans_9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sap_active_state_actions_2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sap_active_state_actions_1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sap_active_state_actions_3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sap_active_state_actions_4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sap_active_state_actions_5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sap_active_state_actions_6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sap_active_state_actions_7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sap_active_state_actions_8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_sap_active_state_actions_9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_sap_ev_activation_req(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_sap_action_report_status(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_sap_ev_unitdata_req(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_sap_action_send_ui(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_sap_ev_rx_ui(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_sap_action_unitdata_ind(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_sap_ev_xid_req(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_sap_action_send_xid_c(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_sap_ev_rx_xid_c(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_sap_action_send_xid_r(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_sap_ev_rx_xid_r(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_sap_action_xid_ind(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_sap_ev_test_req(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_sap_action_send_test_c(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_sap_ev_rx_test_c(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_sap_action_send_test_r(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_sap_ev_rx_test_r(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_sap_action_test_ind(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @llc_sap_ev_deactivation_req(ptr noundef, ptr noundef) #0

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #1 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @llc_sap_state_table, !1, !"llc_sap_state_table", i1 false, i1 false}
!1 = !{!"../net/llc/llc_s_st.c", i32 174, i32 22}
!2 = !{ptr @llc_sap_inactive_state_transitions, !3, !"llc_sap_inactive_state_transitions", i1 false, i1 false}
!3 = !{!"../net/llc/llc_s_st.c", i32 44, i32 36}
!4 = !{ptr @llc_sap_inactive_state_trans_1, !5, !"llc_sap_inactive_state_trans_1", i1 false, i1 false}
!5 = !{!"../net/llc/llc_s_st.c", i32 37, i32 35}
!6 = !{ptr @llc_sap_inactive_state_actions_1, !7, !"llc_sap_inactive_state_actions_1", i1 false, i1 false}
!7 = !{!"../net/llc/llc_s_st.c", i32 32, i32 31}
!8 = !{ptr @llc_sap_state_trans_end, !9, !"llc_sap_state_trans_end", i1 false, i1 false}
!9 = !{!"../net/llc/llc_s_st.c", i32 27, i32 35}
!10 = !{ptr @llc_sap_active_state_transitions, !11, !"llc_sap_active_state_transitions", i1 false, i1 false}
!11 = !{!"../net/llc/llc_s_st.c", i32 160, i32 36}
!12 = !{ptr @llc_sap_active_state_trans_2, !13, !"llc_sap_active_state_trans_2", i1 false, i1 false}
!13 = !{!"../net/llc/llc_s_st.c", i32 67, i32 35}
!14 = !{ptr @llc_sap_active_state_actions_2, !15, !"llc_sap_active_state_actions_2", i1 false, i1 false}
!15 = !{!"../net/llc/llc_s_st.c", i32 62, i32 31}
!16 = !{ptr @llc_sap_active_state_trans_1, !17, !"llc_sap_active_state_trans_1", i1 false, i1 false}
!17 = !{!"../net/llc/llc_s_st.c", i32 55, i32 35}
!18 = !{ptr @llc_sap_active_state_actions_1, !19, !"llc_sap_active_state_actions_1", i1 false, i1 false}
!19 = !{!"../net/llc/llc_s_st.c", i32 50, i32 31}
!20 = !{ptr @llc_sap_active_state_trans_3, !21, !"llc_sap_active_state_trans_3", i1 false, i1 false}
!21 = !{!"../net/llc/llc_s_st.c", i32 79, i32 35}
!22 = !{ptr @llc_sap_active_state_actions_3, !23, !"llc_sap_active_state_actions_3", i1 false, i1 false}
!23 = !{!"../net/llc/llc_s_st.c", i32 74, i32 31}
!24 = !{ptr @llc_sap_active_state_trans_4, !25, !"llc_sap_active_state_trans_4", i1 false, i1 false}
!25 = !{!"../net/llc/llc_s_st.c", i32 91, i32 35}
!26 = !{ptr @llc_sap_active_state_actions_4, !27, !"llc_sap_active_state_actions_4", i1 false, i1 false}
!27 = !{!"../net/llc/llc_s_st.c", i32 86, i32 31}
!28 = !{ptr @llc_sap_active_state_trans_5, !29, !"llc_sap_active_state_trans_5", i1 false, i1 false}
!29 = !{!"../net/llc/llc_s_st.c", i32 103, i32 35}
!30 = !{ptr @llc_sap_active_state_actions_5, !31, !"llc_sap_active_state_actions_5", i1 false, i1 false}
!31 = !{!"../net/llc/llc_s_st.c", i32 98, i32 31}
!32 = !{ptr @llc_sap_active_state_trans_6, !33, !"llc_sap_active_state_trans_6", i1 false, i1 false}
!33 = !{!"../net/llc/llc_s_st.c", i32 115, i32 35}
!34 = !{ptr @llc_sap_active_state_actions_6, !35, !"llc_sap_active_state_actions_6", i1 false, i1 false}
!35 = !{!"../net/llc/llc_s_st.c", i32 110, i32 31}
!36 = !{ptr @llc_sap_active_state_trans_7, !37, !"llc_sap_active_state_trans_7", i1 false, i1 false}
!37 = !{!"../net/llc/llc_s_st.c", i32 127, i32 35}
!38 = !{ptr @llc_sap_active_state_actions_7, !39, !"llc_sap_active_state_actions_7", i1 false, i1 false}
!39 = !{!"../net/llc/llc_s_st.c", i32 122, i32 31}
!40 = !{ptr @llc_sap_active_state_trans_8, !41, !"llc_sap_active_state_trans_8", i1 false, i1 false}
!41 = !{!"../net/llc/llc_s_st.c", i32 139, i32 35}
!42 = !{ptr @llc_sap_active_state_actions_8, !43, !"llc_sap_active_state_actions_8", i1 false, i1 false}
!43 = !{!"../net/llc/llc_s_st.c", i32 134, i32 31}
!44 = !{ptr @llc_sap_active_state_trans_9, !45, !"llc_sap_active_state_trans_9", i1 false, i1 false}
!45 = !{!"../net/llc/llc_s_st.c", i32 153, i32 35}
!46 = !{ptr @llc_sap_active_state_actions_9, !47, !"llc_sap_active_state_actions_9", i1 false, i1 false}
!47 = !{!"../net/llc/llc_s_st.c", i32 148, i32 31}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
