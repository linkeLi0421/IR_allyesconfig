; ModuleID = '/llk/IR_all_yes/drivers/scsi/qedi/qedi_fw_api.c_pt.bc'
source_filename = "../drivers/scsi/qedi/qedi_fw_api.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iscsi_cmd_hdr = type { i16, i8, i8, i32, %struct.regpair, i32, i32, i32, i32, [4 x i32] }
%struct.regpair = type { i32, i32 }
%struct.iscsi_task_params = type { ptr, ptr, i32, i32, i16, i16, i8 }
%struct.scsi_dif_task_params = type { i32, i8, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.scsi_sgl_task_params = type { ptr, %struct.regpair, i32, i16, i8 }
%struct.iscsi_task_context = type { %struct.ystorm_iscsi_task_st_ctx, %struct.ystorm_iscsi_task_ag_ctx, [2 x %struct.regpair], %struct.tdif_task_context, %struct.mstorm_iscsi_task_ag_ctx, [2 x %struct.regpair], %struct.ustorm_iscsi_task_ag_ctx, %struct.mstorm_iscsi_task_st_ctx, %struct.ustorm_iscsi_task_st_ctx, %struct.rdif_task_context }
%struct.ystorm_iscsi_task_st_ctx = type { %struct.ystorm_iscsi_task_state, %struct.ystorm_iscsi_task_rxmit_opt, %union.iscsi_task_hdr }
%struct.ystorm_iscsi_task_state = type { %struct.scsi_cached_sges, %struct.scsi_sgl_params, i32, i32, %union.iscsi_seq_num, %struct.iscsi_dif_flags, i8 }
%struct.scsi_cached_sges = type { [4 x %struct.scsi_sge] }
%struct.scsi_sge = type { %struct.regpair, i32, i32 }
%struct.scsi_sgl_params = type { %struct.regpair, i32, i32, i16, i8, i8 }
%union.iscsi_seq_num = type { i16 }
%struct.iscsi_dif_flags = type { i8 }
%struct.ystorm_iscsi_task_rxmit_opt = type { i32, i32, i32, i8, i8, i16 }
%union.iscsi_task_hdr = type { %struct.iscsi_common_hdr }
%struct.iscsi_common_hdr = type { i8, i8, i8, i8, i32, %struct.regpair, i32, i32, i32, i32, i32, [3 x i32] }
%struct.ystorm_iscsi_task_ag_ctx = type { i8, i8, i16, i8, i8, i8, i8, i32, i8, i8, i16 }
%struct.tdif_task_context = type { i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i16, i16, i32, [8 x i8], [8 x i8] }
%struct.mstorm_iscsi_task_ag_ctx = type { i8, i8, i16, i8, i8, i8, i8, i32, i8, i8, i16 }
%struct.ustorm_iscsi_task_ag_ctx = type { i8, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, i32 }
%struct.mstorm_iscsi_task_st_ctx = type { %struct.scsi_cached_sges, %struct.scsi_sgl_params, i32, i32, i8, %struct.iscsi_dif_flags, i16, %struct.regpair, i32, i32 }
%struct.ustorm_iscsi_task_st_ctx = type { i32, i32, i32, %struct.regpair, %struct.iscsi_reg1, i8, %struct.iscsi_dif_flags, i16, %struct.tqe_opaque, i32, i32, i32, i8, i8, i8, i8 }
%struct.iscsi_reg1 = type { i32 }
%struct.tqe_opaque = type { [2 x i16] }
%struct.rdif_task_context = type { i32, i16, i16, i8, [7 x i8], i16, i16, i32, i16, i16, i32 }
%struct.scsi_initiator_cmd_params = type { %struct.scsi_sge, %struct.regpair }
%struct.iscsi_conn_params = type { i32, i32, i32, i8, i8 }
%struct.iscsi_wqe = type { i16, i8, %struct.iscsi_dif_flags, i32 }

@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.3 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 9]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 6, i64 32, i64 36]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_initiator_rw_iscsi_task(ptr noundef %task_params, ptr nocapture noundef readonly %conn_params, ptr nocapture noundef readonly %cmd_params, ptr nocapture noundef readonly %cmd_header, ptr nocapture noundef readonly %tx_sgl_params, ptr nocapture noundef readonly %rx_sgl_params, ptr noundef %dif_task_params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %flags_attr = getelementptr inbounds %struct.iscsi_cmd_hdr, ptr %cmd_header, i32 0, i32 1
  %0 = ptrtoint ptr %flags_attr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags_attr, align 2
  %conv = zext i8 %1 to i32
  %2 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @init_rw_iscsi_task(ptr noundef %task_params, i32 noundef 0, ptr noundef %conn_params, ptr noundef %cmd_header, ptr noundef %tx_sgl_params, ptr noundef %cmd_params, ptr noundef %dif_task_params)
  br label %return

if.else:                                          ; preds = %entry
  %3 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.else.if.then9_crit_edge

if.else.if.then9_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.else
  %rx_io_size = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 3
  %4 = ptrtoint ptr %rx_io_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

land.lhs.true:                                    ; preds = %lor.lhs.false
  %tx_io_size = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 2
  %6 = ptrtoint ptr %tx_io_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7 = icmp eq i32 %7, 0
  br i1 %cmp7, label %land.lhs.true.if.then9_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

land.lhs.true.if.then9_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then9

if.then9:                                         ; preds = %land.lhs.true.if.then9_crit_edge, %if.else.if.then9_crit_edge
  tail call fastcc void @init_rw_iscsi_task(ptr noundef %task_params, i32 noundef 1, ptr noundef %conn_params, ptr noundef %cmd_header, ptr noundef %rx_sgl_params, ptr noundef %cmd_params, ptr noundef %dif_task_params)
  br label %return

return:                                           ; preds = %if.then9, %land.lhs.true.return_crit_edge, %lor.lhs.false.return_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then9 ], [ -1, %land.lhs.true.return_crit_edge ], [ -1, %lor.lhs.false.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_rw_iscsi_task(ptr noundef %task_params, i32 noundef %task_type, ptr nocapture noundef readonly %conn_params, ptr nocapture noundef readonly %pdu_header, ptr nocapture noundef readonly %sgl_task_params, ptr nocapture noundef readonly %cmd_params, ptr noundef %dif_task_params) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %task_type)
  %cmp.i = icmp eq i32 %task_type, 0
  %tx_io_size.i = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 2
  %rx_io_size.i = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 3
  %io_size.0.in.i = select i1 %cmp.i, ptr %tx_io_size.i, ptr %rx_io_size.i
  %0 = ptrtoint ptr %io_size.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %io_size.0.i = load i32, ptr %io_size.0.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %io_size.0.i)
  %tobool.not.i = icmp eq i32 %io_size.0.i, 0
  br i1 %tobool.not.i, label %entry.calc_rw_task_size.exit_crit_edge, label %if.end3.i

entry.calc_rw_task_size.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %calc_rw_task_size.exit

if.end3.i:                                        ; preds = %entry
  %tobool4.not.i = icmp eq ptr %dif_task_params, null
  br i1 %tobool4.not.i, label %if.end3.i.calc_rw_task_size.exit_crit_edge, label %if.end6.i

if.end3.i.calc_rw_task_size.exit_crit_edge:       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %calc_rw_task_size.exit

if.end6.i:                                        ; preds = %if.end3.i
  %dif_on_network.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 5
  %1 = ptrtoint ptr %dif_on_network.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dif_on_network.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool7.not.i = icmp eq i8 %2, 0
  br i1 %tobool7.not.i, label %if.end6.i.calc_rw_task_size.exit_crit_edge, label %cond.false.i

if.end6.i.calc_rw_task_size.exit_crit_edge:       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %calc_rw_task_size.exit

cond.false.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  %total_buffer_size.i = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %sgl_task_params, i32 0, i32 2
  %3 = ptrtoint ptr %total_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %total_buffer_size.i, align 4
  br label %calc_rw_task_size.exit

calc_rw_task_size.exit:                           ; preds = %cond.false.i, %if.end6.i.calc_rw_task_size.exit_crit_edge, %if.end3.i.calc_rw_task_size.exit_crit_edge, %entry.calc_rw_task_size.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.calc_rw_task_size.exit_crit_edge ], [ %io_size.0.i, %if.end3.i.calc_rw_task_size.exit_crit_edge ], [ %4, %cond.false.i ], [ %io_size.0.i, %if.end6.i.calc_rw_task_size.exit_crit_edge ]
  %5 = ptrtoint ptr %task_params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task_params, align 4
  %mstorm_ag_context.i = getelementptr inbounds %struct.iscsi_task_context, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %mstorm_ag_context.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mstorm_ag_context.i, align 4
  %9 = call ptr @memset(ptr %6, i32 0, i32 512)
  store i8 %8, ptr %mstorm_ag_context.i, align 4
  %pdu_hdr.i = getelementptr inbounds %struct.ystorm_iscsi_task_st_ctx, ptr %6, i32 0, i32 2
  %10 = ptrtoint ptr %pdu_header to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pdu_header, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #3
  %13 = ptrtoint ptr %pdu_hdr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %pdu_hdr.i, align 4
  %arrayidx.1.i = getelementptr [12 x i32], ptr %pdu_header, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #3
  %arrayidx7.1.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %6, i32 0, i32 2, i32 0, i32 4
  %17 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx7.1.i, align 4
  %arrayidx.2.i = getelementptr [12 x i32], ptr %pdu_header, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.2.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #3
  %arrayidx7.2.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %6, i32 0, i32 2, i32 0, i32 5
  %21 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx7.2.i, align 4
  %arrayidx.3.i = getelementptr [12 x i32], ptr %pdu_header, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.3.i, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #3
  %arrayidx7.3.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %6, i32 0, i32 2, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %arrayidx7.3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx7.3.i, align 4
  %arrayidx.4.i = getelementptr [12 x i32], ptr %pdu_header, i32 0, i32 4
  %26 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.4.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #3
  %arrayidx7.4.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %6, i32 0, i32 2, i32 0, i32 6
  %29 = ptrtoint ptr %arrayidx7.4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx7.4.i, align 4
  %arrayidx.5.i = getelementptr [12 x i32], ptr %pdu_header, i32 0, i32 5
  %30 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.5.i, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #3
  %arrayidx7.5.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %6, i32 0, i32 2, i32 0, i32 7
  %33 = ptrtoint ptr %arrayidx7.5.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx7.5.i, align 4
  %arrayidx.6.i = getelementptr [12 x i32], ptr %pdu_header, i32 0, i32 6
  %34 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.6.i, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #3
  %arrayidx7.6.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %6, i32 0, i32 2, i32 0, i32 8
  %37 = ptrtoint ptr %arrayidx7.6.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx7.6.i, align 4
  %arrayidx.7.i = getelementptr [12 x i32], ptr %pdu_header, i32 0, i32 7
  %38 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.7.i, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #3
  %arrayidx7.7.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %6, i32 0, i32 2, i32 0, i32 9
  %41 = ptrtoint ptr %arrayidx7.7.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx7.7.i, align 4
  %arrayidx.8.i = getelementptr [12 x i32], ptr %pdu_header, i32 0, i32 8
  %42 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.8.i, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #3
  %arrayidx7.8.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %6, i32 0, i32 2, i32 0, i32 10
  %45 = ptrtoint ptr %arrayidx7.8.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx7.8.i, align 4
  %arrayidx.9.i = getelementptr [12 x i32], ptr %pdu_header, i32 0, i32 9
  %46 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.9.i, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #3
  %arrayidx7.9.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %6, i32 0, i32 2, i32 0, i32 11
  %49 = ptrtoint ptr %arrayidx7.9.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx7.9.i, align 4
  %arrayidx.10.i = getelementptr [12 x i32], ptr %pdu_header, i32 0, i32 10
  %50 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.10.i, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #3
  %arrayidx7.10.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %6, i32 0, i32 2, i32 0, i32 11, i32 1
  %53 = ptrtoint ptr %arrayidx7.10.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx7.10.i, align 4
  %arrayidx.11.i = getelementptr [12 x i32], ptr %pdu_header, i32 0, i32 11
  %54 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.11.i, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #3
  %arrayidx7.11.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %6, i32 0, i32 2, i32 0, i32 11, i32 2
  %57 = ptrtoint ptr %arrayidx7.11.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx7.11.i, align 4
  %conv8.i = trunc i32 %task_type to i8
  %task_type9.i = getelementptr inbounds %struct.iscsi_task_context, ptr %6, i32 0, i32 7, i32 4
  %58 = ptrtoint ptr %task_type9.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv8.i, ptr %task_type9.i, align 4
  %conn_icid.i = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 4
  %59 = ptrtoint ptr %conn_icid.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %conn_icid.i, align 4
  %61 = tail call i16 @llvm.bswap.i16(i16 %60) #3
  %task_cid.i = getelementptr inbounds %struct.iscsi_task_context, ptr %6, i32 0, i32 4, i32 2
  %62 = ptrtoint ptr %task_cid.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %task_cid.i, align 2
  %flags1.i = getelementptr inbounds %struct.iscsi_task_context, ptr %6, i32 0, i32 6, i32 4
  %63 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 4, ptr %flags1.i, align 1
  %task_type18.i = getelementptr inbounds %struct.iscsi_task_context, ptr %6, i32 0, i32 8, i32 12
  %64 = ptrtoint ptr %task_type18.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv8.i, ptr %task_type18.i, align 4
  %cq_rss_number.i = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 6
  %65 = ptrtoint ptr %cq_rss_number.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %cq_rss_number.i, align 4
  %cq_rss_number20.i = getelementptr inbounds %struct.iscsi_task_context, ptr %6, i32 0, i32 8, i32 15
  %67 = ptrtoint ptr %cq_rss_number20.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %cq_rss_number20.i, align 1
  %68 = ptrtoint ptr %conn_icid.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %conn_icid.i, align 4
  %70 = tail call i16 @llvm.bswap.i16(i16 %69) #3
  %icid.i = getelementptr inbounds %struct.iscsi_task_context, ptr %6, i32 0, i32 6, i32 2
  %71 = ptrtoint ptr %icid.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %icid.i, align 2
  %72 = ptrtoint ptr %task_params to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task_params, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %expected_transfer_length = getelementptr inbounds %struct.ystorm_iscsi_task_st_ctx, ptr %73, i32 0, i32 2, i32 0, i32 7
  %75 = ptrtoint ptr %expected_transfer_length to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %expected_transfer_length, align 4
  %sge_len.i = getelementptr inbounds %struct.scsi_sge, ptr %cmd_params, i32 0, i32 1
  %76 = ptrtoint ptr %sge_len.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sge_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i4 = icmp eq i32 %77, 0
  br i1 %tobool.not.i4, label %calc_rw_task_size.exit.init_initiator_rw_cdb_ystorm_context.exit_crit_edge, label %do.body.i

calc_rw_task_size.exit.init_initiator_rw_cdb_ystorm_context.exit_crit_edge: ; preds = %calc_rw_task_size.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %init_initiator_rw_cdb_ystorm_context.exit

do.body.i:                                        ; preds = %calc_rw_task_size.exit
  call void @__sanitizer_cov_trace_pc() #5
  %hdr_second_dword.i = getelementptr inbounds %struct.ystorm_iscsi_task_st_ctx, ptr %73, i32 0, i32 2, i32 0, i32 4
  %78 = ptrtoint ptr %hdr_second_dword.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %hdr_second_dword.i, align 4
  %and.i = and i32 %79, 16777215
  store i32 %and.i, ptr %hdr_second_dword.i, align 4
  %80 = ptrtoint ptr %sge_len.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sge_len.i, align 4
  %shl.i = shl i32 %81, 24
  %or.i = or i32 %shl.i, %and.i
  store i32 %or.i, ptr %hdr_second_dword.i, align 4
  %82 = ptrtoint ptr %cmd_params to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cmd_params, align 4
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #3
  %cdb_sge.i = getelementptr inbounds %struct.ystorm_iscsi_task_st_ctx, ptr %73, i32 0, i32 2, i32 0, i32 10
  %85 = ptrtoint ptr %cdb_sge.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %cdb_sge.i, align 4
  %hi.i = getelementptr inbounds %struct.regpair, ptr %cmd_params, i32 0, i32 1
  %86 = ptrtoint ptr %hi.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %hi.i, align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #3
  %hi13.i = getelementptr inbounds %struct.ystorm_iscsi_task_st_ctx, ptr %73, i32 0, i32 2, i32 0, i32 11
  %89 = ptrtoint ptr %hi13.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %hi13.i, align 4
  %90 = ptrtoint ptr %sge_len.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sge_len.i, align 4
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #3
  %sge_len17.i = getelementptr inbounds %struct.ystorm_iscsi_task_st_ctx, ptr %73, i32 0, i32 2, i32 0, i32 11, i32 1
  %93 = ptrtoint ptr %sge_len17.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %sge_len17.i, align 4
  br label %init_initiator_rw_cdb_ystorm_context.exit

init_initiator_rw_cdb_ystorm_context.exit:        ; preds = %do.body.i, %calc_rw_task_size.exit.init_initiator_rw_cdb_ystorm_context.exit_crit_edge
  %sense_data_buffer_phys_addr = getelementptr inbounds %struct.scsi_initiator_cmd_params, ptr %cmd_params, i32 0, i32 1
  %94 = ptrtoint ptr %sense_data_buffer_phys_addr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %sense_data_buffer_phys_addr, align 4
  %96 = tail call i32 @llvm.bswap.i32(i32 %95)
  %sense_db = getelementptr inbounds %struct.iscsi_task_context, ptr %73, i32 0, i32 7, i32 7
  %97 = ptrtoint ptr %sense_db to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %sense_db, align 4
  %hi = getelementptr inbounds %struct.scsi_initiator_cmd_params, ptr %cmd_params, i32 0, i32 1, i32 1
  %98 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %hi, align 4
  %100 = tail call i32 @llvm.bswap.i32(i32 %99)
  %hi12 = getelementptr inbounds %struct.iscsi_task_context, ptr %73, i32 0, i32 7, i32 7, i32 1
  %101 = ptrtoint ptr %hi12 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %hi12, align 4
  %102 = ptrtoint ptr %tx_io_size.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tx_io_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not = icmp eq i32 %103, 0
  br i1 %tobool.not, label %if.else48, label %if.then14

if.then14:                                        ; preds = %init_initiator_rw_cdb_ystorm_context.exit
  %tobool.not.i5 = icmp eq ptr %dif_task_params, null
  br i1 %tobool.not.i5, label %if.then14.init_dif_context_flags.exit18_crit_edge, label %do.body.i17

if.then14.init_dif_context_flags.exit18_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #5
  br label %init_dif_context_flags.exit18

do.body.i17:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #5
  %dif_flags = getelementptr inbounds %struct.ystorm_iscsi_task_state, ptr %73, i32 0, i32 5
  %104 = ptrtoint ptr %dif_flags to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %dif_flags, align 1
  %106 = and i8 %105, -16
  store i8 %106, ptr %dif_flags, align 1
  %dif_block_size_log.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 4
  %107 = ptrtoint ptr %dif_block_size_log.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %dif_block_size_log.i, align 2
  %conv2.i = trunc i16 %108 to i8
  %or.i6 = or i8 %106, %conv2.i
  %109 = and i8 %or.i6, -17
  store i8 %109, ptr %dif_flags, align 1
  %dif_on_network.i7 = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 5
  %110 = ptrtoint ptr %dif_on_network.i7 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %dif_on_network.i7, align 4, !range !9
  %112 = shl nuw nsw i8 %111, 4
  %.masked.i = and i8 %conv2.i, 15
  %113 = or i8 %112, %.masked.i
  store i8 %113, ptr %dif_flags, align 1
  %dif_on_host.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 6
  %114 = ptrtoint ptr %dif_on_host.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %dif_on_host.i, align 1, !range !9
  %116 = shl nuw nsw i8 %115, 5
  %or3042.i = or i8 %116, %113
  store i8 %or3042.i, ptr %dif_flags, align 1
  %dif_flags16 = getelementptr inbounds %struct.iscsi_task_context, ptr %73, i32 0, i32 8, i32 6
  %117 = ptrtoint ptr %dif_flags16 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %dif_flags16, align 1
  %119 = and i8 %118, -16
  store i8 %119, ptr %dif_flags16, align 1
  %120 = load i16, ptr %dif_block_size_log.i, align 2
  %conv2.i11 = trunc i16 %120 to i8
  %or.i12 = or i8 %119, %conv2.i11
  %121 = and i8 %or.i12, -17
  store i8 %121, ptr %dif_flags16, align 1
  %122 = load i8, ptr %dif_on_network.i7, align 4, !range !9
  %123 = shl nuw nsw i8 %122, 4
  %.masked.i14 = and i8 %conv2.i11, 15
  %124 = or i8 %123, %.masked.i14
  store i8 %124, ptr %dif_flags16, align 1
  %125 = load i8, ptr %dif_on_host.i, align 1, !range !9
  %126 = shl nuw nsw i8 %125, 5
  %or3042.i16 = or i8 %126, %124
  store i8 %or3042.i16, ptr %dif_flags16, align 1
  br label %init_dif_context_flags.exit18

init_dif_context_flags.exit18:                    ; preds = %do.body.i17, %if.then14.init_dif_context_flags.exit18_crit_edge
  %sgl_params = getelementptr inbounds %struct.ystorm_iscsi_task_state, ptr %73, i32 0, i32 1
  %num_sges1.i = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %sgl_task_params, i32 0, i32 3
  %127 = ptrtoint ptr %num_sges1.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %num_sges1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %128)
  %cmp.i19 = icmp ugt i16 %128, 4
  %129 = and i16 %128, 255
  %narrow.i = select i1 %cmp.i19, i16 4, i16 %129
  %sgl_phys_addr.i = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %sgl_task_params, i32 0, i32 1
  %130 = ptrtoint ptr %sgl_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %sgl_phys_addr.i, align 4
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #3
  %133 = ptrtoint ptr %sgl_params to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %sgl_params, align 4
  %hi.i20 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %sgl_task_params, i32 0, i32 1, i32 1
  %134 = ptrtoint ptr %hi.i20 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %hi.i20, align 4
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #3
  %hi9.i = getelementptr inbounds %struct.ystorm_iscsi_task_state, ptr %73, i32 0, i32 1, i32 0, i32 1
  %137 = ptrtoint ptr %hi9.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %hi9.i, align 4
  %total_buffer_size.i21 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %sgl_task_params, i32 0, i32 2
  %138 = ptrtoint ptr %total_buffer_size.i21 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %total_buffer_size.i21, align 4
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #3
  %sgl_total_length.i = getelementptr inbounds %struct.ystorm_iscsi_task_state, ptr %73, i32 0, i32 1, i32 1
  %141 = ptrtoint ptr %sgl_total_length.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %sgl_total_length.i, align 4
  %142 = ptrtoint ptr %num_sges1.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %num_sges1.i, align 4
  %144 = tail call i16 @llvm.bswap.i16(i16 %143) #3
  %sgl_num_sges.i = getelementptr inbounds %struct.ystorm_iscsi_task_state, ptr %73, i32 0, i32 1, i32 3
  %145 = ptrtoint ptr %sgl_num_sges.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %sgl_num_sges.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %narrow.i)
  %cmp1363.not.i = icmp eq i16 %narrow.i, 0
  br i1 %cmp1363.not.i, label %init_dif_context_flags.exit18.init_scsi_sgl_context.exit_crit_edge, label %for.body.preheader.i

init_dif_context_flags.exit18.init_scsi_sgl_context.exit_crit_edge: ; preds = %init_dif_context_flags.exit18
  call void @__sanitizer_cov_trace_pc() #5
  br label %init_scsi_sgl_context.exit

for.body.preheader.i:                             ; preds = %init_dif_context_flags.exit18
  %wide.trip.count.i = zext i16 %narrow.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %146 = ptrtoint ptr %sgl_task_params to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %sgl_task_params, align 4
  %arrayidx.i = getelementptr %struct.scsi_sge, ptr %147, i32 %indvars.iv.i
  %148 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx.i, align 4
  %150 = tail call i32 @llvm.bswap.i32(i32 %149) #3
  %arrayidx17.i = getelementptr [4 x %struct.scsi_sge], ptr %73, i32 0, i32 %indvars.iv.i
  %151 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %arrayidx17.i, align 4
  %152 = ptrtoint ptr %sgl_task_params to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %sgl_task_params, align 4
  %hi24.i = getelementptr %struct.scsi_sge, ptr %153, i32 %indvars.iv.i, i32 0, i32 1
  %154 = ptrtoint ptr %hi24.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %hi24.i, align 4
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #3
  %hi29.i = getelementptr inbounds %struct.regpair, ptr %arrayidx17.i, i32 0, i32 1
  %157 = ptrtoint ptr %hi29.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %hi29.i, align 4
  %158 = ptrtoint ptr %sgl_task_params to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %sgl_task_params, align 4
  %sge_len.i22 = getelementptr %struct.scsi_sge, ptr %159, i32 %indvars.iv.i, i32 1
  %160 = ptrtoint ptr %sge_len.i22 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %sge_len.i22, align 4
  %162 = tail call i32 @llvm.bswap.i32(i32 %161) #3
  %sge_len36.i = getelementptr [4 x %struct.scsi_sge], ptr %73, i32 0, i32 %indvars.iv.i, i32 1
  %163 = ptrtoint ptr %sge_len36.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %sge_len36.i, align 4
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body.i.init_scsi_sgl_context.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.body.i.init_scsi_sgl_context.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %init_scsi_sgl_context.exit

init_scsi_sgl_context.exit:                       ; preds = %for.body.i.init_scsi_sgl_context.exit_crit_edge, %init_dif_context_flags.exit18.init_scsi_sgl_context.exit_crit_edge
  %164 = ptrtoint ptr %num_sges1.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %num_sges1.i, align 4
  %small_mid_sge = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %sgl_task_params, i32 0, i32 4
  %166 = ptrtoint ptr %small_mid_sge to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %small_mid_sge, align 2, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool22 = icmp ne i8 %167, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %165)
  %cmp.i23 = icmp ugt i16 %165, 8
  %spec.select.i = and i1 %cmp.i23, %tobool22
  br i1 %spec.select.i, label %do.body, label %cond.end33

cond.end33:                                       ; preds = %init_scsi_sgl_context.exit
  call void @__sanitizer_cov_trace_pc() #5
  %168 = tail call i16 @llvm.umin.i16(i16 %165, i16 8)
  %169 = trunc i16 %168 to i8
  br label %if.end80

do.body:                                          ; preds = %init_scsi_sgl_context.exit
  call void @__sanitizer_cov_trace_pc() #5
  %flags = getelementptr inbounds %struct.ystorm_iscsi_task_state, ptr %73, i32 0, i32 6
  %170 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %flags, align 1
  %172 = or i8 %171, 2
  store i8 %172, ptr %flags, align 1
  br label %if.end80

if.else48:                                        ; preds = %init_initiator_rw_cdb_ystorm_context.exit
  %173 = ptrtoint ptr %rx_io_size.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %rx_io_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool49.not = icmp eq i32 %174, 0
  br i1 %tobool49.not, label %if.else48.if.end80_crit_edge, label %if.then50

if.else48.if.end80_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end80

if.then50:                                        ; preds = %if.else48
  %mstorm_st_context51 = getelementptr inbounds %struct.iscsi_task_context, ptr %73, i32 0, i32 7
  %tobool.not.i24 = icmp eq ptr %dif_task_params, null
  br i1 %tobool.not.i24, label %if.then50.init_dif_context_flags.exit33_crit_edge, label %do.body.i32

if.then50.init_dif_context_flags.exit33_crit_edge: ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #5
  br label %init_dif_context_flags.exit33

do.body.i32:                                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #5
  %dif_flags52 = getelementptr inbounds %struct.iscsi_task_context, ptr %73, i32 0, i32 7, i32 5
  %175 = ptrtoint ptr %dif_flags52 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %dif_flags52, align 1
  %177 = and i8 %176, -16
  store i8 %177, ptr %dif_flags52, align 1
  %dif_block_size_log.i25 = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 4
  %178 = ptrtoint ptr %dif_block_size_log.i25 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %dif_block_size_log.i25, align 2
  %conv2.i26 = trunc i16 %179 to i8
  %or.i27 = or i8 %177, %conv2.i26
  %180 = and i8 %or.i27, -17
  store i8 %180, ptr %dif_flags52, align 1
  %dif_on_network.i28 = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 5
  %181 = ptrtoint ptr %dif_on_network.i28 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %dif_on_network.i28, align 4, !range !9
  %183 = shl nuw nsw i8 %182, 4
  %.masked.i29 = and i8 %conv2.i26, 15
  %184 = or i8 %183, %.masked.i29
  store i8 %184, ptr %dif_flags52, align 1
  %dif_on_host.i30 = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 6
  %185 = ptrtoint ptr %dif_on_host.i30 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %dif_on_host.i30, align 1, !range !9
  %187 = shl nuw nsw i8 %186, 5
  %or3042.i31 = or i8 %187, %184
  store i8 %or3042.i31, ptr %dif_flags52, align 1
  br label %init_dif_context_flags.exit33

init_dif_context_flags.exit33:                    ; preds = %do.body.i32, %if.then50.init_dif_context_flags.exit33_crit_edge
  %sgl_params54 = getelementptr inbounds %struct.iscsi_task_context, ptr %73, i32 0, i32 7, i32 1
  %num_sges1.i34 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %sgl_task_params, i32 0, i32 3
  %188 = ptrtoint ptr %num_sges1.i34 to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %num_sges1.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %189)
  %cmp.i35 = icmp ugt i16 %189, 4
  %190 = and i16 %189, 255
  %narrow.i36 = select i1 %cmp.i35, i16 4, i16 %190
  %sgl_phys_addr.i37 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %sgl_task_params, i32 0, i32 1
  %191 = ptrtoint ptr %sgl_phys_addr.i37 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %sgl_phys_addr.i37, align 4
  %193 = tail call i32 @llvm.bswap.i32(i32 %192) #3
  %194 = ptrtoint ptr %sgl_params54 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %sgl_params54, align 4
  %hi.i38 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %sgl_task_params, i32 0, i32 1, i32 1
  %195 = ptrtoint ptr %hi.i38 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %hi.i38, align 4
  %197 = tail call i32 @llvm.bswap.i32(i32 %196) #3
  %hi9.i39 = getelementptr inbounds %struct.iscsi_task_context, ptr %73, i32 0, i32 7, i32 1, i32 0, i32 1
  %198 = ptrtoint ptr %hi9.i39 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %hi9.i39, align 4
  %total_buffer_size.i40 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %sgl_task_params, i32 0, i32 2
  %199 = ptrtoint ptr %total_buffer_size.i40 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %total_buffer_size.i40, align 4
  %201 = tail call i32 @llvm.bswap.i32(i32 %200) #3
  %sgl_total_length.i41 = getelementptr inbounds %struct.iscsi_task_context, ptr %73, i32 0, i32 7, i32 1, i32 1
  %202 = ptrtoint ptr %sgl_total_length.i41 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %201, ptr %sgl_total_length.i41, align 4
  %203 = ptrtoint ptr %num_sges1.i34 to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %num_sges1.i34, align 4
  %205 = tail call i16 @llvm.bswap.i16(i16 %204) #3
  %sgl_num_sges.i42 = getelementptr inbounds %struct.iscsi_task_context, ptr %73, i32 0, i32 7, i32 1, i32 3
  %206 = ptrtoint ptr %sgl_num_sges.i42 to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 %205, ptr %sgl_num_sges.i42, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %narrow.i36)
  %cmp1363.not.i43 = icmp eq i16 %narrow.i36, 0
  br i1 %cmp1363.not.i43, label %init_dif_context_flags.exit33.init_scsi_sgl_context.exit56_crit_edge, label %for.body.preheader.i45

init_dif_context_flags.exit33.init_scsi_sgl_context.exit56_crit_edge: ; preds = %init_dif_context_flags.exit33
  call void @__sanitizer_cov_trace_pc() #5
  br label %init_scsi_sgl_context.exit56

for.body.preheader.i45:                           ; preds = %init_dif_context_flags.exit33
  %wide.trip.count.i44 = zext i16 %narrow.i36 to i32
  br label %for.body.i55

for.body.i55:                                     ; preds = %for.body.i55.for.body.i55_crit_edge, %for.body.preheader.i45
  %indvars.iv.i46 = phi i32 [ 0, %for.body.preheader.i45 ], [ %indvars.iv.next.i53, %for.body.i55.for.body.i55_crit_edge ]
  %207 = ptrtoint ptr %sgl_task_params to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %sgl_task_params, align 4
  %arrayidx.i47 = getelementptr %struct.scsi_sge, ptr %208, i32 %indvars.iv.i46
  %209 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %arrayidx.i47, align 4
  %211 = tail call i32 @llvm.bswap.i32(i32 %210) #3
  %arrayidx17.i48 = getelementptr [4 x %struct.scsi_sge], ptr %mstorm_st_context51, i32 0, i32 %indvars.iv.i46
  %212 = ptrtoint ptr %arrayidx17.i48 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %211, ptr %arrayidx17.i48, align 4
  %213 = ptrtoint ptr %sgl_task_params to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %sgl_task_params, align 4
  %hi24.i49 = getelementptr %struct.scsi_sge, ptr %214, i32 %indvars.iv.i46, i32 0, i32 1
  %215 = ptrtoint ptr %hi24.i49 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %hi24.i49, align 4
  %217 = tail call i32 @llvm.bswap.i32(i32 %216) #3
  %hi29.i50 = getelementptr inbounds %struct.regpair, ptr %arrayidx17.i48, i32 0, i32 1
  %218 = ptrtoint ptr %hi29.i50 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %217, ptr %hi29.i50, align 4
  %219 = ptrtoint ptr %sgl_task_params to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %sgl_task_params, align 4
  %sge_len.i51 = getelementptr %struct.scsi_sge, ptr %220, i32 %indvars.iv.i46, i32 1
  %221 = ptrtoint ptr %sge_len.i51 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %sge_len.i51, align 4
  %223 = tail call i32 @llvm.bswap.i32(i32 %222) #3
  %sge_len36.i52 = getelementptr [4 x %struct.scsi_sge], ptr %mstorm_st_context51, i32 0, i32 %indvars.iv.i46, i32 1
  %224 = ptrtoint ptr %sge_len36.i52 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %sge_len36.i52, align 4
  %indvars.iv.next.i53 = add nuw nsw i32 %indvars.iv.i46, 1
  %exitcond.not.i54 = icmp eq i32 %indvars.iv.next.i53, %wide.trip.count.i44
  br i1 %exitcond.not.i54, label %for.body.i55.init_scsi_sgl_context.exit56_crit_edge, label %for.body.i55.for.body.i55_crit_edge

for.body.i55.for.body.i55_crit_edge:              ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i55

for.body.i55.init_scsi_sgl_context.exit56_crit_edge: ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #5
  br label %init_scsi_sgl_context.exit56

init_scsi_sgl_context.exit56:                     ; preds = %for.body.i55.init_scsi_sgl_context.exit56_crit_edge, %init_dif_context_flags.exit33.init_scsi_sgl_context.exit56_crit_edge
  %225 = ptrtoint ptr %num_sges1.i34 to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %num_sges1.i34, align 4
  %small_mid_sge58 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %sgl_task_params, i32 0, i32 4
  %227 = ptrtoint ptr %small_mid_sge58 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %small_mid_sge58, align 2, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %228)
  %tobool59 = icmp ne i8 %228, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %226)
  %cmp.i57 = icmp ugt i16 %226, 8
  %spec.select.i58 = and i1 %cmp.i57, %tobool59
  %229 = tail call i16 @llvm.umin.i16(i16 %226, i16 8)
  %230 = trunc i16 %229 to i8
  %cond76 = select i1 %spec.select.i58, i8 15, i8 %230
  %rem_task_size = getelementptr inbounds %struct.iscsi_task_context, ptr %73, i32 0, i32 7, i32 2
  %231 = ptrtoint ptr %rem_task_size to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %74, ptr %rem_task_size, align 4
  br label %if.end80

if.end80:                                         ; preds = %init_scsi_sgl_context.exit56, %if.else48.if.end80_crit_edge, %do.body, %cond.end33
  %num_sges.0 = phi i8 [ 15, %do.body ], [ %169, %cond.end33 ], [ %cond76, %init_scsi_sgl_context.exit56 ], [ 0, %if.else48.if.end80_crit_edge ]
  %232 = ptrtoint ptr %task_params to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %task_params, align 4
  %ustorm_st_context88 = getelementptr inbounds %struct.iscsi_task_context, ptr %233, i32 0, i32 8
  %tobool90.not = icmp eq ptr %dif_task_params, null
  br i1 %tobool90.not, label %if.end105.critedge, label %cond.true91

cond.true91:                                      ; preds = %if.end80
  %tx_dif_conn_err_en = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 11
  %234 = ptrtoint ptr %tx_dif_conn_err_en to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %tx_dif_conn_err_en, align 2, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %235)
  %tobool92.not = icmp eq i8 %235, 0
  %236 = ptrtoint ptr %ustorm_st_context88 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %74, ptr %ustorm_st_context88, align 4
  %exp_data_acked.i = getelementptr inbounds %struct.iscsi_task_context, ptr %233, i32 0, i32 6, i32 12
  %237 = ptrtoint ptr %exp_data_acked.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %74, ptr %exp_data_acked.i, align 4
  %exp_data_transfer_len.i = getelementptr inbounds %struct.iscsi_task_context, ptr %233, i32 0, i32 8, i32 1
  %238 = ptrtoint ptr %exp_data_transfer_len.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %74, ptr %exp_data_transfer_len.i, align 4
  %reg1.i = getelementptr inbounds %struct.iscsi_task_context, ptr %233, i32 0, i32 8, i32 4
  %239 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %reg1.i, align 4
  %and.i59 = and i32 %240, -16
  %conv.i = zext i8 %num_sges.0 to i32
  %or.i60 = or i32 %and.i59, %conv.i
  store i32 %or.i60, ptr %reg1.i, align 4
  %flags2.i = getelementptr inbounds %struct.iscsi_task_context, ptr %233, i32 0, i32 6, i32 5
  %241 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %flags2.i, align 2
  %243 = and i8 %242, -17
  %shl10.i = select i1 %tobool92.not, i8 0, i8 16
  %or13.i = or i8 %243, %shl10.i
  store i8 %or13.i, ptr %flags2.i, align 2
  %244 = ptrtoint ptr %task_params to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %task_params, align 4
  %246 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %arrayidx.1.i, align 4
  %shr.c2 = lshr i32 %247, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %247)
  %tobool.not.i62 = icmp ult i32 %247, 16777216
  br i1 %tobool.not.i62, label %cond.true91.if.end.i_crit_edge, label %land.lhs.true.i

cond.true91.if.end.i_crit_edge:                   ; preds = %cond.true91
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %cond.true91
  call void @__sanitizer_cov_trace_pc() #5
  %flags2.i63 = getelementptr inbounds %struct.iscsi_task_context, ptr %245, i32 0, i32 8, i32 5
  %248 = ptrtoint ptr %flags2.i63 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %flags2.i63, align 4
  %250 = or i8 %249, 1
  store i8 %250, ptr %flags2.i63, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %cond.true91.if.end.i_crit_edge
  %251 = zext i32 %task_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %251, ptr @__sancov_gen_cov_switch_values)
  switch i32 %task_type, label %if.end.i.set_rw_exp_data_acked_and_cont_len.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %if.end.i.sw.epilog.sink.split.i_crit_edge
  ]

if.end.i.sw.epilog.sink.split.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split.i

if.end.i.set_rw_exp_data_acked_and_cont_len.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %set_rw_exp_data_acked_and_cont_len.exit

sw.bb.i:                                          ; preds = %if.end.i
  %initial_r2t.i = getelementptr inbounds %struct.iscsi_conn_params, ptr %conn_params, i32 0, i32 3
  %252 = ptrtoint ptr %initial_r2t.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %initial_r2t.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %253)
  %tobool10.not.i = icmp eq i8 %253, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #5
  %254 = ptrtoint ptr %conn_params to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %conn_params, align 4
  br label %if.end18.i

if.else.i:                                        ; preds = %sw.bb.i
  %immediate_data.i = getelementptr inbounds %struct.iscsi_conn_params, ptr %conn_params, i32 0, i32 4
  %256 = ptrtoint ptr %immediate_data.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %immediate_data.i, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %257)
  %tobool12.not.i = icmp eq i8 %257, 0
  br i1 %tobool12.not.i, label %if.else.i.if.end18.i_crit_edge, label %if.then13.i

if.else.i.if.end18.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18.i

if.then13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  %258 = ptrtoint ptr %conn_params to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %conn_params, align 4
  %max_send_pdu_length.i = getelementptr inbounds %struct.iscsi_conn_params, ptr %conn_params, i32 0, i32 1
  %260 = ptrtoint ptr %max_send_pdu_length.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %max_send_pdu_length.i, align 4
  %262 = tail call i32 @llvm.umin.i32(i32 %259, i32 %261) #3
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then13.i, %if.else.i.if.end18.i_crit_edge, %if.then11.i
  %max_unsolicited_data.0.i = phi i32 [ %262, %if.then13.i ], [ 0, %if.else.i.if.end18.i_crit_edge ], [ %255, %if.then11.i ]
  %263 = tail call i32 @llvm.umin.i32(i32 %max_unsolicited_data.0.i, i32 %retval.0.i) #3
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %if.end18.i, %if.end.i.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %263, %if.end18.i ], [ 0, %if.end.i.sw.epilog.sink.split.i_crit_edge ]
  %add44.i = add nuw nsw i32 %shr.c2, 4
  %spec.select.i64 = select i1 %tobool.not.i62, i32 %.sink.i, i32 %add44.i
  %264 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i64) #3
  %exp_data_acked48.i = getelementptr inbounds %struct.iscsi_task_context, ptr %245, i32 0, i32 6, i32 12
  %265 = ptrtoint ptr %exp_data_acked48.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %264, ptr %exp_data_acked48.i, align 4
  br label %set_rw_exp_data_acked_and_cont_len.exit

set_rw_exp_data_acked_and_cont_len.exit:          ; preds = %sw.epilog.sink.split.i, %if.end.i.set_rw_exp_data_acked_and_cont_len.exit_crit_edge
  %266 = ptrtoint ptr %task_params to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %task_params, align 4
  %rdif_context = getelementptr inbounds %struct.iscsi_task_context, ptr %267, i32 0, i32 9
  %tdif_context = getelementptr inbounds %struct.iscsi_task_context, ptr %267, i32 0, i32 3
  %dif_on_network.i65 = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 5
  %268 = ptrtoint ptr %dif_on_network.i65 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %dif_on_network.i65, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %269)
  %tobool.not.i66 = icmp eq i8 %269, 0
  br i1 %tobool.not.i66, label %set_rw_exp_data_acked_and_cont_len.exit.if.end105_crit_edge, label %lor.lhs.false.i

set_rw_exp_data_acked_and_cont_len.exit.if.end105_crit_edge: ; preds = %set_rw_exp_data_acked_and_cont_len.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end105

lor.lhs.false.i:                                  ; preds = %set_rw_exp_data_acked_and_cont_len.exit
  %dif_on_host.i67 = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 6
  %270 = ptrtoint ptr %dif_on_host.i67 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %dif_on_host.i67, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %271)
  %tobool1.not.i = icmp eq i8 %271, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end105_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.if.end105_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end105

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %272 = zext i32 %task_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %272, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %task_type, label %lor.lhs.false2.i.if.end105_crit_edge [
    i32 1, label %if.then4.i
    i32 0, label %if.then281.i
  ]

lor.lhs.false2.i.if.end105_crit_edge:             ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end105

if.then4.i:                                       ; preds = %lor.lhs.false2.i
  %application_tag.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 2
  %273 = ptrtoint ptr %application_tag.i to i32
  call void @__asan_load2_noabort(i32 %273)
  %274 = load i16, ptr %application_tag.i, align 2
  %275 = tail call i16 @llvm.bswap.i16(i16 %274) #3
  %app_tag_value.i = getelementptr inbounds %struct.iscsi_task_context, ptr %267, i32 0, i32 9, i32 1
  %276 = ptrtoint ptr %app_tag_value.i to i32
  call void @__asan_store2_noabort(i32 %276)
  store i16 %275, ptr %app_tag_value.i, align 4
  %partial_crc_value.i = getelementptr inbounds %struct.iscsi_task_context, ptr %267, i32 0, i32 9, i32 5
  %277 = ptrtoint ptr %partial_crc_value.i to i32
  call void @__asan_store2_noabort(i32 %277)
  store i16 -1, ptr %partial_crc_value.i, align 4
  %278 = ptrtoint ptr %dif_task_params to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %dif_task_params, align 4
  %280 = tail call i32 @llvm.bswap.i32(i32 %279) #3
  %281 = ptrtoint ptr %rdif_context to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %280, ptr %rdif_context, align 4
  %application_tag_mask.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 3
  %282 = ptrtoint ptr %application_tag_mask.i to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %application_tag_mask.i, align 4
  %284 = tail call i16 @llvm.bswap.i16(i16 %283) #3
  %app_tag_mask.i = getelementptr inbounds %struct.iscsi_task_context, ptr %267, i32 0, i32 9, i32 2
  %285 = ptrtoint ptr %app_tag_mask.i to i32
  call void @__asan_store2_noabort(i32 %285)
  store i16 %284, ptr %app_tag_mask.i, align 2
  %flags0.i = getelementptr inbounds %struct.iscsi_task_context, ptr %267, i32 0, i32 9, i32 3
  %286 = ptrtoint ptr %flags0.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %flags0.i, align 4
  %288 = and i8 %287, -65
  store i8 %288, ptr %flags0.i, align 4
  %crc_seed.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 10
  %289 = ptrtoint ptr %crc_seed.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %crc_seed.i, align 1, !range !9
  %291 = shl nuw nsw i8 %290, 6
  %.masked719.i = and i8 %287, -69
  %292 = or i8 %291, %.masked719.i
  store i8 %292, ptr %flags0.i, align 4
  %host_guard_type.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 7
  %293 = ptrtoint ptr %host_guard_type.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %host_guard_type.i, align 2
  %shl18.i = shl i8 %294, 2
  %or21.i = or i8 %shl18.i, %292
  %295 = and i8 %or21.i, -49
  store i8 %295, ptr %flags0.i, align 4
  %protection_type.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 8
  %296 = ptrtoint ptr %protection_type.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %protection_type.i, align 1
  %shl31.i = shl i8 %297, 4
  %.masked720.i = and i8 %or21.i, 77
  %shl31.masked.i = and i8 %shl31.i, 112
  %298 = or i8 %.masked720.i, %shl31.masked.i
  %299 = or i8 %298, 2
  store i8 %299, ptr %flags0.i, align 4
  %keep_ref_tag_const.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 13
  %300 = ptrtoint ptr %keep_ref_tag_const.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %keep_ref_tag_const.i, align 4, !range !9
  %302 = shl nuw i8 %301, 7
  %or60721.i = or i8 %299, %302
  store i8 %or60721.i, ptr %flags0.i, align 4
  %flags1.i68 = getelementptr inbounds %struct.iscsi_task_context, ptr %267, i32 0, i32 9, i32 8
  %303 = ptrtoint ptr %flags1.i68 to i32
  call void @__asan_load2_noabort(i32 %303)
  %304 = load i16, ptr %flags1.i68, align 4
  %305 = and i16 %304, -3
  store i16 %305, ptr %flags1.i68, align 4
  %validate_app_tag.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 15
  %306 = ptrtoint ptr %validate_app_tag.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %validate_app_tag.i, align 2, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %307)
  %tobool68.not.i = icmp eq i8 %307, 0
  br i1 %tobool68.not.i, label %if.then4.i.land.end.i_crit_edge, label %land.rhs.i

if.then4.i.land.end.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end.i

land.rhs.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #5
  %308 = ptrtoint ptr %dif_on_network.i65 to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %dif_on_network.i65, align 4, !range !9
  %310 = shl nuw nsw i8 %309, 1
  %phi.bo722.i = zext i8 %310 to i16
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.then4.i.land.end.i_crit_edge
  %311 = phi i16 [ 0, %if.then4.i.land.end.i_crit_edge ], [ %phi.bo722.i, %land.rhs.i ]
  %or79.i = or i16 %311, %305
  %312 = and i16 %or79.i, -2
  %313 = ptrtoint ptr %flags1.i68 to i32
  call void @__asan_store2_noabort(i32 %313)
  store i16 %312, ptr %flags1.i68, align 4
  %validate_guard.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 14
  %314 = ptrtoint ptr %validate_guard.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %validate_guard.i, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %315)
  %tobool88.not.i = icmp eq i8 %315, 0
  br i1 %tobool88.not.i, label %land.end.i.land.end94.i_crit_edge, label %land.rhs90.i

land.end.i.land.end94.i_crit_edge:                ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end94.i

land.rhs90.i:                                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %316 = ptrtoint ptr %dif_on_network.i65 to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %dif_on_network.i65, align 4, !range !9
  %tobool92.i = zext i8 %317 to i16
  br label %land.end94.i

land.end94.i:                                     ; preds = %land.rhs90.i, %land.end.i.land.end94.i_crit_edge
  %318 = phi i16 [ 0, %land.end.i.land.end94.i_crit_edge ], [ %tobool92.i, %land.rhs90.i ]
  %or102.i = or i16 %318, %312
  %319 = and i16 %or102.i, -5
  %320 = ptrtoint ptr %flags1.i68 to i32
  call void @__asan_store2_noabort(i32 %320)
  store i16 %319, ptr %flags1.i68, align 4
  %validate_ref_tag.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 16
  %321 = ptrtoint ptr %validate_ref_tag.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %validate_ref_tag.i, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %322)
  %tobool111.not.i = icmp eq i8 %322, 0
  br i1 %tobool111.not.i, label %land.end94.i.land.end117.i_crit_edge, label %land.rhs113.i

land.end94.i.land.end117.i_crit_edge:             ; preds = %land.end94.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end117.i

land.rhs113.i:                                    ; preds = %land.end94.i
  call void @__sanitizer_cov_trace_pc() #5
  %323 = ptrtoint ptr %dif_on_network.i65 to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %dif_on_network.i65, align 4, !range !9
  %325 = shl nuw nsw i8 %324, 2
  %phi.bo723.i = zext i8 %325 to i16
  br label %land.end117.i

land.end117.i:                                    ; preds = %land.rhs113.i, %land.end94.i.land.end117.i_crit_edge
  %326 = phi i16 [ 0, %land.end94.i.land.end117.i_crit_edge ], [ %phi.bo723.i, %land.rhs113.i ]
  %.masked724.i = and i16 %or102.i, -1541
  %327 = or i16 %326, %.masked724.i
  %328 = ptrtoint ptr %flags1.i68 to i32
  call void @__asan_store2_noabort(i32 %328)
  store i16 %327, ptr %flags1.i68, align 4
  %329 = ptrtoint ptr %dif_on_host.i67 to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %dif_on_host.i67, align 1, !range !9
  %331 = zext i8 %330 to i16
  %shl138.i = shl nuw nsw i16 %331, 9
  %.masked725.i = and i16 %327, -9729
  %332 = or i16 %shl138.i, %.masked725.i
  store i16 %332, ptr %flags1.i68, align 4
  %333 = ptrtoint ptr %dif_on_network.i65 to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %dif_on_network.i65, align 4, !range !9
  %335 = zext i8 %334 to i16
  %shl154.i = shl nuw nsw i16 %335, 13
  %.masked726.i = and i16 %332, -9225
  %336 = or i16 %shl154.i, %.masked726.i
  store i16 %336, ptr %flags1.i68, align 4
  %forward_guard.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 17
  %337 = ptrtoint ptr %forward_guard.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %forward_guard.i, align 4, !range !9
  %339 = shl nuw nsw i8 %338, 3
  %shl169.i = zext i8 %339 to i16
  %.masked727.i = and i16 %336, -1049
  %340 = or i16 %.masked727.i, %shl169.i
  store i16 %340, ptr %flags1.i68, align 4
  %forward_app_tag.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 18
  %341 = ptrtoint ptr %forward_app_tag.i to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %forward_app_tag.i, align 1, !range !9
  %343 = shl nuw nsw i8 %342, 4
  %shl184.i = zext i8 %343 to i16
  %.masked728.i = and i16 %340, -1073
  %344 = or i16 %.masked728.i, %shl184.i
  store i16 %344, ptr %flags1.i68, align 4
  %forward_ref_tag.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 19
  %345 = ptrtoint ptr %forward_ref_tag.i to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %forward_ref_tag.i, align 2, !range !9
  %347 = shl nuw nsw i8 %346, 5
  %shl199.i = zext i8 %347 to i16
  %.masked729.i = and i16 %344, -17441
  %348 = or i16 %.masked729.i, %shl199.i
  store i16 %348, ptr %flags1.i68, align 4
  %forward_app_tag_with_mask.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 20
  %349 = ptrtoint ptr %forward_app_tag_with_mask.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %forward_app_tag_with_mask.i, align 1, !range !9
  %351 = zext i8 %350 to i16
  %shl214.i = shl nuw nsw i16 %351, 14
  %.masked730.i = and i16 %348, 15359
  %352 = or i16 %shl214.i, %.masked730.i
  store i16 %352, ptr %flags1.i68, align 4
  %forward_ref_tag_with_mask.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 21
  %353 = ptrtoint ptr %forward_ref_tag_with_mask.i to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %forward_ref_tag_with_mask.i, align 4, !range !9
  %355 = zext i8 %354 to i16
  %shl229.i = shl nuw i16 %355, 15
  %.masked731.i = and i16 %352, 31295
  %356 = or i16 %shl229.i, %.masked731.i
  store i16 %356, ptr %flags1.i68, align 4
  %dif_block_size_log.i69 = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 4
  %357 = ptrtoint ptr %dif_block_size_log.i69 to i32
  call void @__asan_load2_noabort(i32 %357)
  %358 = load i16, ptr %dif_block_size_log.i69, align 2
  %sub.i = shl i16 %358, 6
  %shl242.i = add i16 %sub.i, -576
  %or245.i = or i16 %shl242.i, %356
  store i16 %or245.i, ptr %flags1.i68, align 4
  %state.i = getelementptr inbounds %struct.iscsi_task_context, ptr %267, i32 0, i32 9, i32 9
  %359 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %359)
  %360 = load i16, ptr %state.i, align 2
  %361 = and i16 %360, -15361
  store i16 %361, ptr %state.i, align 2
  %ref_tag_mask.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 9
  %362 = ptrtoint ptr %ref_tag_mask.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %ref_tag_mask.i, align 4
  %conv253.i = zext i8 %363 to i16
  %shl254.i = shl i16 %conv253.i, 10
  %.masked732.i = and i16 %360, -15362
  %364 = or i16 %shl254.i, %.masked732.i
  store i16 %364, ptr %state.i, align 2
  %ignore_app_tag.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 12
  %365 = ptrtoint ptr %ignore_app_tag.i to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %ignore_app_tag.i, align 1, !range !9
  %367 = zext i8 %366 to i16
  %or271.i = or i16 %364, %367
  store i16 %or271.i, ptr %state.i, align 2
  br label %if.end105

if.then281.i:                                     ; preds = %lor.lhs.false2.i
  %application_tag282.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 2
  %368 = ptrtoint ptr %application_tag282.i to i32
  call void @__asan_load2_noabort(i32 %368)
  %369 = load i16, ptr %application_tag282.i, align 2
  %370 = tail call i16 @llvm.bswap.i16(i16 %369) #3
  %app_tag_value283.i = getelementptr inbounds %struct.iscsi_task_context, ptr %267, i32 0, i32 3, i32 1
  %371 = ptrtoint ptr %app_tag_value283.i to i32
  call void @__asan_store2_noabort(i32 %371)
  store i16 %370, ptr %app_tag_value283.i, align 4
  %crc_seed284.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 10
  %372 = ptrtoint ptr %crc_seed284.i to i32
  call void @__asan_load1_noabort(i32 %372)
  %373 = load i8, ptr %crc_seed284.i, align 1, !range !9
  %sext.i = sub nsw i8 0, %373
  %conv288.i = sext i8 %sext.i to i16
  %374 = tail call i16 @llvm.bswap.i16(i16 %conv288.i) #3
  %partial_crc_value_b.i = getelementptr inbounds %struct.iscsi_task_context, ptr %267, i32 0, i32 3, i32 3
  %375 = ptrtoint ptr %partial_crc_value_b.i to i32
  call void @__asan_store2_noabort(i32 %375)
  store i16 %374, ptr %partial_crc_value_b.i, align 4
  %376 = ptrtoint ptr %crc_seed284.i to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %crc_seed284.i, align 1, !range !9
  %sext710.i = sub nsw i8 0, %377
  %conv293.i = sext i8 %sext710.i to i16
  %378 = tail call i16 @llvm.bswap.i16(i16 %conv293.i) #3
  %partial_crc_value_a.i = getelementptr inbounds %struct.iscsi_task_context, ptr %267, i32 0, i32 3, i32 10
  %379 = ptrtoint ptr %partial_crc_value_a.i to i32
  call void @__asan_store2_noabort(i32 %379)
  store i16 %378, ptr %partial_crc_value_a.i, align 4
  %flags0295.i = getelementptr inbounds %struct.iscsi_task_context, ptr %267, i32 0, i32 3, i32 7
  %380 = ptrtoint ptr %flags0295.i to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %flags0295.i, align 1
  %382 = and i8 %381, -65
  store i8 %382, ptr %flags0295.i, align 1
  %383 = ptrtoint ptr %crc_seed284.i to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %crc_seed284.i, align 1, !range !9
  %385 = shl nuw nsw i8 %384, 6
  %.masked.i70 = and i8 %381, -73
  %386 = or i8 %385, %.masked.i70
  store i8 %386, ptr %flags0295.i, align 1
  %387 = ptrtoint ptr %tx_dif_conn_err_en to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %tx_dif_conn_err_en, align 2, !range !9
  %389 = shl nuw nsw i8 %388, 3
  %or321712.i = or i8 %389, %386
  store i8 %or321712.i, ptr %flags0295.i, align 1
  %flags1326.i = getelementptr inbounds %struct.iscsi_task_context, ptr %267, i32 0, i32 3, i32 8
  %390 = ptrtoint ptr %flags1326.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %flags1326.i, align 4
  %and327.i = and i32 %391, -9
  store i32 %and327.i, ptr %flags1326.i, align 4
  %forward_guard328.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 17
  %392 = ptrtoint ptr %forward_guard328.i to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %forward_guard328.i, align 4, !range !9
  %394 = shl nuw nsw i8 %393, 3
  %shl332.i = zext i8 %394 to i32
  %and327.masked.i = and i32 %391, -25
  %and339.i = or i32 %and327.masked.i, %shl332.i
  store i32 %and339.i, ptr %flags1326.i, align 4
  %forward_app_tag340.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 18
  %395 = ptrtoint ptr %forward_app_tag340.i to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %forward_app_tag340.i, align 1, !range !9
  %397 = shl nuw nsw i8 %396, 4
  %shl344.i = zext i8 %397 to i32
  %and339.masked.i = and i32 %and339.i, -49
  %and351.i = or i32 %and339.masked.i, %shl344.i
  store i32 %and351.i, ptr %flags1326.i, align 4
  %forward_ref_tag352.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 19
  %398 = ptrtoint ptr %forward_ref_tag352.i to i32
  call void @__asan_load1_noabort(i32 %398)
  %399 = load i8, ptr %forward_ref_tag352.i, align 2, !range !9
  %400 = shl nuw nsw i8 %399, 5
  %shl356.i = zext i8 %400 to i32
  %and351.masked.i = and i32 %and351.i, -481
  %and363.i = or i32 %and351.masked.i, %shl356.i
  store i32 %and363.i, ptr %flags1326.i, align 4
  %dif_block_size_log364.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 4
  %401 = ptrtoint ptr %dif_block_size_log364.i to i32
  call void @__asan_load2_noabort(i32 %401)
  %402 = load i16, ptr %dif_block_size_log364.i, align 2
  %conv365.i = zext i16 %402 to i32
  %sub366.i = shl nuw nsw i32 %conv365.i, 6
  %shl367.i = add nsw i32 %sub366.i, -576
  %or370.i = or i32 %shl367.i, %and363.i
  %and376.i = and i32 %or370.i, -1537
  store i32 %and376.i, ptr %flags1326.i, align 4
  %403 = ptrtoint ptr %dif_on_host.i67 to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %dif_on_host.i67, align 1, !range !9
  %405 = zext i8 %404 to i32
  %shl381.i = shl nuw nsw i32 %405, 9
  %and376.masked.i = and i32 %or370.i, -9729
  %and388.i = or i32 %and376.masked.i, %shl381.i
  store i32 %and388.i, ptr %flags1326.i, align 4
  %406 = ptrtoint ptr %dif_on_network.i65 to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %dif_on_network.i65, align 4, !range !9
  %408 = zext i8 %407 to i32
  %shl393.i = shl nuw nsw i32 %408, 13
  %or395.i = or i32 %and388.i, %shl393.i
  store i32 %or395.i, ptr %flags1326.i, align 4
  %409 = ptrtoint ptr %dif_task_params to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %dif_task_params, align 4
  %411 = tail call i32 @llvm.bswap.i32(i32 %410) #3
  %412 = ptrtoint ptr %tdif_context to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 %411, ptr %tdif_context, align 4
  %application_tag_mask400.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 3
  %413 = ptrtoint ptr %application_tag_mask400.i to i32
  call void @__asan_load2_noabort(i32 %413)
  %414 = load i16, ptr %application_tag_mask400.i, align 4
  %415 = tail call i16 @llvm.bswap.i16(i16 %414) #3
  %app_tag_mask401.i = getelementptr inbounds %struct.iscsi_task_context, ptr %267, i32 0, i32 3, i32 2
  %416 = ptrtoint ptr %app_tag_mask401.i to i32
  call void @__asan_store2_noabort(i32 %416)
  store i16 %415, ptr %app_tag_mask401.i, align 2
  %417 = and i8 %or321712.i, -5
  %418 = ptrtoint ptr %flags0295.i to i32
  call void @__asan_store1_noabort(i32 %418)
  store i8 %417, ptr %flags0295.i, align 1
  %host_guard_type407.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 7
  %419 = ptrtoint ptr %host_guard_type407.i to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %host_guard_type407.i, align 2
  %shl409.i = shl i8 %420, 2
  %or412.i = or i8 %shl409.i, %417
  %421 = and i8 %or412.i, -49
  store i8 %421, ptr %flags0295.i, align 1
  %protection_type421.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 8
  %422 = ptrtoint ptr %protection_type421.i to i32
  call void @__asan_load1_noabort(i32 %422)
  %423 = load i8, ptr %protection_type421.i, align 1
  %shl423.i = shl i8 %423, 4
  %.masked713.i = and i8 %or412.i, -51
  %424 = or i8 %shl423.i, %.masked713.i
  store i8 %424, ptr %flags0295.i, align 1
  %initial_ref_tag_is_valid.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 1
  %425 = ptrtoint ptr %initial_ref_tag_is_valid.i to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %initial_ref_tag_is_valid.i, align 4, !range !9
  %427 = shl nuw nsw i8 %426, 1
  %or441714.i = or i8 %427, %424
  store i8 %or441714.i, ptr %flags0295.i, align 1
  %and463.i = and i32 %or395.i, -1026
  %428 = ptrtoint ptr %flags1326.i to i32
  call void @__asan_store4_noabort(i32 %428)
  store i32 %and463.i, ptr %flags1326.i, align 4
  %validate_guard464.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 14
  %429 = ptrtoint ptr %validate_guard464.i to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %validate_guard464.i, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %430)
  %tobool465.not.i = icmp eq i8 %430, 0
  br i1 %tobool465.not.i, label %if.then281.i.land.end471.i_crit_edge, label %land.rhs467.i

if.then281.i.land.end471.i_crit_edge:             ; preds = %if.then281.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end471.i

land.rhs467.i:                                    ; preds = %if.then281.i
  call void @__sanitizer_cov_trace_pc() #5
  %431 = ptrtoint ptr %dif_on_host.i67 to i32
  call void @__asan_load1_noabort(i32 %431)
  %432 = load i8, ptr %dif_on_host.i67, align 1, !range !9
  %tobool469.i = zext i8 %432 to i32
  br label %land.end471.i

land.end471.i:                                    ; preds = %land.rhs467.i, %if.then281.i.land.end471.i_crit_edge
  %433 = phi i32 [ 0, %if.then281.i.land.end471.i_crit_edge ], [ %tobool469.i, %land.rhs467.i ]
  %or478.i = or i32 %433, %and463.i
  %and483.i = and i32 %or478.i, -1027
  %434 = ptrtoint ptr %flags1326.i to i32
  call void @__asan_store4_noabort(i32 %434)
  store i32 %and483.i, ptr %flags1326.i, align 4
  %validate_app_tag484.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 15
  %435 = ptrtoint ptr %validate_app_tag484.i to i32
  call void @__asan_load1_noabort(i32 %435)
  %436 = load i8, ptr %validate_app_tag484.i, align 2, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %436)
  %tobool485.not.i = icmp eq i8 %436, 0
  br i1 %tobool485.not.i, label %land.end471.i.land.end491.i_crit_edge, label %land.rhs487.i

land.end471.i.land.end491.i_crit_edge:            ; preds = %land.end471.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end491.i

land.rhs487.i:                                    ; preds = %land.end471.i
  call void @__sanitizer_cov_trace_pc() #5
  %437 = ptrtoint ptr %dif_on_host.i67 to i32
  call void @__asan_load1_noabort(i32 %437)
  %438 = load i8, ptr %dif_on_host.i67, align 1, !range !9
  %439 = shl nuw nsw i8 %438, 1
  %phi.bo.i = zext i8 %439 to i32
  br label %land.end491.i

land.end491.i:                                    ; preds = %land.rhs487.i, %land.end471.i.land.end491.i_crit_edge
  %440 = phi i32 [ 0, %land.end471.i.land.end491.i_crit_edge ], [ %phi.bo.i, %land.rhs487.i ]
  %or498.i = or i32 %440, %and483.i
  %and503.i = and i32 %or498.i, -1029
  %441 = ptrtoint ptr %flags1326.i to i32
  call void @__asan_store4_noabort(i32 %441)
  store i32 %and503.i, ptr %flags1326.i, align 4
  %validate_ref_tag504.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 16
  %442 = ptrtoint ptr %validate_ref_tag504.i to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %validate_ref_tag504.i, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %443)
  %tobool505.not.i = icmp eq i8 %443, 0
  br i1 %tobool505.not.i, label %land.end491.i.land.end511.i_crit_edge, label %land.rhs507.i

land.end491.i.land.end511.i_crit_edge:            ; preds = %land.end491.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end511.i

land.rhs507.i:                                    ; preds = %land.end491.i
  call void @__sanitizer_cov_trace_pc() #5
  %444 = ptrtoint ptr %dif_on_host.i67 to i32
  call void @__asan_load1_noabort(i32 %444)
  %445 = load i8, ptr %dif_on_host.i67, align 1, !range !9
  %446 = shl nuw nsw i8 %445, 2
  %phi.bo715.i = zext i8 %446 to i32
  br label %land.end511.i

land.end511.i:                                    ; preds = %land.rhs507.i, %land.end491.i.land.end511.i_crit_edge
  %447 = phi i32 [ 0, %land.end491.i.land.end511.i_crit_edge ], [ %phi.bo715.i, %land.rhs507.i ]
  %.masked716.i = and i32 %or498.i, -268436485
  %and523.i = or i32 %447, %.masked716.i
  %448 = ptrtoint ptr %flags1326.i to i32
  call void @__asan_store4_noabort(i32 %448)
  store i32 %and523.i, ptr %flags1326.i, align 4
  %forward_app_tag_with_mask524.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 20
  %449 = ptrtoint ptr %forward_app_tag_with_mask524.i to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %forward_app_tag_with_mask524.i, align 1, !range !9
  %451 = zext i8 %450 to i32
  %shl528.i = shl nuw nsw i32 %451, 28
  %and523.masked.i = and i32 %and523.i, -805307393
  %and535.i = or i32 %shl528.i, %and523.masked.i
  store i32 %and535.i, ptr %flags1326.i, align 4
  %forward_ref_tag_with_mask536.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 21
  %452 = ptrtoint ptr %forward_ref_tag_with_mask536.i to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %forward_ref_tag_with_mask536.i, align 4, !range !9
  %454 = zext i8 %453 to i32
  %shl540.i = shl nuw nsw i32 %454, 29
  %and535.masked.i = and i32 %and535.i, -788530177
  %and547.i = or i32 %and535.masked.i, %shl540.i
  store i32 %and547.i, ptr %flags1326.i, align 4
  %ref_tag_mask548.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 9
  %455 = ptrtoint ptr %ref_tag_mask548.i to i32
  call void @__asan_load1_noabort(i32 %455)
  %456 = load i8, ptr %ref_tag_mask548.i, align 4
  %conv549.i = zext i8 %456 to i32
  %shl550.i = shl nuw i32 %conv549.i, 24
  %or553.i = or i32 %shl550.i, %and547.i
  store i32 %or553.i, ptr %flags1326.i, align 4
  %457 = and i8 %or441714.i, -2
  %458 = ptrtoint ptr %flags0295.i to i32
  call void @__asan_store1_noabort(i32 %458)
  store i8 %457, ptr %flags0295.i, align 1
  %ignore_app_tag562.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 12
  %459 = ptrtoint ptr %ignore_app_tag562.i to i32
  call void @__asan_load1_noabort(i32 %459)
  %460 = load i8, ptr %ignore_app_tag562.i, align 1, !range !9
  %or569717.i = or i8 %460, %457
  store i8 %or569717.i, ptr %flags0295.i, align 1
  br label %if.end105

if.end105.critedge:                               ; preds = %if.end80
  %461 = ptrtoint ptr %ustorm_st_context88 to i32
  call void @__asan_store4_noabort(i32 %461)
  store i32 %74, ptr %ustorm_st_context88, align 4
  %exp_data_acked.i71 = getelementptr inbounds %struct.iscsi_task_context, ptr %233, i32 0, i32 6, i32 12
  %462 = ptrtoint ptr %exp_data_acked.i71 to i32
  call void @__asan_store4_noabort(i32 %462)
  store i32 %74, ptr %exp_data_acked.i71, align 4
  %exp_data_transfer_len.i72 = getelementptr inbounds %struct.iscsi_task_context, ptr %233, i32 0, i32 8, i32 1
  %463 = ptrtoint ptr %exp_data_transfer_len.i72 to i32
  call void @__asan_store4_noabort(i32 %463)
  store i32 %74, ptr %exp_data_transfer_len.i72, align 4
  %reg1.i73 = getelementptr inbounds %struct.iscsi_task_context, ptr %233, i32 0, i32 8, i32 4
  %464 = ptrtoint ptr %reg1.i73 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %reg1.i73, align 4
  %and.i74 = and i32 %465, -16
  %conv.i75 = zext i8 %num_sges.0 to i32
  %or.i76 = or i32 %and.i74, %conv.i75
  store i32 %or.i76, ptr %reg1.i73, align 4
  %flags2.i77 = getelementptr inbounds %struct.iscsi_task_context, ptr %233, i32 0, i32 6, i32 5
  %466 = ptrtoint ptr %flags2.i77 to i32
  call void @__asan_load1_noabort(i32 %466)
  %467 = load i8, ptr %flags2.i77, align 2
  %468 = and i8 %467, -17
  store i8 %468, ptr %flags2.i77, align 2
  %469 = ptrtoint ptr %task_params to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %task_params, align 4
  %471 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %arrayidx.1.i, align 4
  %shr.c = lshr i32 %472, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %472)
  %tobool.not.i79 = icmp ult i32 %472, 16777216
  br i1 %tobool.not.i79, label %if.end105.critedge.if.end.i82_crit_edge, label %land.lhs.true.i81

if.end105.critedge.if.end.i82_crit_edge:          ; preds = %if.end105.critedge
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i82

land.lhs.true.i81:                                ; preds = %if.end105.critedge
  call void @__sanitizer_cov_trace_pc() #5
  %flags2.i80 = getelementptr inbounds %struct.iscsi_task_context, ptr %470, i32 0, i32 8, i32 5
  %473 = ptrtoint ptr %flags2.i80 to i32
  call void @__asan_load1_noabort(i32 %473)
  %474 = load i8, ptr %flags2.i80, align 4
  %475 = or i8 %474, 1
  store i8 %475, ptr %flags2.i80, align 4
  br label %if.end.i82

if.end.i82:                                       ; preds = %land.lhs.true.i81, %if.end105.critedge.if.end.i82_crit_edge
  %476 = zext i32 %task_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %476, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %task_type, label %if.end.i82.if.end105_crit_edge [
    i32 0, label %sw.bb.i85
    i32 1, label %if.end.i82.sw.epilog.sink.split.i98_crit_edge
  ]

if.end.i82.sw.epilog.sink.split.i98_crit_edge:    ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.sink.split.i98

if.end.i82.if.end105_crit_edge:                   ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end105

sw.bb.i85:                                        ; preds = %if.end.i82
  %initial_r2t.i83 = getelementptr inbounds %struct.iscsi_conn_params, ptr %conn_params, i32 0, i32 3
  %477 = ptrtoint ptr %initial_r2t.i83 to i32
  call void @__asan_load1_noabort(i32 %477)
  %478 = load i8, ptr %initial_r2t.i83, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %478)
  %tobool10.not.i84 = icmp eq i8 %478, 0
  br i1 %tobool10.not.i84, label %if.then11.i86, label %if.else.i89

if.then11.i86:                                    ; preds = %sw.bb.i85
  call void @__sanitizer_cov_trace_pc() #5
  %479 = ptrtoint ptr %conn_params to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %conn_params, align 4
  br label %if.end18.i93

if.else.i89:                                      ; preds = %sw.bb.i85
  %immediate_data.i87 = getelementptr inbounds %struct.iscsi_conn_params, ptr %conn_params, i32 0, i32 4
  %481 = ptrtoint ptr %immediate_data.i87 to i32
  call void @__asan_load1_noabort(i32 %481)
  %482 = load i8, ptr %immediate_data.i87, align 1, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %482)
  %tobool12.not.i88 = icmp eq i8 %482, 0
  br i1 %tobool12.not.i88, label %if.else.i89.if.end18.i93_crit_edge, label %if.then13.i91

if.else.i89.if.end18.i93_crit_edge:               ; preds = %if.else.i89
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18.i93

if.then13.i91:                                    ; preds = %if.else.i89
  call void @__sanitizer_cov_trace_pc() #5
  %483 = ptrtoint ptr %conn_params to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %conn_params, align 4
  %max_send_pdu_length.i90 = getelementptr inbounds %struct.iscsi_conn_params, ptr %conn_params, i32 0, i32 1
  %485 = ptrtoint ptr %max_send_pdu_length.i90 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %max_send_pdu_length.i90, align 4
  %487 = tail call i32 @llvm.umin.i32(i32 %484, i32 %486) #3
  br label %if.end18.i93

if.end18.i93:                                     ; preds = %if.then13.i91, %if.else.i89.if.end18.i93_crit_edge, %if.then11.i86
  %max_unsolicited_data.0.i92 = phi i32 [ %487, %if.then13.i91 ], [ 0, %if.else.i89.if.end18.i93_crit_edge ], [ %480, %if.then11.i86 ]
  %488 = tail call i32 @llvm.umin.i32(i32 %max_unsolicited_data.0.i92, i32 %retval.0.i) #3
  br label %sw.epilog.sink.split.i98

sw.epilog.sink.split.i98:                         ; preds = %if.end18.i93, %if.end.i82.sw.epilog.sink.split.i98_crit_edge
  %.sink.i94 = phi i32 [ %488, %if.end18.i93 ], [ 0, %if.end.i82.sw.epilog.sink.split.i98_crit_edge ]
  %add44.i95 = add nuw nsw i32 %shr.c, 4
  %spec.select.i96 = select i1 %tobool.not.i79, i32 %.sink.i94, i32 %add44.i95
  %489 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i96) #3
  %exp_data_acked48.i97 = getelementptr inbounds %struct.iscsi_task_context, ptr %470, i32 0, i32 6, i32 12
  %490 = ptrtoint ptr %exp_data_acked48.i97 to i32
  call void @__asan_store4_noabort(i32 %490)
  store i32 %489, ptr %exp_data_acked48.i97, align 4
  br label %if.end105

if.end105:                                        ; preds = %sw.epilog.sink.split.i98, %if.end.i82.if.end105_crit_edge, %land.end511.i, %land.end117.i, %lor.lhs.false2.i.if.end105_crit_edge, %lor.lhs.false.i.if.end105_crit_edge, %set_rw_exp_data_acked_and_cont_len.exit.if.end105_crit_edge
  tail call fastcc void @init_sqe(ptr noundef %task_params, ptr noundef %sgl_task_params, ptr noundef %dif_task_params, ptr noundef %pdu_header, ptr noundef %cmd_params, i32 noundef %task_type, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_initiator_login_request_task(ptr noundef %task_params, ptr nocapture noundef readonly %login_header, ptr nocapture noundef readonly %tx_params, ptr nocapture noundef readonly %rx_params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %task_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task_params, align 4
  %mstorm_ag_context.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mstorm_ag_context.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mstorm_ag_context.i, align 4
  %4 = call ptr @memset(ptr %1, i32 0, i32 512)
  store i8 %3, ptr %mstorm_ag_context.i, align 4
  %pdu_hdr.i = getelementptr inbounds %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %login_header to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %login_header, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #3
  %8 = ptrtoint ptr %pdu_hdr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pdu_hdr.i, align 4
  %arrayidx.1.i = getelementptr [12 x i32], ptr %login_header, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #3
  %arrayidx7.1.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx7.1.i, align 4
  %arrayidx.2.i = getelementptr [12 x i32], ptr %login_header, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.2.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #3
  %arrayidx7.2.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 5
  %16 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx7.2.i, align 4
  %arrayidx.3.i = getelementptr [12 x i32], ptr %login_header, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.3.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #3
  %arrayidx7.3.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %arrayidx7.3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx7.3.i, align 4
  %arrayidx.4.i = getelementptr [12 x i32], ptr %login_header, i32 0, i32 4
  %21 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.4.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #3
  %arrayidx7.4.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 6
  %24 = ptrtoint ptr %arrayidx7.4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx7.4.i, align 4
  %arrayidx.5.i = getelementptr [12 x i32], ptr %login_header, i32 0, i32 5
  %25 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.5.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #3
  %arrayidx7.5.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 7
  %28 = ptrtoint ptr %arrayidx7.5.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx7.5.i, align 4
  %arrayidx.6.i = getelementptr [12 x i32], ptr %login_header, i32 0, i32 6
  %29 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.6.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #3
  %arrayidx7.6.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 8
  %32 = ptrtoint ptr %arrayidx7.6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx7.6.i, align 4
  %arrayidx.7.i = getelementptr [12 x i32], ptr %login_header, i32 0, i32 7
  %33 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.7.i, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #3
  %arrayidx7.7.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 9
  %36 = ptrtoint ptr %arrayidx7.7.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx7.7.i, align 4
  %arrayidx.8.i = getelementptr [12 x i32], ptr %login_header, i32 0, i32 8
  %37 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.8.i, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #3
  %arrayidx7.8.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 10
  %40 = ptrtoint ptr %arrayidx7.8.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx7.8.i, align 4
  %arrayidx.9.i = getelementptr [12 x i32], ptr %login_header, i32 0, i32 9
  %41 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.9.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #3
  %arrayidx7.9.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 11
  %44 = ptrtoint ptr %arrayidx7.9.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx7.9.i, align 4
  %arrayidx.10.i = getelementptr [12 x i32], ptr %login_header, i32 0, i32 10
  %45 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.10.i, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #3
  %arrayidx7.10.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 11, i32 1
  %48 = ptrtoint ptr %arrayidx7.10.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx7.10.i, align 4
  %arrayidx.11.i = getelementptr [12 x i32], ptr %login_header, i32 0, i32 11
  %49 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.11.i, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #3
  %arrayidx7.11.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 11, i32 2
  %52 = ptrtoint ptr %arrayidx7.11.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx7.11.i, align 4
  %task_type9.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7, i32 4
  %53 = ptrtoint ptr %task_type9.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 2, ptr %task_type9.i, align 4
  %conn_icid.i = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 4
  %54 = ptrtoint ptr %conn_icid.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %conn_icid.i, align 4
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #3
  %task_cid.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 4, i32 2
  %57 = ptrtoint ptr %task_cid.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %task_cid.i, align 2
  %flags1.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 6, i32 4
  %58 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 4, ptr %flags1.i, align 1
  %task_type18.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 8, i32 12
  %59 = ptrtoint ptr %task_type18.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 2, ptr %task_type18.i, align 4
  %cq_rss_number.i = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 6
  %60 = ptrtoint ptr %cq_rss_number.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %cq_rss_number.i, align 4
  %cq_rss_number20.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 8, i32 15
  %62 = ptrtoint ptr %cq_rss_number20.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %cq_rss_number20.i, align 1
  %63 = ptrtoint ptr %conn_icid.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %conn_icid.i, align 4
  %65 = tail call i16 @llvm.bswap.i16(i16 %64) #3
  %icid.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 6, i32 2
  %66 = ptrtoint ptr %icid.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %icid.i, align 2
  %ustorm_st_context = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 8
  %rx_io_size = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 3
  %67 = ptrtoint ptr %rx_io_size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rx_io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not = icmp eq i32 %68, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %total_buffer_size = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_params, i32 0, i32 2
  %69 = ptrtoint ptr %total_buffer_size to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %total_buffer_size, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %70, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %tx_io_size = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 2
  %71 = ptrtoint ptr %tx_io_size to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tx_io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool1.not = icmp eq i32 %72, 0
  br i1 %tobool1.not, label %cond.end.cond.end5_crit_edge, label %cond.true2

cond.end.cond.end5_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end5

cond.true2:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  %total_buffer_size3 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_params, i32 0, i32 2
  %73 = ptrtoint ptr %total_buffer_size3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %total_buffer_size3, align 4
  br label %cond.end5

cond.end5:                                        ; preds = %cond.true2, %cond.end.cond.end5_crit_edge
  %cond6 = phi i32 [ %74, %cond.true2 ], [ 0, %cond.end.cond.end5_crit_edge ]
  %75 = tail call i32 @llvm.bswap.i32(i32 %cond) #3
  %76 = ptrtoint ptr %ustorm_st_context to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %ustorm_st_context, align 4
  %77 = tail call i32 @llvm.bswap.i32(i32 %cond6) #3
  %exp_data_acked.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 6, i32 12
  %78 = ptrtoint ptr %exp_data_acked.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %exp_data_acked.i, align 4
  %exp_data_transfer_len.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 8, i32 1
  %79 = ptrtoint ptr %exp_data_transfer_len.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %77, ptr %exp_data_transfer_len.i, align 4
  %reg1.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 8, i32 4
  %80 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %reg1.i, align 4
  %and.i = and i32 %81, -16
  store i32 %and.i, ptr %reg1.i, align 4
  %flags2.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 6, i32 5
  %82 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %flags2.i, align 2
  %84 = and i8 %83, -17
  store i8 %84, ptr %flags2.i, align 2
  %85 = ptrtoint ptr %tx_io_size to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tx_io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool8.not = icmp eq i32 %86, 0
  br i1 %tobool8.not, label %cond.end5.if.end_crit_edge, label %if.then

cond.end5.if.end_crit_edge:                       ; preds = %cond.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %cond.end5
  %sgl_params = getelementptr inbounds %struct.ystorm_iscsi_task_state, ptr %1, i32 0, i32 1
  %num_sges1.i = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_params, i32 0, i32 3
  %87 = ptrtoint ptr %num_sges1.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %num_sges1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %88)
  %cmp.i = icmp ugt i16 %88, 4
  %89 = and i16 %88, 255
  %narrow.i = select i1 %cmp.i, i16 4, i16 %89
  %sgl_phys_addr.i = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_params, i32 0, i32 1
  %90 = ptrtoint ptr %sgl_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sgl_phys_addr.i, align 4
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #3
  %93 = ptrtoint ptr %sgl_params to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %sgl_params, align 4
  %hi.i = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_params, i32 0, i32 1, i32 1
  %94 = ptrtoint ptr %hi.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %hi.i, align 4
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #3
  %hi9.i = getelementptr inbounds %struct.ystorm_iscsi_task_state, ptr %1, i32 0, i32 1, i32 0, i32 1
  %97 = ptrtoint ptr %hi9.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %hi9.i, align 4
  %total_buffer_size.i = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_params, i32 0, i32 2
  %98 = ptrtoint ptr %total_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %total_buffer_size.i, align 4
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #3
  %sgl_total_length.i = getelementptr inbounds %struct.ystorm_iscsi_task_state, ptr %1, i32 0, i32 1, i32 1
  %101 = ptrtoint ptr %sgl_total_length.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %sgl_total_length.i, align 4
  %102 = ptrtoint ptr %num_sges1.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %num_sges1.i, align 4
  %104 = tail call i16 @llvm.bswap.i16(i16 %103) #3
  %sgl_num_sges.i = getelementptr inbounds %struct.ystorm_iscsi_task_state, ptr %1, i32 0, i32 1, i32 3
  %105 = ptrtoint ptr %sgl_num_sges.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %sgl_num_sges.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %narrow.i)
  %cmp1363.not.i = icmp eq i16 %narrow.i, 0
  br i1 %cmp1363.not.i, label %if.then.if.end_crit_edge, label %for.body.preheader.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

for.body.preheader.i:                             ; preds = %if.then
  %wide.trip.count.i = zext i16 %narrow.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %106 = ptrtoint ptr %tx_params to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tx_params, align 4
  %arrayidx.i = getelementptr %struct.scsi_sge, ptr %107, i32 %indvars.iv.i
  %108 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx.i, align 4
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #3
  %arrayidx17.i = getelementptr [4 x %struct.scsi_sge], ptr %1, i32 0, i32 %indvars.iv.i
  %111 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %arrayidx17.i, align 4
  %112 = ptrtoint ptr %tx_params to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %tx_params, align 4
  %hi24.i = getelementptr %struct.scsi_sge, ptr %113, i32 %indvars.iv.i, i32 0, i32 1
  %114 = ptrtoint ptr %hi24.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %hi24.i, align 4
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #3
  %hi29.i = getelementptr inbounds %struct.regpair, ptr %arrayidx17.i, i32 0, i32 1
  %117 = ptrtoint ptr %hi29.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %hi29.i, align 4
  %118 = ptrtoint ptr %tx_params to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %tx_params, align 4
  %sge_len.i = getelementptr %struct.scsi_sge, ptr %119, i32 %indvars.iv.i, i32 1
  %120 = ptrtoint ptr %sge_len.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %sge_len.i, align 4
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #3
  %sge_len36.i = getelementptr [4 x %struct.scsi_sge], ptr %1, i32 0, i32 %indvars.iv.i, i32 1
  %123 = ptrtoint ptr %sge_len36.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %sge_len36.i, align 4
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body.i.if.end_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.then.if.end_crit_edge, %cond.end5.if.end_crit_edge
  %124 = ptrtoint ptr %rx_io_size to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %rx_io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool12.not = icmp eq i32 %125, 0
  br i1 %tobool12.not, label %if.end.cond.end23_crit_edge, label %if.then13

if.end.cond.end23_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end23

if.then13:                                        ; preds = %if.end
  %mstorm_st_context = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7
  %sgl_params14 = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7, i32 1
  %num_sges1.i44 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_params, i32 0, i32 3
  %126 = ptrtoint ptr %num_sges1.i44 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %num_sges1.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %127)
  %cmp.i45 = icmp ugt i16 %127, 4
  %128 = and i16 %127, 255
  %narrow.i46 = select i1 %cmp.i45, i16 4, i16 %128
  %sgl_phys_addr.i47 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_params, i32 0, i32 1
  %129 = ptrtoint ptr %sgl_phys_addr.i47 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %sgl_phys_addr.i47, align 4
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #3
  %132 = ptrtoint ptr %sgl_params14 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %sgl_params14, align 4
  %hi.i48 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_params, i32 0, i32 1, i32 1
  %133 = ptrtoint ptr %hi.i48 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %hi.i48, align 4
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #3
  %hi9.i49 = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7, i32 1, i32 0, i32 1
  %136 = ptrtoint ptr %hi9.i49 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %hi9.i49, align 4
  %total_buffer_size.i50 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_params, i32 0, i32 2
  %137 = ptrtoint ptr %total_buffer_size.i50 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %total_buffer_size.i50, align 4
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #3
  %sgl_total_length.i51 = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7, i32 1, i32 1
  %140 = ptrtoint ptr %sgl_total_length.i51 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %sgl_total_length.i51, align 4
  %141 = ptrtoint ptr %num_sges1.i44 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %num_sges1.i44, align 4
  %143 = tail call i16 @llvm.bswap.i16(i16 %142) #3
  %sgl_num_sges.i52 = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7, i32 1, i32 3
  %144 = ptrtoint ptr %sgl_num_sges.i52 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %143, ptr %sgl_num_sges.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %narrow.i46)
  %cmp1363.not.i53 = icmp eq i16 %narrow.i46, 0
  br i1 %cmp1363.not.i53, label %if.then13.if.end17_crit_edge, label %for.body.preheader.i55

if.then13.if.end17_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

for.body.preheader.i55:                           ; preds = %if.then13
  %wide.trip.count.i54 = zext i16 %narrow.i46 to i32
  br label %for.body.i65

for.body.i65:                                     ; preds = %for.body.i65.for.body.i65_crit_edge, %for.body.preheader.i55
  %indvars.iv.i56 = phi i32 [ 0, %for.body.preheader.i55 ], [ %indvars.iv.next.i63, %for.body.i65.for.body.i65_crit_edge ]
  %145 = ptrtoint ptr %rx_params to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %rx_params, align 4
  %arrayidx.i57 = getelementptr %struct.scsi_sge, ptr %146, i32 %indvars.iv.i56
  %147 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx.i57, align 4
  %149 = tail call i32 @llvm.bswap.i32(i32 %148) #3
  %arrayidx17.i58 = getelementptr [4 x %struct.scsi_sge], ptr %mstorm_st_context, i32 0, i32 %indvars.iv.i56
  %150 = ptrtoint ptr %arrayidx17.i58 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %arrayidx17.i58, align 4
  %151 = ptrtoint ptr %rx_params to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %rx_params, align 4
  %hi24.i59 = getelementptr %struct.scsi_sge, ptr %152, i32 %indvars.iv.i56, i32 0, i32 1
  %153 = ptrtoint ptr %hi24.i59 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %hi24.i59, align 4
  %155 = tail call i32 @llvm.bswap.i32(i32 %154) #3
  %hi29.i60 = getelementptr inbounds %struct.regpair, ptr %arrayidx17.i58, i32 0, i32 1
  %156 = ptrtoint ptr %hi29.i60 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %hi29.i60, align 4
  %157 = ptrtoint ptr %rx_params to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %rx_params, align 4
  %sge_len.i61 = getelementptr %struct.scsi_sge, ptr %158, i32 %indvars.iv.i56, i32 1
  %159 = ptrtoint ptr %sge_len.i61 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %sge_len.i61, align 4
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #3
  %sge_len36.i62 = getelementptr [4 x %struct.scsi_sge], ptr %mstorm_st_context, i32 0, i32 %indvars.iv.i56, i32 1
  %162 = ptrtoint ptr %sge_len36.i62 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %sge_len36.i62, align 4
  %indvars.iv.next.i63 = add nuw nsw i32 %indvars.iv.i56, 1
  %exitcond.not.i64 = icmp eq i32 %indvars.iv.next.i63, %wide.trip.count.i54
  br i1 %exitcond.not.i64, label %for.body.i65.if.end17_crit_edge, label %for.body.i65.for.body.i65_crit_edge

for.body.i65.for.body.i65_crit_edge:              ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i65

for.body.i65.if.end17_crit_edge:                  ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

if.end17:                                         ; preds = %for.body.i65.if.end17_crit_edge, %if.then13.if.end17_crit_edge
  %163 = ptrtoint ptr %rx_io_size to i32
  call void @__asan_load4_noabort(i32 %163)
  %.pr = load i32, ptr %rx_io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool19.not = icmp eq i32 %.pr, 0
  br i1 %tobool19.not, label %if.end17.cond.end23_crit_edge, label %cond.true20

if.end17.cond.end23_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end23

cond.true20:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  %164 = ptrtoint ptr %total_buffer_size.i50 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %total_buffer_size.i50, align 4
  br label %cond.end23

cond.end23:                                       ; preds = %cond.true20, %if.end17.cond.end23_crit_edge, %if.end.cond.end23_crit_edge
  %cond24 = phi i32 [ %165, %cond.true20 ], [ 0, %if.end17.cond.end23_crit_edge ], [ 0, %if.end.cond.end23_crit_edge ]
  %166 = tail call i32 @llvm.bswap.i32(i32 %cond24)
  %rem_task_size = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7, i32 2
  %167 = ptrtoint ptr %rem_task_size to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %rem_task_size, align 4
  tail call fastcc void @init_sqe(ptr noundef %task_params, ptr noundef %tx_params, ptr noundef null, ptr noundef %login_header, ptr noundef null, i32 noundef 2, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @init_sqe(ptr noundef readonly %task_params, ptr nocapture noundef readonly %sgl_task_params, ptr noundef readonly %dif_task_params, ptr nocapture noundef readonly %pdu_header, ptr nocapture noundef readonly %cmd_params, i32 noundef %task_type, i1 noundef zeroext %is_cleanup) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %sqe = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 1
  %0 = ptrtoint ptr %sqe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sqe, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.sw.epilog_crit_edge, label %if.end

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %1, align 4
  %itid = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 5
  %3 = ptrtoint ptr %itid to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %itid, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %6 = ptrtoint ptr %sqe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sqe, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %5, ptr %7, align 4
  br i1 %is_cleanup, label %do.body, label %if.end11

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %sqe to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sqe, align 4
  %flags = getelementptr inbounds %struct.iscsi_wqe, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags, align 2
  %13 = and i8 %12, -8
  store i8 %13, ptr %flags, align 2
  %14 = load ptr, ptr %sqe, align 4
  %flags8 = getelementptr inbounds %struct.iscsi_wqe, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %flags8 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flags8, align 2
  %17 = or i8 %16, 1
  store i8 %17, ptr %flags8, align 2
  br label %sw.epilog

if.end11:                                         ; preds = %if.end
  %18 = zext i32 %task_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %task_type, label %if.end11.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %do.body83
    i32 9, label %if.end11.do.body135_crit_edge
    i32 2, label %if.end11.do.body135_crit_edge314
  ]

if.end11.do.body135_crit_edge314:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body135

if.end11.do.body135_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body135

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end11
  %tobool.not.i = icmp eq ptr %dif_task_params, null
  %19 = ptrtoint ptr %sqe to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sqe, align 4
  br i1 %tobool.not.i, label %init_dif_context_flags.exit, label %init_dif_context_flags.exit.thread

init_dif_context_flags.exit:                      ; preds = %sw.bb
  %flags15 = getelementptr inbounds %struct.iscsi_wqe, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %flags15 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags15, align 2
  %23 = and i8 %22, -8
  store i8 %23, ptr %flags15, align 2
  %tx_io_size = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 2
  %24 = ptrtoint ptr %tx_io_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool25.not = icmp eq i32 %25, 0
  br i1 %tobool25.not, label %init_dif_context_flags.exit.do.body39_crit_edge, label %init_dif_context_flags.exit.calc_rw_task_size.exit_crit_edge

init_dif_context_flags.exit.calc_rw_task_size.exit_crit_edge: ; preds = %init_dif_context_flags.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %calc_rw_task_size.exit

init_dif_context_flags.exit.do.body39_crit_edge:  ; preds = %init_dif_context_flags.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body39

init_dif_context_flags.exit.thread:               ; preds = %sw.bb
  %prot_flags = getelementptr inbounds %struct.iscsi_wqe, ptr %20, i32 0, i32 2
  %26 = ptrtoint ptr %prot_flags to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %prot_flags, align 1
  %28 = and i8 %27, -16
  store i8 %28, ptr %prot_flags, align 1
  %dif_block_size_log.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 4
  %29 = ptrtoint ptr %dif_block_size_log.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %dif_block_size_log.i, align 2
  %conv2.i = trunc i16 %30 to i8
  %or.i = or i8 %28, %conv2.i
  %31 = and i8 %or.i, -17
  store i8 %31, ptr %prot_flags, align 1
  %dif_on_network.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 5
  %32 = ptrtoint ptr %dif_on_network.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dif_on_network.i, align 4, !range !9
  %34 = shl nuw nsw i8 %33, 4
  %.masked.i = and i8 %conv2.i, 15
  %35 = or i8 %34, %.masked.i
  store i8 %35, ptr %prot_flags, align 1
  %dif_on_host.i = getelementptr inbounds %struct.scsi_dif_task_params, ptr %dif_task_params, i32 0, i32 6
  %36 = ptrtoint ptr %dif_on_host.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dif_on_host.i, align 1, !range !9
  %38 = shl nuw nsw i8 %37, 5
  %or3042.i = or i8 %38, %35
  store i8 %or3042.i, ptr %prot_flags, align 1
  %39 = ptrtoint ptr %sqe to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sqe, align 4
  %flags15309 = getelementptr inbounds %struct.iscsi_wqe, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %flags15309 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %flags15309, align 2
  %43 = and i8 %42, -8
  store i8 %43, ptr %flags15309, align 2
  %tx_io_size310 = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 2
  %44 = ptrtoint ptr %tx_io_size310 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_io_size310, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool25.not311 = icmp eq i32 %45, 0
  br i1 %tobool25.not311, label %init_dif_context_flags.exit.thread.do.body39_crit_edge, label %if.end6.i

init_dif_context_flags.exit.thread.do.body39_crit_edge: ; preds = %init_dif_context_flags.exit.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body39

if.end6.i:                                        ; preds = %init_dif_context_flags.exit.thread
  %46 = ptrtoint ptr %dif_on_network.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %dif_on_network.i, align 4, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool7.not.i = icmp eq i8 %47, 0
  br i1 %tobool7.not.i, label %if.end6.i.calc_rw_task_size.exit_crit_edge, label %cond.false.i

if.end6.i.calc_rw_task_size.exit_crit_edge:       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %calc_rw_task_size.exit

cond.false.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  %total_buffer_size.i = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %sgl_task_params, i32 0, i32 2
  %48 = ptrtoint ptr %total_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %total_buffer_size.i, align 4
  br label %calc_rw_task_size.exit

calc_rw_task_size.exit:                           ; preds = %cond.false.i, %if.end6.i.calc_rw_task_size.exit_crit_edge, %init_dif_context_flags.exit.calc_rw_task_size.exit_crit_edge
  %retval.0.i = phi i32 [ %49, %cond.false.i ], [ %45, %if.end6.i.calc_rw_task_size.exit_crit_edge ], [ %25, %init_dif_context_flags.exit.calc_rw_task_size.exit_crit_edge ]
  %num_sges27 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %sgl_task_params, i32 0, i32 3
  %50 = ptrtoint ptr %num_sges27 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %num_sges27, align 4
  %small_mid_sge = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %sgl_task_params, i32 0, i32 4
  %52 = ptrtoint ptr %small_mid_sge to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %small_mid_sge, align 2, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool28 = icmp ne i8 %53, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %51)
  %cmp.i = icmp ugt i16 %51, 8
  %spec.select.i = and i1 %cmp.i, %tobool28
  br i1 %spec.select.i, label %calc_rw_task_size.exit.do.body39_crit_edge, label %if.else

calc_rw_task_size.exit.do.body39_crit_edge:       ; preds = %calc_rw_task_size.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body39

if.else:                                          ; preds = %calc_rw_task_size.exit
  call void @__sanitizer_cov_trace_pc() #5
  %54 = tail call i16 @llvm.umin.i16(i16 %51, i16 8)
  %55 = trunc i16 %54 to i8
  %phi.bo313 = shl nuw nsw i8 %55, 3
  br label %do.body39

do.body39:                                        ; preds = %if.else, %calc_rw_task_size.exit.do.body39_crit_edge, %init_dif_context_flags.exit.thread.do.body39_crit_edge, %init_dif_context_flags.exit.do.body39_crit_edge
  %num_sges.0.off0 = phi i8 [ %phi.bo313, %if.else ], [ 0, %init_dif_context_flags.exit.do.body39_crit_edge ], [ 120, %calc_rw_task_size.exit.do.body39_crit_edge ], [ 0, %init_dif_context_flags.exit.thread.do.body39_crit_edge ]
  %buf_size.0 = phi i32 [ %retval.0.i, %if.else ], [ 0, %init_dif_context_flags.exit.do.body39_crit_edge ], [ %retval.0.i, %calc_rw_task_size.exit.do.body39_crit_edge ], [ 0, %init_dif_context_flags.exit.thread.do.body39_crit_edge ]
  %56 = ptrtoint ptr %sqe to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sqe, align 4
  %flags41 = getelementptr inbounds %struct.iscsi_wqe, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %flags41 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %flags41, align 2
  %60 = and i8 %59, -121
  store i8 %60, ptr %flags41, align 2
  %61 = load ptr, ptr %sqe, align 4
  %flags47 = getelementptr inbounds %struct.iscsi_wqe, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %flags47 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %flags47, align 2
  %or49 = or i8 %63, %num_sges.0.off0
  store i8 %or49, ptr %flags47, align 2
  %64 = load ptr, ptr %sqe, align 4
  %contlen_cdbsize = getelementptr inbounds %struct.iscsi_wqe, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %contlen_cdbsize to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %contlen_cdbsize, align 4
  %and55 = and i32 %66, -16777216
  store i32 %and55, ptr %contlen_cdbsize, align 4
  %67 = load ptr, ptr %sqe, align 4
  %contlen_cdbsize59 = getelementptr inbounds %struct.iscsi_wqe, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %contlen_cdbsize59 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %contlen_cdbsize59, align 4
  %or61304 = or i32 %69, %buf_size.0
  store i32 %or61304, ptr %contlen_cdbsize59, align 4
  %hdr_second_dword = getelementptr inbounds %struct.iscsi_common_hdr, ptr %pdu_header, i32 0, i32 4
  %70 = ptrtoint ptr %hdr_second_dword to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %hdr_second_dword, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %71)
  %tobool66.not = icmp ult i32 %71, 16777216
  br i1 %tobool66.not, label %do.body39.sw.epilog_crit_edge, label %do.body68

do.body39.sw.epilog_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.body68:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #5
  %72 = ptrtoint ptr %sqe to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sqe, align 4
  %contlen_cdbsize70 = getelementptr inbounds %struct.iscsi_wqe, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %contlen_cdbsize70 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %contlen_cdbsize70, align 4
  %and71 = and i32 %75, 16777215
  store i32 %and71, ptr %contlen_cdbsize70, align 4
  %sge_len = getelementptr inbounds %struct.scsi_sge, ptr %cmd_params, i32 0, i32 1
  %76 = ptrtoint ptr %sge_len to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sge_len, align 4
  %shl73 = shl i32 %77, 24
  %78 = load ptr, ptr %sqe, align 4
  %contlen_cdbsize75 = getelementptr inbounds %struct.iscsi_wqe, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %contlen_cdbsize75 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %contlen_cdbsize75, align 4
  %or77 = or i32 %80, %shl73
  store i32 %or77, ptr %contlen_cdbsize75, align 4
  br label %sw.epilog

do.body83:                                        ; preds = %if.end11
  %81 = ptrtoint ptr %sqe to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sqe, align 4
  %flags85 = getelementptr inbounds %struct.iscsi_wqe, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %flags85 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %flags85, align 2
  %85 = and i8 %84, -8
  store i8 %85, ptr %flags85, align 2
  %hdr_second_dword96 = getelementptr inbounds %struct.iscsi_common_hdr, ptr %pdu_header, i32 0, i32 4
  %86 = ptrtoint ptr %hdr_second_dword96 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %hdr_second_dword96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %87)
  %tobool99.not = icmp ult i32 %87, 16777216
  br i1 %tobool99.not, label %do.body83.sw.epilog_crit_edge, label %do.body101

do.body83.sw.epilog_crit_edge:                    ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.body101:                                       ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #5
  %88 = ptrtoint ptr %sqe to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sqe, align 4
  %contlen_cdbsize103 = getelementptr inbounds %struct.iscsi_wqe, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %contlen_cdbsize103 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %contlen_cdbsize103, align 4
  %and104 = and i32 %91, 16777215
  store i32 %and104, ptr %contlen_cdbsize103, align 4
  %sge_len106 = getelementptr inbounds %struct.scsi_sge, ptr %cmd_params, i32 0, i32 1
  %92 = ptrtoint ptr %sge_len106 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %sge_len106, align 4
  %shl108 = shl i32 %93, 24
  %94 = load ptr, ptr %sqe, align 4
  %contlen_cdbsize110 = getelementptr inbounds %struct.iscsi_wqe, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %contlen_cdbsize110 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %contlen_cdbsize110, align 4
  %or112 = or i32 %96, %shl108
  store i32 %or112, ptr %contlen_cdbsize110, align 4
  br label %sw.epilog

do.body135:                                       ; preds = %if.end11.do.body135_crit_edge, %if.end11.do.body135_crit_edge314
  %97 = ptrtoint ptr %sqe to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %sqe, align 4
  %flags137 = getelementptr inbounds %struct.iscsi_wqe, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %flags137 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %flags137, align 2
  %101 = and i8 %100, -8
  store i8 %101, ptr %flags137, align 2
  %102 = load ptr, ptr %sqe, align 4
  %flags142 = getelementptr inbounds %struct.iscsi_wqe, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %flags142 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %flags142, align 2
  %105 = or i8 %104, 2
  store i8 %105, ptr %flags142, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %task_type)
  %cmp149 = icmp eq i32 %task_type, 2
  br i1 %cmp149, label %if.then151, label %do.body135.do.body167_crit_edge

do.body135.do.body167_crit_edge:                  ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body167

if.then151:                                       ; preds = %do.body135
  %hdr_first_byte = getelementptr inbounds %struct.iscsi_common_hdr, ptr %pdu_header, i32 0, i32 3
  %106 = ptrtoint ptr %hdr_first_byte to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %hdr_first_byte, align 1
  %trunc = trunc i8 %107 to i6
  %108 = zext i6 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.4)
  switch i6 %trunc, label %if.then151.if.then164_crit_edge [
    i6 -28, label %if.then151.do.body167_crit_edge
    i6 -32, label %lor.lhs.false
  ]

if.then151.do.body167_crit_edge:                  ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body167

if.then151.if.then164_crit_edge:                  ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then164

lor.lhs.false:                                    ; preds = %if.then151
  %itt = getelementptr inbounds %struct.iscsi_common_hdr, ptr %pdu_header, i32 0, i32 6
  %109 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %itt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %110)
  %cmp162 = icmp eq i32 %110, -1
  br i1 %cmp162, label %lor.lhs.false.if.then164_crit_edge, label %lor.lhs.false.do.body167_crit_edge

lor.lhs.false.do.body167_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body167

lor.lhs.false.if.then164_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then164

if.then164:                                       ; preds = %lor.lhs.false.if.then164_crit_edge, %if.then151.if.then164_crit_edge
  br label %do.body167

do.body167:                                       ; preds = %if.then164, %lor.lhs.false.do.body167_crit_edge, %if.then151.do.body167_crit_edge, %do.body135.do.body167_crit_edge
  %advance_statsn.1.off0 = phi i8 [ -128, %do.body135.do.body167_crit_edge ], [ 0, %if.then164 ], [ -128, %lor.lhs.false.do.body167_crit_edge ], [ -128, %if.then151.do.body167_crit_edge ]
  %111 = ptrtoint ptr %sqe to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %sqe, align 4
  %flags169 = getelementptr inbounds %struct.iscsi_wqe, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %flags169 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %flags169, align 2
  %115 = and i8 %114, 127
  store i8 %115, ptr %flags169, align 2
  %116 = load ptr, ptr %sqe, align 4
  %flags178 = getelementptr inbounds %struct.iscsi_wqe, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %flags178 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %flags178, align 2
  %or180 = or i8 %118, %advance_statsn.1.off0
  store i8 %or180, ptr %flags178, align 2
  %tx_io_size184 = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 2
  %119 = ptrtoint ptr %tx_io_size184 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %tx_io_size184, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool185.not = icmp eq i32 %120, 0
  br i1 %tobool185.not, label %do.body167.sw.epilog_crit_edge, label %do.body187

do.body167.sw.epilog_crit_edge:                   ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

do.body187:                                       ; preds = %do.body167
  %121 = ptrtoint ptr %sqe to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %sqe, align 4
  %contlen_cdbsize189 = getelementptr inbounds %struct.iscsi_wqe, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %contlen_cdbsize189 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %contlen_cdbsize189, align 4
  %and190 = and i32 %124, -16777216
  store i32 %and190, ptr %contlen_cdbsize189, align 4
  %125 = ptrtoint ptr %tx_io_size184 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %tx_io_size184, align 4
  %127 = load ptr, ptr %sqe, align 4
  %contlen_cdbsize195 = getelementptr inbounds %struct.iscsi_wqe, ptr %127, i32 0, i32 3
  %128 = ptrtoint ptr %contlen_cdbsize195 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %contlen_cdbsize195, align 4
  %or197302 = or i32 %129, %126
  store i32 %or197302, ptr %contlen_cdbsize195, align 4
  %num_sges201 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %sgl_task_params, i32 0, i32 3
  %130 = ptrtoint ptr %num_sges201 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %num_sges201, align 4
  %small_mid_sge202 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %sgl_task_params, i32 0, i32 4
  %132 = ptrtoint ptr %small_mid_sge202 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %small_mid_sge202, align 2, !range !9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool203 = icmp ne i8 %133, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %131)
  %cmp.i307 = icmp ugt i16 %131, 8
  %spec.select.i308 = and i1 %cmp.i307, %tobool203
  %134 = ptrtoint ptr %sqe to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %sqe, align 4
  %flags208 = getelementptr inbounds %struct.iscsi_wqe, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %flags208 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %flags208, align 2
  %138 = and i8 %137, -121
  store i8 %138, ptr %flags208, align 2
  br i1 %spec.select.i308, label %do.body206, label %do.body220

do.body206:                                       ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #5
  %139 = ptrtoint ptr %sqe to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %sqe, align 4
  %flags213 = getelementptr inbounds %struct.iscsi_wqe, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %flags213 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %flags213, align 2
  %143 = or i8 %142, 120
  store i8 %143, ptr %flags213, align 2
  br label %sw.epilog

do.body220:                                       ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #5
  %144 = ptrtoint ptr %num_sges201 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %num_sges201, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %145)
  %cmp230 = icmp ult i16 %145, 8
  %conv228 = trunc i16 %145 to i8
  %phi.bo = shl i8 %conv228, 3
  %cond237 = select i1 %cmp230, i8 %phi.bo, i8 64
  %146 = ptrtoint ptr %sqe to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %sqe, align 4
  %flags241 = getelementptr inbounds %struct.iscsi_wqe, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %flags241 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %flags241, align 2
  %or243 = or i8 %cond237, %149
  store i8 %or243, ptr %flags241, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body220, %do.body206, %do.body167.sw.epilog_crit_edge, %do.body101, %do.body83.sw.epilog_crit_edge, %do.body68, %do.body39.sw.epilog_crit_edge, %if.end11.sw.epilog_crit_edge, %do.body, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_initiator_nop_out_task(ptr noundef %task_params, ptr nocapture noundef readonly %nop_out_pdu_header, ptr nocapture noundef readonly %tx_sgl_task_params, ptr nocapture noundef readonly %rx_sgl_task_params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %task_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task_params, align 4
  %mstorm_ag_context.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mstorm_ag_context.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mstorm_ag_context.i, align 4
  %4 = call ptr @memset(ptr %1, i32 0, i32 512)
  store i8 %3, ptr %mstorm_ag_context.i, align 4
  %pdu_hdr.i = getelementptr inbounds %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %nop_out_pdu_header to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nop_out_pdu_header, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #3
  %8 = ptrtoint ptr %pdu_hdr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pdu_hdr.i, align 4
  %arrayidx.1.i = getelementptr [12 x i32], ptr %nop_out_pdu_header, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #3
  %arrayidx7.1.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx7.1.i, align 4
  %arrayidx.2.i = getelementptr [12 x i32], ptr %nop_out_pdu_header, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.2.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #3
  %arrayidx7.2.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 5
  %16 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx7.2.i, align 4
  %arrayidx.3.i = getelementptr [12 x i32], ptr %nop_out_pdu_header, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.3.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #3
  %arrayidx7.3.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %arrayidx7.3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx7.3.i, align 4
  %arrayidx.4.i = getelementptr [12 x i32], ptr %nop_out_pdu_header, i32 0, i32 4
  %21 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.4.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #3
  %arrayidx7.4.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 6
  %24 = ptrtoint ptr %arrayidx7.4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx7.4.i, align 4
  %arrayidx.5.i = getelementptr [12 x i32], ptr %nop_out_pdu_header, i32 0, i32 5
  %25 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.5.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #3
  %arrayidx7.5.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 7
  %28 = ptrtoint ptr %arrayidx7.5.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx7.5.i, align 4
  %arrayidx.6.i = getelementptr [12 x i32], ptr %nop_out_pdu_header, i32 0, i32 6
  %29 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.6.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #3
  %arrayidx7.6.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 8
  %32 = ptrtoint ptr %arrayidx7.6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx7.6.i, align 4
  %arrayidx.7.i = getelementptr [12 x i32], ptr %nop_out_pdu_header, i32 0, i32 7
  %33 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.7.i, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #3
  %arrayidx7.7.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 9
  %36 = ptrtoint ptr %arrayidx7.7.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx7.7.i, align 4
  %arrayidx.8.i = getelementptr [12 x i32], ptr %nop_out_pdu_header, i32 0, i32 8
  %37 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.8.i, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #3
  %arrayidx7.8.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 10
  %40 = ptrtoint ptr %arrayidx7.8.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx7.8.i, align 4
  %arrayidx.9.i = getelementptr [12 x i32], ptr %nop_out_pdu_header, i32 0, i32 9
  %41 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.9.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #3
  %arrayidx7.9.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 11
  %44 = ptrtoint ptr %arrayidx7.9.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx7.9.i, align 4
  %arrayidx.10.i = getelementptr [12 x i32], ptr %nop_out_pdu_header, i32 0, i32 10
  %45 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.10.i, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #3
  %arrayidx7.10.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 11, i32 1
  %48 = ptrtoint ptr %arrayidx7.10.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx7.10.i, align 4
  %arrayidx.11.i = getelementptr [12 x i32], ptr %nop_out_pdu_header, i32 0, i32 11
  %49 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.11.i, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #3
  %arrayidx7.11.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 11, i32 2
  %52 = ptrtoint ptr %arrayidx7.11.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx7.11.i, align 4
  %task_type9.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7, i32 4
  %53 = ptrtoint ptr %task_type9.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 2, ptr %task_type9.i, align 4
  %conn_icid.i = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 4
  %54 = ptrtoint ptr %conn_icid.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %conn_icid.i, align 4
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #3
  %task_cid.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 4, i32 2
  %57 = ptrtoint ptr %task_cid.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %task_cid.i, align 2
  %flags1.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 6, i32 4
  %58 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 4, ptr %flags1.i, align 1
  %task_type18.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 8, i32 12
  %59 = ptrtoint ptr %task_type18.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 2, ptr %task_type18.i, align 4
  %cq_rss_number.i = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 6
  %60 = ptrtoint ptr %cq_rss_number.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %cq_rss_number.i, align 4
  %cq_rss_number20.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 8, i32 15
  %62 = ptrtoint ptr %cq_rss_number20.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %cq_rss_number20.i, align 1
  %63 = ptrtoint ptr %conn_icid.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %conn_icid.i, align 4
  %65 = tail call i16 @llvm.bswap.i16(i16 %64) #3
  %icid.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 6, i32 2
  %66 = ptrtoint ptr %icid.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %icid.i, align 2
  %67 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %68)
  %cmp = icmp eq i32 %68, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %69 = ptrtoint ptr %task_params to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task_params, align 4
  %flags.i = getelementptr inbounds %struct.ystorm_iscsi_task_state, ptr %70, i32 0, i32 6
  %71 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %flags.i, align 1
  %73 = or i8 %72, 1
  store i8 %73, ptr %flags.i, align 1
  %flags8.i = getelementptr inbounds %struct.iscsi_task_context, ptr %70, i32 0, i32 8, i32 14
  %74 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %flags8.i, align 2
  %76 = or i8 %75, 4
  store i8 %76, ptr %flags8.i, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx_io_size = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 2
  %77 = ptrtoint ptr %tx_io_size to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tx_io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not = icmp eq i32 %78, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

if.then2:                                         ; preds = %if.end
  %sgl_params = getelementptr inbounds %struct.ystorm_iscsi_task_state, ptr %1, i32 0, i32 1
  %num_sges1.i = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_sgl_task_params, i32 0, i32 3
  %79 = ptrtoint ptr %num_sges1.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %num_sges1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %80)
  %cmp.i = icmp ugt i16 %80, 4
  %81 = and i16 %80, 255
  %narrow.i = select i1 %cmp.i, i16 4, i16 %81
  %sgl_phys_addr.i = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_sgl_task_params, i32 0, i32 1
  %82 = ptrtoint ptr %sgl_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %sgl_phys_addr.i, align 4
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #3
  %85 = ptrtoint ptr %sgl_params to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %sgl_params, align 4
  %hi.i = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_sgl_task_params, i32 0, i32 1, i32 1
  %86 = ptrtoint ptr %hi.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %hi.i, align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #3
  %hi9.i = getelementptr inbounds %struct.ystorm_iscsi_task_state, ptr %1, i32 0, i32 1, i32 0, i32 1
  %89 = ptrtoint ptr %hi9.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %hi9.i, align 4
  %total_buffer_size.i = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_sgl_task_params, i32 0, i32 2
  %90 = ptrtoint ptr %total_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %total_buffer_size.i, align 4
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #3
  %sgl_total_length.i = getelementptr inbounds %struct.ystorm_iscsi_task_state, ptr %1, i32 0, i32 1, i32 1
  %93 = ptrtoint ptr %sgl_total_length.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %sgl_total_length.i, align 4
  %94 = ptrtoint ptr %num_sges1.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %num_sges1.i, align 4
  %96 = tail call i16 @llvm.bswap.i16(i16 %95) #3
  %sgl_num_sges.i = getelementptr inbounds %struct.ystorm_iscsi_task_state, ptr %1, i32 0, i32 1, i32 3
  %97 = ptrtoint ptr %sgl_num_sges.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %sgl_num_sges.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %narrow.i)
  %cmp1363.not.i = icmp eq i16 %narrow.i, 0
  br i1 %cmp1363.not.i, label %if.then2.if.end5_crit_edge, label %for.body.preheader.i

if.then2.if.end5_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

for.body.preheader.i:                             ; preds = %if.then2
  %wide.trip.count.i = zext i16 %narrow.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %98 = ptrtoint ptr %tx_sgl_task_params to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %tx_sgl_task_params, align 4
  %arrayidx.i = getelementptr %struct.scsi_sge, ptr %99, i32 %indvars.iv.i
  %100 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i, align 4
  %102 = tail call i32 @llvm.bswap.i32(i32 %101) #3
  %arrayidx17.i = getelementptr [4 x %struct.scsi_sge], ptr %1, i32 0, i32 %indvars.iv.i
  %103 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %arrayidx17.i, align 4
  %104 = ptrtoint ptr %tx_sgl_task_params to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tx_sgl_task_params, align 4
  %hi24.i = getelementptr %struct.scsi_sge, ptr %105, i32 %indvars.iv.i, i32 0, i32 1
  %106 = ptrtoint ptr %hi24.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %hi24.i, align 4
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #3
  %hi29.i = getelementptr inbounds %struct.regpair, ptr %arrayidx17.i, i32 0, i32 1
  %109 = ptrtoint ptr %hi29.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %hi29.i, align 4
  %110 = ptrtoint ptr %tx_sgl_task_params to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %tx_sgl_task_params, align 4
  %sge_len.i = getelementptr %struct.scsi_sge, ptr %111, i32 %indvars.iv.i, i32 1
  %112 = ptrtoint ptr %sge_len.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %sge_len.i, align 4
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #3
  %sge_len36.i = getelementptr [4 x %struct.scsi_sge], ptr %1, i32 0, i32 %indvars.iv.i, i32 1
  %115 = ptrtoint ptr %sge_len36.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %sge_len36.i, align 4
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body.i.if.end5_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.body.i.if.end5_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

if.end5:                                          ; preds = %for.body.i.if.end5_crit_edge, %if.then2.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %rx_io_size = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 3
  %116 = ptrtoint ptr %rx_io_size to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rx_io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool6.not = icmp eq i32 %117, 0
  br i1 %tobool6.not, label %if.end5.cond.end_crit_edge, label %if.then7

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

if.then7:                                         ; preds = %if.end5
  %mstorm_st_context = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7
  %sgl_params8 = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7, i32 1
  %num_sges1.i49 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_sgl_task_params, i32 0, i32 3
  %118 = ptrtoint ptr %num_sges1.i49 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %num_sges1.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %119)
  %cmp.i50 = icmp ugt i16 %119, 4
  %120 = and i16 %119, 255
  %narrow.i51 = select i1 %cmp.i50, i16 4, i16 %120
  %sgl_phys_addr.i52 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_sgl_task_params, i32 0, i32 1
  %121 = ptrtoint ptr %sgl_phys_addr.i52 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %sgl_phys_addr.i52, align 4
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #3
  %124 = ptrtoint ptr %sgl_params8 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %sgl_params8, align 4
  %hi.i53 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_sgl_task_params, i32 0, i32 1, i32 1
  %125 = ptrtoint ptr %hi.i53 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %hi.i53, align 4
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #3
  %hi9.i54 = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7, i32 1, i32 0, i32 1
  %128 = ptrtoint ptr %hi9.i54 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %hi9.i54, align 4
  %total_buffer_size.i55 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_sgl_task_params, i32 0, i32 2
  %129 = ptrtoint ptr %total_buffer_size.i55 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %total_buffer_size.i55, align 4
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #3
  %sgl_total_length.i56 = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7, i32 1, i32 1
  %132 = ptrtoint ptr %sgl_total_length.i56 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %sgl_total_length.i56, align 4
  %133 = ptrtoint ptr %num_sges1.i49 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %num_sges1.i49, align 4
  %135 = tail call i16 @llvm.bswap.i16(i16 %134) #3
  %sgl_num_sges.i57 = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7, i32 1, i32 3
  %136 = ptrtoint ptr %sgl_num_sges.i57 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %135, ptr %sgl_num_sges.i57, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %narrow.i51)
  %cmp1363.not.i58 = icmp eq i16 %narrow.i51, 0
  br i1 %cmp1363.not.i58, label %if.then7.if.end11_crit_edge, label %for.body.preheader.i60

if.then7.if.end11_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

for.body.preheader.i60:                           ; preds = %if.then7
  %wide.trip.count.i59 = zext i16 %narrow.i51 to i32
  br label %for.body.i70

for.body.i70:                                     ; preds = %for.body.i70.for.body.i70_crit_edge, %for.body.preheader.i60
  %indvars.iv.i61 = phi i32 [ 0, %for.body.preheader.i60 ], [ %indvars.iv.next.i68, %for.body.i70.for.body.i70_crit_edge ]
  %137 = ptrtoint ptr %rx_sgl_task_params to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %rx_sgl_task_params, align 4
  %arrayidx.i62 = getelementptr %struct.scsi_sge, ptr %138, i32 %indvars.iv.i61
  %139 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx.i62, align 4
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #3
  %arrayidx17.i63 = getelementptr [4 x %struct.scsi_sge], ptr %mstorm_st_context, i32 0, i32 %indvars.iv.i61
  %142 = ptrtoint ptr %arrayidx17.i63 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %arrayidx17.i63, align 4
  %143 = ptrtoint ptr %rx_sgl_task_params to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %rx_sgl_task_params, align 4
  %hi24.i64 = getelementptr %struct.scsi_sge, ptr %144, i32 %indvars.iv.i61, i32 0, i32 1
  %145 = ptrtoint ptr %hi24.i64 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %hi24.i64, align 4
  %147 = tail call i32 @llvm.bswap.i32(i32 %146) #3
  %hi29.i65 = getelementptr inbounds %struct.regpair, ptr %arrayidx17.i63, i32 0, i32 1
  %148 = ptrtoint ptr %hi29.i65 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %hi29.i65, align 4
  %149 = ptrtoint ptr %rx_sgl_task_params to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %rx_sgl_task_params, align 4
  %sge_len.i66 = getelementptr %struct.scsi_sge, ptr %150, i32 %indvars.iv.i61, i32 1
  %151 = ptrtoint ptr %sge_len.i66 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %sge_len.i66, align 4
  %153 = tail call i32 @llvm.bswap.i32(i32 %152) #3
  %sge_len36.i67 = getelementptr [4 x %struct.scsi_sge], ptr %mstorm_st_context, i32 0, i32 %indvars.iv.i61, i32 1
  %154 = ptrtoint ptr %sge_len36.i67 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %sge_len36.i67, align 4
  %indvars.iv.next.i68 = add nuw nsw i32 %indvars.iv.i61, 1
  %exitcond.not.i69 = icmp eq i32 %indvars.iv.next.i68, %wide.trip.count.i59
  br i1 %exitcond.not.i69, label %for.body.i70.if.end11_crit_edge, label %for.body.i70.for.body.i70_crit_edge

for.body.i70.for.body.i70_crit_edge:              ; preds = %for.body.i70
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i70

for.body.i70.if.end11_crit_edge:                  ; preds = %for.body.i70
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

if.end11:                                         ; preds = %for.body.i70.if.end11_crit_edge, %if.then7.if.end11_crit_edge
  %155 = ptrtoint ptr %rx_io_size to i32
  call void @__asan_load4_noabort(i32 %155)
  %.pr = load i32, ptr %rx_io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool13.not = icmp eq i32 %.pr, 0
  br i1 %tobool13.not, label %if.end11.cond.end_crit_edge, label %cond.true

if.end11.cond.end_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

cond.true:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  %156 = ptrtoint ptr %total_buffer_size.i55 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %total_buffer_size.i55, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end11.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi i32 [ %157, %cond.true ], [ 0, %if.end11.cond.end_crit_edge ], [ 0, %if.end5.cond.end_crit_edge ]
  %ustorm_st_context75 = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 8
  %158 = ptrtoint ptr %tx_io_size to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %tx_io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool15.not = icmp eq i32 %159, 0
  br i1 %tobool15.not, label %cond.end.cond.end19_crit_edge, label %cond.true16

cond.end.cond.end19_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end19

cond.true16:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  %total_buffer_size17 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_sgl_task_params, i32 0, i32 2
  %160 = ptrtoint ptr %total_buffer_size17 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %total_buffer_size17, align 4
  br label %cond.end19

cond.end19:                                       ; preds = %cond.true16, %cond.end.cond.end19_crit_edge
  %cond20 = phi i32 [ %161, %cond.true16 ], [ 0, %cond.end.cond.end19_crit_edge ]
  %162 = tail call i32 @llvm.bswap.i32(i32 %cond) #3
  %163 = ptrtoint ptr %ustorm_st_context75 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %ustorm_st_context75, align 4
  %164 = tail call i32 @llvm.bswap.i32(i32 %cond20) #3
  %exp_data_acked.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 6, i32 12
  %165 = ptrtoint ptr %exp_data_acked.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %exp_data_acked.i, align 4
  %exp_data_transfer_len.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 8, i32 1
  %166 = ptrtoint ptr %exp_data_transfer_len.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %164, ptr %exp_data_transfer_len.i, align 4
  %reg1.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 8, i32 4
  %167 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %reg1.i, align 4
  %and.i = and i32 %168, -16
  store i32 %and.i, ptr %reg1.i, align 4
  %flags2.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 6, i32 5
  %169 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %flags2.i, align 2
  %171 = and i8 %170, -17
  store i8 %171, ptr %flags2.i, align 2
  %172 = ptrtoint ptr %rx_io_size to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %rx_io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %tobool22.not = icmp eq i32 %173, 0
  br i1 %tobool22.not, label %cond.end19.cond.end26_crit_edge, label %cond.true23

cond.end19.cond.end26_crit_edge:                  ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end26

cond.true23:                                      ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #5
  %total_buffer_size24 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_sgl_task_params, i32 0, i32 2
  %174 = ptrtoint ptr %total_buffer_size24 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %total_buffer_size24, align 4
  br label %cond.end26

cond.end26:                                       ; preds = %cond.true23, %cond.end19.cond.end26_crit_edge
  %cond27 = phi i32 [ %175, %cond.true23 ], [ 0, %cond.end19.cond.end26_crit_edge ]
  %176 = tail call i32 @llvm.bswap.i32(i32 %cond27)
  %rem_task_size = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7, i32 2
  %177 = ptrtoint ptr %rem_task_size to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %rem_task_size, align 4
  tail call fastcc void @init_sqe(ptr noundef %task_params, ptr noundef %tx_sgl_task_params, ptr noundef null, ptr noundef %nop_out_pdu_header, ptr noundef null, i32 noundef 2, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_initiator_logout_request_task(ptr noundef %task_params, ptr nocapture noundef readonly %logout_hdr, ptr nocapture noundef readonly %tx_params, ptr nocapture noundef readonly %rx_params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %task_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task_params, align 4
  %mstorm_ag_context.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mstorm_ag_context.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mstorm_ag_context.i, align 4
  %4 = call ptr @memset(ptr %1, i32 0, i32 512)
  store i8 %3, ptr %mstorm_ag_context.i, align 4
  %pdu_hdr.i = getelementptr inbounds %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %logout_hdr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %logout_hdr, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #3
  %8 = ptrtoint ptr %pdu_hdr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pdu_hdr.i, align 4
  %arrayidx.1.i = getelementptr [12 x i32], ptr %logout_hdr, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #3
  %arrayidx7.1.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx7.1.i, align 4
  %arrayidx.2.i = getelementptr [12 x i32], ptr %logout_hdr, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.2.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #3
  %arrayidx7.2.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 5
  %16 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx7.2.i, align 4
  %arrayidx.3.i = getelementptr [12 x i32], ptr %logout_hdr, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.3.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #3
  %arrayidx7.3.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %arrayidx7.3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx7.3.i, align 4
  %arrayidx.4.i = getelementptr [12 x i32], ptr %logout_hdr, i32 0, i32 4
  %21 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.4.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #3
  %arrayidx7.4.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 6
  %24 = ptrtoint ptr %arrayidx7.4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx7.4.i, align 4
  %arrayidx.5.i = getelementptr [12 x i32], ptr %logout_hdr, i32 0, i32 5
  %25 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.5.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #3
  %arrayidx7.5.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 7
  %28 = ptrtoint ptr %arrayidx7.5.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx7.5.i, align 4
  %arrayidx.6.i = getelementptr [12 x i32], ptr %logout_hdr, i32 0, i32 6
  %29 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.6.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #3
  %arrayidx7.6.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 8
  %32 = ptrtoint ptr %arrayidx7.6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx7.6.i, align 4
  %arrayidx.7.i = getelementptr [12 x i32], ptr %logout_hdr, i32 0, i32 7
  %33 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.7.i, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #3
  %arrayidx7.7.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 9
  %36 = ptrtoint ptr %arrayidx7.7.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx7.7.i, align 4
  %arrayidx.8.i = getelementptr [12 x i32], ptr %logout_hdr, i32 0, i32 8
  %37 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.8.i, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #3
  %arrayidx7.8.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 10
  %40 = ptrtoint ptr %arrayidx7.8.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx7.8.i, align 4
  %arrayidx.9.i = getelementptr [12 x i32], ptr %logout_hdr, i32 0, i32 9
  %41 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.9.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #3
  %arrayidx7.9.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 11
  %44 = ptrtoint ptr %arrayidx7.9.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx7.9.i, align 4
  %arrayidx.10.i = getelementptr [12 x i32], ptr %logout_hdr, i32 0, i32 10
  %45 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.10.i, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #3
  %arrayidx7.10.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 11, i32 1
  %48 = ptrtoint ptr %arrayidx7.10.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx7.10.i, align 4
  %arrayidx.11.i = getelementptr [12 x i32], ptr %logout_hdr, i32 0, i32 11
  %49 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.11.i, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #3
  %arrayidx7.11.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 11, i32 2
  %52 = ptrtoint ptr %arrayidx7.11.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx7.11.i, align 4
  %task_type9.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7, i32 4
  %53 = ptrtoint ptr %task_type9.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 2, ptr %task_type9.i, align 4
  %conn_icid.i = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 4
  %54 = ptrtoint ptr %conn_icid.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %conn_icid.i, align 4
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #3
  %task_cid.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 4, i32 2
  %57 = ptrtoint ptr %task_cid.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %task_cid.i, align 2
  %flags1.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 6, i32 4
  %58 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 4, ptr %flags1.i, align 1
  %task_type18.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 8, i32 12
  %59 = ptrtoint ptr %task_type18.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 2, ptr %task_type18.i, align 4
  %cq_rss_number.i = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 6
  %60 = ptrtoint ptr %cq_rss_number.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %cq_rss_number.i, align 4
  %cq_rss_number20.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 8, i32 15
  %62 = ptrtoint ptr %cq_rss_number20.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %cq_rss_number20.i, align 1
  %63 = ptrtoint ptr %conn_icid.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %conn_icid.i, align 4
  %65 = tail call i16 @llvm.bswap.i16(i16 %64) #3
  %icid.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 6, i32 2
  %66 = ptrtoint ptr %icid.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %icid.i, align 2
  %tx_io_size = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 2
  %67 = ptrtoint ptr %tx_io_size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx_io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not = icmp eq i32 %68, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  %sgl_params = getelementptr inbounds %struct.ystorm_iscsi_task_state, ptr %1, i32 0, i32 1
  %num_sges1.i = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_params, i32 0, i32 3
  %69 = ptrtoint ptr %num_sges1.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %num_sges1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %70)
  %cmp.i = icmp ugt i16 %70, 4
  %71 = and i16 %70, 255
  %narrow.i = select i1 %cmp.i, i16 4, i16 %71
  %sgl_phys_addr.i = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_params, i32 0, i32 1
  %72 = ptrtoint ptr %sgl_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sgl_phys_addr.i, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #3
  %75 = ptrtoint ptr %sgl_params to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %sgl_params, align 4
  %hi.i = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_params, i32 0, i32 1, i32 1
  %76 = ptrtoint ptr %hi.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %hi.i, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #3
  %hi9.i = getelementptr inbounds %struct.ystorm_iscsi_task_state, ptr %1, i32 0, i32 1, i32 0, i32 1
  %79 = ptrtoint ptr %hi9.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %hi9.i, align 4
  %total_buffer_size.i = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_params, i32 0, i32 2
  %80 = ptrtoint ptr %total_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %total_buffer_size.i, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #3
  %sgl_total_length.i = getelementptr inbounds %struct.ystorm_iscsi_task_state, ptr %1, i32 0, i32 1, i32 1
  %83 = ptrtoint ptr %sgl_total_length.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %sgl_total_length.i, align 4
  %84 = ptrtoint ptr %num_sges1.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %num_sges1.i, align 4
  %86 = tail call i16 @llvm.bswap.i16(i16 %85) #3
  %sgl_num_sges.i = getelementptr inbounds %struct.ystorm_iscsi_task_state, ptr %1, i32 0, i32 1, i32 3
  %87 = ptrtoint ptr %sgl_num_sges.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %sgl_num_sges.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %narrow.i)
  %cmp1363.not.i = icmp eq i16 %narrow.i, 0
  br i1 %cmp1363.not.i, label %if.then.if.end_crit_edge, label %for.body.preheader.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

for.body.preheader.i:                             ; preds = %if.then
  %wide.trip.count.i = zext i16 %narrow.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %88 = ptrtoint ptr %tx_params to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tx_params, align 4
  %arrayidx.i = getelementptr %struct.scsi_sge, ptr %89, i32 %indvars.iv.i
  %90 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i, align 4
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #3
  %arrayidx17.i = getelementptr [4 x %struct.scsi_sge], ptr %1, i32 0, i32 %indvars.iv.i
  %93 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %arrayidx17.i, align 4
  %94 = ptrtoint ptr %tx_params to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tx_params, align 4
  %hi24.i = getelementptr %struct.scsi_sge, ptr %95, i32 %indvars.iv.i, i32 0, i32 1
  %96 = ptrtoint ptr %hi24.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %hi24.i, align 4
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #3
  %hi29.i = getelementptr inbounds %struct.regpair, ptr %arrayidx17.i, i32 0, i32 1
  %99 = ptrtoint ptr %hi29.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %hi29.i, align 4
  %100 = ptrtoint ptr %tx_params to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %tx_params, align 4
  %sge_len.i = getelementptr %struct.scsi_sge, ptr %101, i32 %indvars.iv.i, i32 1
  %102 = ptrtoint ptr %sge_len.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %sge_len.i, align 4
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #3
  %sge_len36.i = getelementptr [4 x %struct.scsi_sge], ptr %1, i32 0, i32 %indvars.iv.i, i32 1
  %105 = ptrtoint ptr %sge_len36.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %sge_len36.i, align 4
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body.i.if.end_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %rx_io_size = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 3
  %106 = ptrtoint ptr %rx_io_size to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %rx_io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool3.not = icmp eq i32 %107, 0
  br i1 %tobool3.not, label %if.end.cond.end_crit_edge, label %if.then4

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

if.then4:                                         ; preds = %if.end
  %mstorm_st_context = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7
  %sgl_params5 = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7, i32 1
  %num_sges1.i44 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_params, i32 0, i32 3
  %108 = ptrtoint ptr %num_sges1.i44 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %num_sges1.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %109)
  %cmp.i45 = icmp ugt i16 %109, 4
  %110 = and i16 %109, 255
  %narrow.i46 = select i1 %cmp.i45, i16 4, i16 %110
  %sgl_phys_addr.i47 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_params, i32 0, i32 1
  %111 = ptrtoint ptr %sgl_phys_addr.i47 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %sgl_phys_addr.i47, align 4
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #3
  %114 = ptrtoint ptr %sgl_params5 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %sgl_params5, align 4
  %hi.i48 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_params, i32 0, i32 1, i32 1
  %115 = ptrtoint ptr %hi.i48 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %hi.i48, align 4
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #3
  %hi9.i49 = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7, i32 1, i32 0, i32 1
  %118 = ptrtoint ptr %hi9.i49 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %hi9.i49, align 4
  %total_buffer_size.i50 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_params, i32 0, i32 2
  %119 = ptrtoint ptr %total_buffer_size.i50 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %total_buffer_size.i50, align 4
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #3
  %sgl_total_length.i51 = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7, i32 1, i32 1
  %122 = ptrtoint ptr %sgl_total_length.i51 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %sgl_total_length.i51, align 4
  %123 = ptrtoint ptr %num_sges1.i44 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %num_sges1.i44, align 4
  %125 = tail call i16 @llvm.bswap.i16(i16 %124) #3
  %sgl_num_sges.i52 = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7, i32 1, i32 3
  %126 = ptrtoint ptr %sgl_num_sges.i52 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %125, ptr %sgl_num_sges.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %narrow.i46)
  %cmp1363.not.i53 = icmp eq i16 %narrow.i46, 0
  br i1 %cmp1363.not.i53, label %if.then4.if.end8_crit_edge, label %for.body.preheader.i55

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

for.body.preheader.i55:                           ; preds = %if.then4
  %wide.trip.count.i54 = zext i16 %narrow.i46 to i32
  br label %for.body.i65

for.body.i65:                                     ; preds = %for.body.i65.for.body.i65_crit_edge, %for.body.preheader.i55
  %indvars.iv.i56 = phi i32 [ 0, %for.body.preheader.i55 ], [ %indvars.iv.next.i63, %for.body.i65.for.body.i65_crit_edge ]
  %127 = ptrtoint ptr %rx_params to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rx_params, align 4
  %arrayidx.i57 = getelementptr %struct.scsi_sge, ptr %128, i32 %indvars.iv.i56
  %129 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx.i57, align 4
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #3
  %arrayidx17.i58 = getelementptr [4 x %struct.scsi_sge], ptr %mstorm_st_context, i32 0, i32 %indvars.iv.i56
  %132 = ptrtoint ptr %arrayidx17.i58 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %arrayidx17.i58, align 4
  %133 = ptrtoint ptr %rx_params to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %rx_params, align 4
  %hi24.i59 = getelementptr %struct.scsi_sge, ptr %134, i32 %indvars.iv.i56, i32 0, i32 1
  %135 = ptrtoint ptr %hi24.i59 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %hi24.i59, align 4
  %137 = tail call i32 @llvm.bswap.i32(i32 %136) #3
  %hi29.i60 = getelementptr inbounds %struct.regpair, ptr %arrayidx17.i58, i32 0, i32 1
  %138 = ptrtoint ptr %hi29.i60 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %hi29.i60, align 4
  %139 = ptrtoint ptr %rx_params to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %rx_params, align 4
  %sge_len.i61 = getelementptr %struct.scsi_sge, ptr %140, i32 %indvars.iv.i56, i32 1
  %141 = ptrtoint ptr %sge_len.i61 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %sge_len.i61, align 4
  %143 = tail call i32 @llvm.bswap.i32(i32 %142) #3
  %sge_len36.i62 = getelementptr [4 x %struct.scsi_sge], ptr %mstorm_st_context, i32 0, i32 %indvars.iv.i56, i32 1
  %144 = ptrtoint ptr %sge_len36.i62 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %sge_len36.i62, align 4
  %indvars.iv.next.i63 = add nuw nsw i32 %indvars.iv.i56, 1
  %exitcond.not.i64 = icmp eq i32 %indvars.iv.next.i63, %wide.trip.count.i54
  br i1 %exitcond.not.i64, label %for.body.i65.if.end8_crit_edge, label %for.body.i65.for.body.i65_crit_edge

for.body.i65.for.body.i65_crit_edge:              ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i65

for.body.i65.if.end8_crit_edge:                   ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.end8:                                          ; preds = %for.body.i65.if.end8_crit_edge, %if.then4.if.end8_crit_edge
  %145 = ptrtoint ptr %rx_io_size to i32
  call void @__asan_load4_noabort(i32 %145)
  %.pr = load i32, ptr %rx_io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool10.not = icmp eq i32 %.pr, 0
  br i1 %tobool10.not, label %if.end8.cond.end_crit_edge, label %cond.true

if.end8.cond.end_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

cond.true:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  %146 = ptrtoint ptr %total_buffer_size.i50 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %total_buffer_size.i50, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end8.cond.end_crit_edge, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %147, %cond.true ], [ 0, %if.end8.cond.end_crit_edge ], [ 0, %if.end.cond.end_crit_edge ]
  %ustorm_st_context70 = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 8
  %148 = ptrtoint ptr %tx_io_size to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %tx_io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool12.not = icmp eq i32 %149, 0
  br i1 %tobool12.not, label %cond.end.cond.end16_crit_edge, label %cond.true13

cond.end.cond.end16_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end16

cond.true13:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  %total_buffer_size14 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_params, i32 0, i32 2
  %150 = ptrtoint ptr %total_buffer_size14 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %total_buffer_size14, align 4
  br label %cond.end16

cond.end16:                                       ; preds = %cond.true13, %cond.end.cond.end16_crit_edge
  %cond17 = phi i32 [ %151, %cond.true13 ], [ 0, %cond.end.cond.end16_crit_edge ]
  %152 = tail call i32 @llvm.bswap.i32(i32 %cond) #3
  %153 = ptrtoint ptr %ustorm_st_context70 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %ustorm_st_context70, align 4
  %154 = tail call i32 @llvm.bswap.i32(i32 %cond17) #3
  %exp_data_acked.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 6, i32 12
  %155 = ptrtoint ptr %exp_data_acked.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %exp_data_acked.i, align 4
  %exp_data_transfer_len.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 8, i32 1
  %156 = ptrtoint ptr %exp_data_transfer_len.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %154, ptr %exp_data_transfer_len.i, align 4
  %reg1.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 8, i32 4
  %157 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %reg1.i, align 4
  %and.i = and i32 %158, -16
  store i32 %and.i, ptr %reg1.i, align 4
  %flags2.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 6, i32 5
  %159 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %flags2.i, align 2
  %161 = and i8 %160, -17
  store i8 %161, ptr %flags2.i, align 2
  %162 = ptrtoint ptr %rx_io_size to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %rx_io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool19.not = icmp eq i32 %163, 0
  br i1 %tobool19.not, label %cond.end16.cond.end23_crit_edge, label %cond.true20

cond.end16.cond.end23_crit_edge:                  ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end23

cond.true20:                                      ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #5
  %total_buffer_size21 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_params, i32 0, i32 2
  %164 = ptrtoint ptr %total_buffer_size21 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %total_buffer_size21, align 4
  br label %cond.end23

cond.end23:                                       ; preds = %cond.true20, %cond.end16.cond.end23_crit_edge
  %cond24 = phi i32 [ %165, %cond.true20 ], [ 0, %cond.end16.cond.end23_crit_edge ]
  %166 = tail call i32 @llvm.bswap.i32(i32 %cond24)
  %rem_task_size = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7, i32 2
  %167 = ptrtoint ptr %rem_task_size to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %rem_task_size, align 4
  tail call fastcc void @init_sqe(ptr noundef %task_params, ptr noundef %tx_params, ptr noundef null, ptr noundef %logout_hdr, ptr noundef null, i32 noundef 2, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @init_initiator_tmf_request_task(ptr noundef %task_params, ptr nocapture noundef readonly %tmf_header) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %task_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task_params, align 4
  %mstorm_ag_context.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mstorm_ag_context.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mstorm_ag_context.i, align 4
  %4 = call ptr @memset(ptr %1, i32 0, i32 512)
  store i8 %3, ptr %mstorm_ag_context.i, align 4
  %pdu_hdr.i = getelementptr inbounds %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %tmf_header to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tmf_header, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #3
  %8 = ptrtoint ptr %pdu_hdr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pdu_hdr.i, align 4
  %arrayidx.1.i = getelementptr [12 x i32], ptr %tmf_header, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #3
  %arrayidx7.1.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx7.1.i, align 4
  %arrayidx.2.i = getelementptr [12 x i32], ptr %tmf_header, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.2.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #3
  %arrayidx7.2.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 5
  %16 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx7.2.i, align 4
  %arrayidx.3.i = getelementptr [12 x i32], ptr %tmf_header, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.3.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #3
  %arrayidx7.3.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %arrayidx7.3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx7.3.i, align 4
  %arrayidx.4.i = getelementptr [12 x i32], ptr %tmf_header, i32 0, i32 4
  %21 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.4.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #3
  %arrayidx7.4.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 6
  %24 = ptrtoint ptr %arrayidx7.4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx7.4.i, align 4
  %arrayidx.5.i = getelementptr [12 x i32], ptr %tmf_header, i32 0, i32 5
  %25 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.5.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #3
  %arrayidx7.5.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 7
  %28 = ptrtoint ptr %arrayidx7.5.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx7.5.i, align 4
  %arrayidx.6.i = getelementptr [12 x i32], ptr %tmf_header, i32 0, i32 6
  %29 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.6.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #3
  %arrayidx7.6.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 8
  %32 = ptrtoint ptr %arrayidx7.6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx7.6.i, align 4
  %arrayidx.7.i = getelementptr [12 x i32], ptr %tmf_header, i32 0, i32 7
  %33 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.7.i, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #3
  %arrayidx7.7.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 9
  %36 = ptrtoint ptr %arrayidx7.7.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx7.7.i, align 4
  %arrayidx.8.i = getelementptr [12 x i32], ptr %tmf_header, i32 0, i32 8
  %37 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.8.i, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #3
  %arrayidx7.8.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 10
  %40 = ptrtoint ptr %arrayidx7.8.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx7.8.i, align 4
  %arrayidx.9.i = getelementptr [12 x i32], ptr %tmf_header, i32 0, i32 9
  %41 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.9.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #3
  %arrayidx7.9.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 11
  %44 = ptrtoint ptr %arrayidx7.9.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx7.9.i, align 4
  %arrayidx.10.i = getelementptr [12 x i32], ptr %tmf_header, i32 0, i32 10
  %45 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.10.i, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #3
  %arrayidx7.10.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 11, i32 1
  %48 = ptrtoint ptr %arrayidx7.10.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx7.10.i, align 4
  %arrayidx.11.i = getelementptr [12 x i32], ptr %tmf_header, i32 0, i32 11
  %49 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.11.i, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #3
  %arrayidx7.11.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 11, i32 2
  %52 = ptrtoint ptr %arrayidx7.11.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx7.11.i, align 4
  %task_type9.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7, i32 4
  %53 = ptrtoint ptr %task_type9.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 2, ptr %task_type9.i, align 4
  %conn_icid.i = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 4
  %54 = ptrtoint ptr %conn_icid.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %conn_icid.i, align 4
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #3
  %task_cid.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 4, i32 2
  %57 = ptrtoint ptr %task_cid.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %task_cid.i, align 2
  %flags1.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 6, i32 4
  %58 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 4, ptr %flags1.i, align 1
  %task_type18.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 8, i32 12
  %59 = ptrtoint ptr %task_type18.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 2, ptr %task_type18.i, align 4
  %cq_rss_number.i = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 6
  %60 = ptrtoint ptr %cq_rss_number.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %cq_rss_number.i, align 4
  %cq_rss_number20.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 8, i32 15
  %62 = ptrtoint ptr %cq_rss_number20.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %cq_rss_number20.i, align 1
  %63 = ptrtoint ptr %conn_icid.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %conn_icid.i, align 4
  %65 = tail call i16 @llvm.bswap.i16(i16 %64) #3
  %icid.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 6, i32 2
  %66 = ptrtoint ptr %icid.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %icid.i, align 2
  tail call fastcc void @init_sqe(ptr noundef %task_params, ptr noundef null, ptr noundef null, ptr noundef %tmf_header, ptr noundef null, i32 noundef 2, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_initiator_text_request_task(ptr noundef %task_params, ptr nocapture noundef readonly %text_header, ptr nocapture noundef readonly %tx_params, ptr nocapture noundef readonly %rx_params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %task_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task_params, align 4
  %mstorm_ag_context.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mstorm_ag_context.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mstorm_ag_context.i, align 4
  %4 = call ptr @memset(ptr %1, i32 0, i32 512)
  store i8 %3, ptr %mstorm_ag_context.i, align 4
  %pdu_hdr.i = getelementptr inbounds %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %text_header to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %text_header, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #3
  %8 = ptrtoint ptr %pdu_hdr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pdu_hdr.i, align 4
  %arrayidx.1.i = getelementptr [12 x i32], ptr %text_header, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #3
  %arrayidx7.1.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx7.1.i, align 4
  %arrayidx.2.i = getelementptr [12 x i32], ptr %text_header, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.2.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #3
  %arrayidx7.2.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 5
  %16 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx7.2.i, align 4
  %arrayidx.3.i = getelementptr [12 x i32], ptr %text_header, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.3.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #3
  %arrayidx7.3.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %arrayidx7.3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx7.3.i, align 4
  %arrayidx.4.i = getelementptr [12 x i32], ptr %text_header, i32 0, i32 4
  %21 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.4.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #3
  %arrayidx7.4.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 6
  %24 = ptrtoint ptr %arrayidx7.4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx7.4.i, align 4
  %arrayidx.5.i = getelementptr [12 x i32], ptr %text_header, i32 0, i32 5
  %25 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.5.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #3
  %arrayidx7.5.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 7
  %28 = ptrtoint ptr %arrayidx7.5.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx7.5.i, align 4
  %arrayidx.6.i = getelementptr [12 x i32], ptr %text_header, i32 0, i32 6
  %29 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.6.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #3
  %arrayidx7.6.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 8
  %32 = ptrtoint ptr %arrayidx7.6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx7.6.i, align 4
  %arrayidx.7.i = getelementptr [12 x i32], ptr %text_header, i32 0, i32 7
  %33 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.7.i, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #3
  %arrayidx7.7.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 9
  %36 = ptrtoint ptr %arrayidx7.7.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx7.7.i, align 4
  %arrayidx.8.i = getelementptr [12 x i32], ptr %text_header, i32 0, i32 8
  %37 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.8.i, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #3
  %arrayidx7.8.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 10
  %40 = ptrtoint ptr %arrayidx7.8.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx7.8.i, align 4
  %arrayidx.9.i = getelementptr [12 x i32], ptr %text_header, i32 0, i32 9
  %41 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.9.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #3
  %arrayidx7.9.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 11
  %44 = ptrtoint ptr %arrayidx7.9.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx7.9.i, align 4
  %arrayidx.10.i = getelementptr [12 x i32], ptr %text_header, i32 0, i32 10
  %45 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.10.i, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #3
  %arrayidx7.10.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 11, i32 1
  %48 = ptrtoint ptr %arrayidx7.10.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx7.10.i, align 4
  %arrayidx.11.i = getelementptr [12 x i32], ptr %text_header, i32 0, i32 11
  %49 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.11.i, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #3
  %arrayidx7.11.i = getelementptr %struct.ystorm_iscsi_task_st_ctx, ptr %1, i32 0, i32 2, i32 0, i32 11, i32 2
  %52 = ptrtoint ptr %arrayidx7.11.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx7.11.i, align 4
  %task_type9.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7, i32 4
  %53 = ptrtoint ptr %task_type9.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 2, ptr %task_type9.i, align 4
  %conn_icid.i = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 4
  %54 = ptrtoint ptr %conn_icid.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %conn_icid.i, align 4
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #3
  %task_cid.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 4, i32 2
  %57 = ptrtoint ptr %task_cid.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %task_cid.i, align 2
  %flags1.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 6, i32 4
  %58 = ptrtoint ptr %flags1.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 4, ptr %flags1.i, align 1
  %task_type18.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 8, i32 12
  %59 = ptrtoint ptr %task_type18.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 2, ptr %task_type18.i, align 4
  %cq_rss_number.i = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 6
  %60 = ptrtoint ptr %cq_rss_number.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %cq_rss_number.i, align 4
  %cq_rss_number20.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 8, i32 15
  %62 = ptrtoint ptr %cq_rss_number20.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %cq_rss_number20.i, align 1
  %63 = ptrtoint ptr %conn_icid.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %conn_icid.i, align 4
  %65 = tail call i16 @llvm.bswap.i16(i16 %64) #3
  %icid.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 6, i32 2
  %66 = ptrtoint ptr %icid.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %icid.i, align 2
  %tx_io_size = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 2
  %67 = ptrtoint ptr %tx_io_size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx_io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not = icmp eq i32 %68, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  %sgl_params = getelementptr inbounds %struct.ystorm_iscsi_task_state, ptr %1, i32 0, i32 1
  %num_sges1.i = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_params, i32 0, i32 3
  %69 = ptrtoint ptr %num_sges1.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %num_sges1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %70)
  %cmp.i = icmp ugt i16 %70, 4
  %71 = and i16 %70, 255
  %narrow.i = select i1 %cmp.i, i16 4, i16 %71
  %sgl_phys_addr.i = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_params, i32 0, i32 1
  %72 = ptrtoint ptr %sgl_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sgl_phys_addr.i, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #3
  %75 = ptrtoint ptr %sgl_params to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %sgl_params, align 4
  %hi.i = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_params, i32 0, i32 1, i32 1
  %76 = ptrtoint ptr %hi.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %hi.i, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #3
  %hi9.i = getelementptr inbounds %struct.ystorm_iscsi_task_state, ptr %1, i32 0, i32 1, i32 0, i32 1
  %79 = ptrtoint ptr %hi9.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %hi9.i, align 4
  %total_buffer_size.i = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_params, i32 0, i32 2
  %80 = ptrtoint ptr %total_buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %total_buffer_size.i, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #3
  %sgl_total_length.i = getelementptr inbounds %struct.ystorm_iscsi_task_state, ptr %1, i32 0, i32 1, i32 1
  %83 = ptrtoint ptr %sgl_total_length.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %sgl_total_length.i, align 4
  %84 = ptrtoint ptr %num_sges1.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %num_sges1.i, align 4
  %86 = tail call i16 @llvm.bswap.i16(i16 %85) #3
  %sgl_num_sges.i = getelementptr inbounds %struct.ystorm_iscsi_task_state, ptr %1, i32 0, i32 1, i32 3
  %87 = ptrtoint ptr %sgl_num_sges.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %sgl_num_sges.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %narrow.i)
  %cmp1363.not.i = icmp eq i16 %narrow.i, 0
  br i1 %cmp1363.not.i, label %if.then.if.end_crit_edge, label %for.body.preheader.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

for.body.preheader.i:                             ; preds = %if.then
  %wide.trip.count.i = zext i16 %narrow.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %indvars.iv.i = phi i32 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %88 = ptrtoint ptr %tx_params to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tx_params, align 4
  %arrayidx.i = getelementptr %struct.scsi_sge, ptr %89, i32 %indvars.iv.i
  %90 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i, align 4
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #3
  %arrayidx17.i = getelementptr [4 x %struct.scsi_sge], ptr %1, i32 0, i32 %indvars.iv.i
  %93 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %arrayidx17.i, align 4
  %94 = ptrtoint ptr %tx_params to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tx_params, align 4
  %hi24.i = getelementptr %struct.scsi_sge, ptr %95, i32 %indvars.iv.i, i32 0, i32 1
  %96 = ptrtoint ptr %hi24.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %hi24.i, align 4
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #3
  %hi29.i = getelementptr inbounds %struct.regpair, ptr %arrayidx17.i, i32 0, i32 1
  %99 = ptrtoint ptr %hi29.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %hi29.i, align 4
  %100 = ptrtoint ptr %tx_params to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %tx_params, align 4
  %sge_len.i = getelementptr %struct.scsi_sge, ptr %101, i32 %indvars.iv.i, i32 1
  %102 = ptrtoint ptr %sge_len.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %sge_len.i, align 4
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #3
  %sge_len36.i = getelementptr [4 x %struct.scsi_sge], ptr %1, i32 0, i32 %indvars.iv.i, i32 1
  %105 = ptrtoint ptr %sge_len36.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %sge_len36.i, align 4
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.body.i.if.end_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %rx_io_size = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 3
  %106 = ptrtoint ptr %rx_io_size to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %rx_io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool3.not = icmp eq i32 %107, 0
  br i1 %tobool3.not, label %if.end.cond.end_crit_edge, label %if.then4

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

if.then4:                                         ; preds = %if.end
  %mstorm_st_context = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7
  %sgl_params5 = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7, i32 1
  %num_sges1.i44 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_params, i32 0, i32 3
  %108 = ptrtoint ptr %num_sges1.i44 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %num_sges1.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %109)
  %cmp.i45 = icmp ugt i16 %109, 4
  %110 = and i16 %109, 255
  %narrow.i46 = select i1 %cmp.i45, i16 4, i16 %110
  %sgl_phys_addr.i47 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_params, i32 0, i32 1
  %111 = ptrtoint ptr %sgl_phys_addr.i47 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %sgl_phys_addr.i47, align 4
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #3
  %114 = ptrtoint ptr %sgl_params5 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %sgl_params5, align 4
  %hi.i48 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_params, i32 0, i32 1, i32 1
  %115 = ptrtoint ptr %hi.i48 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %hi.i48, align 4
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #3
  %hi9.i49 = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7, i32 1, i32 0, i32 1
  %118 = ptrtoint ptr %hi9.i49 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %hi9.i49, align 4
  %total_buffer_size.i50 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_params, i32 0, i32 2
  %119 = ptrtoint ptr %total_buffer_size.i50 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %total_buffer_size.i50, align 4
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #3
  %sgl_total_length.i51 = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7, i32 1, i32 1
  %122 = ptrtoint ptr %sgl_total_length.i51 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %sgl_total_length.i51, align 4
  %123 = ptrtoint ptr %num_sges1.i44 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %num_sges1.i44, align 4
  %125 = tail call i16 @llvm.bswap.i16(i16 %124) #3
  %sgl_num_sges.i52 = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7, i32 1, i32 3
  %126 = ptrtoint ptr %sgl_num_sges.i52 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %125, ptr %sgl_num_sges.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %narrow.i46)
  %cmp1363.not.i53 = icmp eq i16 %narrow.i46, 0
  br i1 %cmp1363.not.i53, label %if.then4.if.end8_crit_edge, label %for.body.preheader.i55

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

for.body.preheader.i55:                           ; preds = %if.then4
  %wide.trip.count.i54 = zext i16 %narrow.i46 to i32
  br label %for.body.i65

for.body.i65:                                     ; preds = %for.body.i65.for.body.i65_crit_edge, %for.body.preheader.i55
  %indvars.iv.i56 = phi i32 [ 0, %for.body.preheader.i55 ], [ %indvars.iv.next.i63, %for.body.i65.for.body.i65_crit_edge ]
  %127 = ptrtoint ptr %rx_params to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rx_params, align 4
  %arrayidx.i57 = getelementptr %struct.scsi_sge, ptr %128, i32 %indvars.iv.i56
  %129 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx.i57, align 4
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #3
  %arrayidx17.i58 = getelementptr [4 x %struct.scsi_sge], ptr %mstorm_st_context, i32 0, i32 %indvars.iv.i56
  %132 = ptrtoint ptr %arrayidx17.i58 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %arrayidx17.i58, align 4
  %133 = ptrtoint ptr %rx_params to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %rx_params, align 4
  %hi24.i59 = getelementptr %struct.scsi_sge, ptr %134, i32 %indvars.iv.i56, i32 0, i32 1
  %135 = ptrtoint ptr %hi24.i59 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %hi24.i59, align 4
  %137 = tail call i32 @llvm.bswap.i32(i32 %136) #3
  %hi29.i60 = getelementptr inbounds %struct.regpair, ptr %arrayidx17.i58, i32 0, i32 1
  %138 = ptrtoint ptr %hi29.i60 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %hi29.i60, align 4
  %139 = ptrtoint ptr %rx_params to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %rx_params, align 4
  %sge_len.i61 = getelementptr %struct.scsi_sge, ptr %140, i32 %indvars.iv.i56, i32 1
  %141 = ptrtoint ptr %sge_len.i61 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %sge_len.i61, align 4
  %143 = tail call i32 @llvm.bswap.i32(i32 %142) #3
  %sge_len36.i62 = getelementptr [4 x %struct.scsi_sge], ptr %mstorm_st_context, i32 0, i32 %indvars.iv.i56, i32 1
  %144 = ptrtoint ptr %sge_len36.i62 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %sge_len36.i62, align 4
  %indvars.iv.next.i63 = add nuw nsw i32 %indvars.iv.i56, 1
  %exitcond.not.i64 = icmp eq i32 %indvars.iv.next.i63, %wide.trip.count.i54
  br i1 %exitcond.not.i64, label %for.body.i65.if.end8_crit_edge, label %for.body.i65.for.body.i65_crit_edge

for.body.i65.for.body.i65_crit_edge:              ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i65

for.body.i65.if.end8_crit_edge:                   ; preds = %for.body.i65
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.end8:                                          ; preds = %for.body.i65.if.end8_crit_edge, %if.then4.if.end8_crit_edge
  %145 = ptrtoint ptr %rx_io_size to i32
  call void @__asan_load4_noabort(i32 %145)
  %.pr = load i32, ptr %rx_io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool10.not = icmp eq i32 %.pr, 0
  br i1 %tobool10.not, label %if.end8.cond.end_crit_edge, label %cond.true

if.end8.cond.end_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

cond.true:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  %146 = ptrtoint ptr %total_buffer_size.i50 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %total_buffer_size.i50, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end8.cond.end_crit_edge, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %147, %cond.true ], [ 0, %if.end8.cond.end_crit_edge ], [ 0, %if.end.cond.end_crit_edge ]
  %148 = tail call i32 @llvm.bswap.i32(i32 %cond)
  %rem_task_size = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 7, i32 2
  %149 = ptrtoint ptr %rem_task_size to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %rem_task_size, align 4
  %150 = ptrtoint ptr %rx_io_size to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %rx_io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool13.not = icmp eq i32 %151, 0
  br i1 %tobool13.not, label %cond.end.cond.end17_crit_edge, label %cond.true14

cond.end.cond.end17_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end17

cond.true14:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  %total_buffer_size15 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %rx_params, i32 0, i32 2
  %152 = ptrtoint ptr %total_buffer_size15 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %total_buffer_size15, align 4
  br label %cond.end17

cond.end17:                                       ; preds = %cond.true14, %cond.end.cond.end17_crit_edge
  %cond18 = phi i32 [ %153, %cond.true14 ], [ 0, %cond.end.cond.end17_crit_edge ]
  %154 = ptrtoint ptr %tx_io_size to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %tx_io_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool20.not = icmp eq i32 %155, 0
  br i1 %tobool20.not, label %cond.end17.cond.end24_crit_edge, label %cond.true21

cond.end17.cond.end24_crit_edge:                  ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end24

cond.true21:                                      ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #5
  %total_buffer_size22 = getelementptr inbounds %struct.scsi_sgl_task_params, ptr %tx_params, i32 0, i32 2
  %156 = ptrtoint ptr %total_buffer_size22 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %total_buffer_size22, align 4
  br label %cond.end24

cond.end24:                                       ; preds = %cond.true21, %cond.end17.cond.end24_crit_edge
  %cond25 = phi i32 [ %157, %cond.true21 ], [ 0, %cond.end17.cond.end24_crit_edge ]
  %ustorm_st_context = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 8
  %158 = tail call i32 @llvm.bswap.i32(i32 %cond18) #3
  %159 = ptrtoint ptr %ustorm_st_context to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %ustorm_st_context, align 4
  %160 = tail call i32 @llvm.bswap.i32(i32 %cond25) #3
  %exp_data_acked.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 6, i32 12
  %161 = ptrtoint ptr %exp_data_acked.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %exp_data_acked.i, align 4
  %exp_data_transfer_len.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 8, i32 1
  %162 = ptrtoint ptr %exp_data_transfer_len.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %160, ptr %exp_data_transfer_len.i, align 4
  %reg1.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 8, i32 4
  %163 = ptrtoint ptr %reg1.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %reg1.i, align 4
  %and.i = and i32 %164, -16
  store i32 %and.i, ptr %reg1.i, align 4
  %flags2.i = getelementptr inbounds %struct.iscsi_task_context, ptr %1, i32 0, i32 6, i32 5
  %165 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %flags2.i, align 2
  %167 = and i8 %166, -17
  store i8 %167, ptr %flags2.i, align 2
  tail call fastcc void @init_sqe(ptr noundef %task_params, ptr noundef %tx_params, ptr noundef null, ptr noundef %text_header, ptr noundef null, i32 noundef 2, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @init_cleanup_task(ptr nocapture noundef readonly %task_params) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %sqe.i = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 1
  %0 = ptrtoint ptr %sqe.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sqe.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.init_sqe.exit_crit_edge, label %if.end.i

entry.init_sqe.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %init_sqe.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %1, align 4
  %itid.i = getelementptr inbounds %struct.iscsi_task_params, ptr %task_params, i32 0, i32 5
  %3 = ptrtoint ptr %itid.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %itid.i, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #3
  %6 = ptrtoint ptr %sqe.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sqe.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %5, ptr %7, align 4
  %9 = load ptr, ptr %sqe.i, align 4
  %flags.i = getelementptr inbounds %struct.iscsi_wqe, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flags.i, align 2
  %12 = and i8 %11, -8
  store i8 %12, ptr %flags.i, align 2
  %13 = load ptr, ptr %sqe.i, align 4
  %flags8.i = getelementptr inbounds %struct.iscsi_wqe, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %flags8.i, align 2
  %16 = or i8 %15, 1
  store i8 %16, ptr %flags8.i, align 2
  br label %init_sqe.exit

init_sqe.exit:                                    ; preds = %if.end.i, %entry.init_sqe.exit_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

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
