; ModuleID = '/llk/IR_all_yes/drivers/scsi/bfa/bfa_fcbuild.c_pt.bc'
source_filename = "../drivers/scsi/bfa/bfa_fcbuild.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fchs_s = type { [12 x i8], i8, i8, i16, i16, i16, i32 }
%struct.fc_ba_acc_s = type { [12 x i8] }
%struct.fc_logi_s = type <{ %struct.fc_els_cmd_s, %struct.fc_plogi_csp_s, i64, i64, %struct.fc_plogi_clp_s, %struct.fc_plogi_clp_s, %struct.fc_plogi_clp_s, %struct.fc_plogi_clp_s, [16 x i8] }>
%struct.fc_els_cmd_s = type { i32 }
%struct.fc_plogi_csp_s = type { i8, i8, i16, i16, i16, i16, i16, i32 }
%struct.fc_plogi_clp_s = type { i128 }
%struct.fc_prli_s = type { i32, %struct.fc_prli_params_page_s }
%struct.fc_prli_params_page_s = type { i32, i32, i32, %struct.fc_prli_params_s }
%struct.fc_prli_params_s = type { i32 }
%struct.fc_rrq_s = type <{ %struct.fc_els_cmd_s, i64, [8 x i32] }>
%struct.fc_logo_s = type { %struct.fc_els_cmd_s, i32, i64 }
%struct.fc_adisc_s = type <{ %struct.fc_els_cmd_s, i32, i64, i64, i32 }>
%struct.fc_ls_rjt_s = type { %struct.fc_els_cmd_s, i32 }
%struct.fc_tprlo_acc_s = type { i32, [1 x %struct.fc_prlo_acc_params_page_s] }
%struct.fc_prlo_acc_params_page_s = type { i32, i32, i32, i32 }
%struct.fc_prlo_acc_s = type { i32, [1 x %struct.fc_prlo_acc_params_page_s] }
%struct.fc_rnid_cmd_s = type { %struct.fc_els_cmd_s, i32 }
%struct.fc_rnid_acc_s = type <{ %struct.fc_els_cmd_s, i32, %struct.fc_rnid_common_id_data_s, %struct.fc_rnid_general_topology_data_s }>
%struct.fc_rnid_common_id_data_s = type { i64, i64 }
%struct.fc_rnid_general_topology_data_s = type { [4 x i32], i32, i32, i32, i32, [4 x i32], i32 }
%struct.fc_rpsc2_cmd_s = type { %struct.fc_els_cmd_s, i32, i16, i16, [1 x %struct.anon] }
%struct.anon = type { i32 }
%struct.fc_rpsc_acc_s = type { i32, [1 x %struct.fc_rpsc_speed_info_s] }
%struct.fc_rpsc_speed_info_s = type { i16, i16 }
%struct.fc_prlo_params_page_s = type { i32, i32, i32, i32 }
%struct.fc_tprlo_params_page_s = type <{ i32, i32, i32, i8, i32 }>
%struct.ct_hdr_s = type { i128 }
%struct.fc_rscn_pl_s = type { i8, i8, i16, [1 x %struct.fc_rscn_event_s] }
%struct.fc_rscn_event_s = type { i32 }
%struct.fcgs_rftid_req_s = type { i32, [8 x i32] }
%struct.fcgs_rspnid_req_s = type <{ i32, i8, [256 x i8] }>
%struct.fcgs_rsnn_nn_req_s = type <{ i64, i8, [256 x i8] }>
%struct.fcgs_gidft_req_s = type { i8, i8, i8, i8 }
%struct.fcgs_rpnid_req_s = type <{ i32, i64 }>
%struct.fcgs_rnnid_req_s = type <{ i32, i64 }>
%struct.fcgs_rcsid_req_s = type { i32, i32 }

@fc_els_req_tmpl = internal global { %struct.fchs_s, [40 x i8] } zeroinitializer, align 32
@fc_els_rsp_tmpl = internal global { %struct.fchs_s, [40 x i8] } zeroinitializer, align 32
@fc_bls_req_tmpl = internal global { %struct.fchs_s, [40 x i8] } zeroinitializer, align 32
@fc_bls_rsp_tmpl = internal global { %struct.fchs_s, [40 x i8] } zeroinitializer, align 32
@ba_acc_tmpl = internal global { %struct.fc_ba_acc_s, [20 x i8] } zeroinitializer, align 32
@plogi_tmpl = internal global { %struct.fc_logi_s, [44 x i8] } zeroinitializer, align 32
@prli_tmpl = internal global { %struct.fc_prli_s, [44 x i8] } zeroinitializer, align 32
@rrq_tmpl = internal global { %struct.fc_rrq_s, [52 x i8] } zeroinitializer, align 32
@fcp_fchs_tmpl = internal global { %struct.fchs_s, [40 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.3 = private unnamed_addr constant [16 x i8] c"fc_els_req_tmpl\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 24, i32 22 }
@___asan_gen_.6 = private unnamed_addr constant [16 x i8] c"fc_els_rsp_tmpl\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 25, i32 22 }
@___asan_gen_.9 = private unnamed_addr constant [16 x i8] c"fc_bls_req_tmpl\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 26, i32 22 }
@___asan_gen_.12 = private unnamed_addr constant [16 x i8] c"fc_bls_rsp_tmpl\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 27, i32 22 }
@___asan_gen_.15 = private unnamed_addr constant [12 x i8] c"ba_acc_tmpl\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 28, i32 27 }
@___asan_gen_.18 = private unnamed_addr constant [11 x i8] c"plogi_tmpl\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 29, i32 25 }
@___asan_gen_.21 = private unnamed_addr constant [10 x i8] c"prli_tmpl\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 30, i32 25 }
@___asan_gen_.24 = private unnamed_addr constant [9 x i8] c"rrq_tmpl\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 31, i32 24 }
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"fcp_fchs_tmpl\00", align 1
@___asan_gen_.28 = private constant [34 x i8] c"../drivers/scsi/bfa/bfa_fcbuild.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 32, i32 22 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @fc_els_req_tmpl, ptr @fc_els_rsp_tmpl, ptr @fc_bls_req_tmpl, ptr @fc_bls_rsp_tmpl, ptr @ba_acc_tmpl, ptr @plogi_tmpl, ptr @prli_tmpl, ptr @rrq_tmpl, ptr @fcp_fchs_tmpl], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_els_req_tmpl to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_els_rsp_tmpl to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_bls_req_tmpl to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc_bls_rsp_tmpl to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ba_acc_tmpl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plogi_tmpl to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prli_tmpl to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rrq_tmpl to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcp_fchs_tmpl to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @fcbuild_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bf.load = load i96, ptr @fc_els_req_tmpl, align 8
  %bf.clear = and i96 %bf.load, 309485009821345064429813760
  %bf.set9 = or i96 %bf.clear, 10522490333925732336662020096
  store i96 %bf.set9, ptr @fc_els_req_tmpl, align 8
  store i16 -1, ptr getelementptr inbounds (%struct.fchs_s, ptr @fc_els_req_tmpl, i32 0, i32 5), align 2
  %bf.load10 = load i96, ptr @fc_els_rsp_tmpl, align 8
  %bf.clear11 = and i96 %bf.load10, 309485009821345064429813760
  %bf.set21 = or i96 %bf.clear11, 10831975343747077405394141184
  store i96 %bf.set21, ptr @fc_els_rsp_tmpl, align 8
  store i16 -1, ptr getelementptr inbounds (%struct.fchs_s, ptr @fc_els_rsp_tmpl, i32 0, i32 5), align 2
  %bf.load22 = load i96, ptr @fc_bls_req_tmpl, align 8
  %bf.clear23 = and i96 %bf.load22, 4951760157141521095301529600
  %bf.set30 = or i96 %bf.clear23, -39614081257132168796771385344
  store i96 %bf.set30, ptr @fc_bls_req_tmpl, align 8
  store i16 -1, ptr getelementptr inbounds (%struct.fchs_s, ptr @fc_bls_req_tmpl, i32 0, i32 5), align 2
  %bf.load31 = load i96, ptr @fc_bls_rsp_tmpl, align 8
  %bf.clear32 = and i96 %bf.load31, 309485009821345064429813760
  %bf.set42 = or i96 %bf.clear32, -38376141217846788521862823936
  store i96 %bf.set42, ptr @fc_bls_rsp_tmpl, align 8
  store i16 -1, ptr getelementptr inbounds (%struct.fchs_s, ptr @fc_bls_rsp_tmpl, i32 0, i32 5), align 2
  %bf.load43 = load i96, ptr @ba_acc_tmpl, align 8
  %bf.clear50 = and i96 %bf.load43, 309485009821345064429813760
  %bf.set51 = or i96 %bf.clear50, 65535
  store i96 %bf.set51, ptr @ba_acc_tmpl, align 8
  store i8 32, ptr getelementptr inbounds (%struct.fc_logi_s, ptr @plogi_tmpl, i32 0, i32 1), align 1
  store i8 9, ptr getelementptr inbounds (%struct.fc_logi_s, ptr @plogi_tmpl, i32 0, i32 1, i32 1), align 1
  %bf.load52 = load i16, ptr getelementptr inbounds (%struct.fc_logi_s, ptr @plogi_tmpl, i32 0, i32 1, i32 3), align 1
  %bf.set54 = and i16 %bf.load52, 30717
  %bf.clear56 = or i16 %bf.set54, -32768
  store i16 %bf.clear56, ptr getelementptr inbounds (%struct.fc_logi_s, ptr @plogi_tmpl, i32 0, i32 1, i32 3), align 1
  store i16 255, ptr getelementptr inbounds (%struct.fc_logi_s, ptr @plogi_tmpl, i32 0, i32 1, i32 5), align 1
  store i16 2, ptr getelementptr inbounds (%struct.fc_logi_s, ptr @plogi_tmpl, i32 0, i32 1, i32 6), align 1
  store i32 2000, ptr getelementptr inbounds (%struct.fc_logi_s, ptr @plogi_tmpl, i32 0, i32 1, i32 7), align 1
  %bf.load61 = load i128, ptr getelementptr inbounds (%struct.fc_logi_s, ptr @plogi_tmpl, i32 0, i32 6), align 1
  %bf.set69 = and i128 %bf.load61, 159507359494189904748385071114563420159
  %bf.set72 = or i128 %bf.set69, -159507359494189904748385071114580066304
  store i128 %bf.set72, ptr getelementptr inbounds (%struct.fc_logi_s, ptr @plogi_tmpl, i32 0, i32 6), align 1
  store i32 537919508, ptr @prli_tmpl, align 4
  %bf.load82 = load i32, ptr getelementptr inbounds (%struct.fc_prli_s, ptr @prli_tmpl, i32 0, i32 1), align 4
  %bf.clear83 = and i32 %bf.load82, 16769023
  %bf.set87 = or i32 %bf.clear83, 134225920
  store i32 %bf.set87, ptr getelementptr inbounds (%struct.fc_prli_s, ptr @prli_tmpl, i32 0, i32 1), align 4
  %bf.load88 = load i32, ptr getelementptr inbounds (%struct.fc_prli_s, ptr @prli_tmpl, i32 0, i32 1, i32 3), align 4
  %bf.set90 = or i32 %bf.load88, 2
  store i32 %bf.set90, ptr getelementptr inbounds (%struct.fc_prli_s, ptr @prli_tmpl, i32 0, i32 1, i32 3), align 4
  %bf.load91 = load i32, ptr @rrq_tmpl, align 4
  %bf.clear92 = and i32 %bf.load91, 16777215
  %bf.set93 = or i32 %bf.clear92, 301989888
  store i32 %bf.set93, ptr @rrq_tmpl, align 4
  %bf.load94 = load i96, ptr @fcp_fchs_tmpl, align 8
  %bf.clear98 = and i96 %bf.load94, 309485009821345064429813760
  %bf.set105 = or i96 %bf.clear98, 1856910058928070412485591040
  store i96 %bf.set105, ptr @fcp_fchs_tmpl, align 8
  store i8 1, ptr getelementptr inbounds (%struct.fchs_s, ptr @fcp_fchs_tmpl, i32 0, i32 1), align 4
  store i16 -1, ptr getelementptr inbounds (%struct.fchs_s, ptr @fcp_fchs_tmpl, i32 0, i32 5), align 2
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @fc_els_req_build(ptr nocapture noundef %fchs, i32 noundef %d_id, i32 noundef %s_id, i16 noundef zeroext %ox_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %fchs, ptr @fc_els_req_tmpl, i32 24)
  %1 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %1, i32 12)
  %bf.load = load i96, ptr %fchs, align 1
  %2 = and i32 %d_id, 16777215
  %bf.value = zext i32 %2 to i96
  %bf.shl = shl nuw nsw i96 %bf.value, 64
  %bf.clear = and i96 %bf.load, -309484991446658584758190081
  %bf.set = or i96 %bf.clear, %bf.shl
  %3 = and i32 %s_id, 16777215
  %bf.value2 = zext i32 %3 to i96
  %bf.shl3 = shl nuw nsw i96 %bf.value2, 32
  %bf.set5 = or i96 %bf.set, %bf.shl3
  store i96 %bf.set5, ptr %fchs, align 1
  %ox_id7 = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %4 = ptrtoint ptr %ox_id7 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %ox_id, ptr %ox_id7, align 1
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_flogi_build(ptr nocapture noundef %fchs, ptr nocapture noundef %flogi, i32 noundef %s_id, i16 noundef zeroext %ox_id, i64 noundef %port_name, i64 noundef %node_name, i16 noundef zeroext %pdu_size, i8 noundef zeroext %set_npiv, i8 noundef zeroext %set_auth, i16 noundef zeroext %local_bb_credits) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %flogi, ptr @plogi_tmpl, i32 116)
  %1 = ptrtoint ptr %flogi to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %bf.load = load i32, ptr %flogi, align 1
  %bf.clear = and i32 %bf.load, 16777215
  %bf.set = or i32 %bf.clear, 67108864
  store i32 %bf.set, ptr %flogi, align 1
  %2 = call ptr @memcpy(ptr %fchs, ptr @fc_els_req_tmpl, i32 24)
  %3 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %3, i32 12)
  %bf.load.i = load i96, ptr %fchs, align 1
  %bf.clear.i = and i96 %bf.load.i, -309484991446658584758190081
  %4 = and i32 %s_id, 16777215
  %bf.value2.i = zext i32 %4 to i96
  %bf.shl3.i = shl nuw nsw i96 %bf.value2.i, 32
  %bf.set.i = or i96 %bf.clear.i, %bf.shl3.i
  %bf.set5.i = or i96 %bf.set.i, 309484972927856921305677824
  store i96 %bf.set5.i, ptr %fchs, align 1
  %ox_id7.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %5 = ptrtoint ptr %ox_id7.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %ox_id, ptr %ox_id7.i, align 1
  %class3 = getelementptr inbounds %struct.fc_logi_s, ptr %flogi, i32 0, i32 6
  %6 = zext i16 %pdu_size to i128
  %7 = ptrtoint ptr %class3 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 16)
  %bf.load1 = load i128, ptr %class3, align 1
  %bf.shl = shl nuw nsw i128 %6, 64
  %bf.clear2 = and i128 %bf.load1, -1208907372870555465154561
  %bf.set3 = or i128 %bf.clear2, %bf.shl
  store i128 %bf.set3, ptr %class3, align 1
  %rxsz = getelementptr inbounds %struct.fc_logi_s, ptr %flogi, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %rxsz to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %pdu_size, ptr %rxsz, align 1
  %port_name5 = getelementptr inbounds %struct.fc_logi_s, ptr %flogi, i32 0, i32 2
  %9 = ptrtoint ptr %port_name5 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %port_name, ptr %port_name5, align 1
  %node_name6 = getelementptr inbounds %struct.fc_logi_s, ptr %flogi, i32 0, i32 3
  %10 = ptrtoint ptr %node_name6 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %node_name, ptr %node_name6, align 1
  %ciro = getelementptr inbounds %struct.fc_logi_s, ptr %flogi, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %ciro to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %bf.load8 = load i16, ptr %ciro, align 1
  %bf.value9 = zext i8 %set_npiv to i16
  %bf.shl10 = shl i16 %bf.value9, 15
  %bf.clear11 = and i16 %bf.load8, 24543
  %bf.set12 = or i16 %bf.clear11, %bf.shl10
  %12 = shl i8 %set_auth, 5
  %13 = and i8 %12, 32
  %bf.shl17 = zext i8 %13 to i16
  %bf.set19 = or i16 %bf.set12, %bf.shl17
  %bbcred = getelementptr inbounds %struct.fc_logi_s, ptr %flogi, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %bbcred to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %local_bb_credits, ptr %bbcred, align 1
  %vvl = getelementptr inbounds %struct.fc_logi_s, ptr %flogi, i32 0, i32 8
  %bf.set25 = or i16 %bf.set19, 8192
  store i16 %bf.set25, ptr %ciro, align 1
  %15 = ptrtoint ptr %vvl to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1112687428, ptr %vvl, align 4
  ret i16 116
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_flogi_acc_build(ptr nocapture noundef %fchs, ptr nocapture noundef %flogi, i32 noundef %s_id, i16 noundef zeroext %ox_id, i64 noundef %port_name, i64 noundef %node_name, i16 noundef zeroext %pdu_size, i16 noundef zeroext %local_bb_credits, i8 noundef zeroext %bb_scn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %bb_scn to i16
  %shl = shl i16 %conv, 12
  %or = or i16 %shl, %pdu_size
  %0 = call ptr @memcpy(ptr %flogi, ptr @plogi_tmpl, i32 116)
  %1 = call ptr @memcpy(ptr %fchs, ptr @fc_els_rsp_tmpl, i32 24)
  %2 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %2, i32 12)
  %bf.load.i = load i96, ptr %fchs, align 1
  %bf.clear.i = and i96 %bf.load.i, -309484991446658584758190081
  %3 = and i32 %s_id, 16777215
  %bf.value2.i = zext i32 %3 to i96
  %bf.shl3.i = shl nuw nsw i96 %bf.value2.i, 32
  %bf.set5.i = or i96 %bf.clear.i, %bf.shl3.i
  store i96 %bf.set5.i, ptr %fchs, align 1
  %ox_id7.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %4 = ptrtoint ptr %ox_id7.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %ox_id, ptr %ox_id7.i, align 1
  %5 = ptrtoint ptr %flogi to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %bf.load = load i32, ptr %flogi, align 1
  %bf.clear = and i32 %bf.load, 16777215
  %bf.set = or i32 %bf.clear, 33554432
  store i32 %bf.set, ptr %flogi, align 1
  %class3 = getelementptr inbounds %struct.fc_logi_s, ptr %flogi, i32 0, i32 6
  %6 = zext i16 %pdu_size to i128
  %7 = ptrtoint ptr %class3 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 16)
  %bf.load4 = load i128, ptr %class3, align 1
  %bf.shl = shl nuw nsw i128 %6, 64
  %bf.clear5 = and i128 %bf.load4, -1208907372870555465154561
  %bf.set6 = or i128 %bf.clear5, %bf.shl
  store i128 %bf.set6, ptr %class3, align 1
  %rxsz = getelementptr inbounds %struct.fc_logi_s, ptr %flogi, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %rxsz to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %or, ptr %rxsz, align 1
  %port_name7 = getelementptr inbounds %struct.fc_logi_s, ptr %flogi, i32 0, i32 2
  %9 = ptrtoint ptr %port_name7 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %port_name, ptr %port_name7, align 1
  %node_name8 = getelementptr inbounds %struct.fc_logi_s, ptr %flogi, i32 0, i32 3
  %10 = ptrtoint ptr %node_name8 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %node_name, ptr %node_name8, align 1
  %bbcred = getelementptr inbounds %struct.fc_logi_s, ptr %flogi, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %bbcred to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %local_bb_credits, ptr %bbcred, align 1
  ret i16 116
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_fdisc_build(ptr nocapture noundef %fchs, ptr nocapture noundef %flogi, i32 noundef %s_id, i16 noundef zeroext %ox_id, i64 noundef %port_name, i64 noundef %node_name, i16 noundef zeroext %pdu_size) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %flogi, ptr @plogi_tmpl, i32 116)
  %1 = ptrtoint ptr %flogi to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %bf.load = load i32, ptr %flogi, align 1
  %bf.clear = and i32 %bf.load, 16777215
  %bf.set = or i32 %bf.clear, 1358954496
  store i32 %bf.set, ptr %flogi, align 1
  %2 = call ptr @memcpy(ptr %fchs, ptr @fc_els_req_tmpl, i32 24)
  %3 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %3, i32 12)
  %bf.load.i = load i96, ptr %fchs, align 1
  %bf.clear.i = and i96 %bf.load.i, -309484991446658584758190081
  %4 = and i32 %s_id, 16777215
  %bf.value2.i = zext i32 %4 to i96
  %bf.shl3.i = shl nuw nsw i96 %bf.value2.i, 32
  %bf.set.i = or i96 %bf.clear.i, %bf.shl3.i
  %bf.set5.i = or i96 %bf.set.i, 309484972927856921305677824
  store i96 %bf.set5.i, ptr %fchs, align 1
  %ox_id7.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %5 = ptrtoint ptr %ox_id7.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %ox_id, ptr %ox_id7.i, align 1
  %class3 = getelementptr inbounds %struct.fc_logi_s, ptr %flogi, i32 0, i32 6
  %6 = zext i16 %pdu_size to i128
  %7 = ptrtoint ptr %class3 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 16)
  %bf.load1 = load i128, ptr %class3, align 1
  %bf.shl = shl nuw nsw i128 %6, 64
  %bf.clear2 = and i128 %bf.load1, -1208907372870555465154561
  %bf.set3 = or i128 %bf.clear2, %bf.shl
  store i128 %bf.set3, ptr %class3, align 1
  %rxsz = getelementptr inbounds %struct.fc_logi_s, ptr %flogi, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %rxsz to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %pdu_size, ptr %rxsz, align 1
  %port_name5 = getelementptr inbounds %struct.fc_logi_s, ptr %flogi, i32 0, i32 2
  %9 = ptrtoint ptr %port_name5 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %port_name, ptr %port_name5, align 1
  %node_name6 = getelementptr inbounds %struct.fc_logi_s, ptr %flogi, i32 0, i32 3
  %10 = ptrtoint ptr %node_name6 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %node_name, ptr %node_name6, align 1
  ret i16 116
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_plogi_build(ptr nocapture noundef %fchs, ptr nocapture noundef %pld, i32 noundef %d_id, i32 noundef %s_id, i16 noundef zeroext %ox_id, i64 noundef %port_name, i64 noundef %node_name, i16 noundef zeroext %pdu_size, i16 noundef zeroext %bb_cr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %pld, ptr @plogi_tmpl, i32 116)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bb_cr)
  %tobool.not.i = icmp eq i16 %bb_cr, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.fc_plogi_x_build.exit_crit_edge

entry.fc_plogi_x_build.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %fc_plogi_x_build.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %altbbcred.i = getelementptr inbounds %struct.fc_logi_s, ptr %pld, i32 0, i32 1, i32 3
  %1 = ptrtoint ptr %altbbcred.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %bf.load.i = load i16, ptr %altbbcred.i, align 1
  %bf.set.i = or i16 %bf.load.i, 2048
  store i16 %bf.set.i, ptr %altbbcred.i, align 1
  br label %fc_plogi_x_build.exit

fc_plogi_x_build.exit:                            ; preds = %if.then.i, %entry.fc_plogi_x_build.exit_crit_edge
  %2 = ptrtoint ptr %pld to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %bf.load1.i = load i32, ptr %pld, align 1
  %bf.clear2.i = and i32 %bf.load1.i, 16777215
  %bf.set3.i = or i32 %bf.clear2.i, 50331648
  store i32 %bf.set3.i, ptr %pld, align 1
  %3 = call ptr @memcpy(ptr %fchs, ptr @fc_els_req_tmpl, i32 24)
  %4 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %4, i32 12)
  %bf.load.i1.i = load i96, ptr %fchs, align 1
  %5 = and i32 %d_id, 16777215
  %bf.value.i2.i = zext i32 %5 to i96
  %bf.shl.i3.i = shl nuw nsw i96 %bf.value.i2.i, 64
  %bf.clear.i4.i = and i96 %bf.load.i1.i, -309484991446658584758190081
  %bf.set.i5.i = or i96 %bf.clear.i4.i, %bf.shl.i3.i
  %6 = and i32 %s_id, 16777215
  %bf.value2.i6.i = zext i32 %6 to i96
  %bf.shl3.i7.i = shl nuw nsw i96 %bf.value2.i6.i, 32
  %bf.set5.i8.i = or i96 %bf.set.i5.i, %bf.shl3.i7.i
  store i96 %bf.set5.i8.i, ptr %fchs, align 1
  %7 = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %ox_id, ptr %7, align 1
  %class3.i = getelementptr inbounds %struct.fc_logi_s, ptr %pld, i32 0, i32 6
  %9 = zext i16 %pdu_size to i128
  %10 = ptrtoint ptr %class3.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 16)
  %bf.load9.i = load i128, ptr %class3.i, align 1
  %bf.shl11.i = shl nuw nsw i128 %9, 64
  %bf.clear12.i = and i128 %bf.load9.i, -1208907372870555465154561
  %bf.set13.i = or i128 %bf.clear12.i, %bf.shl11.i
  store i128 %bf.set13.i, ptr %class3.i, align 1
  %rxsz.i = getelementptr inbounds %struct.fc_logi_s, ptr %pld, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %rxsz.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %pdu_size, ptr %rxsz.i, align 1
  %bbcred.i = getelementptr inbounds %struct.fc_logi_s, ptr %pld, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %bbcred.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %bb_cr, ptr %bbcred.i, align 1
  %port_name17.i = getelementptr inbounds %struct.fc_logi_s, ptr %pld, i32 0, i32 2
  %13 = ptrtoint ptr %port_name17.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %port_name, ptr %port_name17.i, align 1
  %node_name18.i = getelementptr inbounds %struct.fc_logi_s, ptr %pld, i32 0, i32 3
  %14 = ptrtoint ptr %node_name18.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %node_name, ptr %node_name18.i, align 1
  ret i16 116
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_plogi_acc_build(ptr nocapture noundef %fchs, ptr nocapture noundef %pld, i32 noundef %d_id, i32 noundef %s_id, i16 noundef zeroext %ox_id, i64 noundef %port_name, i64 noundef %node_name, i16 noundef zeroext %pdu_size, i16 noundef zeroext %bb_cr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %pld, ptr @plogi_tmpl, i32 116)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bb_cr)
  %tobool.not.i = icmp eq i16 %bb_cr, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.fc_plogi_x_build.exit_crit_edge

entry.fc_plogi_x_build.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %fc_plogi_x_build.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %altbbcred.i = getelementptr inbounds %struct.fc_logi_s, ptr %pld, i32 0, i32 1, i32 3
  %1 = ptrtoint ptr %altbbcred.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %bf.load.i = load i16, ptr %altbbcred.i, align 1
  %bf.set.i = or i16 %bf.load.i, 2048
  store i16 %bf.set.i, ptr %altbbcred.i, align 1
  br label %fc_plogi_x_build.exit

fc_plogi_x_build.exit:                            ; preds = %if.then.i, %entry.fc_plogi_x_build.exit_crit_edge
  %2 = ptrtoint ptr %pld to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %bf.load1.i = load i32, ptr %pld, align 1
  %bf.clear2.i = and i32 %bf.load1.i, 16777215
  %bf.set3.i = or i32 %bf.clear2.i, 33554432
  store i32 %bf.set3.i, ptr %pld, align 1
  %3 = call ptr @memcpy(ptr %fchs, ptr @fc_els_rsp_tmpl, i32 24)
  %4 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %4, i32 12)
  %bf.load.i1.i = load i96, ptr %fchs, align 1
  %5 = and i32 %d_id, 16777215
  %bf.value.i2.i = zext i32 %5 to i96
  %bf.shl.i3.i = shl nuw nsw i96 %bf.value.i2.i, 64
  %bf.clear.i4.i = and i96 %bf.load.i1.i, -309484991446658584758190081
  %bf.set.i5.i = or i96 %bf.clear.i4.i, %bf.shl.i3.i
  %6 = and i32 %s_id, 16777215
  %bf.value2.i6.i = zext i32 %6 to i96
  %bf.shl3.i7.i = shl nuw nsw i96 %bf.value2.i6.i, 32
  %bf.set5.i8.i = or i96 %bf.set.i5.i, %bf.shl3.i7.i
  store i96 %bf.set5.i8.i, ptr %fchs, align 1
  %7 = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %ox_id, ptr %7, align 1
  %class3.i = getelementptr inbounds %struct.fc_logi_s, ptr %pld, i32 0, i32 6
  %9 = zext i16 %pdu_size to i128
  %10 = ptrtoint ptr %class3.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 16)
  %bf.load9.i = load i128, ptr %class3.i, align 1
  %bf.shl11.i = shl nuw nsw i128 %9, 64
  %bf.clear12.i = and i128 %bf.load9.i, -1208907372870555465154561
  %bf.set13.i = or i128 %bf.clear12.i, %bf.shl11.i
  store i128 %bf.set13.i, ptr %class3.i, align 1
  %rxsz.i = getelementptr inbounds %struct.fc_logi_s, ptr %pld, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %rxsz.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %pdu_size, ptr %rxsz.i, align 1
  %bbcred.i = getelementptr inbounds %struct.fc_logi_s, ptr %pld, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %bbcred.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %bb_cr, ptr %bbcred.i, align 1
  %port_name17.i = getelementptr inbounds %struct.fc_logi_s, ptr %pld, i32 0, i32 2
  %13 = ptrtoint ptr %port_name17.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %port_name, ptr %port_name17.i, align 1
  %node_name18.i = getelementptr inbounds %struct.fc_logi_s, ptr %pld, i32 0, i32 3
  %14 = ptrtoint ptr %node_name18.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %node_name, ptr %node_name18.i, align 1
  ret i16 116
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fc_plogi_rsp_parse(ptr nocapture noundef readonly %fchs, i32 noundef %len, i64 noundef %port_name) local_unnamed_addr #2 align 64 {
entry:
  %port_name.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port_name.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %port_name, ptr %port_name.addr, align 8
  %add.ptr = getelementptr %struct.fchs_s, ptr %fchs, i32 1
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %bf.load = load i32, ptr %add.ptr, align 1
  %bf.lshr = lshr i32 %bf.load, 24
  %trunc = trunc i32 %bf.lshr to i8
  %2 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %reason_code = getelementptr %struct.fchs_s, ptr %fchs, i32 1, i32 0, i32 4
  %3 = ptrtoint ptr %reason_code to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %bf.load2 = load i32, ptr %reason_code, align 1
  %4 = and i32 %bf.load2, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 327680, i32 %4)
  %cmp = icmp eq i32 %4, 327680
  %. = select i1 %cmp, i32 2, i32 1
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 116, i32 %len)
  %cmp6 = icmp ult i32 %len, 116
  br i1 %cmp6, label %sw.bb4.cleanup_crit_edge, label %if.end

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %sw.bb4
  %port_name8 = getelementptr %struct.fchs_s, ptr %fchs, i32 1, i32 6
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(8) %port_name8, ptr noundef nonnull dereferenceable(8) %port_name.addr, i32 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp9 = icmp eq i32 %bcmp, 0
  br i1 %cmp9, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %class3 = getelementptr %struct.fchs_s, ptr %fchs, i32 3, i32 6
  %5 = ptrtoint ptr %class3 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 16)
  %bf.load12 = load i128, ptr %class3, align 1
  %tobool.not = icmp sgt i128 %bf.load12, -1
  br i1 %tobool.not, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %6 = and i128 %bf.load12, 1199481086648889884278784
  %cmp22 = icmp eq i128 %6, 0
  %.33 = zext i1 %cmp22 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %sw.bb ], [ 1, %sw.bb4.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end11.cleanup_crit_edge ], [ %.33, %if.end15 ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fc_plogi_parse(ptr nocapture noundef readonly %fchs) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %class3 = getelementptr %struct.fchs_s, ptr %fchs, i32 3, i32 6
  %0 = ptrtoint ptr %class3 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 16)
  %bf.load = load i128, ptr %class3, align 1
  %cmp.not = icmp slt i128 %bf.load, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %bf.lshr3 = lshr i128 %bf.load, 64
  %conv = trunc i128 %bf.lshr3 to i32
  %conv5 = and i32 %conv, 65535
  %1 = add nsw i32 %conv5, -2113
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1601, i32 %1)
  %2 = icmp ult i32 %1, -1601
  %3 = and i128 %bf.load, 1208907372870555465154560
  %cmp23 = icmp eq i128 %3, 0
  %or.cond31 = select i1 %2, i1 true, i1 %cmp23
  %spec.select = zext i1 %or.cond31 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_prli_build(ptr nocapture noundef %fchs, ptr nocapture noundef %pld, i32 noundef %d_id, i32 noundef %s_id, i16 noundef zeroext %ox_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %fchs, ptr @fc_els_req_tmpl, i32 24)
  %1 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %1, i32 12)
  %bf.load.i = load i96, ptr %fchs, align 1
  %2 = and i32 %d_id, 16777215
  %bf.value.i = zext i32 %2 to i96
  %bf.shl.i = shl nuw nsw i96 %bf.value.i, 64
  %bf.clear.i = and i96 %bf.load.i, -309484991446658584758190081
  %bf.set.i = or i96 %bf.clear.i, %bf.shl.i
  %3 = and i32 %s_id, 16777215
  %bf.value2.i = zext i32 %3 to i96
  %bf.shl3.i = shl nuw nsw i96 %bf.value2.i, 32
  %bf.set5.i = or i96 %bf.set.i, %bf.shl3.i
  store i96 %bf.set5.i, ptr %fchs, align 1
  %ox_id7.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %4 = ptrtoint ptr %ox_id7.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %ox_id, ptr %ox_id7.i, align 1
  %5 = call ptr @memcpy(ptr %pld, ptr @prli_tmpl, i32 20)
  %6 = ptrtoint ptr %pld to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %bf.load = load i32, ptr %pld, align 1
  %bf.clear = and i32 %bf.load, 16777215
  %bf.set = or i32 %bf.clear, 536870912
  store i32 %bf.set, ptr %pld, align 1
  %servparams = getelementptr inbounds %struct.fc_prli_s, ptr %pld, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %servparams to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %bf.load1 = load i32, ptr %servparams, align 1
  %bf.set13 = and i32 %bf.load1, -1953
  %bf.set23 = or i32 %bf.set13, 1440
  store i32 %bf.set23, ptr %servparams, align 1
  ret i16 20
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_prli_acc_build(ptr nocapture noundef %fchs, ptr nocapture noundef %pld, i32 noundef %d_id, i32 noundef %s_id, i16 noundef zeroext %ox_id, i32 noundef %role) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %fchs, ptr @fc_els_rsp_tmpl, i32 24)
  %1 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %1, i32 12)
  %bf.load.i = load i96, ptr %fchs, align 1
  %2 = and i32 %d_id, 16777215
  %bf.value.i = zext i32 %2 to i96
  %bf.shl.i = shl nuw nsw i96 %bf.value.i, 64
  %bf.clear.i = and i96 %bf.load.i, -309484991446658584758190081
  %bf.set.i = or i96 %bf.clear.i, %bf.shl.i
  %3 = and i32 %s_id, 16777215
  %bf.value2.i = zext i32 %3 to i96
  %bf.shl3.i = shl nuw nsw i96 %bf.value2.i, 32
  %bf.set5.i = or i96 %bf.set.i, %bf.shl3.i
  store i96 %bf.set5.i, ptr %fchs, align 1
  %ox_id7.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %4 = ptrtoint ptr %ox_id7.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %ox_id, ptr %ox_id7.i, align 1
  %5 = call ptr @memcpy(ptr %pld, ptr @prli_tmpl, i32 20)
  %6 = ptrtoint ptr %pld to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %bf.load = load i32, ptr %pld, align 1
  %bf.clear = and i32 %bf.load, 16777215
  %bf.set = or i32 %bf.clear, 33554432
  store i32 %bf.set, ptr %pld, align 1
  %parampage = getelementptr inbounds %struct.fc_prli_s, ptr %pld, i32 0, i32 1
  %servparams = getelementptr inbounds %struct.fc_prli_s, ptr %pld, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %servparams to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %bf.load1 = load i32, ptr %servparams, align 1
  %bf.set3 = or i32 %bf.load1, 32
  store i32 %bf.set3, ptr %servparams, align 1
  %8 = ptrtoint ptr %parampage to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %bf.load5 = load i32, ptr %parampage, align 1
  %bf.clear6 = and i32 %bf.load5, -3841
  %bf.set7 = or i32 %bf.clear6, 256
  store i32 %bf.set7, ptr %parampage, align 1
  ret i16 20
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fc_prli_rsp_parse(ptr nocapture noundef readonly %prli, i32 noundef %len) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %len)
  %cmp = icmp ult i32 %len, 20
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %prli to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %bf.load = load i32, ptr %prli, align 1
  %bf.lshr.mask = and i32 %bf.load, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %bf.lshr.mask)
  %cmp1.not = icmp eq i32 %bf.lshr.mask, 33554432
  br i1 %cmp1.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end3:                                          ; preds = %if.end
  %parampage = getelementptr inbounds %struct.fc_prli_s, ptr %prli, i32 0, i32 1
  %1 = ptrtoint ptr %parampage to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %bf.load4 = load i32, ptr %parampage, align 1
  %bf.lshr5 = lshr i32 %bf.load4, 8
  %bf.clear = and i32 %bf.lshr5, 15
  %2 = zext i32 %bf.clear to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %bf.clear, label %if.end3.return_crit_edge [
    i32 1, label %if.end3.if.end13_crit_edge
    i32 5, label %if.end3.if.end13_crit_edge24
  ]

if.end3.if.end13_crit_edge24:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.end3.if.end13_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end13:                                         ; preds = %if.end3.if.end13_crit_edge, %if.end3.if.end13_crit_edge24
  %servparams = getelementptr inbounds %struct.fc_prli_s, ptr %prli, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %servparams to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %bf.load15 = load i32, ptr %servparams, align 1
  %4 = lshr i32 %bf.load15, 4
  %.lobit = and i32 %4, 1
  %5 = xor i32 %.lobit, 1
  br label %return

return:                                           ; preds = %if.end13, %if.end3.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %entry.return_crit_edge ], [ 1, %if.end.return_crit_edge ], [ 1, %if.end3.return_crit_edge ], [ %5, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fc_prli_parse(ptr nocapture noundef readonly %prli) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parampage = getelementptr inbounds %struct.fc_prli_s, ptr %prli, i32 0, i32 1
  %0 = ptrtoint ptr %parampage to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %bf.load = load i32, ptr %parampage, align 1
  %1 = and i32 %bf.load, -16769024
  call void @__sanitizer_cov_trace_const_cmp4(i32 134225920, i32 %1)
  %.not = icmp eq i32 %1, 134225920
  br i1 %.not, label %if.end5, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %servparams = getelementptr inbounds %struct.fc_prli_s, ptr %prli, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %servparams to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %bf.load7 = load i32, ptr %servparams, align 1
  %3 = lshr i32 %bf.load7, 5
  %.lobit = and i32 %3, 1
  %4 = xor i32 %.lobit, 1
  br label %return

return:                                           ; preds = %if.end5, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %entry.return_crit_edge ], [ %4, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_logo_build(ptr nocapture noundef %fchs, ptr nocapture noundef %logo, i32 noundef %d_id, i32 noundef %s_id, i16 noundef zeroext %ox_id, i64 noundef %port_name) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %fchs, ptr @fc_els_req_tmpl, i32 24)
  %1 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %1, i32 12)
  %bf.load.i = load i96, ptr %fchs, align 1
  %2 = and i32 %d_id, 16777215
  %bf.value.i = zext i32 %2 to i96
  %bf.shl.i = shl nuw nsw i96 %bf.value.i, 64
  %bf.clear.i = and i96 %bf.load.i, -309484991446658584758190081
  %bf.set.i = or i96 %bf.clear.i, %bf.shl.i
  %3 = and i32 %s_id, 16777215
  %bf.value2.i = zext i32 %3 to i96
  %bf.shl3.i = shl nuw nsw i96 %bf.value2.i, 32
  %bf.set5.i = or i96 %bf.set.i, %bf.shl3.i
  store i96 %bf.set5.i, ptr %fchs, align 1
  %ox_id7.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %4 = ptrtoint ptr %ox_id7.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %ox_id, ptr %ox_id7.i, align 1
  %5 = ptrtoint ptr %logo to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 83886080, ptr %logo, align 1
  %nport_id = getelementptr inbounds %struct.fc_logo_s, ptr %logo, i32 0, i32 1
  %6 = ptrtoint ptr %nport_id to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %3, ptr %nport_id, align 1
  %orig_port_name = getelementptr inbounds %struct.fc_logo_s, ptr %logo, i32 0, i32 2
  %7 = ptrtoint ptr %orig_port_name to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %port_name, ptr %orig_port_name, align 1
  ret i16 16
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_adisc_build(ptr nocapture noundef %fchs, ptr nocapture noundef %adisc, i32 noundef %d_id, i32 noundef %s_id, i16 noundef zeroext %ox_id, i64 noundef %port_name, i64 noundef %node_name) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %adisc, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %2 = ptrtoint ptr %adisc to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 1375731712, ptr %adisc, align 1
  %3 = call ptr @memcpy(ptr %fchs, ptr @fc_els_req_tmpl, i32 24)
  %4 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %4, i32 12)
  %bf.load.i1.i = load i96, ptr %fchs, align 1
  %5 = and i32 %d_id, 16777215
  %bf.value.i2.i = zext i32 %5 to i96
  %bf.shl.i3.i = shl nuw nsw i96 %bf.value.i2.i, 64
  %bf.clear.i4.i = and i96 %bf.load.i1.i, -309484991446658584758190081
  %bf.set.i5.i = or i96 %bf.clear.i4.i, %bf.shl.i3.i
  %6 = and i32 %s_id, 16777215
  %bf.value2.i6.i = zext i32 %6 to i96
  %bf.shl3.i7.i = shl nuw nsw i96 %bf.value2.i6.i, 32
  %bf.set5.i8.i = or i96 %bf.set.i5.i, %bf.shl3.i7.i
  store i96 %bf.set5.i8.i, ptr %fchs, align 1
  %7 = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %ox_id, ptr %7, align 1
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %bf.load3.i = load i32, ptr %0, align 1
  %bf.clear4.i = and i32 %bf.load3.i, -16777216
  store i32 %bf.clear4.i, ptr %0, align 1
  %orig_port_name.i = getelementptr inbounds %struct.fc_adisc_s, ptr %adisc, i32 0, i32 2
  %10 = ptrtoint ptr %orig_port_name.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %port_name, ptr %orig_port_name.i, align 1
  %orig_node_name.i = getelementptr inbounds %struct.fc_adisc_s, ptr %adisc, i32 0, i32 3
  %11 = ptrtoint ptr %orig_node_name.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %node_name, ptr %orig_node_name.i, align 1
  %nport_id.i = getelementptr inbounds %struct.fc_adisc_s, ptr %adisc, i32 0, i32 4
  %12 = ptrtoint ptr %nport_id.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %bf.load6.i = load i32, ptr %nport_id.i, align 1
  %bf.clear8.i = and i32 %bf.load6.i, -16777216
  %bf.set9.i = or i32 %bf.clear8.i, %6
  store i32 %bf.set9.i, ptr %nport_id.i, align 1
  ret i16 28
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_adisc_acc_build(ptr nocapture noundef %fchs, ptr nocapture noundef %adisc, i32 noundef %d_id, i32 noundef %s_id, i16 noundef zeroext %ox_id, i64 noundef %port_name, i64 noundef %node_name) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %adisc, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %2 = ptrtoint ptr %adisc to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 33554432, ptr %adisc, align 1
  %3 = call ptr @memcpy(ptr %fchs, ptr @fc_els_rsp_tmpl, i32 24)
  %4 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %4, i32 12)
  %bf.load.i1.i = load i96, ptr %fchs, align 1
  %5 = and i32 %d_id, 16777215
  %bf.value.i2.i = zext i32 %5 to i96
  %bf.shl.i3.i = shl nuw nsw i96 %bf.value.i2.i, 64
  %bf.clear.i4.i = and i96 %bf.load.i1.i, -309484991446658584758190081
  %bf.set.i5.i = or i96 %bf.clear.i4.i, %bf.shl.i3.i
  %6 = and i32 %s_id, 16777215
  %bf.value2.i6.i = zext i32 %6 to i96
  %bf.shl3.i7.i = shl nuw nsw i96 %bf.value2.i6.i, 32
  %bf.set5.i8.i = or i96 %bf.set.i5.i, %bf.shl3.i7.i
  store i96 %bf.set5.i8.i, ptr %fchs, align 1
  %7 = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %ox_id, ptr %7, align 1
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %bf.load3.i = load i32, ptr %0, align 1
  %bf.clear4.i = and i32 %bf.load3.i, -16777216
  store i32 %bf.clear4.i, ptr %0, align 1
  %orig_port_name.i = getelementptr inbounds %struct.fc_adisc_s, ptr %adisc, i32 0, i32 2
  %10 = ptrtoint ptr %orig_port_name.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %port_name, ptr %orig_port_name.i, align 1
  %orig_node_name.i = getelementptr inbounds %struct.fc_adisc_s, ptr %adisc, i32 0, i32 3
  %11 = ptrtoint ptr %orig_node_name.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %node_name, ptr %orig_node_name.i, align 1
  %nport_id.i = getelementptr inbounds %struct.fc_adisc_s, ptr %adisc, i32 0, i32 4
  %12 = ptrtoint ptr %nport_id.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %bf.load6.i = load i32, ptr %nport_id.i, align 1
  %bf.clear8.i = and i32 %bf.load6.i, -16777216
  %bf.set9.i = or i32 %bf.clear8.i, %6
  store i32 %bf.set9.i, ptr %nport_id.i, align 1
  ret i16 28
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fc_adisc_rsp_parse(ptr nocapture noundef readonly %adisc, i32 noundef %len, i64 noundef %port_name, i64 noundef %node_name) local_unnamed_addr #2 align 64 {
entry:
  %port_name.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port_name.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %port_name, ptr %port_name.addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %len)
  %cmp = icmp ult i32 %len, 28
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %adisc to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %bf.load = load i32, ptr %adisc, align 1
  %bf.lshr.mask = and i32 %bf.load, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %bf.lshr.mask)
  %cmp1.not = icmp eq i32 %bf.lshr.mask, 33554432
  br i1 %cmp1.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %orig_port_name = getelementptr inbounds %struct.fc_adisc_s, ptr %adisc, i32 0, i32 2
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(8) %orig_port_name, ptr noundef nonnull dereferenceable(8) %port_name.addr, i32 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp4 = icmp ne i32 %bcmp, 0
  %. = zext i1 %cmp4 to i32
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %entry.return_crit_edge ], [ 1, %if.end.return_crit_edge ], [ %., %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fc_adisc_parse(ptr nocapture noundef readnone %fchs, ptr nocapture noundef readonly %pld, i32 noundef %host_dap, i64 noundef %node_name, i64 noundef %port_name) local_unnamed_addr #2 align 64 {
entry:
  %node_name.addr = alloca i64, align 8
  %port_name.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node_name.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %node_name, ptr %node_name.addr, align 8
  %1 = ptrtoint ptr %port_name.addr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %port_name, ptr %port_name.addr, align 8
  %2 = ptrtoint ptr %pld to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %bf.load = load i32, ptr %pld, align 1
  %bf.lshr.mask = and i32 %bf.load, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %bf.lshr.mask)
  %cmp.not = icmp eq i32 %bf.lshr.mask, 33554432
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %nport_id = getelementptr inbounds %struct.fc_adisc_s, ptr %pld, i32 0, i32 4
  %3 = ptrtoint ptr %nport_id to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %bf.load1 = load i32, ptr %nport_id, align 1
  %bf.clear = and i32 %bf.load1, 16777215
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear, i32 %host_dap)
  %cmp2 = icmp eq i32 %bf.clear, %host_dap
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %orig_port_name = getelementptr inbounds %struct.fc_adisc_s, ptr %pld, i32 0, i32 2
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(8) %orig_port_name, ptr noundef nonnull dereferenceable(8) %port_name.addr, i32 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp3 = icmp eq i32 %bcmp, 0
  br i1 %cmp3, label %land.lhs.true4, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

land.lhs.true4:                                   ; preds = %land.lhs.true
  %orig_node_name = getelementptr inbounds %struct.fc_adisc_s, ptr %pld, i32 0, i32 3
  %bcmp12 = call i32 @bcmp(ptr noundef dereferenceable(8) %orig_node_name, ptr noundef nonnull dereferenceable(8) %node_name.addr, i32 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp12)
  %cmp6 = icmp eq i32 %bcmp12, 0
  br i1 %cmp6, label %land.lhs.true4.cleanup_crit_edge, label %land.lhs.true4.if.end8_crit_edge

land.lhs.true4.if.end8_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true4.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %land.lhs.true4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end8 ], [ 1, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fc_pdisc_parse(ptr nocapture noundef readonly %fchs, i64 noundef %node_name, i64 noundef %port_name) local_unnamed_addr #2 align 64 {
entry:
  %node_name.addr = alloca i64, align 8
  %port_name.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node_name.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %node_name, ptr %node_name.addr, align 8
  %1 = ptrtoint ptr %port_name.addr to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %port_name, ptr %port_name.addr, align 8
  %class3 = getelementptr %struct.fchs_s, ptr %fchs, i32 3, i32 6
  %2 = ptrtoint ptr %class3 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 16)
  %bf.load = load i128, ptr %class3, align 1
  %cmp.not = icmp slt i128 %bf.load, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = and i128 %bf.load, 1208778245662039498293248
  %cmp6 = icmp ult i128 %3, 9002011107970261188608
  %4 = and i128 %bf.load, 1208907372870555465154560
  %cmp13 = icmp eq i128 %4, 0
  %or.cond = or i1 %cmp6, %cmp13
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %port_name17 = getelementptr %struct.fchs_s, ptr %fchs, i32 1, i32 6
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(8) %port_name17, ptr noundef nonnull dereferenceable(8) %port_name.addr, i32 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp18 = icmp eq i32 %bcmp, 0
  br i1 %cmp18, label %if.end21, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %node_name22 = getelementptr %struct.fchs_s, ptr %fchs, i32 2, i32 0, i32 4
  %bcmp34 = call i32 @bcmp(ptr noundef dereferenceable(8) %node_name22, ptr noundef nonnull dereferenceable(8) %node_name.addr, i32 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp34)
  %cmp24 = icmp ne i32 %bcmp34, 0
  %. = zext i1 %cmp24 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end16.cleanup_crit_edge ], [ %., %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_abts_build(ptr nocapture noundef %fchs, i32 noundef %d_id, i32 noundef %s_id, i16 noundef zeroext %ox_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %fchs, ptr @fc_bls_req_tmpl, i32 24)
  %1 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %1, i32 12)
  %bf.load = load i96, ptr %fchs, align 1
  %bf.clear = and i96 %bf.load, -4951760138766834615629905921
  %2 = and i32 %d_id, 16777215
  %bf.value = zext i32 %2 to i96
  %bf.shl = shl nuw nsw i96 %bf.value, 64
  %bf.set = or i96 %bf.clear, %bf.shl
  %3 = and i32 %s_id, 16777215
  %bf.value5 = zext i32 %3 to i96
  %bf.shl6 = shl nuw nsw i96 %bf.value5, 32
  %bf.set3 = or i96 %bf.set, %bf.shl6
  %bf.set8 = or i96 %bf.set3, 309485009821345068724781056
  store i96 %bf.set8, ptr %fchs, align 1
  %ox_id10 = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %4 = ptrtoint ptr %ox_id10 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %ox_id, ptr %ox_id10, align 1
  ret i16 24
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fc_abts_rsp_parse(ptr nocapture noundef readonly %fchs, i32 noundef %len) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %0, i32 12)
  %bf.load = load i96, ptr %fchs, align 1
  %1 = and i96 %bf.load, 4332790137498830962146934784
  %switch = icmp ne i96 %1, 1237940039285380274899124224
  %spec.select = zext i1 %switch to i32
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_rrq_build(ptr nocapture noundef %fchs, ptr nocapture noundef %rrq, i32 noundef %d_id, i32 noundef %s_id, i16 noundef zeroext %ox_id, i16 noundef zeroext %rrq_oxid) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %fchs, ptr @fc_els_req_tmpl, i32 24)
  %1 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %1, i32 12)
  %bf.load.i = load i96, ptr %fchs, align 1
  %2 = and i32 %d_id, 16777215
  %bf.value.i = zext i32 %2 to i96
  %bf.shl.i = shl nuw nsw i96 %bf.value.i, 64
  %bf.clear.i = and i96 %bf.load.i, -309484991446658584758190081
  %bf.set.i = or i96 %bf.clear.i, %bf.shl.i
  %3 = and i32 %s_id, 16777215
  %bf.value2.i = zext i32 %3 to i96
  %bf.shl3.i = shl nuw nsw i96 %bf.value2.i, 32
  %bf.set5.i = or i96 %bf.set.i, %bf.shl3.i
  store i96 %bf.set5.i, ptr %fchs, align 1
  %ox_id7.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %4 = ptrtoint ptr %ox_id7.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %ox_id, ptr %ox_id7.i, align 1
  %5 = call ptr @memcpy(ptr %rrq, ptr @rrq_tmpl, i32 44)
  %s_id1 = getelementptr inbounds %struct.fc_rrq_s, ptr %rrq, i32 0, i32 1
  %6 = ptrtoint ptr %s_id1 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %bf.load = load i64, ptr %s_id1, align 1
  %bf.value = zext i32 %3 to i64
  %bf.shl = shl nuw nsw i64 %bf.value, 32
  %bf.clear = and i64 %bf.load, -72057594037927936
  %bf.set = or i64 %bf.clear, %bf.shl
  %7 = zext i16 %rrq_oxid to i64
  %bf.shl5 = shl nuw nsw i64 %7, 16
  %bf.set7 = or i64 %bf.set, %bf.shl5
  %bf.set11 = or i64 %bf.set7, 65535
  store i64 %bf.set11, ptr %s_id1, align 1
  ret i16 44
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_logo_acc_build(ptr nocapture noundef %fchs, ptr nocapture noundef writeonly %pld, i32 noundef %d_id, i32 noundef %s_id, i16 noundef zeroext %ox_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %fchs, ptr @fc_els_rsp_tmpl, i32 24)
  %1 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %1, i32 12)
  %bf.load.i = load i96, ptr %fchs, align 1
  %2 = and i32 %d_id, 16777215
  %bf.value.i = zext i32 %2 to i96
  %bf.shl.i = shl nuw nsw i96 %bf.value.i, 64
  %bf.clear.i = and i96 %bf.load.i, -309484991446658584758190081
  %bf.set.i = or i96 %bf.clear.i, %bf.shl.i
  %3 = and i32 %s_id, 16777215
  %bf.value2.i = zext i32 %3 to i96
  %bf.shl3.i = shl nuw nsw i96 %bf.value2.i, 32
  %bf.set5.i = or i96 %bf.set.i, %bf.shl3.i
  store i96 %bf.set5.i, ptr %fchs, align 1
  %ox_id7.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %4 = ptrtoint ptr %ox_id7.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %ox_id, ptr %ox_id7.i, align 1
  %5 = ptrtoint ptr %pld to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 33554432, ptr %pld, align 1
  ret i16 4
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_ls_rjt_build(ptr nocapture noundef %fchs, ptr nocapture noundef %ls_rjt, i32 noundef %d_id, i32 noundef %s_id, i16 noundef zeroext %ox_id, i8 noundef zeroext %reason_code, i8 noundef zeroext %reason_code_expl) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %fchs, ptr @fc_els_rsp_tmpl, i32 24)
  %1 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %1, i32 12)
  %bf.load.i = load i96, ptr %fchs, align 1
  %2 = and i32 %d_id, 16777215
  %bf.value.i = zext i32 %2 to i96
  %bf.shl.i = shl nuw nsw i96 %bf.value.i, 64
  %bf.clear.i = and i96 %bf.load.i, -309484991446658584758190081
  %bf.set.i = or i96 %bf.clear.i, %bf.shl.i
  %3 = and i32 %s_id, 16777215
  %bf.value2.i = zext i32 %3 to i96
  %bf.shl3.i = shl nuw nsw i96 %bf.value2.i, 32
  %bf.set5.i = or i96 %bf.set.i, %bf.shl3.i
  store i96 %bf.set5.i, ptr %fchs, align 1
  %ox_id7.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %4 = ptrtoint ptr %ox_id7.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %ox_id, ptr %ox_id7.i, align 1
  %5 = ptrtoint ptr %ls_rjt to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 72057594037927936, ptr %ls_rjt, align 1
  %conv = zext i8 %reason_code to i32
  %reason_code1 = getelementptr inbounds %struct.fc_ls_rjt_s, ptr %ls_rjt, i32 0, i32 1
  %bf.shl = shl nuw nsw i32 %conv, 16
  %conv5 = zext i8 %reason_code_expl to i32
  %bf.shl9 = shl nuw nsw i32 %conv5, 8
  %bf.set11 = or i32 %bf.shl, %bf.shl9
  %6 = ptrtoint ptr %reason_code1 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %bf.set11, ptr %reason_code1, align 1
  ret i16 8
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_ba_acc_build(ptr nocapture noundef %fchs, ptr nocapture noundef %ba_acc, i32 noundef %d_id, i32 noundef %s_id, i16 noundef zeroext %ox_id, i16 noundef zeroext %rx_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %fchs, ptr @fc_bls_rsp_tmpl, i32 24)
  %1 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %1, i32 12)
  %bf.load.i = load i96, ptr %fchs, align 1
  %2 = and i32 %d_id, 16777215
  %bf.value.i = zext i32 %2 to i96
  %bf.shl.i = shl nuw nsw i96 %bf.value.i, 64
  %bf.clear.i = and i96 %bf.load.i, -309484991446658584758190081
  %bf.set.i = or i96 %bf.clear.i, %bf.shl.i
  %3 = and i32 %s_id, 16777215
  %bf.value2.i = zext i32 %3 to i96
  %bf.shl3.i = shl nuw nsw i96 %bf.value2.i, 32
  %bf.set5.i = or i96 %bf.set.i, %bf.shl3.i
  store i96 %bf.set5.i, ptr %fchs, align 1
  %ox_id7.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %4 = ptrtoint ptr %ox_id7.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %ox_id, ptr %ox_id7.i, align 1
  %5 = call ptr @memcpy(ptr %ba_acc, ptr @ba_acc_tmpl, i32 12)
  %rx_id1 = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 5
  %6 = ptrtoint ptr %rx_id1 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %rx_id, ptr %rx_id1, align 1
  %7 = load i16, ptr %ox_id7.i, align 1
  %8 = zext i16 %7 to i96
  %9 = ptrtoint ptr %ba_acc to i32
  call void @__asan_loadN_noabort(i32 %9, i32 12)
  %bf.load = load i96, ptr %ba_acc, align 1
  %bf.shl = shl nuw nsw i96 %8, 48
  %bf.clear = and i96 %bf.load, -18446462598732840961
  %bf.set = or i96 %bf.clear, %bf.shl
  store i96 %bf.set, ptr %ba_acc, align 1
  %10 = load i16, ptr %rx_id1, align 1
  %11 = zext i16 %10 to i96
  %bf.shl7 = shl nuw nsw i96 %11, 32
  %bf.clear8 = and i96 %bf.set, -281470681743361
  %bf.set9 = or i96 %bf.shl7, %bf.clear8
  store i96 %bf.set9, ptr %ba_acc, align 1
  ret i16 12
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_ls_acc_build(ptr nocapture noundef %fchs, ptr nocapture noundef writeonly %els_cmd, i32 noundef %d_id, i32 noundef %s_id, i16 noundef zeroext %ox_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %fchs, ptr @fc_els_rsp_tmpl, i32 24)
  %1 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %1, i32 12)
  %bf.load.i = load i96, ptr %fchs, align 1
  %2 = and i32 %d_id, 16777215
  %bf.value.i = zext i32 %2 to i96
  %bf.shl.i = shl nuw nsw i96 %bf.value.i, 64
  %bf.clear.i = and i96 %bf.load.i, -309484991446658584758190081
  %bf.set.i = or i96 %bf.clear.i, %bf.shl.i
  %3 = and i32 %s_id, 16777215
  %bf.value2.i = zext i32 %3 to i96
  %bf.shl3.i = shl nuw nsw i96 %bf.value2.i, 32
  %bf.set5.i = or i96 %bf.set.i, %bf.shl3.i
  store i96 %bf.set5.i, ptr %fchs, align 1
  %ox_id7.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %4 = ptrtoint ptr %ox_id7.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %ox_id, ptr %ox_id7.i, align 1
  %5 = ptrtoint ptr %els_cmd to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 33554432, ptr %els_cmd, align 1
  ret i16 4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fc_logout_params_pages(ptr nocapture noundef readonly %fc_frame, i8 noundef zeroext %els_code) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pages.0.in.in.in.in = getelementptr %struct.fchs_s, ptr %fc_frame, i32 1
  %0 = ptrtoint ptr %num_pages.0.in.in.in.in to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %num_pages.0.in.in.in = load i32, ptr %num_pages.0.in.in.in.in, align 1
  %num_pages.0.in.in = and i32 %num_pages.0.in.in.in, 65535
  %num_pages.0.in = add nsw i32 %num_pages.0.in.in, -4
  %num_pages.0 = sdiv i32 %num_pages.0.in, 16
  ret i32 %num_pages.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @fc_tprlo_acc_build(ptr nocapture noundef %fchs, ptr nocapture noundef %tprlo_acc, i32 noundef %d_id, i32 noundef %s_id, i16 noundef zeroext %ox_id, i32 noundef %num_pages) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %fchs, ptr @fc_els_rsp_tmpl, i32 24)
  %1 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %1, i32 12)
  %bf.load.i = load i96, ptr %fchs, align 1
  %2 = and i32 %d_id, 16777215
  %bf.value.i = zext i32 %2 to i96
  %bf.shl.i = shl nuw nsw i96 %bf.value.i, 64
  %bf.clear.i = and i96 %bf.load.i, -309484991446658584758190081
  %bf.set.i = or i96 %bf.clear.i, %bf.shl.i
  %3 = and i32 %s_id, 16777215
  %bf.value2.i = zext i32 %3 to i96
  %bf.shl3.i = shl nuw nsw i96 %bf.value2.i, 32
  %bf.set5.i = or i96 %bf.set.i, %bf.shl3.i
  store i96 %bf.set5.i, ptr %fchs, align 1
  %ox_id7.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %4 = ptrtoint ptr %ox_id7.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %ox_id, ptr %ox_id7.i, align 1
  %mul = shl i32 %num_pages, 4
  %add = or i32 %mul, 4
  %5 = call ptr @memset(ptr %tprlo_acc, i32 0, i32 %add)
  %conv6 = and i32 %add, 65524
  %bf.set9 = or i32 %conv6, 34603008
  %6 = ptrtoint ptr %tprlo_acc to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %bf.set9, ptr %tprlo_acc, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pages)
  %cmp45 = icmp sgt i32 %num_pages, 0
  br i1 %cmp45, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %page.046 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fc_tprlo_acc_s, ptr %tprlo_acc, i32 0, i32 1, i32 %page.046
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %bf.load11 = load i32, ptr %arrayidx, align 1
  %bf.clear17 = and i32 %bf.load11, -49153
  store i32 %bf.clear17, ptr %arrayidx, align 1
  %fc4type_csp = getelementptr %struct.fc_tprlo_acc_s, ptr %tprlo_acc, i32 0, i32 1, i32 %page.046, i32 3
  %8 = ptrtoint ptr %fc4type_csp to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 8, ptr %fc4type_csp, align 1
  %orig_process_assc = getelementptr %struct.fc_tprlo_acc_s, ptr %tprlo_acc, i32 0, i32 1, i32 %page.046, i32 1
  %9 = ptrtoint ptr %orig_process_assc to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 0, ptr %orig_process_assc, align 1
  %resp_process_assc = getelementptr %struct.fc_tprlo_acc_s, ptr %tprlo_acc, i32 0, i32 1, i32 %page.046, i32 2
  %10 = ptrtoint ptr %resp_process_assc to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 0, ptr %resp_process_assc, align 1
  %inc = add nuw nsw i32 %page.046, 1
  %exitcond.not = icmp eq i32 %inc, %num_pages
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %11 = ptrtoint ptr %tprlo_acc to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %bf.load25 = load i32, ptr %tprlo_acc, align 1
  %conv27 = trunc i32 %bf.load25 to i16
  ret i16 %conv27
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @fc_prlo_acc_build(ptr nocapture noundef %fchs, ptr nocapture noundef %prlo_acc, i32 noundef %d_id, i32 noundef %s_id, i16 noundef zeroext %ox_id, i32 noundef %num_pages) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %fchs, ptr @fc_els_rsp_tmpl, i32 24)
  %1 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %1, i32 12)
  %bf.load.i = load i96, ptr %fchs, align 1
  %2 = and i32 %d_id, 16777215
  %bf.value.i = zext i32 %2 to i96
  %bf.shl.i = shl nuw nsw i96 %bf.value.i, 64
  %bf.clear.i = and i96 %bf.load.i, -309484991446658584758190081
  %bf.set.i = or i96 %bf.clear.i, %bf.shl.i
  %3 = and i32 %s_id, 16777215
  %bf.value2.i = zext i32 %3 to i96
  %bf.shl3.i = shl nuw nsw i96 %bf.value2.i, 32
  %bf.set5.i = or i96 %bf.set.i, %bf.shl3.i
  store i96 %bf.set5.i, ptr %fchs, align 1
  %ox_id7.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %4 = ptrtoint ptr %ox_id7.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %ox_id, ptr %ox_id7.i, align 1
  %mul = shl i32 %num_pages, 4
  %add = or i32 %mul, 4
  %5 = call ptr @memset(ptr %prlo_acc, i32 0, i32 %add)
  %conv6 = and i32 %add, 65524
  %bf.set9 = or i32 %conv6, 34603008
  %6 = ptrtoint ptr %prlo_acc to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %bf.set9, ptr %prlo_acc, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pages)
  %cmp45 = icmp sgt i32 %num_pages, 0
  br i1 %cmp45, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %page.046 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fc_prlo_acc_s, ptr %prlo_acc, i32 0, i32 1, i32 %page.046
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %bf.load11 = load i32, ptr %arrayidx, align 1
  %bf.clear17 = and i32 %bf.load11, -49153
  store i32 %bf.clear17, ptr %arrayidx, align 1
  %fc4type_csp = getelementptr %struct.fc_prlo_acc_s, ptr %prlo_acc, i32 0, i32 1, i32 %page.046, i32 3
  %8 = ptrtoint ptr %fc4type_csp to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 8, ptr %fc4type_csp, align 1
  %orig_process_assc = getelementptr %struct.fc_prlo_acc_s, ptr %prlo_acc, i32 0, i32 1, i32 %page.046, i32 1
  %9 = ptrtoint ptr %orig_process_assc to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 0, ptr %orig_process_assc, align 1
  %resp_process_assc = getelementptr %struct.fc_prlo_acc_s, ptr %prlo_acc, i32 0, i32 1, i32 %page.046, i32 2
  %10 = ptrtoint ptr %resp_process_assc to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 0, ptr %resp_process_assc, align 1
  %inc = add nuw nsw i32 %page.046, 1
  %exitcond.not = icmp eq i32 %inc, %num_pages
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %11 = ptrtoint ptr %prlo_acc to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %bf.load25 = load i32, ptr %prlo_acc, align 1
  %conv27 = trunc i32 %bf.load25 to i16
  ret i16 %conv27
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_rnid_build(ptr nocapture noundef %fchs, ptr nocapture noundef %rnid, i32 noundef %d_id, i32 noundef %s_id, i16 noundef zeroext %ox_id, i32 noundef %data_format) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %fchs, ptr @fc_els_req_tmpl, i32 24)
  %1 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %1, i32 12)
  %bf.load.i = load i96, ptr %fchs, align 1
  %2 = and i32 %d_id, 16777215
  %bf.value.i = zext i32 %2 to i96
  %bf.shl.i = shl nuw nsw i96 %bf.value.i, 64
  %bf.clear.i = and i96 %bf.load.i, -309484991446658584758190081
  %bf.set.i = or i96 %bf.clear.i, %bf.shl.i
  %3 = and i32 %s_id, 16777215
  %bf.value2.i = zext i32 %3 to i96
  %bf.shl3.i = shl nuw nsw i96 %bf.value2.i, 32
  %bf.set5.i = or i96 %bf.set.i, %bf.shl3.i
  store i96 %bf.set5.i, ptr %fchs, align 1
  %ox_id7.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %4 = ptrtoint ptr %ox_id7.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %ox_id, ptr %ox_id7.i, align 1
  %5 = ptrtoint ptr %rnid to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 8646911284551352320, ptr %rnid, align 1
  %node_id_data_format = getelementptr inbounds %struct.fc_rnid_cmd_s, ptr %rnid, i32 0, i32 1
  %bf.shl = shl i32 %data_format, 24
  %6 = ptrtoint ptr %node_id_data_format to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %bf.shl, ptr %node_id_data_format, align 1
  ret i16 8
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_rnid_acc_build(ptr nocapture noundef %fchs, ptr nocapture noundef %rnid_acc, i32 noundef %d_id, i32 noundef %s_id, i16 noundef zeroext %ox_id, i32 noundef %data_format, ptr nocapture noundef readonly %common_id_data, ptr nocapture noundef readonly %gen_topo_data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %rnid_acc, i32 0, i32 76)
  %1 = call ptr @memcpy(ptr %fchs, ptr @fc_els_rsp_tmpl, i32 24)
  %2 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %2, i32 12)
  %bf.load.i = load i96, ptr %fchs, align 1
  %3 = and i32 %d_id, 16777215
  %bf.value.i = zext i32 %3 to i96
  %bf.shl.i = shl nuw nsw i96 %bf.value.i, 64
  %bf.clear.i = and i96 %bf.load.i, -309484991446658584758190081
  %bf.set.i = or i96 %bf.clear.i, %bf.shl.i
  %4 = and i32 %s_id, 16777215
  %bf.value2.i = zext i32 %4 to i96
  %bf.shl3.i = shl nuw nsw i96 %bf.value2.i, 32
  %bf.set5.i = or i96 %bf.set.i, %bf.shl3.i
  store i96 %bf.set5.i, ptr %fchs, align 1
  %ox_id7.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %5 = ptrtoint ptr %ox_id7.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %ox_id, ptr %ox_id7.i, align 1
  %6 = ptrtoint ptr %rnid_acc to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %bf.load = load i32, ptr %rnid_acc, align 1
  %bf.clear = and i32 %bf.load, 16777215
  %bf.set = or i32 %bf.clear, 33554432
  store i32 %bf.set, ptr %rnid_acc, align 1
  %node_id_data_format = getelementptr inbounds %struct.fc_rnid_acc_s, ptr %rnid_acc, i32 0, i32 1
  %7 = ptrtoint ptr %node_id_data_format to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %bf.load1 = load i32, ptr %node_id_data_format, align 1
  %bf.shl = shl i32 %data_format, 24
  %bf.clear2 = and i32 %bf.load1, 65535
  %bf.set3 = or i32 %bf.clear2, %bf.shl
  %bf.set6 = or i32 %bf.set3, 1048576
  store i32 %bf.set6, ptr %node_id_data_format, align 1
  %common_id_data7 = getelementptr inbounds %struct.fc_rnid_acc_s, ptr %rnid_acc, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %common_id_data7, ptr %common_id_data, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 223, i32 %data_format)
  %cmp = icmp eq i32 %data_format, 223
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %bf.clear9 = and i32 %bf.set6, -15663360
  %bf.set10 = or i32 %bf.clear9, 52
  %9 = ptrtoint ptr %node_id_data_format to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %bf.set10, ptr %node_id_data_format, align 1
  %gen_topology_data = getelementptr inbounds %struct.fc_rnid_acc_s, ptr %rnid_acc, i32 0, i32 3
  %10 = call ptr @memcpy(ptr %gen_topology_data, ptr %gen_topo_data, i32 52)
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i16 [ 76, %if.then ], [ 24, %entry.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_rpsc_build(ptr nocapture noundef %fchs, ptr nocapture noundef writeonly %rpsc, i32 noundef %d_id, i32 noundef %s_id, i16 noundef zeroext %ox_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %fchs, ptr @fc_els_req_tmpl, i32 24)
  %1 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %1, i32 12)
  %bf.load.i = load i96, ptr %fchs, align 1
  %2 = and i32 %d_id, 16777215
  %bf.value.i = zext i32 %2 to i96
  %bf.shl.i = shl nuw nsw i96 %bf.value.i, 64
  %bf.clear.i = and i96 %bf.load.i, -309484991446658584758190081
  %bf.set.i = or i96 %bf.clear.i, %bf.shl.i
  %3 = and i32 %s_id, 16777215
  %bf.value2.i = zext i32 %3 to i96
  %bf.shl3.i = shl nuw nsw i96 %bf.value2.i, 32
  %bf.set5.i = or i96 %bf.set.i, %bf.shl3.i
  store i96 %bf.set5.i, ptr %fchs, align 1
  %ox_id7.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %4 = ptrtoint ptr %ox_id7.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %ox_id, ptr %ox_id7.i, align 1
  %5 = ptrtoint ptr %rpsc to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 2097152000, ptr %rpsc, align 1
  ret i16 4
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @fc_rpsc2_build(ptr nocapture noundef %fchs, ptr nocapture noundef %rpsc2, i32 noundef %d_id, i32 noundef %s_id, ptr nocapture noundef readonly %pid_list, i16 noundef zeroext %npids) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %d_id, 16
  %shr = and i32 %and, 255
  %or = or i32 %shr, 16776192
  %0 = call ptr @memcpy(ptr %fchs, ptr @fc_els_req_tmpl, i32 24)
  %1 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %1, i32 12)
  %bf.load.i = load i96, ptr %fchs, align 1
  %bf.value.i = zext i32 %or to i96
  %bf.shl.i = shl nuw nsw i96 %bf.value.i, 64
  %bf.clear.i = and i96 %bf.load.i, -309484991446658584758190081
  %bf.set.i = or i96 %bf.clear.i, %bf.shl.i
  %2 = and i32 %s_id, 16777215
  %bf.value2.i = zext i32 %2 to i96
  %bf.shl3.i = shl nuw nsw i96 %bf.value2.i, 32
  %bf.set5.i = or i96 %bf.set.i, %bf.shl3.i
  store i96 %bf.set5.i, ptr %fchs, align 1
  %ox_id7.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %3 = ptrtoint ptr %ox_id7.i to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 0, ptr %ox_id7.i, align 1
  %4 = getelementptr inbounds i8, ptr %rpsc2, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %4, align 1
  %6 = ptrtoint ptr %rpsc2 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 2097152000, ptr %rpsc2, align 1
  %token = getelementptr inbounds %struct.fc_rpsc2_cmd_s, ptr %rpsc2, i32 0, i32 1
  %7 = ptrtoint ptr %token to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 1112687428, ptr %token, align 1
  %num_pids = getelementptr inbounds %struct.fc_rpsc2_cmd_s, ptr %rpsc2, i32 0, i32 3
  %8 = ptrtoint ptr %num_pids to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %npids, ptr %num_pids, align 1
  %conv = zext i16 %npids to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %npids)
  %cmp18.not = icmp eq i16 %npids, 0
  br i1 %cmp18.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %pid_list, i32 %i.019
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr %struct.fc_rpsc2_cmd_s, ptr %rpsc2, i32 0, i32 4, i32 %i.019
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %bf.load4 = load i32, ptr %arrayidx3, align 1
  %bf.value = and i32 %10, 16777215
  %bf.clear5 = and i32 %bf.load4, -16777216
  %bf.set6 = or i32 %bf.clear5, %bf.value
  store i32 %bf.set6, ptr %arrayidx3, align 1
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %sub = shl i16 %npids, 2
  %add = add i16 %sub, 12
  ret i16 %add
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_rpsc_acc_build(ptr nocapture noundef %fchs, ptr nocapture noundef %rpsc_acc, i32 noundef %d_id, i32 noundef %s_id, i16 noundef zeroext %ox_id, ptr nocapture noundef readonly %oper_speed) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rpsc_acc to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %rpsc_acc, align 1
  %1 = call ptr @memcpy(ptr %fchs, ptr @fc_els_rsp_tmpl, i32 24)
  %2 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %2, i32 12)
  %bf.load.i = load i96, ptr %fchs, align 1
  %3 = and i32 %d_id, 16777215
  %bf.value.i = zext i32 %3 to i96
  %bf.shl.i = shl nuw nsw i96 %bf.value.i, 64
  %bf.clear.i = and i96 %bf.load.i, -309484991446658584758190081
  %bf.set.i = or i96 %bf.clear.i, %bf.shl.i
  %4 = and i32 %s_id, 16777215
  %bf.value2.i = zext i32 %4 to i96
  %bf.shl3.i = shl nuw nsw i96 %bf.value2.i, 32
  %bf.set5.i = or i96 %bf.set.i, %bf.shl3.i
  store i96 %bf.set5.i, ptr %fchs, align 1
  %ox_id7.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %5 = ptrtoint ptr %ox_id7.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %ox_id, ptr %ox_id7.i, align 1
  %bf.load = load i32, ptr %rpsc_acc, align 1
  %bf.clear = and i32 %bf.load, 16711680
  %bf.set3 = or i32 %bf.clear, 33554433
  store i32 %bf.set3, ptr %rpsc_acc, align 1
  %6 = ptrtoint ptr %oper_speed to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %oper_speed, align 1
  %speed_info = getelementptr inbounds %struct.fc_rpsc_acc_s, ptr %rpsc_acc, i32 0, i32 1
  %8 = ptrtoint ptr %speed_info to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %7, ptr %speed_info, align 1
  %port_op_speed = getelementptr inbounds %struct.fc_rpsc_speed_info_s, ptr %oper_speed, i32 0, i32 1
  %9 = ptrtoint ptr %port_op_speed to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %port_op_speed, align 1
  %port_op_speed7 = getelementptr inbounds %struct.fc_rpsc_acc_s, ptr %rpsc_acc, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %port_op_speed7 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %port_op_speed7, align 1
  ret i16 8
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_pdisc_build(ptr nocapture noundef %fchs, i32 noundef %d_id, i32 noundef %s_id, i16 noundef zeroext %ox_id, i64 noundef %port_name, i64 noundef %node_name, i16 noundef zeroext %pdu_size) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.fchs_s, ptr %fchs, i32 1
  %0 = call ptr @memcpy(ptr %add.ptr, ptr @plogi_tmpl, i32 116)
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %bf.load = load i32, ptr %add.ptr, align 1
  %bf.clear = and i32 %bf.load, 16777215
  %bf.set = or i32 %bf.clear, 1342177280
  store i32 %bf.set, ptr %add.ptr, align 1
  %2 = call ptr @memcpy(ptr %fchs, ptr @fc_els_req_tmpl, i32 24)
  %3 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %3, i32 12)
  %bf.load.i = load i96, ptr %fchs, align 1
  %4 = and i32 %d_id, 16777215
  %bf.value.i = zext i32 %4 to i96
  %bf.shl.i = shl nuw nsw i96 %bf.value.i, 64
  %bf.clear.i = and i96 %bf.load.i, -309484991446658584758190081
  %bf.set.i = or i96 %bf.clear.i, %bf.shl.i
  %5 = and i32 %s_id, 16777215
  %bf.value2.i = zext i32 %5 to i96
  %bf.shl3.i = shl nuw nsw i96 %bf.value2.i, 32
  %bf.set5.i = or i96 %bf.set.i, %bf.shl3.i
  store i96 %bf.set5.i, ptr %fchs, align 1
  %ox_id7.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %6 = ptrtoint ptr %ox_id7.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %ox_id, ptr %ox_id7.i, align 1
  %class3 = getelementptr %struct.fchs_s, ptr %fchs, i32 3, i32 6
  %7 = zext i16 %pdu_size to i128
  %8 = ptrtoint ptr %class3 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 16)
  %bf.load1 = load i128, ptr %class3, align 1
  %bf.shl = shl nuw nsw i128 %7, 64
  %bf.clear2 = and i128 %bf.load1, -1208907372870555465154561
  %bf.set3 = or i128 %bf.clear2, %bf.shl
  store i128 %bf.set3, ptr %class3, align 1
  %rxsz = getelementptr %struct.fchs_s, ptr %fchs, i32 1, i32 0, i32 10
  %9 = ptrtoint ptr %rxsz to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %pdu_size, ptr %rxsz, align 1
  %port_name5 = getelementptr %struct.fchs_s, ptr %fchs, i32 1, i32 6
  %10 = ptrtoint ptr %port_name5 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %port_name, ptr %port_name5, align 1
  %node_name6 = getelementptr %struct.fchs_s, ptr %fchs, i32 2, i32 0, i32 4
  %11 = ptrtoint ptr %node_name6 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %node_name, ptr %node_name6, align 1
  ret i16 116
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_pdisc_rsp_parse(ptr nocapture noundef readonly %fchs, i32 noundef %len, i64 noundef %port_name) local_unnamed_addr #2 align 64 {
entry:
  %port_name.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %port_name.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %port_name, ptr %port_name.addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 116, i32 %len)
  %cmp = icmp ult i32 %len, 116
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr %struct.fchs_s, ptr %fchs, i32 1
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %bf.load = load i32, ptr %add.ptr, align 1
  %bf.lshr.mask = and i32 %bf.load, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %bf.lshr.mask)
  %cmp1.not = icmp eq i32 %bf.lshr.mask, 33554432
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %port_name4 = getelementptr %struct.fchs_s, ptr %fchs, i32 1, i32 6
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(8) %port_name4, ptr noundef nonnull dereferenceable(8) %port_name.addr, i32 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp5 = icmp eq i32 %bcmp, 0
  br i1 %cmp5, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %class3 = getelementptr %struct.fchs_s, ptr %fchs, i32 3, i32 6
  %2 = ptrtoint ptr %class3 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 16)
  %bf.load8 = load i128, ptr %class3, align 1
  %tobool.not = icmp sgt i128 %bf.load8, -1
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %3 = and i128 %bf.load8, 1199481086648889884278784
  %cmp17 = icmp eq i128 %3, 0
  %. = select i1 %cmp17, i16 7, i16 0
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ 3, %entry.cleanup_crit_edge ], [ 4, %if.end.cleanup_crit_edge ], [ 5, %if.end3.cleanup_crit_edge ], [ 6, %if.end7.cleanup_crit_edge ], [ %., %if.end11 ]
  ret i16 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @fc_prlo_build(ptr nocapture noundef %fchs, i32 noundef %d_id, i32 noundef %s_id, i16 noundef zeroext %ox_id, i32 noundef %num_pages) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.fchs_s, ptr %fchs, i32 1
  %0 = call ptr @memcpy(ptr %fchs, ptr @fc_els_req_tmpl, i32 24)
  %1 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %1, i32 12)
  %bf.load.i = load i96, ptr %fchs, align 1
  %2 = and i32 %d_id, 16777215
  %bf.value.i = zext i32 %2 to i96
  %bf.shl.i = shl nuw nsw i96 %bf.value.i, 64
  %bf.clear.i = and i96 %bf.load.i, -309484991446658584758190081
  %bf.set.i = or i96 %bf.clear.i, %bf.shl.i
  %3 = and i32 %s_id, 16777215
  %bf.value2.i = zext i32 %3 to i96
  %bf.shl3.i = shl nuw nsw i96 %bf.value2.i, 32
  %bf.set5.i = or i96 %bf.set.i, %bf.shl3.i
  store i96 %bf.set5.i, ptr %fchs, align 1
  %ox_id7.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %4 = ptrtoint ptr %ox_id7.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %ox_id, ptr %ox_id7.i, align 1
  %mul = shl i32 %num_pages, 4
  %add = or i32 %mul, 4
  %5 = call ptr @memset(ptr %add.ptr, i32 0, i32 %add)
  %conv6 = and i32 %add, 65524
  %bf.set9 = or i32 %conv6, 554696704
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %bf.set9, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pages)
  %cmp49 = icmp sgt i32 %num_pages, 0
  br i1 %cmp49, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %prlo_params = getelementptr %struct.fchs_s, ptr %fchs, i32 1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %page.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [1 x %struct.fc_prlo_params_page_s], ptr %prlo_params, i32 0, i32 %page.050
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %bf.load11 = load i32, ptr %arrayidx, align 1
  %bf.clear12 = and i32 %bf.load11, 16728063
  %bf.set13 = or i32 %bf.clear12, 134217728
  store i32 %bf.set13, ptr %arrayidx, align 1
  %orig_process_assc = getelementptr [1 x %struct.fc_prlo_params_page_s], ptr %prlo_params, i32 0, i32 %page.050, i32 1
  %8 = ptrtoint ptr %orig_process_assc to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 0, ptr %orig_process_assc, align 1
  %resp_process_assc = getelementptr [1 x %struct.fc_prlo_params_page_s], ptr %prlo_params, i32 0, i32 %page.050, i32 2
  %9 = ptrtoint ptr %resp_process_assc to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 0, ptr %resp_process_assc, align 1
  %inc = add nuw nsw i32 %page.050, 1
  %exitcond.not = icmp eq i32 %inc, %num_pages
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %conv30 = trunc i32 %add to i16
  ret i16 %conv30
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @fc_tprlo_build(ptr nocapture noundef %fchs, i32 noundef %d_id, i32 noundef %s_id, i16 noundef zeroext %ox_id, i32 noundef %num_pages, i32 noundef %tprlo_type, i32 noundef %tpr_id) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.fchs_s, ptr %fchs, i32 1
  %0 = call ptr @memcpy(ptr %fchs, ptr @fc_els_req_tmpl, i32 24)
  %1 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %1, i32 12)
  %bf.load.i = load i96, ptr %fchs, align 1
  %2 = and i32 %d_id, 16777215
  %bf.value.i = zext i32 %2 to i96
  %bf.shl.i = shl nuw nsw i96 %bf.value.i, 64
  %bf.clear.i = and i96 %bf.load.i, -309484991446658584758190081
  %bf.set.i = or i96 %bf.clear.i, %bf.shl.i
  %3 = and i32 %s_id, 16777215
  %bf.value2.i = zext i32 %3 to i96
  %bf.shl3.i = shl nuw nsw i96 %bf.value2.i, 32
  %bf.set5.i = or i96 %bf.set.i, %bf.shl3.i
  store i96 %bf.set5.i, ptr %fchs, align 1
  %ox_id7.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %4 = ptrtoint ptr %ox_id7.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %ox_id, ptr %ox_id7.i, align 1
  %mul = shl i32 %num_pages, 4
  %add = or i32 %mul, 4
  %5 = call ptr @memset(ptr %add.ptr, i32 0, i32 %add)
  %conv6 = and i32 %add, 65524
  %bf.set9 = or i32 %conv6, 605028352
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %bf.set9, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pages)
  %cmp74 = icmp sgt i32 %num_pages, 0
  br i1 %cmp74, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tprlo_params = getelementptr %struct.fchs_s, ptr %fchs, i32 1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %page.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [1 x %struct.fc_tprlo_params_page_s], ptr %tprlo_params, i32 0, i32 %page.075
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %bf.load11 = load i32, ptr %arrayidx, align 1
  %bf.clear12 = and i32 %bf.load11, 16728063
  %bf.set13 = or i32 %bf.clear12, 134217728
  store i32 %bf.set13, ptr %arrayidx, align 1
  %orig_process_assc = getelementptr [1 x %struct.fc_tprlo_params_page_s], ptr %tprlo_params, i32 0, i32 %page.075, i32 1
  %8 = ptrtoint ptr %orig_process_assc to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 0, ptr %orig_process_assc, align 1
  %resp_process_assc = getelementptr [1 x %struct.fc_tprlo_params_page_s], ptr %tprlo_params, i32 0, i32 %page.075, i32 2
  %9 = ptrtoint ptr %resp_process_assc to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 0, ptr %resp_process_assc, align 1
  %10 = zext i32 %tprlo_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %tprlo_type, label %for.body.for.inc_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then37
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %bf.set34 = or i32 %bf.clear12, 134221824
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %bf.set34, ptr %arrayidx, align 1
  br label %for.inc

if.then37:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %bf.set42 = or i32 %bf.clear12, 134225920
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %bf.set42, ptr %arrayidx, align 1
  %tpo_nport_id = getelementptr [1 x %struct.fc_tprlo_params_page_s], ptr %tprlo_params, i32 0, i32 %page.075, i32 4
  %13 = ptrtoint ptr %tpo_nport_id to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %tpr_id, ptr %tpo_nport_id, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then37, %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %page.075, 1
  %exitcond.not = icmp eq i32 %inc, %num_pages
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %bf.load46 = load i32, ptr %add.ptr, align 1
  %conv48 = trunc i32 %bf.load46 to i16
  ret i16 %conv48
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_ba_rjt_build(ptr nocapture noundef %fchs, i32 noundef %d_id, i32 noundef %s_id, i16 noundef zeroext %ox_id, i32 noundef %reason_code, i32 noundef %reason_expl) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.fchs_s, ptr %fchs, i32 1
  %0 = call ptr @memcpy(ptr %fchs, ptr @fc_bls_rsp_tmpl, i32 24)
  %1 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %1, i32 12)
  %bf.load.i = load i96, ptr %fchs, align 1
  %2 = and i32 %d_id, 16777215
  %bf.value.i = zext i32 %2 to i96
  %bf.shl.i = shl nuw nsw i96 %bf.value.i, 64
  %bf.clear.i = and i96 %bf.load.i, -4951760138766834615629905921
  %bf.set.i = or i96 %bf.clear.i, %bf.shl.i
  %3 = and i32 %s_id, 16777215
  %bf.value2.i = zext i32 %3 to i96
  %bf.shl3.i = shl nuw nsw i96 %bf.value2.i, 32
  %bf.set5.i = or i96 %bf.set.i, %bf.shl3.i
  %ox_id7.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %4 = ptrtoint ptr %ox_id7.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %ox_id, ptr %ox_id7.i, align 1
  %bf.set = or i96 %bf.set5.i, 1547425049106725343623905280
  store i96 %bf.set, ptr %fchs, align 1
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %bf.load1 = load i32, ptr %add.ptr, align 1
  %bf.value = shl i32 %reason_code, 16
  %bf.shl = and i32 %bf.value, 16711680
  %bf.clear2 = and i32 %bf.load1, -16776961
  %bf.value5 = shl i32 %reason_expl, 8
  %bf.shl6 = and i32 %bf.value5, 65280
  %bf.set3 = or i32 %bf.shl6, %bf.shl
  %bf.set8 = or i32 %bf.set3, %bf.clear2
  store i32 %bf.set8, ptr %add.ptr, align 1
  ret i16 4
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local zeroext i16 @fc_gidpn_build(ptr nocapture noundef writeonly %fchs, ptr nocapture noundef writeonly %pyld, i32 noundef %s_id, i16 noundef zeroext %ox_id, i64 noundef %port_name) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.ct_hdr_s, ptr %pyld, i32 1
  %0 = getelementptr inbounds i8, ptr %fchs, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %rx_id.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 5
  %2 = ptrtoint ptr %rx_id.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -1, ptr %rx_id.i, align 1
  %3 = and i32 %s_id, 16777215
  %bf.value14.i = zext i32 %3 to i96
  %bf.shl15.i = shl nuw nsw i96 %bf.value14.i, 32
  %bf.set17.i = or i96 %bf.shl15.i, 928454955677058911875694592
  %4 = ptrtoint ptr %fchs to i32
  call void @__asan_storeN_noabort(i32 %4, i32 12)
  store i96 %bf.set17.i, ptr %fchs, align 1
  %ox_id19.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %5 = ptrtoint ptr %ox_id19.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %ox_id, ptr %ox_id19.i, align 1
  %6 = ptrtoint ptr %pyld to i32
  call void @__asan_storeN_noabort(i32 %6, i32 16)
  store i128 1329228073777556199603339905543962624, ptr %pyld, align 1
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %port_name, ptr %add.ptr, align 1
  ret i16 24
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local zeroext i16 @fc_gpnid_build(ptr nocapture noundef writeonly %fchs, ptr nocapture noundef writeonly %pyld, i32 noundef %s_id, i16 noundef zeroext %ox_id, i32 noundef %port_id) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.ct_hdr_s, ptr %pyld, i32 1
  %0 = getelementptr inbounds i8, ptr %fchs, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %rx_id.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 5
  %2 = ptrtoint ptr %rx_id.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -1, ptr %rx_id.i, align 1
  %3 = and i32 %s_id, 16777215
  %bf.value14.i = zext i32 %3 to i96
  %bf.shl15.i = shl nuw nsw i96 %bf.value14.i, 32
  %bf.set17.i = or i96 %bf.shl15.i, 928454955677058911875694592
  %4 = ptrtoint ptr %fchs to i32
  call void @__asan_storeN_noabort(i32 %4, i32 12)
  store i96 %bf.set17.i, ptr %fchs, align 1
  %ox_id19.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %5 = ptrtoint ptr %ox_id19.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %ox_id, ptr %ox_id19.i, align 1
  %6 = ptrtoint ptr %pyld to i32
  call void @__asan_storeN_noabort(i32 %6, i32 16)
  store i128 1329228073777556199599117780893302784, ptr %pyld, align 1
  %bf.value = and i32 %port_id, 16777215
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %bf.value, ptr %add.ptr, align 1
  ret i16 20
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local zeroext i16 @fc_gnnid_build(ptr nocapture noundef writeonly %fchs, ptr nocapture noundef writeonly %pyld, i32 noundef %s_id, i16 noundef zeroext %ox_id, i32 noundef %port_id) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.ct_hdr_s, ptr %pyld, i32 1
  %0 = getelementptr inbounds i8, ptr %fchs, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %rx_id.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 5
  %2 = ptrtoint ptr %rx_id.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -1, ptr %rx_id.i, align 1
  %3 = and i32 %s_id, 16777215
  %bf.value14.i = zext i32 %3 to i96
  %bf.shl15.i = shl nuw nsw i96 %bf.value14.i, 32
  %bf.set17.i = or i96 %bf.shl15.i, 928454955677058911875694592
  %4 = ptrtoint ptr %fchs to i32
  call void @__asan_storeN_noabort(i32 %4, i32 12)
  store i96 %bf.set17.i, ptr %fchs, align 1
  %ox_id19.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %5 = ptrtoint ptr %ox_id19.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %ox_id, ptr %ox_id19.i, align 1
  %6 = ptrtoint ptr %pyld to i32
  call void @__asan_storeN_noabort(i32 %6, i32 16)
  store i128 1329228073777556199599399255870013440, ptr %pyld, align 1
  %bf.value = and i32 %port_id, 16777215
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %bf.value, ptr %add.ptr, align 1
  ret i16 20
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_ct_rsp_parse(ptr nocapture noundef readonly %cthdr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cthdr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 16)
  %bf.load = load i128, ptr %cthdr, align 1
  %1 = and i128 %bf.load, 18446462598732840960
  %cmp.not = icmp eq i128 %1, 9223934986808197120
  br i1 %cmp.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = and i128 %bf.load, 16711680
  %cmp7 = icmp eq i128 %2, 327680
  %. = select i1 %cmp7, i16 2, i16 1
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i16 [ %., %if.then ], [ 0, %entry.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_gs_rjt_build(ptr nocapture noundef writeonly %fchs, ptr nocapture noundef %cthdr, i32 noundef %d_id, i32 noundef %s_id, i16 noundef zeroext %ox_id, i8 noundef zeroext %reason_code, i8 noundef zeroext %reason_code_expl) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %fchs, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %2 = and i32 %d_id, 16777215
  %bf.value.i = zext i32 %2 to i96
  %bf.shl.i = shl nuw nsw i96 %bf.value.i, 64
  %3 = and i32 %s_id, 16777215
  %bf.value14.i = zext i32 %3 to i96
  %bf.shl15.i = shl nuw nsw i96 %bf.value14.i, 32
  %bf.set12.i = or i96 %bf.shl15.i, %bf.shl.i
  %bf.set17.i = or i96 %bf.set12.i, 928455029464035206721241088
  %4 = ptrtoint ptr %fchs to i32
  call void @__asan_storeN_noabort(i32 %4, i32 12)
  store i96 %bf.set17.i, ptr %fchs, align 1
  %ox_id19.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %5 = ptrtoint ptr %ox_id19.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %ox_id, ptr %ox_id19.i, align 1
  %6 = ptrtoint ptr %cthdr to i32
  call void @__asan_loadN_noabort(i32 %6, i32 16)
  %bf.load = load i128, ptr %cthdr, align 1
  %bf.clear = and i128 %bf.load, 1329227995784915854457344461530726655
  %7 = zext i8 %reason_code to i128
  %bf.shl = shl nuw nsw i128 %7, 16
  %bf.set3 = or i128 %bf.clear, %bf.shl
  %8 = zext i8 %reason_code_expl to i128
  %bf.shl10 = shl nuw nsw i128 %8, 8
  %bf.set6 = or i128 %bf.set3, %bf.shl10
  %bf.set12 = or i128 %bf.set6, 1329227995784915882127460572111831040
  store i128 %bf.set12, ptr %cthdr, align 1
  ret i16 16
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_scr_build(ptr nocapture noundef %fchs, ptr nocapture noundef writeonly %scr, i8 noundef zeroext %set_br_reg, i32 noundef %s_id, i16 noundef zeroext %ox_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %fchs, ptr @fc_els_req_tmpl, i32 24)
  %1 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %1, i32 12)
  %bf.load.i = load i96, ptr %fchs, align 1
  %bf.clear.i = and i96 %bf.load.i, -309484991446658584758190081
  %2 = and i32 %s_id, 16777215
  %bf.value2.i = zext i32 %2 to i96
  %bf.shl3.i = shl nuw nsw i96 %bf.value2.i, 32
  %bf.set.i = or i96 %bf.clear.i, %bf.shl3.i
  %bf.set5.i = or i96 %bf.set.i, 309484954481112847596126208
  store i96 %bf.set5.i, ptr %fchs, align 1
  %ox_id7.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %3 = ptrtoint ptr %ox_id7.i to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %ox_id, ptr %ox_id7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %set_br_reg)
  %tobool.not = icmp eq i8 %set_br_reg, 0
  %spec.select = select i1 %tobool.not, i64 7061644215716937731, i64 7061644215733714947
  %4 = ptrtoint ptr %scr to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %spec.select, ptr %scr, align 1
  ret i16 8
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_rscn_build(ptr nocapture noundef %fchs, ptr nocapture noundef %rscn, i32 noundef %s_id, i16 noundef zeroext %ox_id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %fchs, ptr @fc_els_req_tmpl, i32 24)
  %1 = ptrtoint ptr %fchs to i32
  call void @__asan_loadN_noabort(i32 %1, i32 12)
  %bf.load.i = load i96, ptr %fchs, align 1
  %bf.clear.i = and i96 %bf.load.i, -309484991446658584758190081
  %2 = and i32 %s_id, 16777215
  %bf.value2.i = zext i32 %2 to i96
  %bf.shl3.i = shl nuw nsw i96 %bf.value2.i, 32
  %bf.set.i = or i96 %bf.clear.i, %bf.shl3.i
  %bf.set5.i = or i96 %bf.set.i, 309484954481112847596126208
  store i96 %bf.set5.i, ptr %fchs, align 1
  %ox_id7.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %3 = ptrtoint ptr %ox_id7.i to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %ox_id, ptr %ox_id7.i, align 1
  %4 = ptrtoint ptr %rscn to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 97, ptr %rscn, align 1
  %pagelen = getelementptr inbounds %struct.fc_rscn_pl_s, ptr %rscn, i32 0, i32 1
  %5 = ptrtoint ptr %pagelen to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 4, ptr %pagelen, align 1
  %payldlen3 = getelementptr inbounds %struct.fc_rscn_pl_s, ptr %rscn, i32 0, i32 2
  %6 = ptrtoint ptr %payldlen3 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 8, ptr %payldlen3, align 1
  %event = getelementptr inbounds %struct.fc_rscn_pl_s, ptr %rscn, i32 0, i32 3
  %7 = ptrtoint ptr %event to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %bf.load = load i32, ptr %event, align 1
  %bf.clear7 = and i32 %bf.load, 1056964608
  %bf.set8 = or i32 %bf.clear7, %2
  store i32 %bf.set8, ptr %event, align 1
  ret i16 8
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_rftid_build(ptr nocapture noundef writeonly %fchs, ptr nocapture noundef %pyld, i32 noundef %s_id, i16 noundef zeroext %ox_id, i32 noundef %roles) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.ct_hdr_s, ptr %pyld, i32 1
  %0 = getelementptr inbounds i8, ptr %fchs, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %rx_id.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 5
  %2 = ptrtoint ptr %rx_id.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -1, ptr %rx_id.i, align 1
  %3 = and i32 %s_id, 16777215
  %bf.value14.i = zext i32 %3 to i96
  %bf.shl15.i = shl nuw nsw i96 %bf.value14.i, 32
  %bf.set17.i = or i96 %bf.shl15.i, 928454955677058911875694592
  %4 = ptrtoint ptr %fchs to i32
  call void @__asan_storeN_noabort(i32 %4, i32 12)
  store i96 %bf.set17.i, ptr %fchs, align 1
  %ox_id19.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %5 = ptrtoint ptr %ox_id19.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %ox_id, ptr %ox_id19.i, align 1
  %6 = ptrtoint ptr %pyld to i32
  call void @__asan_storeN_noabort(i32 %6, i32 16)
  store i128 1329228073777556199672582749814784000, ptr %pyld, align 1
  %7 = getelementptr inbounds i8, ptr %add.ptr, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 28)
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %3, ptr %add.ptr, align 1
  %fc4_type = getelementptr inbounds %struct.fcgs_rftid_req_s, ptr %add.ptr, i32 0, i32 1
  %10 = ptrtoint ptr %fc4_type to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 256, ptr %fc4_type, align 1
  ret i16 52
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_rftid_build_sol(ptr nocapture noundef writeonly %fchs, ptr nocapture noundef %pyld, i32 noundef %s_id, i16 noundef zeroext %ox_id, ptr nocapture noundef readonly %fc4_bitmap, i32 noundef %bitmap_size) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.ct_hdr_s, ptr %pyld, i32 1
  %0 = getelementptr inbounds i8, ptr %fchs, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %rx_id.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 5
  %2 = ptrtoint ptr %rx_id.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -1, ptr %rx_id.i, align 1
  %3 = and i32 %s_id, 16777215
  %bf.value14.i = zext i32 %3 to i96
  %bf.shl15.i = shl nuw nsw i96 %bf.value14.i, 32
  %bf.set17.i = or i96 %bf.shl15.i, 928454955677058911875694592
  %4 = ptrtoint ptr %fchs to i32
  call void @__asan_storeN_noabort(i32 %4, i32 12)
  store i96 %bf.set17.i, ptr %fchs, align 1
  %ox_id19.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %5 = ptrtoint ptr %ox_id19.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %ox_id, ptr %ox_id19.i, align 1
  %6 = ptrtoint ptr %pyld to i32
  call void @__asan_storeN_noabort(i32 %6, i32 16)
  store i128 1329228073777556199672582749814784000, ptr %pyld, align 1
  %7 = getelementptr inbounds i8, ptr %add.ptr, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 32)
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %3, ptr %add.ptr, align 1
  %10 = tail call i32 @llvm.umin.i32(i32 %bitmap_size, i32 32)
  %fc4_type = getelementptr inbounds %struct.fcgs_rftid_req_s, ptr %add.ptr, i32 0, i32 1
  %11 = call ptr @memcpy(ptr %fc4_type, ptr %fc4_bitmap, i32 %10)
  ret i16 52
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local zeroext i16 @fc_rffid_build(ptr nocapture noundef writeonly %fchs, ptr nocapture noundef writeonly %pyld, i32 noundef %s_id, i16 noundef zeroext %ox_id, i8 noundef zeroext %fc4_type, i8 noundef zeroext %fc4_ftrs) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.ct_hdr_s, ptr %pyld, i32 1
  %0 = getelementptr inbounds i8, ptr %fchs, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %rx_id.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 5
  %2 = ptrtoint ptr %rx_id.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -1, ptr %rx_id.i, align 1
  %3 = and i32 %s_id, 16777215
  %bf.value14.i = zext i32 %3 to i96
  %bf.shl15.i = shl nuw nsw i96 %bf.value14.i, 32
  %bf.set17.i = or i96 %bf.shl15.i, 928454955677058911875694592
  %4 = ptrtoint ptr %fchs to i32
  call void @__asan_storeN_noabort(i32 %4, i32 12)
  store i96 %bf.set17.i, ptr %fchs, align 1
  %ox_id19.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %5 = ptrtoint ptr %ox_id19.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %ox_id, ptr %ox_id19.i, align 1
  %6 = ptrtoint ptr %pyld to i32
  call void @__asan_storeN_noabort(i32 %6, i32 16)
  store i128 1329228073777556199674834549628469248, ptr %pyld, align 1
  %bf.value = zext i32 %3 to i64
  %bf.shl = shl nuw nsw i64 %bf.value, 32
  %7 = zext i8 %fc4_ftrs to i64
  %bf.shl4 = shl nuw nsw i64 %7, 8
  %bf.set6 = or i64 %bf.shl4, %bf.shl
  %8 = zext i8 %fc4_type to i64
  %bf.set12 = or i64 %bf.set6, %8
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %bf.set12, ptr %add.ptr, align 1
  ret i16 24
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @fc_rspnid_build(ptr nocapture noundef writeonly %fchs, ptr noundef %pyld, i32 noundef %s_id, i16 noundef zeroext %ox_id, ptr noundef %name) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.ct_hdr_s, ptr %pyld, i32 1
  %0 = getelementptr inbounds i8, ptr %fchs, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %rx_id.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 5
  %2 = ptrtoint ptr %rx_id.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -1, ptr %rx_id.i, align 1
  %3 = and i32 %s_id, 16777215
  %bf.value14.i = zext i32 %3 to i96
  %bf.shl15.i = shl nuw nsw i96 %bf.value14.i, 32
  %bf.set17.i = or i96 %bf.shl15.i, 928454955677058911875694592
  %4 = ptrtoint ptr %fchs to i32
  call void @__asan_storeN_noabort(i32 %4, i32 12)
  store i96 %bf.set17.i, ptr %fchs, align 1
  %ox_id19.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 4
  %5 = ptrtoint ptr %ox_id19.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %ox_id, ptr %ox_id19.i, align 1
  %6 = ptrtoint ptr %pyld to i32
  call void @__asan_storeN_noabort(i32 %6, i32 16)
  store i128 1329228073777556199672864224791494656, ptr %pyld, align 1
  %7 = getelementptr inbounds i8, ptr %add.ptr, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 257)
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %3, ptr %add.ptr, align 1
  %spn = getelementptr inbounds %struct.fcgs_rspnid_req_s, ptr %add.ptr, i32 0, i32 2
  %call = tail call i32 @strlcpy(ptr noundef %spn, ptr noundef %name, i32 noundef 256) #13
  %call3 = tail call i32 @strlen(ptr noundef %spn) #16
  %conv4 = trunc i32 %call3 to i8
  %spn_len = getelementptr inbounds %struct.fcgs_rspnid_req_s, ptr %add.ptr, i32 0, i32 1
  %10 = ptrtoint ptr %spn_len to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv4, ptr %spn_len, align 1
  ret i16 277
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @fc_rsnn_nn_build(ptr nocapture noundef writeonly %fchs, ptr noundef %pyld, i32 noundef %s_id, i64 noundef %node_name, ptr noundef %name) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.ct_hdr_s, ptr %pyld, i32 1
  %0 = getelementptr inbounds i8, ptr %fchs, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %rx_id.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 5
  %2 = ptrtoint ptr %rx_id.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -1, ptr %rx_id.i, align 1
  %3 = and i32 %s_id, 16777215
  %bf.value14.i = zext i32 %3 to i96
  %bf.shl15.i = shl nuw nsw i96 %bf.value14.i, 32
  %bf.set17.i = or i96 %bf.shl15.i, 928454955677058911875694592
  %4 = ptrtoint ptr %fchs to i32
  call void @__asan_storeN_noabort(i32 %4, i32 12)
  store i96 %bf.set17.i, ptr %fchs, align 1
  %5 = ptrtoint ptr %pyld to i32
  call void @__asan_storeN_noabort(i32 %5, i32 16)
  store i128 1329228073777556199682152899022946304, ptr %pyld, align 1
  %6 = getelementptr inbounds i8, ptr %add.ptr, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 257)
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %node_name, ptr %add.ptr, align 1
  %snn = getelementptr inbounds %struct.fcgs_rsnn_nn_req_s, ptr %add.ptr, i32 0, i32 2
  %call = tail call i32 @strlcpy(ptr noundef %snn, ptr noundef %name, i32 noundef 256) #13
  %call4 = tail call i32 @strlen(ptr noundef %snn) #16
  %conv = trunc i32 %call4 to i8
  %snn_len = getelementptr inbounds %struct.fcgs_rsnn_nn_req_s, ptr %add.ptr, i32 0, i32 1
  %9 = ptrtoint ptr %snn_len to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %snn_len, align 1
  ret i16 281
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local zeroext i16 @fc_gid_ft_build(ptr nocapture noundef writeonly %fchs, ptr nocapture noundef writeonly %pyld, i32 noundef %s_id, i8 noundef zeroext %fc4_type) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.ct_hdr_s, ptr %pyld, i32 1
  %0 = getelementptr inbounds i8, ptr %fchs, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %rx_id.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 5
  %2 = ptrtoint ptr %rx_id.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -1, ptr %rx_id.i, align 1
  %3 = and i32 %s_id, 16777215
  %bf.value14.i = zext i32 %3 to i96
  %bf.shl15.i = shl nuw nsw i96 %bf.value14.i, 32
  %bf.set17.i = or i96 %bf.shl15.i, 928454955677058911875694592
  %4 = ptrtoint ptr %fchs to i32
  call void @__asan_storeN_noabort(i32 %4, i32 12)
  store i96 %bf.set17.i, ptr %fchs, align 1
  %5 = ptrtoint ptr %pyld to i32
  call void @__asan_storeN_noabort(i32 %5, i32 16)
  store i128 1329228073777556199625857903680815104, ptr %pyld, align 1
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 0, ptr %add.ptr, align 1
  %fc4_type1 = getelementptr inbounds %struct.fcgs_gidft_req_s, ptr %add.ptr, i32 0, i32 3
  %7 = ptrtoint ptr %fc4_type1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %fc4_type, ptr %fc4_type1, align 1
  ret i16 20
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_rpnid_build(ptr nocapture noundef writeonly %fchs, ptr nocapture noundef %pyld, i32 noundef %s_id, i32 noundef %port_id, i64 noundef %port_name) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.ct_hdr_s, ptr %pyld, i32 1
  %0 = getelementptr inbounds i8, ptr %fchs, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %rx_id.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 5
  %2 = ptrtoint ptr %rx_id.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -1, ptr %rx_id.i, align 1
  %3 = and i32 %s_id, 16777215
  %bf.value14.i = zext i32 %3 to i96
  %bf.shl15.i = shl nuw nsw i96 %bf.value14.i, 32
  %bf.set17.i = or i96 %bf.shl15.i, 928454955677058911875694592
  %4 = ptrtoint ptr %fchs to i32
  call void @__asan_storeN_noabort(i32 %4, i32 12)
  store i96 %bf.set17.i, ptr %fchs, align 1
  %5 = ptrtoint ptr %pyld to i32
  call void @__asan_storeN_noabort(i32 %5, i32 16)
  store i128 1329228073777556199671175374931230720, ptr %pyld, align 1
  %bf.value = and i32 %port_id, 16777215
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %bf.value, ptr %add.ptr, align 1
  %port_name1 = getelementptr inbounds %struct.fcgs_rpnid_req_s, ptr %add.ptr, i32 0, i32 1
  %7 = ptrtoint ptr %port_name1 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %port_name, ptr %port_name1, align 1
  ret i16 28
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @fc_rnnid_build(ptr nocapture noundef writeonly %fchs, ptr nocapture noundef %pyld, i32 noundef %s_id, i32 noundef %port_id, i64 noundef %node_name) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.ct_hdr_s, ptr %pyld, i32 1
  %0 = getelementptr inbounds i8, ptr %fchs, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %rx_id.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 5
  %2 = ptrtoint ptr %rx_id.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -1, ptr %rx_id.i, align 1
  %3 = and i32 %s_id, 16777215
  %bf.value14.i = zext i32 %3 to i96
  %bf.shl15.i = shl nuw nsw i96 %bf.value14.i, 32
  %bf.set17.i = or i96 %bf.shl15.i, 928454955677058911875694592
  %4 = ptrtoint ptr %fchs to i32
  call void @__asan_storeN_noabort(i32 %4, i32 12)
  store i96 %bf.set17.i, ptr %fchs, align 1
  %5 = ptrtoint ptr %pyld to i32
  call void @__asan_storeN_noabort(i32 %5, i32 16)
  store i128 1329228073777556199671456849907941376, ptr %pyld, align 1
  %bf.value = and i32 %port_id, 16777215
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %bf.value, ptr %add.ptr, align 1
  %node_name1 = getelementptr inbounds %struct.fcgs_rnnid_req_s, ptr %add.ptr, i32 0, i32 1
  %7 = ptrtoint ptr %node_name1 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %node_name, ptr %node_name1, align 1
  ret i16 28
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local zeroext i16 @fc_rcsid_build(ptr nocapture noundef writeonly %fchs, ptr nocapture noundef writeonly %pyld, i32 noundef %s_id, i32 noundef %port_id, i32 noundef %cos) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.ct_hdr_s, ptr %pyld, i32 1
  %0 = getelementptr inbounds i8, ptr %fchs, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %rx_id.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 5
  %2 = ptrtoint ptr %rx_id.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -1, ptr %rx_id.i, align 1
  %3 = and i32 %s_id, 16777215
  %bf.value14.i = zext i32 %3 to i96
  %bf.shl15.i = shl nuw nsw i96 %bf.value14.i, 32
  %bf.set17.i = or i96 %bf.shl15.i, 928454955677058911875694592
  %4 = ptrtoint ptr %fchs to i32
  call void @__asan_storeN_noabort(i32 %4, i32 12)
  store i96 %bf.set17.i, ptr %fchs, align 1
  %5 = ptrtoint ptr %pyld to i32
  call void @__asan_storeN_noabort(i32 %5, i32 16)
  store i128 1329228073777556199671738324884652032, ptr %pyld, align 1
  %bf.value = and i32 %port_id, 16777215
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %bf.value, ptr %add.ptr, align 1
  %cos1 = getelementptr inbounds %struct.fcgs_rcsid_req_s, ptr %add.ptr, i32 0, i32 1
  %7 = ptrtoint ptr %cos1 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %cos, ptr %cos1, align 1
  ret i16 24
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local zeroext i16 @fc_rptid_build(ptr nocapture noundef writeonly %fchs, ptr nocapture noundef writeonly %pyld, i32 noundef %s_id, i32 noundef %port_id, i8 noundef zeroext %port_type) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.ct_hdr_s, ptr %pyld, i32 1
  %0 = getelementptr inbounds i8, ptr %fchs, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %rx_id.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 5
  %2 = ptrtoint ptr %rx_id.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -1, ptr %rx_id.i, align 1
  %3 = and i32 %s_id, 16777215
  %bf.value14.i = zext i32 %3 to i96
  %bf.shl15.i = shl nuw nsw i96 %bf.value14.i, 32
  %bf.set17.i = or i96 %bf.shl15.i, 928454955677058911875694592
  %4 = ptrtoint ptr %fchs to i32
  call void @__asan_storeN_noabort(i32 %4, i32 12)
  store i96 %bf.set17.i, ptr %fchs, align 1
  %5 = ptrtoint ptr %pyld to i32
  call void @__asan_storeN_noabort(i32 %5, i32 16)
  store i128 1329228073777556199673427174744915968, ptr %pyld, align 1
  %6 = and i32 %port_id, 16777215
  %bf.value = zext i32 %6 to i64
  %bf.shl = shl nuw nsw i64 %bf.value, 32
  %7 = zext i8 %port_type to i64
  %bf.shl3 = shl nuw nsw i64 %7, 24
  %bf.set5 = or i64 %bf.shl, %bf.shl3
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %bf.set5, ptr %add.ptr, align 1
  ret i16 24
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local zeroext i16 @fc_ganxt_build(ptr nocapture noundef writeonly %fchs, ptr nocapture noundef writeonly %pyld, i32 noundef %s_id, i32 noundef %port_id) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.ct_hdr_s, ptr %pyld, i32 1
  %0 = getelementptr inbounds i8, ptr %fchs, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %rx_id.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 5
  %2 = ptrtoint ptr %rx_id.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -1, ptr %rx_id.i, align 1
  %3 = and i32 %s_id, 16777215
  %bf.value14.i = zext i32 %3 to i96
  %bf.shl15.i = shl nuw nsw i96 %bf.value14.i, 32
  %bf.set17.i = or i96 %bf.shl15.i, 928454955677058911875694592
  %4 = ptrtoint ptr %fchs to i32
  call void @__asan_storeN_noabort(i32 %4, i32 12)
  store i96 %bf.set17.i, ptr %fchs, align 1
  %5 = ptrtoint ptr %pyld to i32
  call void @__asan_storeN_noabort(i32 %5, i32 16)
  store i128 1329228073777556199594051231312510976, ptr %pyld, align 1
  %bf.value = and i32 %port_id, 16777215
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %bf.value, ptr %add.ptr, align 1
  ret i16 20
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local zeroext i16 @fc_fdmi_reqhdr_build(ptr nocapture noundef writeonly %fchs, ptr nocapture noundef writeonly %pyld, i32 noundef %s_id, i16 noundef zeroext %cmd_code) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %fchs, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %rx_id.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 5
  %2 = ptrtoint ptr %rx_id.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -1, ptr %rx_id.i, align 1
  %3 = and i32 %s_id, 16777215
  %bf.value14.i = zext i32 %3 to i96
  %bf.shl15.i = shl nuw nsw i96 %bf.value14.i, 32
  %bf.set17.i = or i96 %bf.shl15.i, 928454918783570764456591360
  %4 = ptrtoint ptr %fchs to i32
  call void @__asan_storeN_noabort(i32 %4, i32 12)
  store i96 %bf.set17.i, ptr %fchs, align 1
  %5 = zext i16 %cmd_code to i128
  %bf.shl.i = shl nuw nsw i128 %5, 48
  %bf.set9.i = or i128 %bf.shl.i, 1329228073175511141353908308270907392
  %6 = ptrtoint ptr %pyld to i32
  call void @__asan_storeN_noabort(i32 %6, i32 16)
  store i128 %bf.set9.i, ptr %pyld, align 1
  ret i16 16
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @fc_get_fc4type_bitmask(i8 noundef zeroext %fc4_type, ptr nocapture noundef writeonly %bit_mask) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i8 %fc4_type, 5
  %1 = and i8 %fc4_type, 31
  %rem = zext i8 %1 to i32
  %shl = shl nuw i32 1, %rem
  %idxprom = zext i8 %0 to i32
  %arrayidx = getelementptr i32, ptr %bit_mask, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shl, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local zeroext i16 @fc_gmal_req_build(ptr nocapture noundef writeonly %fchs, ptr nocapture noundef writeonly %pyld, i32 noundef %s_id, i64 noundef %wwn) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.ct_hdr_s, ptr %pyld, i32 1
  %0 = getelementptr inbounds i8, ptr %fchs, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %rx_id.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 5
  %2 = ptrtoint ptr %rx_id.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -1, ptr %rx_id.i, align 1
  %3 = and i32 %s_id, 16777215
  %bf.value14.i = zext i32 %3 to i96
  %bf.shl15.i = shl nuw nsw i96 %bf.value14.i, 32
  %bf.set17.i = or i96 %bf.shl15.i, 928454918783570764456591360
  %4 = ptrtoint ptr %fchs to i32
  call void @__asan_storeN_noabort(i32 %4, i32 12)
  store i96 %bf.set17.i, ptr %fchs, align 1
  %5 = ptrtoint ptr %pyld to i32
  call void @__asan_storeN_noabort(i32 %5, i32 16)
  store i128 1329228073157377254137938914175877120, ptr %pyld, align 1
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %wwn, ptr %add.ptr, align 1
  ret i16 24
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local zeroext i16 @fc_gfn_req_build(ptr nocapture noundef writeonly %fchs, ptr nocapture noundef writeonly %pyld, i32 noundef %s_id, i64 noundef %wwn) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.ct_hdr_s, ptr %pyld, i32 1
  %0 = getelementptr inbounds i8, ptr %fchs, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %rx_id.i = getelementptr inbounds %struct.fchs_s, ptr %fchs, i32 0, i32 5
  %2 = ptrtoint ptr %rx_id.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -1, ptr %rx_id.i, align 1
  %3 = and i32 %s_id, 16777215
  %bf.value14.i = zext i32 %3 to i96
  %bf.shl15.i = shl nuw nsw i96 %bf.value14.i, 32
  %bf.set17.i = or i96 %bf.shl15.i, 928454918783570764456591360
  %4 = ptrtoint ptr %fchs to i32
  call void @__asan_storeN_noabort(i32 %4, i32 12)
  store i96 %bf.set17.i, ptr %fchs, align 1
  %5 = ptrtoint ptr %pyld to i32
  call void @__asan_storeN_noabort(i32 %5, i32 16)
  store i128 1329228073157377254137375964222455808, ptr %pyld, align 1
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %wwn, ptr %add.ptr, align 1
  ret i16 24
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @fc_els_req_tmpl, !1, !"fc_els_req_tmpl", i1 false, i1 false}
!1 = !{!"../drivers/scsi/bfa/bfa_fcbuild.c", i32 24, i32 22}
!2 = !{ptr @fc_els_rsp_tmpl, !3, !"fc_els_rsp_tmpl", i1 false, i1 false}
!3 = !{!"../drivers/scsi/bfa/bfa_fcbuild.c", i32 25, i32 22}
!4 = !{ptr @fc_bls_req_tmpl, !5, !"fc_bls_req_tmpl", i1 false, i1 false}
!5 = !{!"../drivers/scsi/bfa/bfa_fcbuild.c", i32 26, i32 22}
!6 = !{ptr @fc_bls_rsp_tmpl, !7, !"fc_bls_rsp_tmpl", i1 false, i1 false}
!7 = !{!"../drivers/scsi/bfa/bfa_fcbuild.c", i32 27, i32 22}
!8 = !{ptr @ba_acc_tmpl, !9, !"ba_acc_tmpl", i1 false, i1 false}
!9 = !{!"../drivers/scsi/bfa/bfa_fcbuild.c", i32 28, i32 27}
!10 = !{ptr @plogi_tmpl, !11, !"plogi_tmpl", i1 false, i1 false}
!11 = !{!"../drivers/scsi/bfa/bfa_fcbuild.c", i32 29, i32 25}
!12 = !{ptr @prli_tmpl, !13, !"prli_tmpl", i1 false, i1 false}
!13 = !{!"../drivers/scsi/bfa/bfa_fcbuild.c", i32 30, i32 25}
!14 = !{ptr @rrq_tmpl, !15, !"rrq_tmpl", i1 false, i1 false}
!15 = !{!"../drivers/scsi/bfa/bfa_fcbuild.c", i32 31, i32 24}
!16 = !{ptr @fcp_fchs_tmpl, !17, !"fcp_fchs_tmpl", i1 false, i1 false}
!17 = !{!"../drivers/scsi/bfa/bfa_fcbuild.c", i32 32, i32 22}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
