; ModuleID = '/llk/IR_all_yes/drivers/media/platform/exynos4-is/fimc-is-param.c_pt.bc'
source_filename = "../drivers/media/platform/exynos4-is/fimc-is-param.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fimc_is = type { ptr, ptr, ptr, %struct.fimc_is_firmware, %struct.fimc_is_memory, %struct.fimc_isp, [2 x %struct.fimc_is_sensor], %struct.fimc_is_setfile, %struct.v4l2_ctrl_handler, %struct.mutex, %struct.spinlock, [21 x ptr], ptr, ptr, i32, %struct.wait_queue_head, i8, i32, i32, %struct.i2h_cmd, %struct.h2i_cmd, %struct.is_fd_result_header, [4 x %struct.chain_config], i32, ptr, i32, ptr, %struct.is_af_info, ptr }
%struct.fimc_is_firmware = type { ptr, i32, ptr, i32, [32 x i8], [8 x i8], [40 x i8], i8 }
%struct.fimc_is_memory = type { i32, ptr, i32 }
%struct.fimc_isp = type { ptr, %struct.v4l2_subdev, [3 x %struct.media_pad], %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt, ptr, %struct.fimc_isp_ctrls, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fimc_is_video }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.111, i16, i16, i16, [10 x i16] }
%union.anon.111 = type { i16 }
%struct.fimc_isp_ctrls = type { %struct.v4l2_ctrl_handler, ptr, %struct.anon.114, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.114 = type { ptr, ptr }
%struct.fimc_is_video = type { %struct.exynos_video_entity, i32, %struct.media_pad, %struct.list_head, %struct.list_head, %struct.vb2_queue, i32, i32, i32, i32, i32, [4 x ptr], ptr, %struct.v4l2_pix_format_mplane }
%struct.exynos_video_entity = type { %struct.video_device, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.92, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.92 = type { i8 }
%struct.fimc_is_sensor = type { ptr, i32, i8 }
%struct.fimc_is_setfile = type { ptr, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.i2h_cmd = type { i32, i32, i16, [12 x i32] }
%struct.h2i_cmd = type { i16, i32 }
%struct.is_fd_result_header = type { i32, i32, i32, i32, i32, i32 }
%struct.chain_config = type { %struct.global_param, %struct.sensor_param, %struct.isp_param, %struct.drc_param, %struct.fd_param, [2 x i32] }
%struct.global_param = type { %struct.param_global_shotmode }
%struct.param_global_shotmode = type { i32, i32, [13 x i32], i32 }
%struct.sensor_param = type { %struct.param_control, %struct.param_otf_output, %struct.param_sensor_framerate }
%struct.param_control = type { i32, i32, i32, i32, i32, [10 x i32], i32 }
%struct.param_otf_output = type { i32, i32, i32, i32, i32, i32, [9 x i32], i32 }
%struct.param_sensor_framerate = type { i32, [14 x i32], i32 }
%struct.isp_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_dma_input, %struct.param_dma_input, %struct.param_isp_aa, %struct.param_isp_flash, %struct.param_isp_awb, %struct.param_isp_imageeffect, %struct.param_isp_iso, %struct.param_isp_adjust, %struct.param_isp_metering, %struct.param_isp_afc, %struct.param_otf_output, %struct.param_dma_output, %struct.param_dma_output }
%struct.param_otf_input = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.param_dma_input = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32 }
%struct.param_isp_aa = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32 }
%struct.param_isp_flash = type { i32, i32, [13 x i32], i32 }
%struct.param_isp_awb = type { i32, i32, [13 x i32], i32 }
%struct.param_isp_imageeffect = type { i32, [14 x i32], i32 }
%struct.param_isp_iso = type { i32, i32, [13 x i32], i32 }
%struct.param_isp_adjust = type { i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32 }
%struct.param_isp_metering = type { i32, i32, i32, i32, i32, [10 x i32], i32 }
%struct.param_isp_afc = type { i32, i32, [13 x i32], i32 }
%struct.param_dma_output = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32 }
%struct.drc_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_dma_input, %struct.param_otf_output }
%struct.fd_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_dma_input, %struct.param_fd_config }
%struct.param_fd_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], i32 }
%struct.is_af_info = type { i16, i32, i32, i32, i32, i16, i16, i16, i16, i16 }
%struct.is_param_region = type { %struct.global_param, %struct.sensor_param, %struct.buffer_param, %struct.isp_param, %struct.drc_param, %struct.scalerc_param, %struct.odc_param, %struct.dis_param, %struct.tdnr_param, %struct.scalerp_param, %struct.fd_param }
%struct.buffer_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_otf_output }
%struct.scalerc_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_scaler_imageeffect, %struct.param_scaler_input_crop, %struct.param_scaler_output_crop, %struct.param_otf_output, %struct.param_dma_output }
%struct.param_scaler_imageeffect = type { i32, i32, i32, [12 x i32], i32 }
%struct.param_scaler_input_crop = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32 }
%struct.param_scaler_output_crop = type { i32, i32, i32, i32, i32, i32, [9 x i32], i32 }
%struct.odc_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_otf_output }
%struct.dis_param = type { %struct.param_control, %struct.param_otf_output, %struct.param_otf_output }
%struct.tdnr_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_3dnr_1stframe, %struct.param_otf_output, %struct.param_dma_output }
%struct.param_3dnr_1stframe = type { i32, [14 x i32], i32 }
%struct.scalerp_param = type { %struct.param_control, %struct.param_otf_input, %struct.param_scaler_imageeffect, %struct.param_scaler_input_crop, %struct.param_scaler_output_crop, %struct.param_scaler_rotation, %struct.param_scaler_flip, %struct.param_otf_output, %struct.param_dma_output }
%struct.param_scaler_rotation = type { i32, [14 x i32], i32 }
%struct.param_scaler_flip = type { i32, [14 x i32], i32 }

@__sancov_gen_cov_switch_values = internal global [25 x i64] [i64 23, i64 32, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 53, i64 54, i64 55, i64 56]
@__sancov_gen_cov_switch_values.1 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.2 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @__fimc_is_hw_update_param(ptr noundef readonly %is, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %is_p_region = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 24
  %0 = ptrtoint ptr %is_p_region to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %is_p_region, align 4
  %config_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 23
  %2 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %config_index, align 8
  %4 = zext i32 %offset to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %offset, label %entry.cleanup_crit_edge [
    i32 7, label %sw.bb
    i32 8, label %sw.bb3
    i32 9, label %sw.bb7
    i32 10, label %sw.bb11
    i32 11, label %sw.bb15
    i32 12, label %sw.bb19
    i32 13, label %sw.bb23
    i32 14, label %sw.bb27
    i32 15, label %sw.bb31
    i32 16, label %sw.bb35
    i32 17, label %sw.bb39
    i32 18, label %sw.bb43
    i32 19, label %sw.bb47
    i32 20, label %sw.bb51
    i32 21, label %sw.bb55
    i32 22, label %sw.bb59
    i32 23, label %sw.bb63
    i32 24, label %sw.bb68
    i32 25, label %sw.bb72
    i32 53, label %sw.bb77
    i32 54, label %sw.bb81
    i32 55, label %sw.bb86
    i32 56, label %sw.bb91
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %isp = getelementptr inbounds %struct.is_param_region, ptr %1, i32 0, i32 3
  %isp1 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %3, i32 2
  %5 = call ptr @memcpy(ptr %isp, ptr %isp1, i32 64)
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %otf_input = getelementptr inbounds %struct.is_param_region, ptr %1, i32 0, i32 3, i32 1
  %otf_input6 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %3, i32 2, i32 1
  %6 = call ptr @memcpy(ptr %otf_input, ptr %otf_input6, i32 64)
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dma1_input = getelementptr inbounds %struct.is_param_region, ptr %1, i32 0, i32 3, i32 2
  %dma1_input10 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %3, i32 2, i32 2
  %7 = call ptr @memcpy(ptr %dma1_input, ptr %dma1_input10, i32 64)
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dma2_input = getelementptr inbounds %struct.is_param_region, ptr %1, i32 0, i32 3, i32 3
  %dma2_input14 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %3, i32 2, i32 3
  %8 = call ptr @memcpy(ptr %dma2_input, ptr %dma2_input14, i32 64)
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %aa = getelementptr inbounds %struct.is_param_region, ptr %1, i32 0, i32 3, i32 4
  %aa18 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %3, i32 2, i32 4
  %9 = call ptr @memcpy(ptr %aa, ptr %aa18, i32 64)
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %flash = getelementptr inbounds %struct.is_param_region, ptr %1, i32 0, i32 3, i32 5
  %flash22 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %3, i32 2, i32 5
  %10 = call ptr @memcpy(ptr %flash, ptr %flash22, i32 64)
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %awb = getelementptr inbounds %struct.is_param_region, ptr %1, i32 0, i32 3, i32 6
  %awb26 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %3, i32 2, i32 6
  %11 = call ptr @memcpy(ptr %awb, ptr %awb26, i32 64)
  br label %cleanup

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %effect = getelementptr inbounds %struct.is_param_region, ptr %1, i32 0, i32 3, i32 7
  %effect30 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %3, i32 2, i32 7
  %12 = call ptr @memcpy(ptr %effect, ptr %effect30, i32 64)
  br label %cleanup

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %iso = getelementptr inbounds %struct.is_param_region, ptr %1, i32 0, i32 3, i32 8
  %iso34 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %3, i32 2, i32 8
  %13 = call ptr @memcpy(ptr %iso, ptr %iso34, i32 64)
  br label %cleanup

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %adjust = getelementptr inbounds %struct.is_param_region, ptr %1, i32 0, i32 3, i32 9
  %adjust38 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %3, i32 2, i32 9
  %14 = call ptr @memcpy(ptr %adjust, ptr %adjust38, i32 64)
  br label %cleanup

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %metering = getelementptr inbounds %struct.is_param_region, ptr %1, i32 0, i32 3, i32 10
  %metering42 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %3, i32 2, i32 10
  %15 = call ptr @memcpy(ptr %metering, ptr %metering42, i32 64)
  br label %cleanup

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %afc = getelementptr inbounds %struct.is_param_region, ptr %1, i32 0, i32 3, i32 11
  %afc46 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %3, i32 2, i32 11
  %16 = call ptr @memcpy(ptr %afc, ptr %afc46, i32 64)
  br label %cleanup

sw.bb47:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %otf_output = getelementptr inbounds %struct.is_param_region, ptr %1, i32 0, i32 3, i32 12
  %otf_output50 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %3, i32 2, i32 12
  %17 = call ptr @memcpy(ptr %otf_output, ptr %otf_output50, i32 64)
  br label %cleanup

sw.bb51:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dma1_output = getelementptr inbounds %struct.is_param_region, ptr %1, i32 0, i32 3, i32 13
  %dma1_output54 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %3, i32 2, i32 13
  %18 = call ptr @memcpy(ptr %dma1_output, ptr %dma1_output54, i32 64)
  br label %cleanup

sw.bb55:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dma2_output = getelementptr inbounds %struct.is_param_region, ptr %1, i32 0, i32 3, i32 14
  %dma2_output58 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %3, i32 2, i32 14
  %19 = call ptr @memcpy(ptr %dma2_output, ptr %dma2_output58, i32 64)
  br label %cleanup

sw.bb59:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %drc = getelementptr inbounds %struct.is_param_region, ptr %1, i32 0, i32 4
  %drc61 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %3, i32 3
  %20 = call ptr @memcpy(ptr %drc, ptr %drc61, i32 64)
  br label %cleanup

sw.bb63:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %otf_input65 = getelementptr inbounds %struct.is_param_region, ptr %1, i32 0, i32 4, i32 1
  %otf_input67 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %3, i32 3, i32 1
  %21 = call ptr @memcpy(ptr %otf_input65, ptr %otf_input67, i32 64)
  br label %cleanup

sw.bb68:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dma_input = getelementptr inbounds %struct.is_param_region, ptr %1, i32 0, i32 4, i32 2
  %dma_input71 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %3, i32 3, i32 2
  %22 = call ptr @memcpy(ptr %dma_input, ptr %dma_input71, i32 64)
  br label %cleanup

sw.bb72:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %otf_output74 = getelementptr inbounds %struct.is_param_region, ptr %1, i32 0, i32 4, i32 3
  %otf_output76 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %3, i32 3, i32 3
  %23 = call ptr @memcpy(ptr %otf_output74, ptr %otf_output76, i32 64)
  br label %cleanup

sw.bb77:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %fd = getelementptr inbounds %struct.is_param_region, ptr %1, i32 0, i32 10
  %fd79 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %3, i32 4
  %24 = call ptr @memcpy(ptr %fd, ptr %fd79, i32 64)
  br label %cleanup

sw.bb81:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %otf_input83 = getelementptr inbounds %struct.is_param_region, ptr %1, i32 0, i32 10, i32 1
  %otf_input85 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %3, i32 4, i32 1
  %25 = call ptr @memcpy(ptr %otf_input83, ptr %otf_input85, i32 64)
  br label %cleanup

sw.bb86:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dma_input88 = getelementptr inbounds %struct.is_param_region, ptr %1, i32 0, i32 10, i32 2
  %dma_input90 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %3, i32 4, i32 2
  %26 = call ptr @memcpy(ptr %dma_input88, ptr %dma_input90, i32 64)
  br label %cleanup

sw.bb91:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %config93 = getelementptr inbounds %struct.is_param_region, ptr %1, i32 0, i32 10, i32 3
  %config95 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %3, i32 4, i32 3
  %27 = call ptr @memcpy(ptr %config93, ptr %config95, i32 64)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb91, %sw.bb86, %sw.bb81, %sw.bb77, %sw.bb72, %sw.bb68, %sw.bb63, %sw.bb59, %sw.bb55, %sw.bb51, %sw.bb47, %sw.bb43, %sw.bb39, %sw.bb35, %sw.bb31, %sw.bb27, %sw.bb23, %sw.bb19, %sw.bb15, %sw.bb11, %sw.bb7, %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb91 ], [ 0, %sw.bb86 ], [ 0, %sw.bb81 ], [ 0, %sw.bb77 ], [ 0, %sw.bb72 ], [ 0, %sw.bb68 ], [ 0, %sw.bb63 ], [ 0, %sw.bb59 ], [ 0, %sw.bb55 ], [ 0, %sw.bb51 ], [ 0, %sw.bb47 ], [ 0, %sw.bb43 ], [ 0, %sw.bb39 ], [ 0, %sw.bb35 ], [ 0, %sw.bb31 ], [ 0, %sw.bb27 ], [ 0, %sw.bb23 ], [ 0, %sw.bb19 ], [ 0, %sw.bb15 ], [ 0, %sw.bb11 ], [ 0, %sw.bb7 ], [ 0, %sw.bb3 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__get_pending_param_count(ptr noundef %is) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 23
  %0 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_index, align 8
  %slock = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 10
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #6
  %p_region_index = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 5
  %2 = ptrtoint ptr %p_region_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p_region_index, align 4
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %3) #6
  %arrayidx355 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 5, i32 1
  %4 = ptrtoint ptr %arrayidx355 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx355, align 4
  %call.i794 = tail call i32 @__sw_hweight32(i32 noundef %5) #6
  %add714 = add i32 %call.i794, %call.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call3) #6
  ret i32 %add714
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__is_hw_update_params(ptr noundef %is) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 23
  %0 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_index, align 8
  %p_region_index = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 5
  %2 = ptrtoint ptr %p_region_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %p_region_index, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %is_p_region.i = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 24
  %4 = ptrtoint ptr %is_p_region.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %is_p_region.i, align 4
  %arrayidx.i67 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1
  %6 = call ptr @memcpy(ptr %5, ptr %arrayidx.i67, i32 64)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %p_region_index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %p_region_index, align 4
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %if.end.for.body.preheader_crit_edge, label %if.then4

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %is_p_region.i68 = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 24
  %10 = ptrtoint ptr %is_p_region.i68 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %is_p_region.i68, align 4
  %frame_rate.i = getelementptr inbounds %struct.is_param_region, ptr %11, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %config_index, align 8
  %frame_rate2.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %13, i32 1, i32 2
  %14 = call ptr @memcpy(ptr %frame_rate.i, ptr %frame_rate2.i, i32 64)
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then4, %if.end.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %ret.072 = phi i32 [ %ret.1, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.070 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 7, %for.body.preheader ]
  %div3.i = lshr i32 %i.070, 5
  %arrayidx.i = getelementptr i32, ptr %p_region_index, i32 %div3.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i, align 4
  %17 = shl nuw i32 1, %i.070
  %18 = and i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool7.not = icmp eq i32 %18, 0
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %if.then8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 @__fimc_is_hw_update_param(ptr noundef %is, i32 noundef %i.070)
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %call9, %if.then8 ], [ %ret.072, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.070, 1
  %exitcond.not = icmp eq i32 %inc, 22
  br i1 %exitcond.not, label %for.body13.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body13.preheader:                             ; preds = %for.inc
  %19 = ptrtoint ptr %p_region_index to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %p_region_index, align 4
  %21 = and i32 %20, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool15.not = icmp eq i32 %21, 0
  br i1 %tobool15.not, label %for.body13.preheader.for.inc19_crit_edge, label %if.then16

for.body13.preheader.for.inc19_crit_edge:         ; preds = %for.body13.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc19

if.then16:                                        ; preds = %for.body13.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 @__fimc_is_hw_update_param(ptr noundef %is, i32 noundef 22)
  br label %for.inc19

for.inc19:                                        ; preds = %if.then16, %for.body13.preheader.for.inc19_crit_edge
  %ret.3 = phi i32 [ %call17, %if.then16 ], [ %ret.1, %for.body13.preheader.for.inc19_crit_edge ]
  %22 = ptrtoint ptr %p_region_index to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %p_region_index, align 4
  %24 = and i32 %23, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool15.not.1 = icmp eq i32 %24, 0
  br i1 %tobool15.not.1, label %for.inc19.for.inc19.1_crit_edge, label %if.then16.1

for.inc19.for.inc19.1_crit_edge:                  ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc19.1

if.then16.1:                                      ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #8
  %call17.1 = tail call i32 @__fimc_is_hw_update_param(ptr noundef %is, i32 noundef 23)
  br label %for.inc19.1

for.inc19.1:                                      ; preds = %if.then16.1, %for.inc19.for.inc19.1_crit_edge
  %ret.3.1 = phi i32 [ %call17.1, %if.then16.1 ], [ %ret.3, %for.inc19.for.inc19.1_crit_edge ]
  %25 = ptrtoint ptr %p_region_index to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %p_region_index, align 4
  %27 = and i32 %26, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool15.not.2 = icmp eq i32 %27, 0
  br i1 %tobool15.not.2, label %for.inc19.1.for.inc19.2_crit_edge, label %if.then16.2

for.inc19.1.for.inc19.2_crit_edge:                ; preds = %for.inc19.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc19.2

if.then16.2:                                      ; preds = %for.inc19.1
  call void @__sanitizer_cov_trace_pc() #8
  %call17.2 = tail call i32 @__fimc_is_hw_update_param(ptr noundef %is, i32 noundef 24)
  br label %for.inc19.2

for.inc19.2:                                      ; preds = %if.then16.2, %for.inc19.1.for.inc19.2_crit_edge
  %ret.3.2 = phi i32 [ %call17.2, %if.then16.2 ], [ %ret.3.1, %for.inc19.1.for.inc19.2_crit_edge ]
  %28 = ptrtoint ptr %p_region_index to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %p_region_index, align 4
  %30 = and i32 %29, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool15.not.3 = icmp eq i32 %30, 0
  br i1 %tobool15.not.3, label %for.inc19.2.for.inc19.3_crit_edge, label %if.then16.3

for.inc19.2.for.inc19.3_crit_edge:                ; preds = %for.inc19.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc19.3

if.then16.3:                                      ; preds = %for.inc19.2
  call void @__sanitizer_cov_trace_pc() #8
  %call17.3 = tail call i32 @__fimc_is_hw_update_param(ptr noundef %is, i32 noundef 25)
  br label %for.inc19.3

for.inc19.3:                                      ; preds = %if.then16.3, %for.inc19.2.for.inc19.3_crit_edge
  %ret.3.3 = phi i32 [ %call17.3, %if.then16.3 ], [ %ret.3.2, %for.inc19.2.for.inc19.3_crit_edge ]
  %arrayidx.i63 = getelementptr i32, ptr %p_region_index, i32 1
  %31 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %arrayidx.i63, align 4
  %33 = and i32 %32, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool26.not = icmp eq i32 %33, 0
  br i1 %tobool26.not, label %for.inc19.3.for.inc30_crit_edge, label %if.then27

for.inc19.3.for.inc30_crit_edge:                  ; preds = %for.inc19.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc30

if.then27:                                        ; preds = %for.inc19.3
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = tail call i32 @__fimc_is_hw_update_param(ptr noundef %is, i32 noundef 53)
  br label %for.inc30

for.inc30:                                        ; preds = %if.then27, %for.inc19.3.for.inc30_crit_edge
  %ret.5 = phi i32 [ %call28, %if.then27 ], [ %ret.3.3, %for.inc19.3.for.inc30_crit_edge ]
  %34 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %arrayidx.i63, align 4
  %36 = and i32 %35, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool26.not.1 = icmp eq i32 %36, 0
  br i1 %tobool26.not.1, label %for.inc30.for.inc30.1_crit_edge, label %if.then27.1

for.inc30.for.inc30.1_crit_edge:                  ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc30.1

if.then27.1:                                      ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #8
  %call28.1 = tail call i32 @__fimc_is_hw_update_param(ptr noundef %is, i32 noundef 54)
  br label %for.inc30.1

for.inc30.1:                                      ; preds = %if.then27.1, %for.inc30.for.inc30.1_crit_edge
  %ret.5.1 = phi i32 [ %call28.1, %if.then27.1 ], [ %ret.5, %for.inc30.for.inc30.1_crit_edge ]
  %37 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %arrayidx.i63, align 4
  %39 = and i32 %38, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool26.not.2 = icmp eq i32 %39, 0
  br i1 %tobool26.not.2, label %for.inc30.1.for.inc30.2_crit_edge, label %if.then27.2

for.inc30.1.for.inc30.2_crit_edge:                ; preds = %for.inc30.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc30.2

if.then27.2:                                      ; preds = %for.inc30.1
  call void @__sanitizer_cov_trace_pc() #8
  %call28.2 = tail call i32 @__fimc_is_hw_update_param(ptr noundef %is, i32 noundef 55)
  br label %for.inc30.2

for.inc30.2:                                      ; preds = %if.then27.2, %for.inc30.1.for.inc30.2_crit_edge
  %ret.5.2 = phi i32 [ %call28.2, %if.then27.2 ], [ %ret.5.1, %for.inc30.1.for.inc30.2_crit_edge ]
  %40 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %arrayidx.i63, align 4
  %42 = and i32 %41, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool26.not.3 = icmp eq i32 %42, 0
  br i1 %tobool26.not.3, label %for.inc30.2.for.inc30.3_crit_edge, label %if.then27.3

for.inc30.2.for.inc30.3_crit_edge:                ; preds = %for.inc30.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc30.3

if.then27.3:                                      ; preds = %for.inc30.2
  call void @__sanitizer_cov_trace_pc() #8
  %call28.3 = tail call i32 @__fimc_is_hw_update_param(ptr noundef %is, i32 noundef 56)
  br label %for.inc30.3

for.inc30.3:                                      ; preds = %if.then27.3, %for.inc30.2.for.inc30.3_crit_edge
  %ret.5.3 = phi i32 [ %call28.3, %if.then27.3 ], [ %ret.5.2, %for.inc30.2.for.inc30.3_crit_edge ]
  ret i32 %ret.5.3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @__is_get_frame_size(ptr nocapture noundef readonly %is, ptr nocapture noundef writeonly %mf) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 23
  %0 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_index, align 8
  %width = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 1, i32 1
  %2 = ptrtoint ptr %width to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %width, align 1
  %4 = ptrtoint ptr %mf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %mf, align 4
  %height = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 1, i32 2
  %5 = ptrtoint ptr %height to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %height, align 1
  %height4 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %mf, i32 0, i32 1
  %7 = ptrtoint ptr %height4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %height4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__is_set_frame_size(ptr noundef %is, ptr nocapture noundef readonly %mf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 23
  %0 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_index, align 8
  %2 = ptrtoint ptr %mf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mf, align 4
  %width8 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 1, i32 1
  %4 = ptrtoint ptr %width8 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %3, ptr %width8, align 1
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %mf, i32 0, i32 1
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 4
  %height10 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 1, i32 2
  %7 = ptrtoint ptr %height10 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %height10, align 1
  %8 = load i32, ptr %mf, align 4
  %width12 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 12, i32 1
  %9 = ptrtoint ptr %width12 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %width12, align 1
  %10 = load i32, ptr %height, align 4
  %height15 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 12, i32 2
  %11 = ptrtoint ptr %height15 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %height15, align 1
  %12 = load i32, ptr %mf, align 4
  %width18 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 3, i32 1, i32 1
  %13 = ptrtoint ptr %width18 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %width18, align 1
  %14 = load i32, ptr %height, align 4
  %height21 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 3, i32 1, i32 2
  %15 = ptrtoint ptr %height21 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %height21, align 1
  %16 = load i32, ptr %mf, align 4
  %width24 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 3, i32 3, i32 1
  %17 = ptrtoint ptr %width24 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %width24, align 1
  %18 = load i32, ptr %height, align 4
  %height27 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 3, i32 3, i32 2
  %19 = ptrtoint ptr %height27 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %height27, align 1
  %20 = load i32, ptr %mf, align 4
  %width30 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 1, i32 1
  %21 = ptrtoint ptr %width30 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %width30, align 1
  %22 = load i32, ptr %height, align 4
  %height33 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 1, i32 2
  %23 = ptrtoint ptr %height33 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %height33, align 1
  %p_region_index = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 5
  %24 = ptrtoint ptr %p_region_index to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %p_region_index, align 4
  %26 = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not = icmp eq i32 %26, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %config_index, align 8
  %p_region_index.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %28, i32 5
  tail call void @_set_bit(i32 noundef 8, ptr noundef %p_region_index.i) #6
  %29 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %config_index, align 8
  %p_region_index.i69 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %30, i32 5
  tail call void @_set_bit(i32 noundef 19, ptr noundef %p_region_index.i69) #6
  %31 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %config_index, align 8
  %p_region_index.i71 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %32, i32 5
  tail call void @_set_bit(i32 noundef 23, ptr noundef %p_region_index.i71) #6
  %33 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %config_index, align 8
  %p_region_index.i73 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %34, i32 5
  tail call void @_set_bit(i32 noundef 25, ptr noundef %p_region_index.i73) #6
  %35 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %config_index, align 8
  %p_region_index.i75 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %36, i32 5
  tail call void @_set_bit(i32 noundef 54, ptr noundef %p_region_index.i75) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fimc_is_hw_get_sensor_max_framerate(ptr nocapture noundef readonly %is) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 6
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cond = icmp eq i32 %3, 2
  %. = select i1 %cond, i32 30, i32 15
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__is_set_sensor(ptr noundef %is, i32 noundef %fps) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 23
  %0 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fps)
  %cmp = icmp eq i32 %fps, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sensor.i = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 6
  %2 = ptrtoint ptr %sensor.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sensor.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cond.i = icmp eq i32 %5, 2
  %..i = select i1 %cond.i, i32 30, i32 15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %div = udiv i32 1000000, %fps
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %fps.sink = phi i32 [ %..i, %if.then ], [ %fps, %if.else ]
  %div.sink = phi i32 [ 66666, %if.then ], [ %div, %if.else ]
  %6 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 1, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %fps.sink, ptr %6, align 1
  %8 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 1, i32 10
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 0, ptr %8, align 1
  %10 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 1, i32 11
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %div.sink, ptr %10, align 1
  %12 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %config_index, align 8
  %p_region_index.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %13, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %p_region_index.i) #6
  %14 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %config_index, align 8
  %p_region_index.i26 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %15, i32 5
  tail call void @_set_bit(i32 noundef 8, ptr noundef %p_region_index.i26) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__is_set_isp_flash(ptr noundef %is, i32 noundef %cmd, i32 noundef %redeye) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 23
  %0 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_index, align 8
  %flash = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 5
  %2 = ptrtoint ptr %flash to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %cmd, ptr %flash, align 1
  %redeye4 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 5, i32 1
  %3 = ptrtoint ptr %redeye4 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %redeye, ptr %redeye4, align 1
  %err = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 5, i32 3
  %4 = ptrtoint ptr %err to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 0, ptr %err, align 1
  %5 = load i32, ptr %config_index, align 8
  %p_region_index.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %5, i32 5
  tail call void @_set_bit(i32 noundef 12, ptr noundef %p_region_index.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__is_set_isp_awb(ptr noundef %is, i32 noundef %cmd, i32 noundef %val) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 23
  %0 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_index, align 8
  %awb = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 6
  %2 = ptrtoint ptr %awb to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %cmd, ptr %awb, align 1
  %illumination = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 6, i32 1
  %3 = ptrtoint ptr %illumination to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %val, ptr %illumination, align 1
  %err = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 6, i32 3
  %4 = ptrtoint ptr %err to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 0, ptr %err, align 1
  %5 = load i32, ptr %config_index, align 8
  %p_region_index.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %5, i32 5
  tail call void @_set_bit(i32 noundef 13, ptr noundef %p_region_index.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__is_set_isp_effect(ptr noundef %is, i32 noundef %cmd) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 23
  %0 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_index, align 8
  %effect = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 7
  %2 = ptrtoint ptr %effect to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %cmd, ptr %effect, align 1
  %err = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 7, i32 2
  %3 = ptrtoint ptr %err to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 0, ptr %err, align 1
  %4 = load i32, ptr %config_index, align 8
  %p_region_index.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %4, i32 5
  tail call void @_set_bit(i32 noundef 14, ptr noundef %p_region_index.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__is_set_isp_iso(ptr noundef %is, i32 noundef %cmd, i32 noundef %val) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 23
  %0 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_index, align 8
  %iso = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 8
  %2 = ptrtoint ptr %iso to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %cmd, ptr %iso, align 1
  %value = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 8, i32 1
  %3 = ptrtoint ptr %value to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %val, ptr %value, align 1
  %err = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 8, i32 3
  %4 = ptrtoint ptr %err to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 0, ptr %err, align 1
  %5 = load i32, ptr %config_index, align 8
  %p_region_index.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %5, i32 5
  tail call void @_set_bit(i32 noundef 15, ptr noundef %p_region_index.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__is_set_isp_adjust(ptr noundef %is, i32 noundef %cmd, i32 noundef %val) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 23
  %0 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_index, align 8
  %p_region_index = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 5
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
    i32 4, label %sw.bb7
    i32 8, label %sw.bb9
    i32 16, label %sw.bb11
    i32 32, label %sw.bb13
    i32 0, label %sw.bb15
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %contrast = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 9, i32 1
  %3 = ptrtoint ptr %contrast to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %val, ptr %contrast, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %saturation = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 9, i32 2
  %4 = ptrtoint ptr %saturation to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %val, ptr %saturation, align 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sharpness = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 9, i32 3
  %5 = ptrtoint ptr %sharpness to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %val, ptr %sharpness, align 1
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %exposure = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 9, i32 4
  %6 = ptrtoint ptr %exposure to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %val, ptr %exposure, align 1
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %brightness = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 9, i32 5
  %7 = ptrtoint ptr %brightness to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %val, ptr %brightness, align 1
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hue = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 9, i32 6
  %8 = ptrtoint ptr %hue to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %val, ptr %hue, align 1
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %contrast17 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 9, i32 1
  %9 = call ptr @memset(ptr %contrast17, i32 0, i32 24)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb, %entry.sw.epilog_crit_edge
  %10 = ptrtoint ptr %p_region_index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %p_region_index, align 4
  %12 = and i32 %11, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  %adjust28 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 9
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %adjust28 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %cmd, ptr %adjust28, align 1
  %err = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 9, i32 8
  %14 = ptrtoint ptr %err to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 0, ptr %err, align 1
  %15 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %config_index, align 8
  %p_region_index.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %16, i32 5
  tail call void @_set_bit(i32 noundef 16, ptr noundef %p_region_index.i) #6
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %adjust28 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %adjust28, align 1
  %or = or i32 %18, %cmd
  store i32 %or, ptr %adjust28, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__is_set_isp_metering(ptr noundef %is, i32 noundef %id, i32 noundef %val) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 23
  %0 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_index, align 8
  %p_region_index = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 5
  %2 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %id, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb7
    i32 3, label %sw.bb9
    i32 4, label %sw.bb11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %metering = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 10
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %win_pos_x = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 10, i32 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %win_pos_y = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 10, i32 2
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %win_width = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 10, i32 3
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %win_height = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 10, i32 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb
  %win_height.sink = phi ptr [ %win_height, %sw.bb11 ], [ %win_width, %sw.bb9 ], [ %win_pos_y, %sw.bb7 ], [ %win_pos_x, %sw.bb5 ], [ %metering, %sw.bb ]
  %3 = ptrtoint ptr %win_height.sink to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %val, ptr %win_height.sink, align 1
  %4 = ptrtoint ptr %p_region_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %p_region_index, align 4
  %6 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %err = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 10, i32 6
  %7 = ptrtoint ptr %err to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 0, ptr %err, align 1
  %8 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config_index, align 8
  %p_region_index.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %9, i32 5
  tail call void @_set_bit(i32 noundef 17, ptr noundef %p_region_index.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__is_set_isp_afc(ptr noundef %is, i32 noundef %cmd, i32 noundef %val) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 23
  %0 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_index, align 8
  %afc = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 11
  %2 = ptrtoint ptr %afc to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %cmd, ptr %afc, align 1
  %manual = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 11, i32 1
  %3 = ptrtoint ptr %manual to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %val, ptr %manual, align 1
  %err = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 11, i32 3
  %4 = ptrtoint ptr %err to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 0, ptr %err, align 1
  %5 = load i32, ptr %config_index, align 8
  %p_region_index.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %5, i32 5
  tail call void @_set_bit(i32 noundef 18, ptr noundef %p_region_index.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__is_set_drc_control(ptr noundef %is, i32 noundef %val) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 23
  %0 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_index, align 8
  %bypass = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 3, i32 0, i32 1
  %2 = ptrtoint ptr %bypass to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %val, ptr %bypass, align 1
  %p_region_index.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 5
  tail call void @_set_bit(i32 noundef 22, ptr noundef %p_region_index.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__is_set_fd_control(ptr noundef %is, i32 noundef %val) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 23
  %0 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_index, align 8
  %arrayidx1 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 5, i32 1
  %fd4 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4
  %2 = ptrtoint ptr %fd4 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %val, ptr %fd4, align 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx1, align 4
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %config_index, align 8
  %p_region_index.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %7, i32 5
  tail call void @_set_bit(i32 noundef 53, ptr noundef %p_region_index.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__is_set_fd_config_maxface(ptr noundef %is, i32 noundef %val) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 23
  %0 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_index, align 8
  %arrayidx1 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 5, i32 1
  %config5 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 3
  %max_number = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 3, i32 1
  %2 = ptrtoint ptr %max_number to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %val, ptr %max_number, align 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx1, align 4
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %config5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 1, ptr %config5, align 1
  %err = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 3, i32 11
  %7 = ptrtoint ptr %err to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 0, ptr %err, align 1
  %8 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config_index, align 8
  %p_region_index.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %9, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %p_region_index.i) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %config5 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %config5, align 1
  %or = or i32 %11, 1
  store i32 %or, ptr %config5, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__is_set_fd_config_rollangle(ptr noundef %is, i32 noundef %val) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 23
  %0 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_index, align 8
  %arrayidx1 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 5, i32 1
  %config5 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 3
  %roll_angle = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 3, i32 2
  %2 = ptrtoint ptr %roll_angle to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %val, ptr %roll_angle, align 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx1, align 4
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %config5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 2, ptr %config5, align 1
  %err = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 3, i32 11
  %7 = ptrtoint ptr %err to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 0, ptr %err, align 1
  %8 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config_index, align 8
  %p_region_index.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %9, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %p_region_index.i) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %config5 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %config5, align 1
  %or = or i32 %11, 2
  store i32 %or, ptr %config5, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__is_set_fd_config_yawangle(ptr noundef %is, i32 noundef %val) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 23
  %0 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_index, align 8
  %arrayidx1 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 5, i32 1
  %config5 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 3
  %yaw_angle = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 3, i32 3
  %2 = ptrtoint ptr %yaw_angle to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %val, ptr %yaw_angle, align 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx1, align 4
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %config5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 4, ptr %config5, align 1
  %err = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 3, i32 11
  %7 = ptrtoint ptr %err to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 0, ptr %err, align 1
  %8 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config_index, align 8
  %p_region_index.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %9, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %p_region_index.i) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %config5 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %config5, align 1
  %or = or i32 %11, 4
  store i32 %or, ptr %config5, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__is_set_fd_config_smilemode(ptr noundef %is, i32 noundef %val) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 23
  %0 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_index, align 8
  %arrayidx1 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 5, i32 1
  %config5 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 3
  %smile_mode = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 3, i32 4
  %2 = ptrtoint ptr %smile_mode to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %val, ptr %smile_mode, align 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx1, align 4
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %config5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 8, ptr %config5, align 1
  %err = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 3, i32 11
  %7 = ptrtoint ptr %err to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 0, ptr %err, align 1
  %8 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config_index, align 8
  %p_region_index.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %9, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %p_region_index.i) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %config5 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %config5, align 1
  %or = or i32 %11, 8
  store i32 %or, ptr %config5, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__is_set_fd_config_blinkmode(ptr noundef %is, i32 noundef %val) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 23
  %0 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_index, align 8
  %arrayidx1 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 5, i32 1
  %config5 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 3
  %blink_mode = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 3, i32 5
  %2 = ptrtoint ptr %blink_mode to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %val, ptr %blink_mode, align 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx1, align 4
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %config5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 16, ptr %config5, align 1
  %err = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 3, i32 11
  %7 = ptrtoint ptr %err to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 0, ptr %err, align 1
  %8 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config_index, align 8
  %p_region_index.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %9, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %p_region_index.i) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %config5 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %config5, align 1
  %or = or i32 %11, 16
  store i32 %or, ptr %config5, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__is_set_fd_config_eyedetect(ptr noundef %is, i32 noundef %val) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 23
  %0 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_index, align 8
  %arrayidx1 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 5, i32 1
  %config5 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 3
  %eye_detect = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 3, i32 6
  %2 = ptrtoint ptr %eye_detect to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %val, ptr %eye_detect, align 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx1, align 4
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %config5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 32, ptr %config5, align 1
  %err = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 3, i32 11
  %7 = ptrtoint ptr %err to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 0, ptr %err, align 1
  %8 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config_index, align 8
  %p_region_index.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %9, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %p_region_index.i) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %config5 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %config5, align 1
  %or = or i32 %11, 32
  store i32 %or, ptr %config5, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__is_set_fd_config_mouthdetect(ptr noundef %is, i32 noundef %val) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 23
  %0 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_index, align 8
  %arrayidx1 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 5, i32 1
  %config5 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 3
  %mouth_detect = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 3, i32 7
  %2 = ptrtoint ptr %mouth_detect to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %val, ptr %mouth_detect, align 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx1, align 4
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %config5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 64, ptr %config5, align 1
  %err = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 3, i32 11
  %7 = ptrtoint ptr %err to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 0, ptr %err, align 1
  %8 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config_index, align 8
  %p_region_index.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %9, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %p_region_index.i) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %config5 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %config5, align 1
  %or = or i32 %11, 64
  store i32 %or, ptr %config5, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__is_set_fd_config_orientation(ptr noundef %is, i32 noundef %val) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 23
  %0 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_index, align 8
  %arrayidx1 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 5, i32 1
  %config5 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 3
  %orientation = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 3, i32 8
  %2 = ptrtoint ptr %orientation to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %val, ptr %orientation, align 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx1, align 4
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %config5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 128, ptr %config5, align 1
  %err = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 3, i32 11
  %7 = ptrtoint ptr %err to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 0, ptr %err, align 1
  %8 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config_index, align 8
  %p_region_index.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %9, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %p_region_index.i) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %config5 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %config5, align 1
  %or = or i32 %11, 128
  store i32 %or, ptr %config5, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__is_set_fd_config_orientation_val(ptr noundef %is, i32 noundef %val) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 23
  %0 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_index, align 8
  %arrayidx1 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 5, i32 1
  %config5 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 3
  %orientation_value = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 3, i32 9
  %2 = ptrtoint ptr %orientation_value to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %val, ptr %orientation_value, align 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx1, align 4
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %config5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 256, ptr %config5, align 1
  %err = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 3, i32 11
  %7 = ptrtoint ptr %err to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 0, ptr %err, align 1
  %8 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config_index, align 8
  %p_region_index.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %9, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %p_region_index.i) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %config5 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %config5, align 1
  %or = or i32 %11, 256
  store i32 %or, ptr %config5, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fimc_is_set_initial_params(ptr noundef %is) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %config_index = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 23
  %0 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_index, align 8
  %arrayidx = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1
  %isp4 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2
  %drc7 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 3
  %p_region_index = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 5
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %arrayidx, align 4
  %3 = load i32, ptr %config_index, align 8
  %p_region_index.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %3, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %p_region_index.i) #6
  %4 = ptrtoint ptr %isp4 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 1, ptr %isp4, align 1
  %bypass = getelementptr inbounds %struct.param_control, ptr %isp4, i32 0, i32 1
  %5 = ptrtoint ptr %bypass to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 0, ptr %bypass, align 1
  %err = getelementptr inbounds %struct.param_control, ptr %isp4, i32 0, i32 6
  %6 = ptrtoint ptr %err to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 0, ptr %err, align 1
  %7 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %config_index, align 8
  %p_region_index.i472 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %8, i32 5
  tail call void @_set_bit(i32 noundef 7, ptr noundef %p_region_index.i472) #6
  %otf_input = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 1
  %9 = ptrtoint ptr %otf_input to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 1, ptr %otf_input, align 1
  %10 = ptrtoint ptr %p_region_index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %p_region_index, align 4
  %12 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %width = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 1, i32 1
  %13 = ptrtoint ptr %width to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 1280, ptr %width, align 1
  %height = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 1, i32 2
  %14 = ptrtoint ptr %height to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 720, ptr %height, align 1
  %15 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %config_index, align 8
  %p_region_index.i474 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %16, i32 5
  tail call void @_set_bit(i32 noundef 8, ptr noundef %p_region_index.i474) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %test_pattern = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 6, i32 0, i32 2
  %17 = ptrtoint ptr %test_pattern to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %test_pattern, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool20.not = icmp eq i8 %18, 0
  %spec.select = select i1 %tobool20.not, i32 0, i32 10
  %19 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 1, i32 3
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %spec.select, ptr %19, align 1
  %bitwidth = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 1, i32 4
  %21 = ptrtoint ptr %bitwidth to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 10, ptr %bitwidth, align 1
  %order = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 1, i32 5
  %22 = ptrtoint ptr %order to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 0, ptr %order, align 1
  %crop_offset_x = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 1, i32 6
  %23 = ptrtoint ptr %crop_offset_x to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 0, ptr %crop_offset_x, align 1
  %crop_offset_y = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 1, i32 7
  %24 = ptrtoint ptr %crop_offset_y to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 0, ptr %crop_offset_y, align 1
  %err31 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 1, i32 13
  %err48 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 2, i32 10
  %25 = ptrtoint ptr %err48 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 0, ptr %err48, align 1
  %26 = call ptr @memset(ptr %err31, i32 0, i32 36)
  %27 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %config_index, align 8
  %p_region_index.i476 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %28, i32 5
  tail call void @_set_bit(i32 noundef 9, ptr noundef %p_region_index.i476) #6
  %dma2_input = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 3
  %err67 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 3, i32 10
  %29 = ptrtoint ptr %err67 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 0, ptr %err67, align 1
  %30 = call ptr @memset(ptr %dma2_input, i32 0, i32 32)
  %31 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %config_index, align 8
  %p_region_index.i478 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %32, i32 5
  tail call void @_set_bit(i32 noundef 10, ptr noundef %p_region_index.i478) #6
  %aa = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 4
  %33 = ptrtoint ptr %aa to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 0, ptr %aa, align 1
  %target = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 4, i32 1
  %34 = ptrtoint ptr %target to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 6, ptr %target, align 1
  %35 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %config_index, align 8
  %p_region_index.i480 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %36, i32 5
  tail call void @_set_bit(i32 noundef 11, ptr noundef %p_region_index.i480) #6
  %37 = ptrtoint ptr %p_region_index to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %p_region_index, align 4
  %39 = and i32 %38, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool71.not = icmp eq i32 %39, 0
  br i1 %tobool71.not, label %if.then72, label %if.end.if.end73_crit_edge

if.end.if.end73_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then72:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %config_index, align 8
  %flash.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %41, i32 2, i32 5
  %42 = ptrtoint ptr %flash.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 0, ptr %flash.i, align 1
  %redeye4.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %41, i32 2, i32 5, i32 1
  %43 = ptrtoint ptr %redeye4.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 0, ptr %redeye4.i, align 1
  %err.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %41, i32 2, i32 5, i32 3
  %44 = ptrtoint ptr %err.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 0, ptr %err.i, align 1
  %45 = load i32, ptr %config_index, align 8
  %p_region_index.i.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %45, i32 5
  tail call void @_set_bit(i32 noundef 12, ptr noundef %p_region_index.i.i) #6
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end.if.end73_crit_edge
  %46 = ptrtoint ptr %p_region_index to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %p_region_index, align 4
  %48 = and i32 %47, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool75.not = icmp eq i32 %48, 0
  br i1 %tobool75.not, label %if.then76, label %if.end73.if.end77_crit_edge

if.end73.if.end77_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %config_index, align 8
  %awb.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %50, i32 2, i32 6
  %51 = ptrtoint ptr %awb.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 0, ptr %awb.i, align 1
  %illumination.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %50, i32 2, i32 6, i32 1
  %52 = ptrtoint ptr %illumination.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 0, ptr %illumination.i, align 1
  %err.i483 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %50, i32 2, i32 6, i32 3
  %53 = ptrtoint ptr %err.i483 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 0, ptr %err.i483, align 1
  %54 = load i32, ptr %config_index, align 8
  %p_region_index.i.i484 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %54, i32 5
  tail call void @_set_bit(i32 noundef 13, ptr noundef %p_region_index.i.i484) #6
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end73.if.end77_crit_edge
  %55 = ptrtoint ptr %p_region_index to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %p_region_index, align 4
  %57 = and i32 %56, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool79.not = icmp eq i32 %57, 0
  br i1 %tobool79.not, label %if.then80, label %if.end77.if.end81_crit_edge

if.end77.if.end81_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %config_index, align 8
  %effect.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %59, i32 2, i32 7
  %60 = ptrtoint ptr %effect.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 0, ptr %effect.i, align 1
  %err.i486 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %59, i32 2, i32 7, i32 2
  %61 = ptrtoint ptr %err.i486 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 0, ptr %err.i486, align 1
  %62 = load i32, ptr %config_index, align 8
  %p_region_index.i.i487 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %62, i32 5
  tail call void @_set_bit(i32 noundef 14, ptr noundef %p_region_index.i.i487) #6
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %if.end77.if.end81_crit_edge
  %63 = ptrtoint ptr %p_region_index to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %p_region_index, align 4
  %65 = and i32 %64, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool83.not = icmp eq i32 %65, 0
  br i1 %tobool83.not, label %if.then84, label %if.end81.if.end85_crit_edge

if.end81.if.end85_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %config_index, align 8
  %iso.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %67, i32 2, i32 8
  %68 = ptrtoint ptr %iso.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 0, ptr %iso.i, align 1
  %value.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %67, i32 2, i32 8, i32 1
  %69 = ptrtoint ptr %value.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 0, ptr %value.i, align 1
  %err.i489 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %67, i32 2, i32 8, i32 3
  %70 = ptrtoint ptr %err.i489 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 0, ptr %err.i489, align 1
  %71 = load i32, ptr %config_index, align 8
  %p_region_index.i.i490 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %71, i32 5
  tail call void @_set_bit(i32 noundef 15, ptr noundef %p_region_index.i.i490) #6
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %if.end81.if.end85_crit_edge
  %72 = ptrtoint ptr %p_region_index to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %p_region_index, align 4
  %74 = and i32 %73, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool87.not = icmp eq i32 %74, 0
  br i1 %tobool87.not, label %if.then88, label %if.end85.if.end89_crit_edge

if.end85.if.end89_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

if.then88:                                        ; preds = %if.end85
  %75 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %config_index, align 8
  %p_region_index.i492 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %76, i32 5
  %contrast.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %76, i32 2, i32 9, i32 1
  %77 = ptrtoint ptr %contrast.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 0, ptr %contrast.i, align 1
  %78 = ptrtoint ptr %p_region_index.i492 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %p_region_index.i492, align 4
  %80 = and i32 %79, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i = icmp eq i32 %80, 0
  %adjust28.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %76, i32 2, i32 9
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %adjust28.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 1, ptr %adjust28.i, align 1
  %err.i493 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %76, i32 2, i32 9, i32 8
  %82 = ptrtoint ptr %err.i493 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 0, ptr %err.i493, align 1
  %83 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %config_index, align 8
  %p_region_index.i.i494 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %84, i32 5
  tail call void @_set_bit(i32 noundef 16, ptr noundef %p_region_index.i.i494) #6
  br label %__is_set_isp_adjust.exit

if.else.i:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %adjust28.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %adjust28.i, align 1
  %or.i = or i32 %86, 1
  store i32 %or.i, ptr %adjust28.i, align 1
  br label %__is_set_isp_adjust.exit

__is_set_isp_adjust.exit:                         ; preds = %if.else.i, %if.then.i
  %87 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %config_index, align 8
  %p_region_index.i496 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %88, i32 5
  %saturation.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %88, i32 2, i32 9, i32 2
  %89 = ptrtoint ptr %saturation.i to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 0, ptr %saturation.i, align 1
  %90 = ptrtoint ptr %p_region_index.i496 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %p_region_index.i496, align 4
  %92 = and i32 %91, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.i497 = icmp eq i32 %92, 0
  %adjust28.i498 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %88, i32 2, i32 9
  br i1 %tobool.not.i497, label %if.then.i501, label %if.else.i503

if.then.i501:                                     ; preds = %__is_set_isp_adjust.exit
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %adjust28.i498 to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 2, ptr %adjust28.i498, align 1
  %err.i499 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %88, i32 2, i32 9, i32 8
  %94 = ptrtoint ptr %err.i499 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 4)
  store i32 0, ptr %err.i499, align 1
  %95 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %config_index, align 8
  %p_region_index.i.i500 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %96, i32 5
  tail call void @_set_bit(i32 noundef 16, ptr noundef %p_region_index.i.i500) #6
  br label %__is_set_isp_adjust.exit504

if.else.i503:                                     ; preds = %__is_set_isp_adjust.exit
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %adjust28.i498 to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %adjust28.i498, align 1
  %or.i502 = or i32 %98, 2
  store i32 %or.i502, ptr %adjust28.i498, align 1
  br label %__is_set_isp_adjust.exit504

__is_set_isp_adjust.exit504:                      ; preds = %if.else.i503, %if.then.i501
  %99 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %config_index, align 8
  %p_region_index.i506 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %100, i32 5
  %sharpness.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %100, i32 2, i32 9, i32 3
  %101 = ptrtoint ptr %sharpness.i to i32
  call void @__asan_storeN_noabort(i32 %101, i32 4)
  store i32 0, ptr %sharpness.i, align 1
  %102 = ptrtoint ptr %p_region_index.i506 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %p_region_index.i506, align 4
  %104 = and i32 %103, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool.not.i507 = icmp eq i32 %104, 0
  %adjust28.i508 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %100, i32 2, i32 9
  br i1 %tobool.not.i507, label %if.then.i511, label %if.else.i513

if.then.i511:                                     ; preds = %__is_set_isp_adjust.exit504
  call void @__sanitizer_cov_trace_pc() #8
  %105 = ptrtoint ptr %adjust28.i508 to i32
  call void @__asan_storeN_noabort(i32 %105, i32 4)
  store i32 4, ptr %adjust28.i508, align 1
  %err.i509 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %100, i32 2, i32 9, i32 8
  %106 = ptrtoint ptr %err.i509 to i32
  call void @__asan_storeN_noabort(i32 %106, i32 4)
  store i32 0, ptr %err.i509, align 1
  %107 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %config_index, align 8
  %p_region_index.i.i510 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %108, i32 5
  tail call void @_set_bit(i32 noundef 16, ptr noundef %p_region_index.i.i510) #6
  br label %__is_set_isp_adjust.exit514

if.else.i513:                                     ; preds = %__is_set_isp_adjust.exit504
  call void @__sanitizer_cov_trace_pc() #8
  %109 = ptrtoint ptr %adjust28.i508 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 4)
  %110 = load i32, ptr %adjust28.i508, align 1
  %or.i512 = or i32 %110, 4
  store i32 %or.i512, ptr %adjust28.i508, align 1
  br label %__is_set_isp_adjust.exit514

__is_set_isp_adjust.exit514:                      ; preds = %if.else.i513, %if.then.i511
  %111 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %config_index, align 8
  %p_region_index.i516 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %112, i32 5
  %exposure.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %112, i32 2, i32 9, i32 4
  %113 = ptrtoint ptr %exposure.i to i32
  call void @__asan_storeN_noabort(i32 %113, i32 4)
  store i32 0, ptr %exposure.i, align 1
  %114 = ptrtoint ptr %p_region_index.i516 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %p_region_index.i516, align 4
  %116 = and i32 %115, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.not.i517 = icmp eq i32 %116, 0
  %adjust28.i518 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %112, i32 2, i32 9
  br i1 %tobool.not.i517, label %if.then.i521, label %if.else.i523

if.then.i521:                                     ; preds = %__is_set_isp_adjust.exit514
  call void @__sanitizer_cov_trace_pc() #8
  %117 = ptrtoint ptr %adjust28.i518 to i32
  call void @__asan_storeN_noabort(i32 %117, i32 4)
  store i32 8, ptr %adjust28.i518, align 1
  %err.i519 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %112, i32 2, i32 9, i32 8
  %118 = ptrtoint ptr %err.i519 to i32
  call void @__asan_storeN_noabort(i32 %118, i32 4)
  store i32 0, ptr %err.i519, align 1
  %119 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %config_index, align 8
  %p_region_index.i.i520 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %120, i32 5
  tail call void @_set_bit(i32 noundef 16, ptr noundef %p_region_index.i.i520) #6
  br label %__is_set_isp_adjust.exit524

if.else.i523:                                     ; preds = %__is_set_isp_adjust.exit514
  call void @__sanitizer_cov_trace_pc() #8
  %121 = ptrtoint ptr %adjust28.i518 to i32
  call void @__asan_loadN_noabort(i32 %121, i32 4)
  %122 = load i32, ptr %adjust28.i518, align 1
  %or.i522 = or i32 %122, 8
  store i32 %or.i522, ptr %adjust28.i518, align 1
  br label %__is_set_isp_adjust.exit524

__is_set_isp_adjust.exit524:                      ; preds = %if.else.i523, %if.then.i521
  %123 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %config_index, align 8
  %p_region_index.i526 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %124, i32 5
  %brightness.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %124, i32 2, i32 9, i32 5
  %125 = ptrtoint ptr %brightness.i to i32
  call void @__asan_storeN_noabort(i32 %125, i32 4)
  store i32 0, ptr %brightness.i, align 1
  %126 = ptrtoint ptr %p_region_index.i526 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %p_region_index.i526, align 4
  %128 = and i32 %127, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool.not.i527 = icmp eq i32 %128, 0
  %adjust28.i528 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %124, i32 2, i32 9
  br i1 %tobool.not.i527, label %if.then.i531, label %if.else.i533

if.then.i531:                                     ; preds = %__is_set_isp_adjust.exit524
  call void @__sanitizer_cov_trace_pc() #8
  %129 = ptrtoint ptr %adjust28.i528 to i32
  call void @__asan_storeN_noabort(i32 %129, i32 4)
  store i32 16, ptr %adjust28.i528, align 1
  %err.i529 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %124, i32 2, i32 9, i32 8
  %130 = ptrtoint ptr %err.i529 to i32
  call void @__asan_storeN_noabort(i32 %130, i32 4)
  store i32 0, ptr %err.i529, align 1
  %131 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %config_index, align 8
  %p_region_index.i.i530 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %132, i32 5
  tail call void @_set_bit(i32 noundef 16, ptr noundef %p_region_index.i.i530) #6
  br label %__is_set_isp_adjust.exit534

if.else.i533:                                     ; preds = %__is_set_isp_adjust.exit524
  call void @__sanitizer_cov_trace_pc() #8
  %133 = ptrtoint ptr %adjust28.i528 to i32
  call void @__asan_loadN_noabort(i32 %133, i32 4)
  %134 = load i32, ptr %adjust28.i528, align 1
  %or.i532 = or i32 %134, 16
  store i32 %or.i532, ptr %adjust28.i528, align 1
  br label %__is_set_isp_adjust.exit534

__is_set_isp_adjust.exit534:                      ; preds = %if.else.i533, %if.then.i531
  %135 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %config_index, align 8
  %p_region_index.i536 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %136, i32 5
  %hue.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %136, i32 2, i32 9, i32 6
  %137 = ptrtoint ptr %hue.i to i32
  call void @__asan_storeN_noabort(i32 %137, i32 4)
  store i32 0, ptr %hue.i, align 1
  %138 = ptrtoint ptr %p_region_index.i536 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %p_region_index.i536, align 4
  %140 = and i32 %139, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool.not.i537 = icmp eq i32 %140, 0
  %adjust28.i538 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %136, i32 2, i32 9
  br i1 %tobool.not.i537, label %if.then.i541, label %if.else.i543

if.then.i541:                                     ; preds = %__is_set_isp_adjust.exit534
  call void @__sanitizer_cov_trace_pc() #8
  %141 = ptrtoint ptr %adjust28.i538 to i32
  call void @__asan_storeN_noabort(i32 %141, i32 4)
  store i32 32, ptr %adjust28.i538, align 1
  %err.i539 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %136, i32 2, i32 9, i32 8
  %142 = ptrtoint ptr %err.i539 to i32
  call void @__asan_storeN_noabort(i32 %142, i32 4)
  store i32 0, ptr %err.i539, align 1
  %143 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %config_index, align 8
  %p_region_index.i.i540 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %144, i32 5
  tail call void @_set_bit(i32 noundef 16, ptr noundef %p_region_index.i.i540) #6
  br label %if.end89

if.else.i543:                                     ; preds = %__is_set_isp_adjust.exit534
  call void @__sanitizer_cov_trace_pc() #8
  %145 = ptrtoint ptr %adjust28.i538 to i32
  call void @__asan_loadN_noabort(i32 %145, i32 4)
  %146 = load i32, ptr %adjust28.i538, align 1
  %or.i542 = or i32 %146, 32
  store i32 %or.i542, ptr %adjust28.i538, align 1
  br label %if.end89

if.end89:                                         ; preds = %if.else.i543, %if.then.i541, %if.end85.if.end89_crit_edge
  %147 = ptrtoint ptr %p_region_index to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load volatile i32, ptr %p_region_index, align 4
  %149 = and i32 %148, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool91.not = icmp eq i32 %149, 0
  br i1 %tobool91.not, label %if.then92, label %if.end89.if.end93_crit_edge

if.end89.if.end93_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.then92:                                        ; preds = %if.end89
  %150 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %config_index, align 8
  %p_region_index.i546 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %151, i32 5
  %metering.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %151, i32 2, i32 10
  %152 = ptrtoint ptr %metering.i to i32
  call void @__asan_storeN_noabort(i32 %152, i32 4)
  store i32 3, ptr %metering.i, align 1
  %153 = ptrtoint ptr %p_region_index.i546 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %p_region_index.i546, align 4
  %155 = and i32 %154, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool.not.i547 = icmp eq i32 %155, 0
  br i1 %tobool.not.i547, label %if.then.i550, label %if.then92.__is_set_isp_metering.exit_crit_edge

if.then92.__is_set_isp_metering.exit_crit_edge:   ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  br label %__is_set_isp_metering.exit

if.then.i550:                                     ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  %err.i548 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %151, i32 2, i32 10, i32 6
  %156 = ptrtoint ptr %err.i548 to i32
  call void @__asan_storeN_noabort(i32 %156, i32 4)
  store i32 0, ptr %err.i548, align 1
  %157 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %config_index, align 8
  %p_region_index.i.i549 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %158, i32 5
  tail call void @_set_bit(i32 noundef 17, ptr noundef %p_region_index.i.i549) #6
  br label %__is_set_isp_metering.exit

__is_set_isp_metering.exit:                       ; preds = %if.then.i550, %if.then92.__is_set_isp_metering.exit_crit_edge
  %159 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %config_index, align 8
  %p_region_index.i552 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %160, i32 5
  %win_pos_x.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %160, i32 2, i32 10, i32 1
  %161 = ptrtoint ptr %win_pos_x.i to i32
  call void @__asan_storeN_noabort(i32 %161, i32 4)
  store i32 0, ptr %win_pos_x.i, align 1
  %162 = ptrtoint ptr %p_region_index.i552 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load volatile i32, ptr %p_region_index.i552, align 4
  %164 = and i32 %163, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool.not.i553 = icmp eq i32 %164, 0
  br i1 %tobool.not.i553, label %if.then.i556, label %__is_set_isp_metering.exit.__is_set_isp_metering.exit557_crit_edge

__is_set_isp_metering.exit.__is_set_isp_metering.exit557_crit_edge: ; preds = %__is_set_isp_metering.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %__is_set_isp_metering.exit557

if.then.i556:                                     ; preds = %__is_set_isp_metering.exit
  call void @__sanitizer_cov_trace_pc() #8
  %err.i554 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %160, i32 2, i32 10, i32 6
  %165 = ptrtoint ptr %err.i554 to i32
  call void @__asan_storeN_noabort(i32 %165, i32 4)
  store i32 0, ptr %err.i554, align 1
  tail call void @_set_bit(i32 noundef 17, ptr noundef %p_region_index.i552) #6
  br label %__is_set_isp_metering.exit557

__is_set_isp_metering.exit557:                    ; preds = %if.then.i556, %__is_set_isp_metering.exit.__is_set_isp_metering.exit557_crit_edge
  %166 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %config_index, align 8
  %p_region_index.i559 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %167, i32 5
  %win_pos_y.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %167, i32 2, i32 10, i32 2
  %168 = ptrtoint ptr %win_pos_y.i to i32
  call void @__asan_storeN_noabort(i32 %168, i32 4)
  store i32 0, ptr %win_pos_y.i, align 1
  %169 = ptrtoint ptr %p_region_index.i559 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile i32, ptr %p_region_index.i559, align 4
  %171 = and i32 %170, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool.not.i560 = icmp eq i32 %171, 0
  br i1 %tobool.not.i560, label %if.then.i563, label %__is_set_isp_metering.exit557.__is_set_isp_metering.exit564_crit_edge

__is_set_isp_metering.exit557.__is_set_isp_metering.exit564_crit_edge: ; preds = %__is_set_isp_metering.exit557
  call void @__sanitizer_cov_trace_pc() #8
  br label %__is_set_isp_metering.exit564

if.then.i563:                                     ; preds = %__is_set_isp_metering.exit557
  call void @__sanitizer_cov_trace_pc() #8
  %err.i561 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %167, i32 2, i32 10, i32 6
  %172 = ptrtoint ptr %err.i561 to i32
  call void @__asan_storeN_noabort(i32 %172, i32 4)
  store i32 0, ptr %err.i561, align 1
  %173 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %config_index, align 8
  %p_region_index.i.i562 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %174, i32 5
  tail call void @_set_bit(i32 noundef 17, ptr noundef %p_region_index.i.i562) #6
  br label %__is_set_isp_metering.exit564

__is_set_isp_metering.exit564:                    ; preds = %if.then.i563, %__is_set_isp_metering.exit557.__is_set_isp_metering.exit564_crit_edge
  %175 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %config_index, align 8
  %p_region_index.i566 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %176, i32 5
  %win_width.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %176, i32 2, i32 10, i32 3
  %177 = ptrtoint ptr %win_width.i to i32
  call void @__asan_storeN_noabort(i32 %177, i32 4)
  store i32 0, ptr %win_width.i, align 1
  %178 = ptrtoint ptr %p_region_index.i566 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile i32, ptr %p_region_index.i566, align 4
  %180 = and i32 %179, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool.not.i567 = icmp eq i32 %180, 0
  br i1 %tobool.not.i567, label %if.then.i570, label %__is_set_isp_metering.exit564.__is_set_isp_metering.exit571_crit_edge

__is_set_isp_metering.exit564.__is_set_isp_metering.exit571_crit_edge: ; preds = %__is_set_isp_metering.exit564
  call void @__sanitizer_cov_trace_pc() #8
  br label %__is_set_isp_metering.exit571

if.then.i570:                                     ; preds = %__is_set_isp_metering.exit564
  call void @__sanitizer_cov_trace_pc() #8
  %err.i568 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %176, i32 2, i32 10, i32 6
  %181 = ptrtoint ptr %err.i568 to i32
  call void @__asan_storeN_noabort(i32 %181, i32 4)
  store i32 0, ptr %err.i568, align 1
  tail call void @_set_bit(i32 noundef 17, ptr noundef %p_region_index.i566) #6
  br label %__is_set_isp_metering.exit571

__is_set_isp_metering.exit571:                    ; preds = %if.then.i570, %__is_set_isp_metering.exit564.__is_set_isp_metering.exit571_crit_edge
  %182 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %config_index, align 8
  %p_region_index.i573 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %183, i32 5
  %win_height.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %183, i32 2, i32 10, i32 4
  %184 = ptrtoint ptr %win_height.i to i32
  call void @__asan_storeN_noabort(i32 %184, i32 4)
  store i32 0, ptr %win_height.i, align 1
  %185 = ptrtoint ptr %p_region_index.i573 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile i32, ptr %p_region_index.i573, align 4
  %187 = and i32 %186, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool.not.i574 = icmp eq i32 %187, 0
  br i1 %tobool.not.i574, label %if.then.i577, label %__is_set_isp_metering.exit571.if.end93_crit_edge

__is_set_isp_metering.exit571.if.end93_crit_edge: ; preds = %__is_set_isp_metering.exit571
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.then.i577:                                     ; preds = %__is_set_isp_metering.exit571
  call void @__sanitizer_cov_trace_pc() #8
  %err.i575 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %183, i32 2, i32 10, i32 6
  %188 = ptrtoint ptr %err.i575 to i32
  call void @__asan_storeN_noabort(i32 %188, i32 4)
  store i32 0, ptr %err.i575, align 1
  %189 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %config_index, align 8
  %p_region_index.i.i576 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %190, i32 5
  tail call void @_set_bit(i32 noundef 17, ptr noundef %p_region_index.i.i576) #6
  br label %if.end93

if.end93:                                         ; preds = %if.then.i577, %__is_set_isp_metering.exit571.if.end93_crit_edge, %if.end89.if.end93_crit_edge
  %191 = ptrtoint ptr %p_region_index to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load volatile i32, ptr %p_region_index, align 4
  %193 = and i32 %192, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool95.not = icmp eq i32 %193, 0
  br i1 %tobool95.not, label %if.then96, label %if.end93.if.end97_crit_edge

if.end93.if.end97_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  %194 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %config_index, align 8
  %afc.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %195, i32 2, i32 11
  %196 = ptrtoint ptr %afc.i to i32
  call void @__asan_storeN_noabort(i32 %196, i32 4)
  store i32 1, ptr %afc.i, align 1
  %manual.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %195, i32 2, i32 11, i32 1
  %197 = ptrtoint ptr %manual.i to i32
  call void @__asan_storeN_noabort(i32 %197, i32 4)
  store i32 0, ptr %manual.i, align 1
  %err.i580 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %195, i32 2, i32 11, i32 3
  %198 = ptrtoint ptr %err.i580 to i32
  call void @__asan_storeN_noabort(i32 %198, i32 4)
  store i32 0, ptr %err.i580, align 1
  %199 = load i32, ptr %config_index, align 8
  %p_region_index.i.i581 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %199, i32 5
  tail call void @_set_bit(i32 noundef 18, ptr noundef %p_region_index.i.i581) #6
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.end93.if.end97_crit_edge
  %otf_output = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 12
  %200 = ptrtoint ptr %otf_output to i32
  call void @__asan_storeN_noabort(i32 %200, i32 4)
  store i32 1, ptr %otf_output, align 1
  %201 = ptrtoint ptr %p_region_index to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load volatile i32, ptr %p_region_index, align 4
  %203 = and i32 %202, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool100.not = icmp eq i32 %203, 0
  br i1 %tobool100.not, label %if.then101, label %if.end97.if.end106_crit_edge

if.end97.if.end106_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

if.then101:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  %width103 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 12, i32 1
  %204 = ptrtoint ptr %width103 to i32
  call void @__asan_storeN_noabort(i32 %204, i32 4)
  store i32 1280, ptr %width103, align 1
  %height105 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 12, i32 2
  %205 = ptrtoint ptr %height105 to i32
  call void @__asan_storeN_noabort(i32 %205, i32 4)
  store i32 720, ptr %height105, align 1
  %206 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %config_index, align 8
  %p_region_index.i583 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %207, i32 5
  tail call void @_set_bit(i32 noundef 19, ptr noundef %p_region_index.i583) #6
  br label %if.end106

if.end106:                                        ; preds = %if.then101, %if.end97.if.end106_crit_edge
  %format108 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 12, i32 3
  %208 = ptrtoint ptr %format108 to i32
  call void @__asan_storeN_noabort(i32 %208, i32 4)
  store i32 1, ptr %format108, align 1
  %bitwidth110 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 12, i32 4
  %209 = ptrtoint ptr %bitwidth110 to i32
  call void @__asan_storeN_noabort(i32 %209, i32 4)
  store i32 12, ptr %bitwidth110, align 1
  %order112 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 12, i32 5
  %210 = ptrtoint ptr %order112 to i32
  call void @__asan_storeN_noabort(i32 %210, i32 4)
  store i32 0, ptr %order112, align 1
  %err114 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 12, i32 7
  %211 = ptrtoint ptr %err114 to i32
  call void @__asan_storeN_noabort(i32 %211, i32 4)
  store i32 0, ptr %err114, align 1
  %212 = ptrtoint ptr %p_region_index to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load volatile i32, ptr %p_region_index, align 4
  %214 = and i32 %213, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool116.not = icmp eq i32 %214, 0
  br i1 %tobool116.not, label %if.then117, label %if.end106.if.end138_crit_edge

if.end106.if.end138_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end138

if.then117:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  %dma1_output = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 13
  %err137 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 13, i32 12
  %215 = ptrtoint ptr %err137 to i32
  call void @__asan_storeN_noabort(i32 %215, i32 4)
  store i32 0, ptr %err137, align 1
  %216 = call ptr @memset(ptr %dma1_output, i32 0, i32 44)
  %217 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %config_index, align 8
  %p_region_index.i585 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %218, i32 5
  tail call void @_set_bit(i32 noundef 20, ptr noundef %p_region_index.i585) #6
  br label %if.end138

if.end138:                                        ; preds = %if.then117, %if.end106.if.end138_crit_edge
  %219 = ptrtoint ptr %p_region_index to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load volatile i32, ptr %p_region_index, align 4
  %221 = and i32 %220, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool140.not = icmp eq i32 %221, 0
  br i1 %tobool140.not, label %if.then141, label %if.end138.if.end165_crit_edge

if.end138.if.end165_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165

if.then141:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #8
  %dma2_output = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 14
  %err164 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 2, i32 14, i32 12
  %222 = ptrtoint ptr %err164 to i32
  call void @__asan_storeN_noabort(i32 %222, i32 4)
  store i32 0, ptr %err164, align 1
  %223 = call ptr @memset(ptr %dma2_output, i32 0, i32 44)
  %224 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %config_index, align 8
  %p_region_index.i587 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %225, i32 5
  tail call void @_set_bit(i32 noundef 21, ptr noundef %p_region_index.i587) #6
  br label %if.end165

if.end165:                                        ; preds = %if.then141, %if.end138.if.end165_crit_edge
  %226 = ptrtoint ptr %p_region_index to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load volatile i32, ptr %p_region_index, align 4
  %228 = and i32 %227, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %tobool167.not = icmp eq i32 %228, 0
  br i1 %tobool167.not, label %if.then168, label %if.end165.if.end172_crit_edge

if.end165.if.end172_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end172

if.then168:                                       ; preds = %if.end165
  %229 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %config_index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %cmp = icmp eq i32 %230, 0
  br i1 %cmp, label %if.then170, label %if.then168.if.end172_crit_edge

if.then168.if.end172_crit_edge:                   ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end172

if.then170:                                       ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #8
  %sensor.i.i = getelementptr inbounds %struct.fimc_is, ptr %is, i32 0, i32 6
  %231 = ptrtoint ptr %sensor.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %sensor.i.i, align 8
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %232, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %234)
  %cond.i.i = icmp eq i32 %234, 2
  %..i.i = select i1 %cond.i.i, i32 30, i32 15
  %235 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 0, i32 1, i32 2
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_storeN_noabort(i32 %236, i32 4)
  store i32 %..i.i, ptr %235, align 1
  %237 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 0, i32 2, i32 1, i32 10
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_storeN_noabort(i32 %238, i32 4)
  store i32 0, ptr %237, align 1
  %239 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 0, i32 2, i32 1, i32 11
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_storeN_noabort(i32 %240, i32 4)
  store i32 66666, ptr %239, align 1
  %241 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %config_index, align 8
  %p_region_index.i.i590 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %242, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %p_region_index.i.i590) #6
  %243 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %config_index, align 8
  %p_region_index.i26.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %244, i32 5
  tail call void @_set_bit(i32 noundef 8, ptr noundef %p_region_index.i26.i) #6
  br label %if.end172

if.end172:                                        ; preds = %if.then170, %if.then168.if.end172_crit_edge, %if.end165.if.end172_crit_edge
  %245 = ptrtoint ptr %drc7 to i32
  call void @__asan_storeN_noabort(i32 %245, i32 4)
  store i32 1, ptr %drc7, align 1
  %246 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %config_index, align 8
  %bypass.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %247, i32 3, i32 0, i32 1
  %248 = ptrtoint ptr %bypass.i to i32
  call void @__asan_storeN_noabort(i32 %248, i32 4)
  store i32 1, ptr %bypass.i, align 1
  %p_region_index.i.i592 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %247, i32 5
  tail call void @_set_bit(i32 noundef 22, ptr noundef %p_region_index.i.i592) #6
  %otf_input175 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 3, i32 1
  %249 = ptrtoint ptr %otf_input175 to i32
  call void @__asan_storeN_noabort(i32 %249, i32 4)
  store i32 1, ptr %otf_input175, align 1
  %250 = ptrtoint ptr %p_region_index to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load volatile i32, ptr %p_region_index, align 4
  %252 = and i32 %251, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %tobool178.not = icmp eq i32 %252, 0
  br i1 %tobool178.not, label %if.then179, label %if.end172.if.end184_crit_edge

if.end172.if.end184_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end184

if.then179:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #8
  %width181 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 3, i32 1, i32 1
  %253 = ptrtoint ptr %width181 to i32
  call void @__asan_storeN_noabort(i32 %253, i32 4)
  store i32 1280, ptr %width181, align 1
  %height183 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 3, i32 1, i32 2
  %254 = ptrtoint ptr %height183 to i32
  call void @__asan_storeN_noabort(i32 %254, i32 4)
  store i32 720, ptr %height183, align 1
  %255 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %config_index, align 8
  %p_region_index.i594 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %256, i32 5
  tail call void @_set_bit(i32 noundef 23, ptr noundef %p_region_index.i594) #6
  br label %if.end184

if.end184:                                        ; preds = %if.then179, %if.end172.if.end184_crit_edge
  %format186 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 3, i32 1, i32 3
  %257 = ptrtoint ptr %format186 to i32
  call void @__asan_storeN_noabort(i32 %257, i32 4)
  store i32 1, ptr %format186, align 1
  %bitwidth188 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 3, i32 1, i32 4
  %258 = ptrtoint ptr %bitwidth188 to i32
  call void @__asan_storeN_noabort(i32 %258, i32 4)
  store i32 12, ptr %bitwidth188, align 1
  %order190 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 3, i32 1, i32 5
  %259 = ptrtoint ptr %order190 to i32
  call void @__asan_storeN_noabort(i32 %259, i32 4)
  store i32 0, ptr %order190, align 1
  %err192 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 3, i32 1, i32 13
  %err211 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 3, i32 2, i32 10
  %260 = ptrtoint ptr %err211 to i32
  call void @__asan_storeN_noabort(i32 %260, i32 4)
  store i32 0, ptr %err211, align 1
  %261 = call ptr @memset(ptr %err192, i32 0, i32 36)
  %262 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %config_index, align 8
  %p_region_index.i596 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %263, i32 5
  tail call void @_set_bit(i32 noundef 24, ptr noundef %p_region_index.i596) #6
  %otf_output212 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 3, i32 3
  %264 = ptrtoint ptr %otf_output212 to i32
  call void @__asan_storeN_noabort(i32 %264, i32 4)
  store i32 1, ptr %otf_output212, align 1
  %265 = ptrtoint ptr %p_region_index to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load volatile i32, ptr %p_region_index, align 4
  %267 = and i32 %266, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %267)
  %tobool215.not = icmp eq i32 %267, 0
  br i1 %tobool215.not, label %if.then216, label %if.end184.if.end221_crit_edge

if.end184.if.end221_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end221

if.then216:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #8
  %width218 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 3, i32 3, i32 1
  %268 = ptrtoint ptr %width218 to i32
  call void @__asan_storeN_noabort(i32 %268, i32 4)
  store i32 1280, ptr %width218, align 1
  %height220 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 3, i32 3, i32 2
  %269 = ptrtoint ptr %height220 to i32
  call void @__asan_storeN_noabort(i32 %269, i32 4)
  store i32 720, ptr %height220, align 1
  %270 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %config_index, align 8
  %p_region_index.i598 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %271, i32 5
  tail call void @_set_bit(i32 noundef 25, ptr noundef %p_region_index.i598) #6
  br label %if.end221

if.end221:                                        ; preds = %if.then216, %if.end184.if.end221_crit_edge
  %format223 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 3, i32 3, i32 3
  %272 = ptrtoint ptr %format223 to i32
  call void @__asan_storeN_noabort(i32 %272, i32 4)
  store i32 1, ptr %format223, align 1
  %bitwidth225 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 3, i32 3, i32 4
  %273 = ptrtoint ptr %bitwidth225 to i32
  call void @__asan_storeN_noabort(i32 %273, i32 4)
  store i32 8, ptr %bitwidth225, align 1
  %order227 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 3, i32 3, i32 5
  %274 = ptrtoint ptr %order227 to i32
  call void @__asan_storeN_noabort(i32 %274, i32 4)
  store i32 0, ptr %order227, align 1
  %err229 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 3, i32 3, i32 7
  %275 = ptrtoint ptr %err229 to i32
  call void @__asan_storeN_noabort(i32 %275, i32 4)
  store i32 0, ptr %err229, align 1
  %276 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %config_index, align 8
  %arrayidx1.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %277, i32 5, i32 1
  %fd4.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %277, i32 4
  %278 = ptrtoint ptr %fd4.i to i32
  call void @__asan_storeN_noabort(i32 %278, i32 4)
  store i32 0, ptr %fd4.i, align 1
  %279 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load volatile i32, ptr %arrayidx1.i, align 4
  %281 = and i32 %280, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %281)
  %tobool.not.i600 = icmp eq i32 %281, 0
  br i1 %tobool.not.i600, label %if.then.i602, label %if.end221.__is_set_fd_control.exit_crit_edge

if.end221.__is_set_fd_control.exit_crit_edge:     ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #8
  br label %__is_set_fd_control.exit

if.then.i602:                                     ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #8
  %282 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %config_index, align 8
  %p_region_index.i.i601 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %283, i32 5
  tail call void @_set_bit(i32 noundef 53, ptr noundef %p_region_index.i.i601) #6
  br label %__is_set_fd_control.exit

__is_set_fd_control.exit:                         ; preds = %if.then.i602, %if.end221.__is_set_fd_control.exit_crit_edge
  %bypass231 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 0, i32 1
  %284 = ptrtoint ptr %bypass231 to i32
  call void @__asan_storeN_noabort(i32 %284, i32 4)
  store i32 0, ptr %bypass231, align 1
  %otf_input232 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 1
  %285 = ptrtoint ptr %otf_input232 to i32
  call void @__asan_storeN_noabort(i32 %285, i32 4)
  store i32 1, ptr %otf_input232, align 1
  %arrayidx.i = getelementptr i32, ptr %p_region_index, i32 1
  %286 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load volatile i32, ptr %arrayidx.i, align 4
  %288 = and i32 %287, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %288)
  %tobool235.not = icmp eq i32 %288, 0
  br i1 %tobool235.not, label %if.then236, label %__is_set_fd_control.exit.if.end241_crit_edge

__is_set_fd_control.exit.if.end241_crit_edge:     ; preds = %__is_set_fd_control.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end241

if.then236:                                       ; preds = %__is_set_fd_control.exit
  call void @__sanitizer_cov_trace_pc() #8
  %width238 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 1, i32 1
  %289 = ptrtoint ptr %width238 to i32
  call void @__asan_storeN_noabort(i32 %289, i32 4)
  store i32 1280, ptr %width238, align 1
  %height240 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 1, i32 2
  %290 = ptrtoint ptr %height240 to i32
  call void @__asan_storeN_noabort(i32 %290, i32 4)
  store i32 720, ptr %height240, align 1
  %291 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %config_index, align 8
  %p_region_index.i604 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %292, i32 5
  tail call void @_set_bit(i32 noundef 54, ptr noundef %p_region_index.i604) #6
  br label %if.end241

if.end241:                                        ; preds = %if.then236, %__is_set_fd_control.exit.if.end241_crit_edge
  %format243 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 1, i32 3
  %293 = ptrtoint ptr %format243 to i32
  call void @__asan_storeN_noabort(i32 %293, i32 4)
  store i32 1, ptr %format243, align 1
  %bitwidth245 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 1, i32 4
  %294 = ptrtoint ptr %bitwidth245 to i32
  call void @__asan_storeN_noabort(i32 %294, i32 4)
  store i32 8, ptr %bitwidth245, align 1
  %order247 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 1, i32 5
  %295 = ptrtoint ptr %order247 to i32
  call void @__asan_storeN_noabort(i32 %295, i32 4)
  store i32 0, ptr %order247, align 1
  %err249 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 1, i32 13
  %err269 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %1, i32 4, i32 2, i32 10
  %296 = ptrtoint ptr %err269 to i32
  call void @__asan_storeN_noabort(i32 %296, i32 4)
  store i32 0, ptr %err269, align 1
  %297 = call ptr @memset(ptr %err249, i32 0, i32 36)
  %298 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %config_index, align 8
  %p_region_index.i606 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %299, i32 5
  tail call void @_set_bit(i32 noundef 55, ptr noundef %p_region_index.i606) #6
  %300 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %config_index, align 8
  %arrayidx1.i608 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %301, i32 5, i32 1
  %config5.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %301, i32 4, i32 3
  %max_number.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %301, i32 4, i32 3, i32 1
  %302 = ptrtoint ptr %max_number.i to i32
  call void @__asan_storeN_noabort(i32 %302, i32 4)
  store i32 5, ptr %max_number.i, align 1
  %303 = ptrtoint ptr %arrayidx1.i608 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load volatile i32, ptr %arrayidx1.i608, align 4
  %305 = and i32 %304, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %305)
  %tobool.not.i609 = icmp eq i32 %305, 0
  br i1 %tobool.not.i609, label %if.then.i612, label %if.else.i614

if.then.i612:                                     ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #8
  %306 = ptrtoint ptr %config5.i to i32
  call void @__asan_storeN_noabort(i32 %306, i32 4)
  store i32 1, ptr %config5.i, align 1
  %err.i610 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %301, i32 4, i32 3, i32 11
  %307 = ptrtoint ptr %err.i610 to i32
  call void @__asan_storeN_noabort(i32 %307, i32 4)
  store i32 0, ptr %err.i610, align 1
  %308 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %config_index, align 8
  %p_region_index.i.i611 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %309, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %p_region_index.i.i611) #6
  br label %__is_set_fd_config_maxface.exit

if.else.i614:                                     ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #8
  %310 = ptrtoint ptr %config5.i to i32
  call void @__asan_loadN_noabort(i32 %310, i32 4)
  %311 = load i32, ptr %config5.i, align 1
  %or.i613 = or i32 %311, 1
  store i32 %or.i613, ptr %config5.i, align 1
  br label %__is_set_fd_config_maxface.exit

__is_set_fd_config_maxface.exit:                  ; preds = %if.else.i614, %if.then.i612
  %312 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %config_index, align 8
  %arrayidx1.i616 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %313, i32 5, i32 1
  %config5.i617 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %313, i32 4, i32 3
  %roll_angle.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %313, i32 4, i32 3, i32 2
  %314 = ptrtoint ptr %roll_angle.i to i32
  call void @__asan_storeN_noabort(i32 %314, i32 4)
  store i32 4, ptr %roll_angle.i, align 1
  %315 = ptrtoint ptr %arrayidx1.i616 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load volatile i32, ptr %arrayidx1.i616, align 4
  %317 = and i32 %316, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %317)
  %tobool.not.i618 = icmp eq i32 %317, 0
  br i1 %tobool.not.i618, label %if.then.i621, label %if.else.i623

if.then.i621:                                     ; preds = %__is_set_fd_config_maxface.exit
  call void @__sanitizer_cov_trace_pc() #8
  %318 = ptrtoint ptr %config5.i617 to i32
  call void @__asan_storeN_noabort(i32 %318, i32 4)
  store i32 2, ptr %config5.i617, align 1
  %err.i619 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %313, i32 4, i32 3, i32 11
  %319 = ptrtoint ptr %err.i619 to i32
  call void @__asan_storeN_noabort(i32 %319, i32 4)
  store i32 0, ptr %err.i619, align 1
  %320 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %config_index, align 8
  %p_region_index.i.i620 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %321, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %p_region_index.i.i620) #6
  br label %__is_set_fd_config_rollangle.exit

if.else.i623:                                     ; preds = %__is_set_fd_config_maxface.exit
  call void @__sanitizer_cov_trace_pc() #8
  %322 = ptrtoint ptr %config5.i617 to i32
  call void @__asan_loadN_noabort(i32 %322, i32 4)
  %323 = load i32, ptr %config5.i617, align 1
  %or.i622 = or i32 %323, 2
  store i32 %or.i622, ptr %config5.i617, align 1
  br label %__is_set_fd_config_rollangle.exit

__is_set_fd_config_rollangle.exit:                ; preds = %if.else.i623, %if.then.i621
  %324 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %config_index, align 8
  %arrayidx1.i625 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %325, i32 5, i32 1
  %config5.i626 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %325, i32 4, i32 3
  %yaw_angle.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %325, i32 4, i32 3, i32 3
  %326 = ptrtoint ptr %yaw_angle.i to i32
  call void @__asan_storeN_noabort(i32 %326, i32 4)
  store i32 3, ptr %yaw_angle.i, align 1
  %327 = ptrtoint ptr %arrayidx1.i625 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load volatile i32, ptr %arrayidx1.i625, align 4
  %329 = and i32 %328, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %329)
  %tobool.not.i627 = icmp eq i32 %329, 0
  br i1 %tobool.not.i627, label %if.then.i630, label %if.else.i632

if.then.i630:                                     ; preds = %__is_set_fd_config_rollangle.exit
  call void @__sanitizer_cov_trace_pc() #8
  %330 = ptrtoint ptr %config5.i626 to i32
  call void @__asan_storeN_noabort(i32 %330, i32 4)
  store i32 4, ptr %config5.i626, align 1
  %err.i628 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %325, i32 4, i32 3, i32 11
  %331 = ptrtoint ptr %err.i628 to i32
  call void @__asan_storeN_noabort(i32 %331, i32 4)
  store i32 0, ptr %err.i628, align 1
  %332 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %config_index, align 8
  %p_region_index.i.i629 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %333, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %p_region_index.i.i629) #6
  br label %__is_set_fd_config_yawangle.exit

if.else.i632:                                     ; preds = %__is_set_fd_config_rollangle.exit
  call void @__sanitizer_cov_trace_pc() #8
  %334 = ptrtoint ptr %config5.i626 to i32
  call void @__asan_loadN_noabort(i32 %334, i32 4)
  %335 = load i32, ptr %config5.i626, align 1
  %or.i631 = or i32 %335, 4
  store i32 %or.i631, ptr %config5.i626, align 1
  br label %__is_set_fd_config_yawangle.exit

__is_set_fd_config_yawangle.exit:                 ; preds = %if.else.i632, %if.then.i630
  %336 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %config_index, align 8
  %arrayidx1.i634 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %337, i32 5, i32 1
  %config5.i635 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %337, i32 4, i32 3
  %smile_mode.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %337, i32 4, i32 3, i32 4
  %338 = ptrtoint ptr %smile_mode.i to i32
  call void @__asan_storeN_noabort(i32 %338, i32 4)
  store i32 0, ptr %smile_mode.i, align 1
  %339 = ptrtoint ptr %arrayidx1.i634 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load volatile i32, ptr %arrayidx1.i634, align 4
  %341 = and i32 %340, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %341)
  %tobool.not.i636 = icmp eq i32 %341, 0
  br i1 %tobool.not.i636, label %if.then.i639, label %if.else.i641

if.then.i639:                                     ; preds = %__is_set_fd_config_yawangle.exit
  call void @__sanitizer_cov_trace_pc() #8
  %342 = ptrtoint ptr %config5.i635 to i32
  call void @__asan_storeN_noabort(i32 %342, i32 4)
  store i32 8, ptr %config5.i635, align 1
  %err.i637 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %337, i32 4, i32 3, i32 11
  %343 = ptrtoint ptr %err.i637 to i32
  call void @__asan_storeN_noabort(i32 %343, i32 4)
  store i32 0, ptr %err.i637, align 1
  %344 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %config_index, align 8
  %p_region_index.i.i638 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %345, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %p_region_index.i.i638) #6
  br label %__is_set_fd_config_smilemode.exit

if.else.i641:                                     ; preds = %__is_set_fd_config_yawangle.exit
  call void @__sanitizer_cov_trace_pc() #8
  %346 = ptrtoint ptr %config5.i635 to i32
  call void @__asan_loadN_noabort(i32 %346, i32 4)
  %347 = load i32, ptr %config5.i635, align 1
  %or.i640 = or i32 %347, 8
  store i32 %or.i640, ptr %config5.i635, align 1
  br label %__is_set_fd_config_smilemode.exit

__is_set_fd_config_smilemode.exit:                ; preds = %if.else.i641, %if.then.i639
  %348 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %config_index, align 8
  %arrayidx1.i643 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %349, i32 5, i32 1
  %config5.i644 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %349, i32 4, i32 3
  %blink_mode.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %349, i32 4, i32 3, i32 5
  %350 = ptrtoint ptr %blink_mode.i to i32
  call void @__asan_storeN_noabort(i32 %350, i32 4)
  store i32 0, ptr %blink_mode.i, align 1
  %351 = ptrtoint ptr %arrayidx1.i643 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load volatile i32, ptr %arrayidx1.i643, align 4
  %353 = and i32 %352, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %353)
  %tobool.not.i645 = icmp eq i32 %353, 0
  br i1 %tobool.not.i645, label %if.then.i648, label %if.else.i650

if.then.i648:                                     ; preds = %__is_set_fd_config_smilemode.exit
  call void @__sanitizer_cov_trace_pc() #8
  %354 = ptrtoint ptr %config5.i644 to i32
  call void @__asan_storeN_noabort(i32 %354, i32 4)
  store i32 16, ptr %config5.i644, align 1
  %err.i646 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %349, i32 4, i32 3, i32 11
  %355 = ptrtoint ptr %err.i646 to i32
  call void @__asan_storeN_noabort(i32 %355, i32 4)
  store i32 0, ptr %err.i646, align 1
  %356 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %config_index, align 8
  %p_region_index.i.i647 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %357, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %p_region_index.i.i647) #6
  br label %__is_set_fd_config_blinkmode.exit

if.else.i650:                                     ; preds = %__is_set_fd_config_smilemode.exit
  call void @__sanitizer_cov_trace_pc() #8
  %358 = ptrtoint ptr %config5.i644 to i32
  call void @__asan_loadN_noabort(i32 %358, i32 4)
  %359 = load i32, ptr %config5.i644, align 1
  %or.i649 = or i32 %359, 16
  store i32 %or.i649, ptr %config5.i644, align 1
  br label %__is_set_fd_config_blinkmode.exit

__is_set_fd_config_blinkmode.exit:                ; preds = %if.else.i650, %if.then.i648
  %360 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %config_index, align 8
  %arrayidx1.i652 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %361, i32 5, i32 1
  %config5.i653 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %361, i32 4, i32 3
  %eye_detect.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %361, i32 4, i32 3, i32 6
  %362 = ptrtoint ptr %eye_detect.i to i32
  call void @__asan_storeN_noabort(i32 %362, i32 4)
  store i32 1, ptr %eye_detect.i, align 1
  %363 = ptrtoint ptr %arrayidx1.i652 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load volatile i32, ptr %arrayidx1.i652, align 4
  %365 = and i32 %364, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %365)
  %tobool.not.i654 = icmp eq i32 %365, 0
  br i1 %tobool.not.i654, label %if.then.i657, label %if.else.i659

if.then.i657:                                     ; preds = %__is_set_fd_config_blinkmode.exit
  call void @__sanitizer_cov_trace_pc() #8
  %366 = ptrtoint ptr %config5.i653 to i32
  call void @__asan_storeN_noabort(i32 %366, i32 4)
  store i32 32, ptr %config5.i653, align 1
  %err.i655 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %361, i32 4, i32 3, i32 11
  %367 = ptrtoint ptr %err.i655 to i32
  call void @__asan_storeN_noabort(i32 %367, i32 4)
  store i32 0, ptr %err.i655, align 1
  %368 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %config_index, align 8
  %p_region_index.i.i656 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %369, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %p_region_index.i.i656) #6
  br label %__is_set_fd_config_eyedetect.exit

if.else.i659:                                     ; preds = %__is_set_fd_config_blinkmode.exit
  call void @__sanitizer_cov_trace_pc() #8
  %370 = ptrtoint ptr %config5.i653 to i32
  call void @__asan_loadN_noabort(i32 %370, i32 4)
  %371 = load i32, ptr %config5.i653, align 1
  %or.i658 = or i32 %371, 32
  store i32 %or.i658, ptr %config5.i653, align 1
  br label %__is_set_fd_config_eyedetect.exit

__is_set_fd_config_eyedetect.exit:                ; preds = %if.else.i659, %if.then.i657
  %372 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %config_index, align 8
  %arrayidx1.i661 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %373, i32 5, i32 1
  %config5.i662 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %373, i32 4, i32 3
  %mouth_detect.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %373, i32 4, i32 3, i32 7
  %374 = ptrtoint ptr %mouth_detect.i to i32
  call void @__asan_storeN_noabort(i32 %374, i32 4)
  store i32 0, ptr %mouth_detect.i, align 1
  %375 = ptrtoint ptr %arrayidx1.i661 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load volatile i32, ptr %arrayidx1.i661, align 4
  %377 = and i32 %376, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %377)
  %tobool.not.i663 = icmp eq i32 %377, 0
  br i1 %tobool.not.i663, label %if.then.i666, label %if.else.i668

if.then.i666:                                     ; preds = %__is_set_fd_config_eyedetect.exit
  call void @__sanitizer_cov_trace_pc() #8
  %378 = ptrtoint ptr %config5.i662 to i32
  call void @__asan_storeN_noabort(i32 %378, i32 4)
  store i32 64, ptr %config5.i662, align 1
  %err.i664 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %373, i32 4, i32 3, i32 11
  %379 = ptrtoint ptr %err.i664 to i32
  call void @__asan_storeN_noabort(i32 %379, i32 4)
  store i32 0, ptr %err.i664, align 1
  %380 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %config_index, align 8
  %p_region_index.i.i665 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %381, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %p_region_index.i.i665) #6
  br label %__is_set_fd_config_mouthdetect.exit

if.else.i668:                                     ; preds = %__is_set_fd_config_eyedetect.exit
  call void @__sanitizer_cov_trace_pc() #8
  %382 = ptrtoint ptr %config5.i662 to i32
  call void @__asan_loadN_noabort(i32 %382, i32 4)
  %383 = load i32, ptr %config5.i662, align 1
  %or.i667 = or i32 %383, 64
  store i32 %or.i667, ptr %config5.i662, align 1
  br label %__is_set_fd_config_mouthdetect.exit

__is_set_fd_config_mouthdetect.exit:              ; preds = %if.else.i668, %if.then.i666
  %384 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %config_index, align 8
  %arrayidx1.i670 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %385, i32 5, i32 1
  %config5.i671 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %385, i32 4, i32 3
  %orientation.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %385, i32 4, i32 3, i32 8
  %386 = ptrtoint ptr %orientation.i to i32
  call void @__asan_storeN_noabort(i32 %386, i32 4)
  store i32 0, ptr %orientation.i, align 1
  %387 = ptrtoint ptr %arrayidx1.i670 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load volatile i32, ptr %arrayidx1.i670, align 4
  %389 = and i32 %388, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %389)
  %tobool.not.i672 = icmp eq i32 %389, 0
  br i1 %tobool.not.i672, label %if.then.i675, label %if.else.i677

if.then.i675:                                     ; preds = %__is_set_fd_config_mouthdetect.exit
  call void @__sanitizer_cov_trace_pc() #8
  %390 = ptrtoint ptr %config5.i671 to i32
  call void @__asan_storeN_noabort(i32 %390, i32 4)
  store i32 128, ptr %config5.i671, align 1
  %err.i673 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %385, i32 4, i32 3, i32 11
  %391 = ptrtoint ptr %err.i673 to i32
  call void @__asan_storeN_noabort(i32 %391, i32 4)
  store i32 0, ptr %err.i673, align 1
  %392 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %config_index, align 8
  %p_region_index.i.i674 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %393, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %p_region_index.i.i674) #6
  br label %__is_set_fd_config_orientation.exit

if.else.i677:                                     ; preds = %__is_set_fd_config_mouthdetect.exit
  call void @__sanitizer_cov_trace_pc() #8
  %394 = ptrtoint ptr %config5.i671 to i32
  call void @__asan_loadN_noabort(i32 %394, i32 4)
  %395 = load i32, ptr %config5.i671, align 1
  %or.i676 = or i32 %395, 128
  store i32 %or.i676, ptr %config5.i671, align 1
  br label %__is_set_fd_config_orientation.exit

__is_set_fd_config_orientation.exit:              ; preds = %if.else.i677, %if.then.i675
  %396 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %config_index, align 8
  %arrayidx1.i679 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %397, i32 5, i32 1
  %config5.i680 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %397, i32 4, i32 3
  %orientation_value.i = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %397, i32 4, i32 3, i32 9
  %398 = ptrtoint ptr %orientation_value.i to i32
  call void @__asan_storeN_noabort(i32 %398, i32 4)
  store i32 0, ptr %orientation_value.i, align 1
  %399 = ptrtoint ptr %arrayidx1.i679 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load volatile i32, ptr %arrayidx1.i679, align 4
  %401 = and i32 %400, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %401)
  %tobool.not.i681 = icmp eq i32 %401, 0
  br i1 %tobool.not.i681, label %if.then.i684, label %if.else.i686

if.then.i684:                                     ; preds = %__is_set_fd_config_orientation.exit
  call void @__sanitizer_cov_trace_pc() #8
  %402 = ptrtoint ptr %config5.i680 to i32
  call void @__asan_storeN_noabort(i32 %402, i32 4)
  store i32 256, ptr %config5.i680, align 1
  %err.i682 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %397, i32 4, i32 3, i32 11
  %403 = ptrtoint ptr %err.i682 to i32
  call void @__asan_storeN_noabort(i32 %403, i32 4)
  store i32 0, ptr %err.i682, align 1
  %404 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %config_index, align 8
  %p_region_index.i.i683 = getelementptr %struct.fimc_is, ptr %is, i32 0, i32 22, i32 %405, i32 5
  tail call void @_set_bit(i32 noundef 56, ptr noundef %p_region_index.i.i683) #6
  br label %__is_set_fd_config_orientation_val.exit

if.else.i686:                                     ; preds = %__is_set_fd_config_orientation.exit
  call void @__sanitizer_cov_trace_pc() #8
  %406 = ptrtoint ptr %config5.i680 to i32
  call void @__asan_loadN_noabort(i32 %406, i32 4)
  %407 = load i32, ptr %config5.i680, align 1
  %or.i685 = or i32 %407, 256
  store i32 %or.i685, ptr %config5.i680, align 1
  br label %__is_set_fd_config_orientation_val.exit

__is_set_fd_config_orientation_val.exit:          ; preds = %if.else.i686, %if.then.i684
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

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
