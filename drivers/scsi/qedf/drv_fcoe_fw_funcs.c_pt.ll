; ModuleID = '/llk/IR_all_yes/drivers/scsi/qedf/drv_fcoe_fw_funcs.c_pt.bc'
source_filename = "../drivers/scsi/qedf/drv_fcoe_fw_funcs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fcoe_task_context = type { %struct.ystorm_fcoe_task_st_ctx, [2 x %struct.regpair], %struct.tdif_task_context, %struct.ystorm_fcoe_task_ag_ctx, %struct.tstorm_fcoe_task_ag_ctx, %struct.timers_context, %struct.tstorm_fcoe_task_st_ctx, [2 x %struct.regpair], %struct.mstorm_fcoe_task_ag_ctx, %struct.mstorm_fcoe_task_st_ctx, %struct.ustorm_fcoe_task_ag_ctx, %struct.rdif_task_context }
%struct.ystorm_fcoe_task_st_ctx = type { i8, i8, i8, i8, i32, %union.protection_info_union_ctx, i32, %struct.scsi_sgl_params, [12 x i8], %union.fcoe_tx_info_union_ctx, %union.fcoe_dix_desc_ctx, %struct.scsi_cached_sges, i16, i16, i32, [8 x i8] }
%union.protection_info_union_ctx = type { i32 }
%struct.scsi_sgl_params = type { %struct.regpair, i32, i32, i16, i8, i8 }
%struct.regpair = type { i32, i32 }
%union.fcoe_tx_info_union_ctx = type { %struct.fcoe_fcp_cmd_payload }
%struct.fcoe_fcp_cmd_payload = type { [8 x i32] }
%union.fcoe_dix_desc_ctx = type { %struct.fcoe_slow_sgl_ctx }
%struct.fcoe_slow_sgl_ctx = type { %struct.regpair, i16, i16, i16, i16 }
%struct.scsi_cached_sges = type { [4 x %struct.scsi_sge] }
%struct.scsi_sge = type { %struct.regpair, i32, i32 }
%struct.tdif_task_context = type { i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i16, i16, i32, [8 x i8], [8 x i8] }
%struct.ystorm_fcoe_task_ag_ctx = type { i8, i8, i16, i8, i8, i8, i8, i32, i8, i8, i16, i16, i16, i16, i16, i32, i32 }
%struct.tstorm_fcoe_task_ag_ctx = type { i8, i8, i16, i8, i8, i8, i8, i8, i8, i16, i32, i8, i8, i16, i16, i16, i32, i32 }
%struct.timers_context = type { i32, i32, i32, i32 }
%struct.tstorm_fcoe_task_st_ctx = type { %struct.fcoe_tstorm_fcoe_task_st_ctx_read_write, %struct.fcoe_tstorm_fcoe_task_st_ctx_read_only }
%struct.fcoe_tstorm_fcoe_task_st_ctx_read_write = type { %union.fcoe_cleanup_addr_exp_ro_union, i16, i16, i8, i8, i16, %struct.fcoe_abts_pkt, i32, i16, i16 }
%union.fcoe_cleanup_addr_exp_ro_union = type { %struct.regpair }
%struct.fcoe_abts_pkt = type { i32, i16, i8, i8 }
%struct.fcoe_tstorm_fcoe_task_st_ctx_read_only = type { i8, i8, i8, i8, i32, i32, i32 }
%struct.mstorm_fcoe_task_ag_ctx = type { i8, i8, i16, i8, i8, i8, i8, i32, i8, i8, i16, i16, i16, i16, i16, i32, i32 }
%struct.mstorm_fcoe_task_st_ctx = type { %struct.regpair, [2 x i32], %struct.scsi_sgl_params, i32, i32, i16, i16, %struct.scsi_cached_sges }
%struct.ustorm_fcoe_task_ag_ctx = type { i8, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32 }
%struct.rdif_task_context = type { i32, i16, i16, i8, [7 x i8], i16, i16, i32, i16, i16, i32 }
%struct.scsi_sgl_task_params = type { ptr, %struct.regpair, i32, i16, i8 }
%struct.fcoe_task_params = type { ptr, ptr, i32, i32, i32, i32, i16, i8, i8 }
%struct.fcoe_wqe = type { i16, i16, %union.fcoe_additional_info_union }
%union.fcoe_additional_info_union = type { i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_initiator_rw_fcoe_task(ptr nocapture noundef readonly %task_params, ptr noundef %sgl_task_params, [2 x i32] %sense_data_buffer_phys_addr.coerce, i32 noundef %task_retry_id, ptr nocapture noundef readonly %fcp_cmd_payload) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sense_data_buffer_phys_addr.coerce.fca.0.extract = extractvalue [2 x i32] %sense_data_buffer_phys_addr.coerce, 0
  %sense_data_buffer_phys_addr.coerce.fca.1.extract = extractvalue [2 x i32] %sense_data_buffer_phys_addr.coerce, 1
  %0 = ptrtoint ptr %task_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task_params, align 4
  %ystorm_ag_context = getelementptr inbounds %struct.fcoe_task_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ystorm_ag_context to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ystorm_ag_context, align 4
  %4 = call ptr @memset(ptr %1, i32 0, i32 592)
  store i8 %3, ptr %ystorm_ag_context, align 4
  %num_sges = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %sgl_task_params, i32 0, i32 3
  %5 = ptrtoint ptr %num_sges to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_sges, align 4
  %small_mid_sge = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %sgl_task_params, i32 0, i32 4
  %7 = ptrtoint ptr %small_mid_sge to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %small_mid_sge, align 2, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool = icmp ne i8 %8, 0
  %call = tail call zeroext i1 @scsi_is_slow_sgl(i16 noundef zeroext %6, i1 noundef zeroext %tobool) #4
  %task_type = getelementptr inbounds %struct.fcoe_task_params, ptr %task_params, i32 0, i32 2
  %9 = ptrtoint ptr %task_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %task_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  %tx_io_size = getelementptr inbounds %struct.fcoe_task_params, ptr %task_params, i32 0, i32 3
  %rx_io_size = getelementptr inbounds %struct.fcoe_task_params, ptr %task_params, i32 0, i32 4
  %cond.in = select i1 %cmp, ptr %tx_io_size, ptr %rx_io_size
  %11 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %cond = load i32, ptr %cond.in, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %cond)
  %data_2_trns_rem = getelementptr inbounds %struct.ystorm_fcoe_task_st_ctx, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %data_2_trns_rem to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %data_2_trns_rem, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %task_retry_id)
  %task_rety_identifier = getelementptr inbounds %struct.ystorm_fcoe_task_st_ctx, ptr %1, i32 0, i32 14
  %15 = ptrtoint ptr %task_rety_identifier to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %task_rety_identifier, align 4
  %16 = ptrtoint ptr %task_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %task_type, align 4
  %conv = trunc i32 %17 to i8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %1, align 4
  %tx_info_union = getelementptr inbounds %struct.ystorm_fcoe_task_st_ctx, ptr %1, i32 0, i32 9
  %19 = call ptr @memcpy(ptr %tx_info_union, ptr %fcp_cmd_payload, i32 32)
  %is_tape_device = getelementptr inbounds %struct.fcoe_task_params, ptr %task_params, i32 0, i32 8
  %20 = ptrtoint ptr %is_tape_device to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_tape_device, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp6 = icmp eq i8 %21, 1
  %conv9 = zext i1 %cmp6 to i8
  %read_only = getelementptr inbounds %struct.fcoe_task_context, ptr %1, i32 0, i32 6, i32 1
  %dev_type = getelementptr inbounds %struct.fcoe_task_context, ptr %1, i32 0, i32 6, i32 1, i32 1
  %22 = ptrtoint ptr %dev_type to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv9, ptr %dev_type, align 1
  %conn_cid = getelementptr inbounds %struct.fcoe_task_params, ptr %task_params, i32 0, i32 5
  %23 = ptrtoint ptr %conn_cid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %conn_cid, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %cid = getelementptr inbounds %struct.fcoe_task_context, ptr %1, i32 0, i32 6, i32 1, i32 4
  %26 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %cid, align 4
  %cq_rss_number = getelementptr inbounds %struct.fcoe_task_params, ptr %task_params, i32 0, i32 7
  %glbl_q_num = getelementptr inbounds %struct.fcoe_task_context, ptr %1, i32 0, i32 6, i32 1, i32 3
  %27 = ptrtoint ptr %glbl_q_num to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %glbl_q_num, align 1
  %fcp_cmd_trns_size = getelementptr inbounds %struct.fcoe_task_context, ptr %1, i32 0, i32 6, i32 1, i32 5
  %28 = ptrtoint ptr %fcp_cmd_trns_size to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %12, ptr %fcp_cmd_trns_size, align 4
  %29 = ptrtoint ptr %task_type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %task_type, align 4
  %conv16 = trunc i32 %30 to i8
  %31 = ptrtoint ptr %read_only to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv16, ptr %read_only, align 4
  %flags = getelementptr inbounds %struct.fcoe_task_context, ptr %1, i32 0, i32 6, i32 0, i32 1
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flags, align 4
  %34 = or i16 %33, 2
  store i16 %34, ptr %flags, align 4
  %rx_id = getelementptr inbounds %struct.fcoe_task_context, ptr %1, i32 0, i32 6, i32 0, i32 5
  %35 = ptrtoint ptr %rx_id to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 -1, ptr %rx_id, align 2
  %36 = ptrtoint ptr %cq_rss_number to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %cq_rss_number, align 2
  %conv27 = zext i8 %37 to i32
  %38 = shl nuw i32 %conv27, 24
  %global_cq_num = getelementptr inbounds %struct.fcoe_task_context, ptr %1, i32 0, i32 10, i32 9
  %39 = ptrtoint ptr %global_cq_num to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %global_cq_num, align 4
  %mstorm_st_context = getelementptr inbounds %struct.fcoe_task_context, ptr %1, i32 0, i32 9
  %40 = tail call i32 @llvm.bswap.i32(i32 %sense_data_buffer_phys_addr.coerce.fca.1.extract)
  %hi28 = getelementptr inbounds %struct.fcoe_task_context, ptr %1, i32 0, i32 9, i32 0, i32 1
  %41 = ptrtoint ptr %hi28 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %hi28, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %sense_data_buffer_phys_addr.coerce.fca.0.extract)
  %43 = ptrtoint ptr %mstorm_st_context to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %mstorm_st_context, align 4
  %44 = ptrtoint ptr %task_type to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %task_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp32 = icmp eq i32 %45, 0
  br i1 %cmp32, label %if.then, label %do.body66

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %expect_first_xfer = getelementptr inbounds %struct.ystorm_fcoe_task_st_ctx, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %expect_first_xfer to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %expect_first_xfer, align 1
  %sgl_mode = getelementptr inbounds %struct.ystorm_fcoe_task_st_ctx, ptr %1, i32 0, i32 1
  %47 = ptrtoint ptr %sgl_mode to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %sgl_mode, align 1
  %49 = and i8 %48, -2
  %not.call138 = xor i1 %call, true
  %50 = zext i1 %not.call138 to i8
  %conv45 = or i8 %49, %50
  store i8 %conv45, ptr %sgl_mode, align 1
  %sgl_params = getelementptr inbounds %struct.ystorm_fcoe_task_st_ctx, ptr %1, i32 0, i32 7
  %data_desc = getelementptr inbounds %struct.ystorm_fcoe_task_st_ctx, ptr %1, i32 0, i32 11
  tail call void @init_scsi_sgl_context(ptr noundef %sgl_params, ptr noundef %data_desc, ptr noundef %sgl_task_params) #4
  %flags49 = getelementptr inbounds %struct.fcoe_task_context, ptr %1, i32 0, i32 9, i32 6
  %51 = ptrtoint ptr %flags49 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %flags49, align 2
  %53 = and i16 %52, -8193
  %shl57 = select i1 %call, i16 0, i16 8192
  %or60 = or i16 %53, %shl57
  store i16 %or60, ptr %flags49, align 2
  %54 = ptrtoint ptr %num_sges to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %num_sges, align 4
  %56 = tail call i16 @llvm.bswap.i16(i16 %55)
  %sgl_num_sges = getelementptr inbounds %struct.fcoe_task_context, ptr %1, i32 0, i32 9, i32 2, i32 3
  %57 = ptrtoint ptr %sgl_num_sges to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %sgl_num_sges, align 4
  br label %if.end

do.body66:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %58 = and i16 %34, -2
  %not.call = xor i1 %call, true
  %59 = zext i1 %not.call to i16
  %or80 = or i16 %58, %59
  %60 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %or80, ptr %flags, align 4
  %data_2_trns_rem84 = getelementptr inbounds %struct.fcoe_task_context, ptr %1, i32 0, i32 9, i32 3
  %61 = ptrtoint ptr %data_2_trns_rem84 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %12, ptr %data_2_trns_rem84, align 4
  %sgl_params85 = getelementptr inbounds %struct.fcoe_task_context, ptr %1, i32 0, i32 9, i32 2
  %data_desc86 = getelementptr inbounds %struct.fcoe_task_context, ptr %1, i32 0, i32 9, i32 7
  tail call void @init_scsi_sgl_context(ptr noundef %sgl_params85, ptr noundef %data_desc86, ptr noundef %sgl_task_params) #4
  br label %if.end

if.end:                                           ; preds = %do.body66, %if.then
  %sqe.i = getelementptr inbounds %struct.fcoe_task_params, ptr %task_params, i32 0, i32 1
  %62 = ptrtoint ptr %sqe.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sqe.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 8)
  store i64 0, ptr %63, align 4
  %65 = load ptr, ptr %sqe.i, align 4
  %flags.i = getelementptr inbounds %struct.fcoe_wqe, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %flags.i, align 2
  %68 = and i16 %67, -16
  store i16 %68, ptr %flags.i, align 2
  %69 = load ptr, ptr %sqe.i, align 4
  %itid.i = getelementptr inbounds %struct.fcoe_task_params, ptr %task_params, i32 0, i32 6
  %70 = ptrtoint ptr %itid.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %itid.i, align 4
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %69, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @scsi_is_slow_sgl(i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_scsi_sgl_context(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_initiator_midpath_unsolicited_fcoe_task(ptr nocapture noundef readonly %task_params, ptr nocapture noundef readonly %mid_path_fc_header, ptr noundef %tx_sgl_task_params, ptr noundef %rx_sgl_task_params, i8 noundef zeroext %fw_to_place_fc_header) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %task_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task_params, align 4
  %ystorm_ag_context = getelementptr inbounds %struct.fcoe_task_context, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ystorm_ag_context to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ystorm_ag_context, align 4
  %4 = call ptr @memset(ptr %1, i32 0, i32 592)
  store i8 %3, ptr %ystorm_ag_context, align 4
  %sgl_params = getelementptr inbounds %struct.ystorm_fcoe_task_st_ctx, ptr %1, i32 0, i32 7
  %data_desc = getelementptr inbounds %struct.ystorm_fcoe_task_st_ctx, ptr %1, i32 0, i32 11
  tail call void @init_scsi_sgl_context(ptr noundef %sgl_params, ptr noundef %data_desc, ptr noundef %tx_sgl_task_params) #4
  %sgl_mode = getelementptr inbounds %struct.ystorm_fcoe_task_st_ctx, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %sgl_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sgl_mode, align 1
  %7 = or i8 %6, 1
  store i8 %7, ptr %sgl_mode, align 1
  %tx_io_size = getelementptr inbounds %struct.fcoe_task_params, ptr %task_params, i32 0, i32 3
  %8 = ptrtoint ptr %tx_io_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_io_size, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %data_2_trns_rem = getelementptr inbounds %struct.ystorm_fcoe_task_st_ctx, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %data_2_trns_rem to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %data_2_trns_rem, align 4
  %task_type = getelementptr inbounds %struct.fcoe_task_params, ptr %task_params, i32 0, i32 2
  %12 = ptrtoint ptr %task_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %task_type, align 4
  %conv7 = trunc i32 %13 to i8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv7, ptr %1, align 4
  %mid_path = getelementptr inbounds %struct.ystorm_fcoe_task_st_ctx, ptr %1, i32 0, i32 9, i32 0, i32 0, i32 5
  %15 = call ptr @memcpy(ptr %mid_path, ptr %mid_path_fc_header, i32 12)
  %sgl_params9 = getelementptr inbounds %struct.fcoe_task_context, ptr %1, i32 0, i32 9, i32 2
  %data_desc10 = getelementptr inbounds %struct.fcoe_task_context, ptr %1, i32 0, i32 9, i32 7
  tail call void @init_scsi_sgl_context(ptr noundef %sgl_params9, ptr noundef %data_desc10, ptr noundef %rx_sgl_task_params) #4
  %flags = getelementptr inbounds %struct.fcoe_task_context, ptr %1, i32 0, i32 9, i32 6
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags, align 2
  %18 = and i16 %17, -129
  %conv15 = zext i8 %fw_to_place_fc_header to i16
  %shl = shl nuw nsw i16 %conv15, 7
  %or18 = or i16 %18, %shl
  store i16 %or18, ptr %flags, align 2
  %rx_io_size = getelementptr inbounds %struct.fcoe_task_params, ptr %task_params, i32 0, i32 4
  %19 = ptrtoint ptr %rx_io_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_io_size, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %data_2_trns_rem22 = getelementptr inbounds %struct.fcoe_task_context, ptr %1, i32 0, i32 9, i32 3
  %22 = ptrtoint ptr %data_2_trns_rem22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %data_2_trns_rem22, align 4
  %conn_cid = getelementptr inbounds %struct.fcoe_task_params, ptr %task_params, i32 0, i32 5
  %23 = ptrtoint ptr %conn_cid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %conn_cid, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %read_only = getelementptr inbounds %struct.fcoe_task_context, ptr %1, i32 0, i32 6, i32 1
  %cid = getelementptr inbounds %struct.fcoe_task_context, ptr %1, i32 0, i32 6, i32 1, i32 4
  %26 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %cid, align 4
  %cq_rss_number = getelementptr inbounds %struct.fcoe_task_params, ptr %task_params, i32 0, i32 7
  %glbl_q_num = getelementptr inbounds %struct.fcoe_task_context, ptr %1, i32 0, i32 6, i32 1, i32 3
  %27 = ptrtoint ptr %glbl_q_num to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %glbl_q_num, align 1
  %28 = ptrtoint ptr %task_type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %task_type, align 4
  %conv27 = trunc i32 %29 to i8
  %30 = ptrtoint ptr %read_only to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv27, ptr %read_only, align 4
  %flags31 = getelementptr inbounds %struct.fcoe_task_context, ptr %1, i32 0, i32 6, i32 0, i32 1
  %31 = ptrtoint ptr %flags31 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %flags31, align 4
  %33 = or i16 %32, 2
  store i16 %33, ptr %flags31, align 4
  %rx_id = getelementptr inbounds %struct.fcoe_task_context, ptr %1, i32 0, i32 6, i32 0, i32 5
  %34 = ptrtoint ptr %rx_id to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -1, ptr %rx_id, align 2
  %35 = ptrtoint ptr %cq_rss_number to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %cq_rss_number, align 2
  %conv44 = zext i8 %36 to i32
  %37 = shl nuw i32 %conv44, 24
  %global_cq_num = getelementptr inbounds %struct.fcoe_task_context, ptr %1, i32 0, i32 10, i32 9
  %38 = ptrtoint ptr %global_cq_num to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %global_cq_num, align 4
  %sqe.i = getelementptr inbounds %struct.fcoe_task_params, ptr %task_params, i32 0, i32 1
  %39 = ptrtoint ptr %sqe.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sqe.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 0, ptr %40, align 4
  %42 = load ptr, ptr %sqe.i, align 4
  %flags.i = getelementptr inbounds %struct.fcoe_wqe, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %flags.i, align 2
  %45 = and i16 %44, -16
  store i16 %45, ptr %flags.i, align 2
  %46 = load ptr, ptr %sqe.i, align 4
  %flags5.i = getelementptr inbounds %struct.fcoe_wqe, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %flags5.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %flags5.i, align 2
  %or.i = or i16 %48, 1
  store i16 %or.i, ptr %flags5.i, align 2
  %itid.i = getelementptr inbounds %struct.fcoe_task_params, ptr %task_params, i32 0, i32 6
  %49 = ptrtoint ptr %itid.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %itid.i, align 4
  %51 = load ptr, ptr %sqe.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %50, ptr %51, align 4
  %total_buffer_size = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_sgl_task_params, i32 0, i32 2
  %53 = ptrtoint ptr %total_buffer_size to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %total_buffer_size, align 4
  %55 = load ptr, ptr %sqe.i, align 4
  %additional_info_union = getelementptr inbounds %struct.fcoe_wqe, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %additional_info_union to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %54, ptr %additional_info_union, align 4
  %57 = load ptr, ptr %sqe.i, align 4
  %flags47 = getelementptr inbounds %struct.fcoe_wqe, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %flags47 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %flags47, align 2
  %60 = and i16 %59, -3841
  store i16 %60, ptr %flags47, align 2
  %num_sges = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_sgl_task_params, i32 0, i32 3
  %61 = ptrtoint ptr %num_sges to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %num_sges, align 4
  %shl52 = shl i16 %62, 8
  %63 = load ptr, ptr %sqe.i, align 4
  %flags54 = getelementptr inbounds %struct.fcoe_wqe, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %flags54 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %flags54, align 2
  %or56 = or i16 %65, %shl52
  store i16 %or56, ptr %flags54, align 2
  %66 = load ptr, ptr %sqe.i, align 4
  %flags62 = getelementptr inbounds %struct.fcoe_wqe, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %flags62 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %flags62, align 2
  %69 = and i16 %68, -17
  store i16 %69, ptr %flags62, align 2
  %70 = load ptr, ptr %sqe.i, align 4
  %flags67 = getelementptr inbounds %struct.fcoe_wqe, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %flags67 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %flags67, align 2
  %73 = or i16 %72, 16
  store i16 %73, ptr %flags67, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @init_initiator_abort_fcoe_task(ptr nocapture noundef readonly %task_params) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sqe.i = getelementptr inbounds %struct.fcoe_task_params, ptr %task_params, i32 0, i32 1
  %0 = ptrtoint ptr %sqe.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sqe.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %1, align 4
  %3 = load ptr, ptr %sqe.i, align 4
  %flags.i = getelementptr inbounds %struct.fcoe_wqe, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags.i, align 2
  %6 = and i16 %5, -16
  store i16 %6, ptr %flags.i, align 2
  %7 = load ptr, ptr %sqe.i, align 4
  %flags5.i = getelementptr inbounds %struct.fcoe_wqe, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %flags5.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags5.i, align 2
  %or.i = or i16 %9, 2
  store i16 %or.i, ptr %flags5.i, align 2
  %itid.i = getelementptr inbounds %struct.fcoe_task_params, ptr %task_params, i32 0, i32 6
  %10 = ptrtoint ptr %itid.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %itid.i, align 4
  %12 = load ptr, ptr %sqe.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %11, ptr %12, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @init_initiator_cleanup_fcoe_task(ptr nocapture noundef readonly %task_params) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sqe.i = getelementptr inbounds %struct.fcoe_task_params, ptr %task_params, i32 0, i32 1
  %0 = ptrtoint ptr %sqe.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sqe.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %1, align 4
  %3 = load ptr, ptr %sqe.i, align 4
  %flags.i = getelementptr inbounds %struct.fcoe_wqe, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags.i, align 2
  %6 = and i16 %5, -16
  store i16 %6, ptr %flags.i, align 2
  %7 = load ptr, ptr %sqe.i, align 4
  %flags5.i = getelementptr inbounds %struct.fcoe_wqe, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %flags5.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags5.i, align 2
  %or.i = or i16 %9, 3
  store i16 %or.i, ptr %flags5.i, align 2
  %itid.i = getelementptr inbounds %struct.fcoe_task_params, ptr %task_params, i32 0, i32 6
  %10 = ptrtoint ptr %itid.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %itid.i, align 4
  %12 = load ptr, ptr %sqe.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %11, ptr %12, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @init_initiator_sequence_recovery_fcoe_task(ptr nocapture noundef readonly %task_params, i32 noundef %desired_offset) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sqe.i = getelementptr inbounds %struct.fcoe_task_params, ptr %task_params, i32 0, i32 1
  %0 = ptrtoint ptr %sqe.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sqe.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %1, align 4
  %3 = load ptr, ptr %sqe.i, align 4
  %flags.i = getelementptr inbounds %struct.fcoe_wqe, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags.i, align 2
  %6 = and i16 %5, -16
  store i16 %6, ptr %flags.i, align 2
  %7 = load ptr, ptr %sqe.i, align 4
  %flags5.i = getelementptr inbounds %struct.fcoe_wqe, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %flags5.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags5.i, align 2
  %or.i = or i16 %9, 4
  store i16 %or.i, ptr %flags5.i, align 2
  %itid.i = getelementptr inbounds %struct.fcoe_task_params, ptr %task_params, i32 0, i32 6
  %10 = ptrtoint ptr %itid.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %itid.i, align 4
  %12 = load ptr, ptr %sqe.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %11, ptr %12, align 4
  %14 = load ptr, ptr %sqe.i, align 4
  %additional_info_union = getelementptr inbounds %struct.fcoe_wqe, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %additional_info_union to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %desired_offset, ptr %additional_info_union, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{i8 0, i8 2}
