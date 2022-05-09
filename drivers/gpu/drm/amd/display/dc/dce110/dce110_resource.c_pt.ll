; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce110/dce110_resource.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bios_registers = type { i32, i32 }
%struct.resource_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dce110_clk_src_regs = type { i32, i32, i32, [6 x i32], [6 x i32], [6 x i32] }
%struct.dce_dmcu_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_dmcu_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_dmcu_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_abm_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_abm_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_abm_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce110_timing_generator_offsets = type { i32, i32, i32 }
%struct.resource_create_funcs = type { ptr, ptr, ptr, ptr }
%struct.dc_plane_cap = type { i32, i8, [3 x i8], %struct.anon.9, %struct.anon.10, %struct.anon.11, i32, i32 }
%struct.anon.9 = type { i8, [3 x i8] }
%struct.anon.10 = type { i32, i32, i32 }
%struct.anon.11 = type { i32, i32, i32 }
%struct.resource_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_panel_cntl_registers = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_panel_cntl_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_panel_cntl_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce110_link_enc_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce110_link_enc_aux_registers = type { i32, i32, i32 }
%struct.dce110_link_enc_hpd_registers = type { i32 }
%struct.atomic_t = type { i32 }
%struct.dce110_clk_src_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce110_clk_src_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_mem_input_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_mem_input_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_mem_input_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_ipp_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_ipp_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_ipp_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_transform_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_transform_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_transform_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_opp_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_opp_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_opp_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce110_aux_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce110_aux_registers_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce110_aux_registers_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_i2c_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_i2c_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_i2c_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_audio_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_audio_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32 }
%struct.dce_audio_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce110_stream_enc_registers = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_stream_encoder_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_stream_encoder_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_hwseq_registers = type { [6 x i32], i32, i32, [6 x i32], [6 x i32], i32, [6 x i32], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dce_hwseq_shift = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dce_hwseq_mask = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pipe_ctx = type { ptr, ptr, %struct.plane_resource, %struct.stream_resource, %struct.link_resource, ptr, %struct.pll_settings, i8, i8, ptr, ptr, ptr, ptr, %union.pipe_update_flags, ptr, ptr, i8 }
%struct.plane_resource = type { %struct.scaler_data, ptr, ptr, ptr, ptr, ptr, i8, %struct.dcn_fe_bandwidth }
%struct.scaler_data = type { i32, i32, %struct.scaling_taps, %struct.rect, %struct.rect, %struct.rect, %struct.scaling_ratios, %struct.scl_inits, %struct.sharpness_adj, i32, %struct.line_buffer_params }
%struct.scaling_taps = type { i32, i32, i32, i32, i8 }
%struct.rect = type { i32, i32, i32, i32 }
%struct.scaling_ratios = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32 }
%struct.fixed31_32 = type { i64 }
%struct.scl_inits = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32 }
%struct.sharpness_adj = type { i32, i32 }
%struct.line_buffer_params = type { i8, i8, i8, i32, i32 }
%struct.dcn_fe_bandwidth = type { i32 }
%struct.stream_resource = type { ptr, ptr, ptr, ptr, ptr, %struct.pixel_clk_params, %struct.encoder_info_frame, ptr, i8 }
%struct.pixel_clk_params = type { i32, i32, i32, %struct.graphics_object_id, i32, i32, i32, %struct.csdp_ref_clk_ds_params, i32, %struct.pixel_clk_flags }
%struct.graphics_object_id = type { i32 }
%struct.csdp_ref_clk_ds_params = type { i8, i32, i32, i32 }
%struct.pixel_clk_flags = type { i8, [3 x i8] }
%struct.encoder_info_frame = type { %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet }
%struct.dc_info_packet = type { i8, i8, i8, i8, i8, [32 x i8] }
%struct.link_resource = type { ptr }
%struct.pll_settings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%union.pipe_update_flags = type { i32 }
%struct.dc_stream_state = type { ptr, ptr, ptr, %struct.dc_panel_patch, %union.display_content_support, %struct.dc_crtc_timing, %struct.dc_crtc_timing_adjust, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.rect, %struct.rect, %struct.freesync_context, %struct.audio_info, %struct.dc_info_packet, %union.large_integer, i8, ptr, %struct.colorspace_transform, %struct.dc_csc_transform, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.periodic_interrupt_config, %struct.periodic_interrupt_config, ptr, %struct.bit_depth_reduction_params, %struct.clamping_and_pixel_encoding_params, i32, i32, i8, ptr, %struct.dc_cursor_attributes, %struct.dc_cursor_position, i32, %struct.kref, %struct.crtc_trigger_info, i32, [1 x %struct.dc_writeback_info], ptr, ptr, i8, %struct.anon.33, i8, i8, i32, %struct.test_pattern, %union.stream_update_flags, i8, i8 }
%struct.dc_panel_patch = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.display_content_support = type { i32 }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_flags, i32, %struct.dc_dsc_config }
%struct.dc_crtc_timing_flags = type { i24 }
%struct.dc_dsc_config = type { i32, i32, i32, i8, i32, i32, i8, i32, i8 }
%struct.dc_crtc_timing_adjust = type { i32, i32, i32, i32 }
%struct.freesync_context = type { i8 }
%struct.audio_info = type { %struct.audio_info_flags, i32, i32, i32, [20 x i8], i32, i32, [2 x i32], i32, [16 x %struct.audio_mode] }
%struct.audio_info_flags = type { %union.anon.25 }
%union.anon.25 = type { %struct.audio_speaker_flags }
%struct.audio_speaker_flags = type { i8, [3 x i8] }
%struct.audio_mode = type { i32, i8, %union.audio_sample_rates, %union.anon.26 }
%union.audio_sample_rates = type { %struct.sample_rates }
%struct.sample_rates = type { i8 }
%union.anon.26 = type { i8 }
%union.large_integer = type { i64 }
%struct.colorspace_transform = type { [12 x %struct.fixed31_32], i8 }
%struct.dc_csc_transform = type { [12 x i16], i8 }
%struct.periodic_interrupt_config = type { i32, i32 }
%struct.bit_depth_reduction_params = type { %struct.anon.29, i32, i32, i32, i32 }
%struct.anon.29 = type { i24 }
%struct.clamping_and_pixel_encoding_params = type { i32, i32, i32 }
%struct.dc_cursor_attributes = type { %union.large_integer, i32, i32, i32, i32, i32, i32, %union.dc_cursor_attribute_flags }
%union.dc_cursor_attribute_flags = type { %struct.anon.30 }
%struct.anon.30 = type { i32 }
%struct.dc_cursor_position = type { i32, i32, i32, i32, i8, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.crtc_trigger_info = type { i8, ptr, i32, i32 }
%struct.dc_writeback_info = type { i8, i32, %struct.dc_dwb_params, %struct.mcif_buf_params, %struct.mcif_warmup_params, ptr, i32 }
%struct.dc_dwb_params = type { i32, i32, %struct.cm_grph_csc_adjustment, %struct.dwb_stereo_params, %struct.dc_dwb_cnv_params, i32, i32, i32, i32, i32, %struct.scaling_taps, i32, ptr }
%struct.cm_grph_csc_adjustment = type { [12 x %struct.fixed31_32], i32, i32 }
%struct.dwb_stereo_params = type { i8, i32, i8, i32 }
%struct.dc_dwb_cnv_params = type { i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mcif_buf_params = type { [4 x i64], [4 x i64], i32, i32, i32, i32, i32 }
%struct.mcif_warmup_params = type { %union.large_integer, i32, i32, i32 }
%struct.anon.33 = type { i8 }
%struct.test_pattern = type { i32, i32, ptr, ptr, i32 }
%union.stream_update_flags = type { i32 }
%struct.dc_link = type { [4 x ptr], i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, %struct.dc_link_settings, %struct.dc_link_settings, %struct.dc_link_settings, [4 x %struct.dc_lane_settings], %struct.dc_link_settings, %struct.dc_link_training_overrides, %struct.dp_audio_test_data, i8, i8, i8, i32, i8, %union.compliance_test_state, ptr, ptr, i8, ptr, ptr, ptr, ptr, %struct.graphics_object_id, i32, %union.ddi_channel_mapping, %struct.connector_device_tag_info, %struct.dpcd_caps, i32, i16, i32, %struct.hdcp_caps, i32, %union.dpcd_sink_ext_caps, %struct.psr_settings, %struct.dc_lane_settings, i8, i8, %struct.link_flags, %struct.link_mst_stream_allocation_table, %struct.dc_link_status, %struct.link_trace, ptr, i32 }
%struct.dc_link_settings = type { i32, i32, i32, i8, i8, i8 }
%struct.dc_link_training_overrides = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dp_audio_test_data = type { %struct.dp_audio_test_data_flags, i8, i8, i8, [8 x i8] }
%struct.dp_audio_test_data_flags = type { i8 }
%union.compliance_test_state = type { %struct.anon.23 }
%struct.anon.23 = type { i8 }
%union.ddi_channel_mapping = type { %struct.mapping }
%struct.mapping = type { i8 }
%struct.connector_device_tag_info = type { i32, %struct.device_id }
%struct.device_id = type { i32, i16 }
%struct.dpcd_caps = type { %union.dpcd_rev, %union.max_lane_count, %union.max_down_spread, %union.dprx_feature, i8, [8 x i32], i32, i8, %union.sink_count, %struct.dc_dongle_caps, i32, [6 x i8], i8, [2 x i8], i32, [6 x i8], i8, [2 x i8], i8, i8, i8, i8, i8, %union.dpcd_fec_capability, %struct.dpcd_dsc_capabilities, %struct.dc_lttpr_caps, %struct.psr_caps, %struct.dpcd_usb4_dp_tunneling_info }
%union.dpcd_rev = type { %struct.anon.42 }
%struct.anon.42 = type { i8 }
%union.max_lane_count = type { %struct.anon.43 }
%struct.anon.43 = type { i8 }
%union.max_down_spread = type { %struct.anon.44 }
%struct.anon.44 = type { i8 }
%union.dprx_feature = type { %struct.anon.45 }
%struct.anon.45 = type { i8 }
%union.sink_count = type { %struct.anon.46 }
%struct.anon.46 = type { i8 }
%struct.dc_dongle_caps = type { i32, i8, i8, i8, i8, i8, i8, i32, i32 }
%union.dpcd_fec_capability = type { %struct.anon.47 }
%struct.anon.47 = type { i8 }
%struct.dpcd_dsc_capabilities = type { %union.dpcd_dsc_basic_capabilities, %union.dpcd_dsc_branch_decoder_capabilities }
%union.dpcd_dsc_basic_capabilities = type { %struct.anon.48 }
%struct.anon.48 = type { %struct.dpcd_dsc_support, %struct.dpcd_dsc_algorithm_revision, %struct.dpcd_dsc_rc_buffer_block_size, i8, %struct.dpcd_dsc_slice_capability1, %struct.dpcd_dsc_line_buffer_bit_depth, %struct.dpcd_dsc_block_prediction_support, %struct.dpcd_maximum_bits_per_pixel_supported_by_the_decompressor, %struct.dpcd_dsc_decoder_color_format_capabilities, %struct.dpcd_dsc_decoder_color_depth_capabilities, %struct.dpcd_peak_dsc_throughput_dsc_sink, i8, %struct.dpcd_dsc_slice_capabilities_2, i8, %struct.dpcd_bits_per_pixel_increment }
%struct.dpcd_dsc_support = type { i8 }
%struct.dpcd_dsc_algorithm_revision = type { i8 }
%struct.dpcd_dsc_rc_buffer_block_size = type { i8 }
%struct.dpcd_dsc_slice_capability1 = type { i8 }
%struct.dpcd_dsc_line_buffer_bit_depth = type { i8 }
%struct.dpcd_dsc_block_prediction_support = type { i8 }
%struct.dpcd_maximum_bits_per_pixel_supported_by_the_decompressor = type { i8, i8, i8 }
%struct.dpcd_dsc_decoder_color_format_capabilities = type { i8 }
%struct.dpcd_dsc_decoder_color_depth_capabilities = type { i8 }
%struct.dpcd_peak_dsc_throughput_dsc_sink = type { i8 }
%struct.dpcd_dsc_slice_capabilities_2 = type { i8 }
%struct.dpcd_bits_per_pixel_increment = type { i8 }
%union.dpcd_dsc_branch_decoder_capabilities = type { %struct.anon.49 }
%struct.anon.49 = type { i8, i8, i8 }
%struct.dc_lttpr_caps = type { %union.dpcd_rev, i8, i8, i8, i8, i8, [7 x i8] }
%struct.psr_caps = type { i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.dpcd_usb4_dp_tunneling_info = type { %union.dp_tun_cap_support, %union.dpia_info, i8, [5 x i8] }
%union.dp_tun_cap_support = type { %struct.anon.50 }
%struct.anon.50 = type { i8 }
%union.dpia_info = type { %struct.anon.51 }
%struct.anon.51 = type { i8 }
%struct.hdcp_caps = type { %union.hdcp_rx_caps, %union.hdcp_bcaps }
%union.hdcp_rx_caps = type { %struct.anon.52 }
%struct.anon.52 = type { i8, i8, %struct.anon.53 }
%struct.anon.53 = type { i8 }
%union.hdcp_bcaps = type { %struct.anon.54 }
%struct.anon.54 = type { i8 }
%union.dpcd_sink_ext_caps = type { %struct.anon.55 }
%struct.anon.55 = type { i8 }
%struct.psr_settings = type { i8, i8, i32, i8, i32, i32 }
%struct.dc_lane_settings = type { i32, i32, i32 }
%struct.link_flags = type { i8, i8, i8, i8, i8 }
%struct.link_mst_stream_allocation_table = type { i32, [6 x %struct.link_mst_stream_allocation] }
%struct.link_mst_stream_allocation = type { ptr, i8, i8 }
%struct.dc_link_status = type { i8, ptr }
%struct.link_trace = type { %struct.time_stamp }
%struct.time_stamp = type { i64, i64 }
%struct.link_encoder = type { ptr, i32, ptr, %struct.graphics_object_id, %struct.graphics_object_id, i32, i32, %struct.encoder_feature_support, i32, i32, i8 }
%struct.encoder_feature_support = type { %union.anon.40, i32, i32, i8, i8, i8 }
%union.anon.40 = type { i32 }
%struct.timing_generator = type { ptr, ptr, ptr, i32 }
%struct.clock_source_funcs = type { ptr, ptr, ptr, ptr, ptr }
%struct.resource_pool = type { [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [12 x ptr], ptr, ptr, ptr, [6 x ptr], [6 x ptr], [6 x ptr], i8, [1 x ptr], [1 x ptr], %struct.anon.59, [6 x ptr], i32, i32, i32, [7 x ptr], i32, i32, %struct.anon.60, i32, i32, i32, ptr, [7 x ptr], i32, [7 x ptr], i32, %struct.audio_support, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.59 = type { i8, [3 x i8] }
%struct.anon.60 = type { i32, i32, i32 }
%struct.audio_support = type { i8, i8, i8 }
%struct.resource_context = type { [6 x %struct.pipe_ctx], [12 x i8], [6 x i8], [7 x i8], i8, [6 x i8], %struct.link_enc_cfg_context }
%struct.link_enc_cfg_context = type { i32, [6 x %struct.link_enc_assignment], [7 x i32], [6 x %struct.link_enc_assignment] }
%struct.link_enc_assignment = type { i8, %struct.display_endpoint_id, i32, ptr }
%struct.display_endpoint_id = type { %struct.graphics_object_id, i32 }
%struct.stream_encoder = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.dm_pp_clock_levels = type { i32, [16 x i32] }
%struct.bw_fixed = type { i64 }
%struct.irq_service_init_data = type { ptr }
%struct.dc = type { %struct.dc_debug_options, %struct.dc_versions, %struct.dc_caps, %struct.dc_cap_funcs, %struct.dc_config, %struct.dc_bounding_box_overrides, %struct.dc_bug_wa, ptr, %struct.dc_phy_addr_space_config, i8, [12 x ptr], ptr, ptr, ptr, %struct.dm_pp_clock_levels, ptr, ptr, %struct.hw_sequencer_funcs, ptr, i8, i8, ptr, %struct.dc_debug_data, %struct.dpcd_vendor_signature, ptr, ptr }
%struct.dc_debug_options = type { i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i8, i8, i8, i8, %struct.dc_bw_validation_profile, i8, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, %union.mem_low_power_enable_options, %union.root_clock_optimization_options, i8, i8, i8, i8, i8, i8, i32, i32, i8 }
%struct.dc_bw_validation_profile = type { i8, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.mem_low_power_enable_options = type { i32 }
%union.root_clock_optimization_options = type { %struct.anon.8 }
%struct.anon.8 = type { i32 }
%struct.dc_versions = type { ptr, %struct.dmcu_version }
%struct.dmcu_version = type { i32, i32, i32, i32 }
%struct.dc_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [6 x %struct.dc_plane_cap], %struct.dc_color_caps, i8, i8, i8, i32 }
%struct.dc_color_caps = type { %struct.dpp_color_caps, %struct.mpc_color_caps }
%struct.dpp_color_caps = type { i16, %struct.rom_curve_caps, %struct.rom_curve_caps }
%struct.rom_curve_caps = type { i8, i8 }
%struct.mpc_color_caps = type { i8, i8, %struct.rom_curve_caps }
%struct.dc_cap_funcs = type { ptr }
%struct.dc_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i8, i8, i8, i8 }
%struct.dc_bounding_box_overrides = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_bug_wa = type { i8, i8, i8, i8 }
%struct.dc_phy_addr_space_config = type { %struct.anon.15, %struct.anon.16, i8, i8, i64 }
%struct.anon.15 = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.16 = type { i64, i64, i64, i8 }
%struct.hw_sequencer_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_debug_data = type { i32, i32, i32 }
%struct.dpcd_vendor_signature = type { i8, %union.dpcd_ieee_vendor_signature }
%union.dpcd_ieee_vendor_signature = type { %struct.anon.66 }
%struct.anon.66 = type { [3 x i8], [6 x i8], i8, [2 x i8] }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }
%struct.dc_bios = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, %struct.dc_firmware_info, i8, %struct.dc_vram_info, %struct.dc_golden_table }
%struct.dc_firmware_info = type { %struct.pll_info, %struct.firmware_feature, i32, i32, i32, i8, i8, i32, i32, i32, i32, i8, i8 }
%struct.pll_info = type { i32, i32, i32, i32, i32 }
%struct.firmware_feature = type { i32, i32 }
%struct.dc_vram_info = type { i32, i32 }
%struct.dc_golden_table = type { i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clock_source = type { ptr, ptr, i32, i8 }
%struct.dce_mem_input = type { %struct.mem_input, ptr, ptr, ptr, %struct.dce_mem_input_wa }
%struct.mem_input = type { ptr, ptr, %struct.dc_plane_address, %struct.dc_plane_address, i32, %struct.stutter_modes }
%struct.dc_plane_address = type { i32, i8, %union.anon, %union.large_integer, i8 }
%union.anon = type { %struct.anon.2 }
%struct.anon.2 = type { %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer }
%struct.stutter_modes = type { i8, i8, i8 }
%struct.dce_mem_input_wa = type { i8 }
%struct.bw_calcs_vbios = type { i32, i32, i32, i32, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, %struct.bw_fixed, i8, %struct.bw_fixed, i32, i32, i32, %struct.bw_fixed, %struct.bw_fixed }
%struct.dce110_clk_src = type { %struct.clock_source, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, i32, %struct.calc_pll_clock_source, %struct.calc_pll_clock_source }
%struct.calc_pll_clock_source = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.panel_cntl_init_data = type { ptr, i32 }
%struct.encoder_init_data = type { i32, %struct.graphics_object_id, i32, %struct.graphics_object_id, ptr, i32 }
%struct.dc_state = type { [6 x ptr], [6 x %struct.dc_stream_status], i8, i8, %struct.resource_context, %struct.bw_context, %struct.dm_pp_display_configuration, ptr, %struct.kref, %struct.anon.69 }
%struct.dc_stream_status = type { i32, i32, i32, i32, %struct.timing_sync_info, [4 x ptr], i8 }
%struct.timing_sync_info = type { i32, i32, i8 }
%struct.bw_context = type { %union.bw_output, %struct.display_mode_lib }
%union.bw_output = type { %struct.dce_bw_output }
%struct.dce_bw_output = type { i8, i8, i8, i8, i8, [6 x %struct.dce_watermarks], [6 x %struct.dce_watermarks], [6 x %struct.dce_watermarks], [6 x %struct.dce_watermarks], i32, i32, i32, i32, i32 }
%struct.dce_watermarks = type { i32, i32, i32, i32 }
%struct.display_mode_lib = type { %struct._vcs_dpi_ip_params_st, %struct._vcs_dpi_soc_bounding_box_st, i32, %struct.vba_vars_st, ptr, %struct.dml_funcs, [6 x %struct._vcs_dpi_display_e2e_pipe_params_st] }
%struct._vcs_dpi_ip_params_st = type { i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, double, double, double, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._vcs_dpi_soc_bounding_box_st = type { [9 x %struct._vcs_dpi_voltage_scaling_st], i32, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, double, double, double, double, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, i32, i32, double, double, i32, double, i8, double, double, i8, i8, i32 }
%struct._vcs_dpi_voltage_scaling_st = type { i32, double, double, double, double, double, double, double, double, double, double, double }
%struct.vba_vars_st = type { %struct._vcs_dpi_ip_params_st, %struct._vcs_dpi_soc_bounding_box_st, i32, i8, double, double, double, double, double, double, double, double, double, i8, double, i32, i32, double, double, double, double, double, double, double, i32, double, double, double, [8 x double], double, double, double, double, i32, i8, i8, i8, i8, i32, double, double, double, double, i8, i32, i8, i32, i32, i32, i32, [8 x double], double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, double, double, i8, double, i32, [8 x i32], double, i32, i32, i32, double, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, double, double, i32, i32, double, i32, i8, double, double, double, double, double, double, double, double, double, double, double, double, i8, i32, double, double, double, double, double, i32, [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x i8], [8 x i8], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i8], [8 x i32], [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i8], [8 x i32], [8 x i32], [8 x i8], [8 x i32], [8 x i32], [8 x double], double, [8 x i32], [8 x double], [8 x i8], [8 x i32], [8 x i32], [8 x i32], [8 x i8], [8 x i32], i8, [8 x i32], [8 x [2 x i32]], [8 x [2 x i32]], [8 x i8], [8 x i8], i8, [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], double, double, i32, i32, i32, double, [9 x [2 x i32]], [9 x [2 x i32]], i32, i32, i8, double, i8, [8 x i8], double, double, double, double, double, double, double, double, double, double, double, double, double, [8 x double], [8 x i32], [8 x double], [8 x double], i32, double, [8 x %struct._vcs_dpi_display_e2e_pipe_params_st], i32, [8 x i32], i8, double, double, i32, i8, i8, [9 x double], [9 x [2 x double]], [9 x double], [9 x double], [9 x double], [9 x double], [9 x double], [9 x double], [9 x double], [9 x double], i32, i8, i8, double, i8, i8, i8, i8, [9 x i8], i32, double, double, [9 x [2 x [8 x i8]]], i8, i8, i8, i8, i8, i8, i8, [9 x i32], double, double, double, double, double, double, double, double, i32, i32, double, double, i32, [8 x double], [8 x double], [8 x double], [9 x [2 x double]], double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, double, double, i32, double, double, double, double, double, double, [9 x [2 x double]], double, double, i32, i32, i32, i32, double, double, double, double, double, double, double, double, double, [9 x [2 x double]], [9 x [2 x [8 x i32]]], [8 x i32], [9 x [8 x i32]], [8 x double], [9 x [2 x [8 x i32]]], [8 x i32], [8 x i32], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [8 x double], [9 x [2 x [8 x i8]]], [9 x [2 x [8 x i8]]], [9 x [2 x i8]], [9 x [2 x i8]], [9 x [2 x i8]], [9 x [2 x double]], [9 x [2 x i8]], [9 x [2 x i8]], [9 x [2 x i32]], [9 x [2 x i32]], [9 x [2 x i8]], [9 x [2 x double]], [9 x i8], [9 x i8], [9 x i8], [9 x i8], [9 x double], [9 x [2 x i8]], [9 x [2 x i8]], [9 x [2 x i8]], [9 x [2 x double]], [8 x double], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [9 x [8 x i8]], [9 x [8 x i32]], [9 x [8 x double]], [9 x [8 x double]], [9 x [8 x double]], [9 x [2 x i8]], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [9 x [2 x [8 x double]]], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [9 x [2 x i8]], [9 x [8 x double]], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i8], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [9 x [2 x i32]], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [9 x [2 x [8 x i8]]], [8 x double], double, double, [8 x double], [8 x double], [8 x i32], [8 x double], [8 x double], [8 x i32], [8 x i32], double, double, [8 x double], [8 x double], [8 x double], [8 x i32], [8 x double], [8 x i32], [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], [8 x i32], i8, [8 x i8], double, double, [9 x [2 x i32]], i8, [9 x i8], [8 x i32], [8 x double], [8 x i8], [8 x double], [8 x double], [9 x [2 x i32]], i32, i32, i32, i32, i32, double, double, i32, [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x i8], [8 x i8], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i32], [8 x i32], double, i32, double, [8 x double], [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], i32, i32, double, [8 x double], [8 x double], [8 x double], i32, [8 x i8], [8 x double], [8 x double], [8 x double], [8 x double], [8 x i32], [8 x i32], [8 x i32], double, [8 x i8], i32, double, double, double, [8 x i32], [8 x i32], [8 x i32], [9 x [2 x [8 x double]]], [8 x double], [9 x double], [9 x [2 x i8]], [9 x [2 x [8 x i32]]], [9 x [2 x [8 x i32]]], [8 x double], [8 x double], [8 x double], double, i32, double, i8, double, double, double, double, double, i8, [8 x i32], [8 x i32], [8 x double], [8 x double], [8 x i32], i8, i8, [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i8], double, double, double, [8 x i8], i32, i8, double, double, [8 x double], [8 x double], [9 x double], i8, i8, i32, [8 x i32], [8 x i32], i32, [9 x [2 x i8]], [8 x i32], [8 x i32], [8 x i32], [8 x i8], [8 x i8], [8 x i32], [8 x i32], [9 x double], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x i8]]], [9 x [2 x [8 x i8]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x double]]], [9 x [2 x [8 x i32]]], [9 x [2 x [8 x i32]]], [9 x [2 x i8]], [9 x [2 x [8 x i32]]], [9 x [2 x [8 x i32]]], [9 x [2 x [8 x i32]]], [9 x [2 x [8 x i32]]], [9 x [2 x double]], [9 x [2 x double]], [9 x [2 x double]], [9 x [2 x double]], [8 x double], [8 x i32], [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8], double, i32, i8, i8, i8, double, double, double, double, double, double, double, double, double, double, double, [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x double], [8 x i8], [8 x i8], [8 x i8], [8 x i32], [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [9 x [2 x i32]] }
%struct._vcs_dpi_display_e2e_pipe_params_st = type { %struct._vcs_dpi_display_pipe_params_st, %struct._vcs_dpi_display_output_params_st, %struct._vcs_dpi_display_clocks_and_cfg_st }
%struct._vcs_dpi_display_pipe_params_st = type { %struct._vcs_dpi_display_pipe_source_params_st, %struct._vcs_dpi_display_pipe_dest_params_st, %struct._vcs_dpi_scaler_ratio_depth_st, %struct._vcs_dpi_scaler_taps_st }
%struct._vcs_dpi_display_pipe_source_params_st = type { i32, double, double, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, i32, i8, i8, i8, %struct._vcs_dpi_display_xfc_params_st, i8, i8 }
%struct._vcs_dpi_display_xfc_params_st = type { double, double, double, i32 }
%struct._vcs_dpi_display_pipe_dest_params_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, double, i8, i8, i32, i8, i32, i32 }
%struct._vcs_dpi_scaler_ratio_depth_st = type { double, double, double, double, double, double, double, double, i32, i32 }
%struct._vcs_dpi_scaler_taps_st = type { i32, i32, i32, i32 }
%struct._vcs_dpi_display_output_params_st = type { i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.writeback_st }
%struct.writeback_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double }
%struct._vcs_dpi_display_clocks_and_cfg_st = type { i32, double, double, double, double, double }
%struct.dml_funcs = type { ptr, ptr, ptr, ptr }
%struct.dm_pp_display_configuration = type { i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [6 x %struct.dm_pp_single_disp_config], i8, i32 }
%struct.dm_pp_single_disp_config = type { i32, i8, i8, i8, i32, i32, i32, i32, %struct.dc_link_settings }
%struct.anon.69 = type { i32 }
%struct.dc_plane_state = type { %struct.dc_plane_address, %struct.dc_plane_flip_time, i8, %struct.scaling_taps, %struct.rect, %struct.rect, %struct.rect, %struct.plane_size, %union.dc_tiling_info, %struct.dc_plane_dcc_param, ptr, ptr, ptr, %struct.dc_csc_transform, %struct.fixed31_32, %struct.fixed31_32, %struct.colorspace_transform, %struct.dc_hdr_static_metadata, i32, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i32, i8, i8, i8, i32, %union.surface_update_flags, i8, i8, %struct.dc_plane_status, ptr, i8, i32, %struct.kref }
%struct.dc_plane_flip_time = type { [10 x i32], i32, i32 }
%struct.plane_size = type { i32, i32, %struct.rect, %struct.rect }
%union.dc_tiling_info = type { %struct.anon.5 }
%struct.anon.5 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_plane_dcc_param = type { i8, i32, i8, i8, i32, i8, i8 }
%struct.dc_hdr_static_metadata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.surface_update_flags = type { %struct.anon.67 }
%struct.anon.67 = type { i32 }
%struct.dc_plane_status = type { %struct.dc_plane_address, %struct.dc_plane_address, i8, i8 }
%struct.tg_color = type { i16, i16, i16 }
%struct.dce_hwseq = type { ptr, ptr, ptr, ptr, %struct.dce_hwseq_wa, %struct.hwseq_wa_state, %struct.hwseq_private_funcs, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer }
%struct.dce_hwseq_wa = type { i8, i8, i8, i8, i8, i8 }
%struct.hwseq_wa_state = type { i8, i8, i32 }
%struct.hwseq_private_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.timing_generator_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mem_input_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource_straps = type { i32, i32, i32 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.dce110_create_resource_pool = private unnamed_addr constant [28 x i8] c"dce110_create_resource_pool\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bios_regs = internal constant { %struct.bios_registers, [24 x i8] } { %struct.bios_registers { i32 1484, i32 1487 }, [24 x i8] zeroinitializer }, align 32
@dce110_res_pool_funcs = internal constant { %struct.resource_funcs, [40 x i8] } { %struct.resource_funcs { ptr @dce110_destroy_resource_pool, ptr null, ptr @dce110_panel_cntl_create, ptr @dce110_link_encoder_create, ptr null, ptr @dce110_validate_bandwidth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dce110_validate_global, ptr @dce110_acquire_underlay, ptr @dce110_validate_plane, ptr @dce110_add_stream_to_ctx, ptr null, ptr null, ptr @dce110_find_first_free_match_stream_enc_for_link, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@clk_src_regs = internal constant { [3 x %struct.dce110_clk_src_regs], [36 x i8] } { [3 x %struct.dce110_clk_src_regs] [%struct.dce110_clk_src_regs { i32 314, i32 0, i32 5895, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer }, %struct.dce110_clk_src_regs { i32 312, i32 0, i32 5937, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer }, %struct.dce110_clk_src_regs { i32 313, i32 0, i32 5979, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer, [6 x i32] zeroinitializer }], [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"DC: failed to create dp clock source!\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.dce110_resource_construct = private unnamed_addr constant [26 x i8] c"dce110_resource_construct\00", align 1
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DC: failed to create clock sources!\0A\00", [59 x i8] zeroinitializer }, align 32
@dmcu_regs = internal constant { %struct.dce_dmcu_registers, [36 x i8] } { %struct.dce_dmcu_registers { i32 5632, i32 5633, i32 5640, i32 791, i32 0, i32 5645, i32 5646, i32 5660, i32 5661, i32 5662, i32 5663, i32 5664, i32 5665, i32 5666, i32 5667, i32 5668, i32 0, i32 5647, i32 5648, i32 5654, i32 302, i32 5656, i32 0 }, [36 x i8] zeroinitializer }, align 32
@dmcu_shift = internal constant { %struct.dce_dmcu_shift, [45 x i8] } { %struct.dce_dmcu_shift { i8 11, i8 5, i8 2, i8 3, i8 4, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 6, i8 7, i8 9, i8 10, i8 0, i8 0, i8 0 }, [45 x i8] zeroinitializer }, align 32
@dmcu_mask = internal constant { %struct.dce_dmcu_mask, [52 x i8] } { %struct.dce_dmcu_mask { i32 2048, i32 32, i32 4, i32 8, i32 16, i32 4, i32 1, i32 255, i32 1, i32 1, i32 0, i32 0, i32 64, i32 128, i32 512, i32 1024, i32 0, i32 0, i32 1 }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DC: failed to create dmcu!\0A\00", [36 x i8] zeroinitializer }, align 32
@abm_regs = internal constant { %struct.dce_abm_registers, [32 x i8] } { %struct.dce_abm_registers { i32 5716, i32 5717, i32 5679, i32 5707, i32 5689, i32 5675, i32 5674, i32 5673, i32 5713, i32 5706, i32 5690, i32 5695, i32 5664, i32 5663, i32 5660, i32 1483 }, [32 x i8] zeroinitializer }, align 32
@abm_shift = internal constant { %struct.dce_abm_shift, [46 x i8] } { %struct.dce_abm_shift { i8 0, i8 8, i8 16, i8 16, i8 8, i8 0, i8 0, i8 0, i8 0, i8 0, i8 16, i8 16, i8 24, i8 31, i8 0, i8 0, i8 8, i8 16 }, [46 x i8] zeroinitializer }, align 32
@abm_mask = internal constant { %struct.dce_abm_mask, [56 x i8] } { %struct.dce_abm_mask { i32 3, i32 256, i32 196608, i32 983040, i32 3840, i32 15, i32 131071, i32 131071, i32 131071, i32 1023, i32 67043328, i32 65536, i32 16777216, i32 -2147483648, i32 1, i32 255, i32 65280, i32 16711680 }, [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DC: failed to create abm!\0A\00", [37 x i8] zeroinitializer }, align 32
@dce110_tg_offsets = internal constant { [6 x %struct.dce110_timing_generator_offsets], [56 x i8] } { [6 x %struct.dce110_timing_generator_offsets] [%struct.dce110_timing_generator_offsets zeroinitializer, %struct.dce110_timing_generator_offsets { i32 512, i32 512, i32 0 }, %struct.dce110_timing_generator_offsets { i32 1024, i32 1024, i32 0 }, %struct.dce110_timing_generator_offsets { i32 9728, i32 9728, i32 0 }, %struct.dce110_timing_generator_offsets { i32 10240, i32 10240, i32 0 }, %struct.dce110_timing_generator_offsets { i32 10752, i32 10752, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DC: failed to create tg!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DC: failed to create memory input!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"DC: failed to create input pixel processor!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DC: failed to create transform!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DC: failed to create output pixel processor!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DC:failed to create aux engine!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DC:failed to create i2c engine!!\0A\00", [62 x i8] zeroinitializer }, align 32
@res_create_funcs = internal constant { %struct.resource_create_funcs, [16 x i8] } { %struct.resource_create_funcs { ptr @read_dce_straps, ptr @create_audio, ptr @dce110_stream_encoder_create, ptr @dce110_hwseq_create }, [16 x i8] zeroinitializer }, align 32
@plane_cap = internal constant { %struct.dc_plane_cap, [52 x i8] } { %struct.dc_plane_cap { i32 1, i8 -32, [3 x i8] undef, %struct.anon.9 { i8 -96, [3 x i8] undef }, %struct.anon.10 { i32 16000, i32 1, i32 1 }, %struct.anon.11 { i32 250, i32 1, i32 1 }, i32 64, i32 64 }, [52 x i8] zeroinitializer }, align 32
@underlay_plane_cap = internal constant { %struct.dc_plane_cap, [52 x i8] } { %struct.dc_plane_cap { i32 2, i8 -96, [3 x i8] undef, %struct.anon.9 { i8 64, [3 x i8] undef }, %struct.anon.10 { i32 1, i32 16000, i32 1 }, %struct.anon.11 { i32 1, i32 250, i32 1 }, i32 64, i32 64 }, [52 x i8] zeroinitializer }, align 32
@stoney_resource_cap = internal constant { %struct.resource_caps, [44 x i8] } { %struct.resource_caps { i32 2, i32 0, i32 1, i32 3, i32 3, i32 2, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@carrizo_resource_cap = internal constant { %struct.resource_caps, [44 x i8] } { %struct.resource_caps { i32 3, i32 0, i32 1, i32 3, i32 3, i32 2, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@panel_cntl_regs = internal constant { [1 x %struct.dce_panel_cntl_registers], [32 x i8] } { [1 x %struct.dce_panel_cntl_registers] [%struct.dce_panel_cntl_registers { i32 18459, i32 18460, i32 18464, i32 18465, i32 18466, i32 18467, i32 18461, i32 1483 }], [32 x i8] zeroinitializer }, align 32
@panel_cntl_shift = internal constant { %struct.dce_panel_cntl_shift, [17 x i8] } { %struct.dce_panel_cntl_shift { i8 24, i8 25, i8 16, i8 17, i8 4, i8 0, i8 16, i8 31, i8 0, i8 30, i8 0, i8 16, i8 31, i8 0, i8 8 }, [17 x i8] zeroinitializer }, align 32
@panel_cntl_mask = internal constant { %struct.dce_panel_cntl_mask, [36 x i8] } { %struct.dce_panel_cntl_mask { i32 16777216, i32 33554432, i32 65536, i32 131072, i32 16, i32 1, i32 -65536, i32 -2147483648, i32 65535, i32 1073741824, i32 65535, i32 983040, i32 -2147483648, i32 1, i32 256 }, [36 x i8] zeroinitializer }, align 32
@link_enc_regs = internal constant { [7 x %struct.dce110_link_enc_registers], [232 x i8] } { [7 x %struct.dce110_link_enc_registers] [%struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 5640, i32 791, i32 0, i32 5647, i32 5648, i32 5654, i32 19015, i32 19016, i32 19107, i32 19119, i32 19111, i32 19125, i32 19126, i32 19121, i32 19122, i32 19123, i32 19120, i32 19104, i32 19115, i32 19154, i32 19155, i32 19156, i32 19157, i32 19139, i32 19108, i32 19132, i32 19164, i32 19165, i32 19140 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 5640, i32 791, i32 0, i32 5647, i32 5648, i32 5654, i32 19271, i32 19272, i32 19363, i32 19375, i32 19367, i32 19381, i32 19382, i32 19377, i32 19378, i32 19379, i32 19376, i32 19360, i32 19371, i32 19410, i32 19411, i32 19412, i32 19413, i32 19395, i32 19364, i32 19388, i32 19420, i32 19421, i32 19396 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 5640, i32 791, i32 0, i32 5647, i32 5648, i32 5654, i32 19527, i32 19528, i32 19619, i32 19631, i32 19623, i32 19637, i32 19638, i32 19633, i32 19634, i32 19635, i32 19632, i32 19616, i32 19627, i32 19666, i32 19667, i32 19668, i32 19669, i32 19651, i32 19620, i32 19644, i32 19676, i32 19677, i32 19652 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 5640, i32 791, i32 0, i32 5647, i32 5648, i32 5654, i32 19783, i32 19784, i32 19875, i32 19887, i32 19879, i32 19893, i32 19894, i32 19889, i32 19890, i32 19891, i32 19888, i32 19872, i32 19883, i32 19922, i32 19923, i32 19924, i32 19925, i32 19907, i32 19876, i32 19900, i32 19932, i32 19933, i32 19908 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 5640, i32 791, i32 0, i32 5647, i32 5648, i32 5654, i32 20039, i32 20040, i32 20131, i32 20143, i32 20135, i32 20149, i32 20150, i32 20145, i32 20146, i32 20147, i32 20144, i32 20128, i32 20139, i32 20178, i32 20179, i32 20180, i32 20181, i32 20163, i32 20132, i32 20156, i32 20188, i32 20189, i32 20164 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 5640, i32 791, i32 0, i32 5647, i32 5648, i32 5654, i32 20295, i32 20296, i32 20387, i32 20399, i32 20391, i32 20405, i32 20406, i32 20401, i32 20402, i32 20403, i32 20400, i32 20384, i32 20395, i32 20434, i32 20435, i32 20436, i32 20437, i32 20419, i32 20388, i32 20412, i32 20444, i32 20445, i32 20420 }, %struct.dce110_link_enc_registers { i32 0, i32 0, i32 0, i32 0, i32 0, i32 5640, i32 791, i32 0, i32 5647, i32 5648, i32 5654, i32 21575, i32 21576, i32 21667, i32 21679, i32 21671, i32 21685, i32 21686, i32 21681, i32 21682, i32 21683, i32 21680, i32 21664, i32 21675, i32 21714, i32 21715, i32 21716, i32 21717, i32 21699, i32 21668, i32 21692, i32 21724, i32 21725, i32 21700 }], [232 x i8] zeroinitializer }, align 32
@link_enc_aux_regs = internal constant { [6 x %struct.dce110_link_enc_aux_registers], [56 x i8] } { [6 x %struct.dce110_link_enc_aux_registers] [%struct.dce110_link_enc_aux_registers { i32 23552, i32 23562, i32 23563 }, %struct.dce110_link_enc_aux_registers { i32 23580, i32 23590, i32 23591 }, %struct.dce110_link_enc_aux_registers { i32 23608, i32 23618, i32 23619 }, %struct.dce110_link_enc_aux_registers { i32 23636, i32 23646, i32 23647 }, %struct.dce110_link_enc_aux_registers { i32 23664, i32 23674, i32 23675 }, %struct.dce110_link_enc_aux_registers { i32 23692, i32 23702, i32 23703 }], [56 x i8] zeroinitializer }, align 32
@link_enc_hpd_regs = internal constant { [6 x %struct.dce110_link_enc_hpd_registers], [40 x i8] } { [6 x %struct.dce110_link_enc_hpd_registers] [%struct.dce110_link_enc_hpd_registers { i32 6298 }, %struct.dce110_link_enc_hpd_registers { i32 6306 }, %struct.dce110_link_enc_hpd_registers { i32 6314 }, %struct.dce110_link_enc_hpd_registers { i32 6322 }, %struct.dce110_link_enc_hpd_registers { i32 6330 }, %struct.dce110_link_enc_hpd_registers { i32 6338 }], [40 x i8] zeroinitializer }, align 32
@map_transmitter_id_to_phy_instance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c\00", [62 x i8] zeroinitializer }, align 32
@link_enc_feature = internal constant { { { { i8, i8, [2 x i8] } }, i32, i32, i8, i8, i8 }, [16 x i8] } { { { { i8, i8, [2 x i8] } }, i32, i32, i8, i8, i8 } { { { i8, i8, [2 x i8] } } { { i8, i8, [2 x i8] } { i8 -96, i8 0, [2 x i8] undef } }, i32 4, i32 300000, i8 0, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@dce110_validate_bandwidth.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.12, ptr @.str.16, i8 0, i8 -13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dce110_validate_bandwidth\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[BANDWIDTH_CALCS]:%s: start\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: %dx%d@%d Bandwidth validation failed!\0A\00", [53 x i8] zeroinitializer }, align 32
@dce110_validate_bandwidth.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.12, ptr @.str.18, i8 1, i8 2, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [450 x i8], [126 x i8] } { [450 x i8] c"[BANDWIDTH_CALCS]:%s: finish,\0AnbpMark_b: %d nbpMark_a: %d urgentMark_b: %d urgentMark_a: %d\0AstutMark_b: %d stutMark_a: %d\0AnbpMark_b: %d nbpMark_a: %d urgentMark_b: %d urgentMark_a: %d\0AstutMark_b: %d stutMark_a: %d\0AnbpMark_b: %d nbpMark_a: %d urgentMark_b: %d urgentMark_a: %d\0AstutMark_b: %d stutMark_a: %d stutter_mode_enable: %d\0Acstate: %d pstate: %d nbpstate: %d sync: %d dispclk: %d\0Asclk: %d sclk_sleep: %d yclk: %d blackout_recovery_time_us: %d\0A\00", [126 x i8] zeroinitializer }, align 32
@cs_shift = internal constant { %struct.dce110_clk_src_shift, [23 x i8] } { %struct.dce110_clk_src_shift { i8 16, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@cs_mask = internal constant { %struct.dce110_clk_src_mask, [60 x i8] } { %struct.dce110_clk_src_mask { i32 458752, i32 48, i32 0, i32 0, i32 127, i32 1023, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.dce110_clock_source_create = private unnamed_addr constant [27 x i8] c"dce110_clock_source_create\00", align 1
@__func__.dce110_mem_input_create = private unnamed_addr constant [24 x i8] c"dce110_mem_input_create\00", align 1
@mi_regs = internal constant { [3 x %struct.dce_mem_input_registers], [104 x i8] } { [3 x %struct.dce_mem_input_registers] [%struct.dce_mem_input_registers { i32 6656, i32 6657, i32 6667, i32 6668, i32 6669, i32 6670, i32 6662, i32 6814, i32 6659, i32 6701, i32 6684, i32 6794, i32 6796, i32 6673, i32 6674, i32 6660, i32 6663, i32 6661, i32 6664, i32 6960, i32 0, i32 6962, i32 6963, i32 0, i32 6966, i32 0, i32 6965, i32 0, i32 801, i32 2120, i32 0, i32 0, i32 0, i32 0 }, %struct.dce_mem_input_registers { i32 7168, i32 7169, i32 7179, i32 7180, i32 7181, i32 7182, i32 7174, i32 7326, i32 7171, i32 7213, i32 7196, i32 7306, i32 7308, i32 7185, i32 7186, i32 7172, i32 7175, i32 7173, i32 7176, i32 7472, i32 0, i32 7474, i32 7475, i32 0, i32 7478, i32 0, i32 7477, i32 0, i32 802, i32 2120, i32 0, i32 0, i32 0, i32 0 }, %struct.dce_mem_input_registers { i32 7680, i32 7681, i32 7691, i32 7692, i32 7693, i32 7694, i32 7686, i32 7838, i32 7683, i32 7725, i32 7708, i32 7818, i32 7820, i32 7697, i32 7698, i32 7684, i32 7687, i32 7685, i32 7688, i32 7984, i32 0, i32 7986, i32 7987, i32 0, i32 7990, i32 0, i32 7989, i32 0, i32 803, i32 2120, i32 0, i32 0, i32 0, i32 0 }], [104 x i8] zeroinitializer }, align 32
@mi_shifts = internal constant { %struct.dce_mem_input_shift, [57 x i8] } { %struct.dce_mem_input_shift { i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 8, i8 0, i8 1, i8 2, i8 3, i8 0, i8 1, i8 5, i8 9, i8 0, i8 8, i8 0, i8 8, i8 2, i8 6, i8 11, i8 18, i8 13, i8 29, i8 24, i8 20, i8 31, i8 0, i8 0, i8 0, i8 0, i8 0, i8 8, i8 0, i8 0, i8 8, i8 2, i8 0, i8 16, i8 0, i8 8, i8 0, i8 16, i8 0, i8 0, i8 16, i8 0, i8 0, i8 0, i8 4, i8 8, i8 16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 7, i8 16, i8 0, i8 0, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [57 x i8] zeroinitializer }, align 32
@mi_masks = internal constant { %struct.dce_mem_input_mask, [68 x i8] } { %struct.dce_mem_input_mask { i32 1, i32 16383, i32 16383, i32 32767, i32 32767, i32 32767, i32 7, i32 48, i32 768, i32 1, i32 2, i32 4, i32 8, i32 255, i32 30, i32 480, i32 523776, i32 63, i32 65280, i32 3, i32 1792, i32 12, i32 192, i32 6144, i32 786432, i32 57344, i32 1610612736, i32 520093696, i32 15728640, i32 -2147483648, i32 0, i32 0, i32 0, i32 0, i32 255, i32 -256, i32 0, i32 255, i32 -256, i32 4, i32 1, i32 65536, i32 65535, i32 768, i32 0, i32 196608, i32 3, i32 65535, i32 -65536, i32 0, i32 0, i32 1, i32 16, i32 256, i32 -65536, i32 0, i32 0, i32 0, i32 0, i32 1, i32 128, i32 -65536, i32 0, i32 7, i32 16, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, [68 x i8] zeroinitializer }, align 32
@__func__.dce110_ipp_create = private unnamed_addr constant [18 x i8] c"dce110_ipp_create\00", align 1
@ipp_regs = internal constant { [3 x %struct.dce_ipp_registers], [36 x i8] } { [3 x %struct.dce_ipp_registers] [%struct.dce_ipp_registers { i32 6766, i32 6758, i32 6762, i32 6763, i32 6764, i32 6765, i32 6760, i32 6761, i32 6759, i32 6701, i32 6702, i32 6703, i32 6704, i32 6672, i32 6915, i32 6782, i32 6776, i32 6784, i32 6777, i32 6778, i32 6744 }, %struct.dce_ipp_registers { i32 7278, i32 7270, i32 7274, i32 7275, i32 7276, i32 7277, i32 7272, i32 7273, i32 7271, i32 7213, i32 7214, i32 7215, i32 7216, i32 7184, i32 7427, i32 7294, i32 7288, i32 7296, i32 7289, i32 7290, i32 7256 }, %struct.dce_ipp_registers { i32 7790, i32 7782, i32 7786, i32 7787, i32 7788, i32 7789, i32 7784, i32 7785, i32 7783, i32 7725, i32 7726, i32 7727, i32 7728, i32 7696, i32 7939, i32 7806, i32 7800, i32 7808, i32 7801, i32 7802, i32 7768 }], [36 x i8] zeroinitializer }, align 32
@ipp_shift = internal constant { %struct.dce_ipp_shift, [58 x i8] } { %struct.dce_ipp_shift { i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 8, i8 16, i8 4, i8 0, i8 8, i8 16, i8 0, i8 8, i8 16, i8 16, i8 0, i8 0, i8 0, i8 4, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 0, i8 2, i8 0, i8 0, i8 22, i8 14, i8 6, i8 0, i8 0, i8 0, i8 12, i8 8 }, [58 x i8] zeroinitializer }, align 32
@ipp_mask = internal constant { %struct.dce_ipp_mask, [40 x i8] } { %struct.dce_ipp_mask { i32 65536, i32 1, i32 1073676288, i32 16383, i32 8323072, i32 127, i32 768, i32 65536, i32 16, i32 255, i32 65280, i32 16711680, i32 255, i32 65280, i32 16711680, i32 8323072, i32 127, i32 255, i32 -1, i32 16, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 1, i32 4, i32 7, i32 1, i32 12582912, i32 49152, i32 192, i32 255, i32 65535, i32 3, i32 12288, i32 768 }, [40 x i8] zeroinitializer }, align 32
@xfm_regs = internal constant { [3 x %struct.dce_transform_registers], [212 x i8] } { [3 x %struct.dce_transform_registers] [%struct.dce_transform_registers { i32 0, i32 6848, i32 6745, i32 6746, i32 6747, i32 6748, i32 6749, i32 6750, i32 6751, i32 6717, i32 6718, i32 6719, i32 6720, i32 6721, i32 6722, i32 6716, i32 0, i32 6820, i32 6821, i32 6822, i32 6823, i32 6824, i32 6825, i32 6826, i32 6827, i32 6828, i32 6829, i32 6830, i32 6831, i32 6819, i32 6817, i32 6818, i32 6816, i32 6736, i32 6752, i32 6737, i32 6738, i32 6812, i32 6813, i32 6978, i32 6979, i32 6980, i32 6981, i32 7006, i32 7007, i32 6987, i32 6984, i32 6915, i32 6917, i32 6976, i32 6977, i32 7004, i32 7005, i32 6985, i32 6988, i32 6986, i32 0, i32 0, i32 6989, i32 6983, i32 0, i32 0, i32 6849, i32 6993, i32 6995 }, %struct.dce_transform_registers { i32 0, i32 7360, i32 7257, i32 7258, i32 7259, i32 7260, i32 7261, i32 7262, i32 7263, i32 7229, i32 7230, i32 7231, i32 7232, i32 7233, i32 7234, i32 7228, i32 0, i32 7332, i32 7333, i32 7334, i32 7335, i32 7336, i32 7337, i32 7338, i32 7339, i32 7340, i32 7341, i32 7342, i32 7343, i32 7331, i32 7329, i32 7330, i32 7328, i32 7248, i32 7264, i32 7249, i32 7250, i32 7324, i32 7325, i32 7490, i32 7491, i32 7492, i32 7493, i32 7518, i32 7519, i32 7499, i32 7496, i32 7427, i32 7429, i32 7488, i32 7489, i32 7516, i32 7517, i32 7497, i32 7500, i32 7498, i32 0, i32 0, i32 7501, i32 7495, i32 0, i32 0, i32 7361, i32 7505, i32 7507 }, %struct.dce_transform_registers { i32 0, i32 7872, i32 7769, i32 7770, i32 7771, i32 7772, i32 7773, i32 7774, i32 7775, i32 7741, i32 7742, i32 7743, i32 7744, i32 7745, i32 7746, i32 7740, i32 0, i32 7844, i32 7845, i32 7846, i32 7847, i32 7848, i32 7849, i32 7850, i32 7851, i32 7852, i32 7853, i32 7854, i32 7855, i32 7843, i32 7841, i32 7842, i32 7840, i32 7760, i32 7776, i32 7761, i32 7762, i32 7836, i32 7837, i32 8002, i32 8003, i32 8004, i32 8005, i32 8030, i32 8031, i32 8011, i32 8008, i32 7939, i32 7941, i32 8000, i32 8001, i32 8028, i32 8029, i32 8009, i32 8012, i32 8010, i32 0, i32 0, i32 8013, i32 8007, i32 0, i32 0, i32 7873, i32 8017, i32 8019 }], [212 x i8] zeroinitializer }, align 32
@xfm_shift = internal constant { %struct.dce_transform_shift, [34 x i8] } { %struct.dce_transform_shift { i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 0, i8 0, i8 4, i8 6, i8 8, i8 9, i8 10, i8 0, i8 0, i8 0, i8 2, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 0, i8 16, i8 0, i8 5, i8 2, i8 0, i8 0, i8 0, i8 20, i8 0, i8 0, i8 16, i8 0, i8 0, i8 12, i8 16, i8 28, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 8, i8 0, i8 0, i8 16, i8 0, i8 16, i8 0, i8 8, i8 4, i8 16, i8 8, i8 0, i8 15, i8 0, i8 31, i8 16, i8 16, i8 0, i8 0, i8 16, i8 0, i8 0, i8 24, i8 0, i8 0, i8 0, i8 0, i8 0, i8 24, i8 0, i8 0, i8 0, i8 20, i8 0, i8 8, i8 8, i8 0, i8 0, i8 24, i8 31 }, [34 x i8] zeroinitializer }, align 32
@xfm_mask = internal constant { %struct.dce_transform_mask, [72 x i8] } { %struct.dce_transform_mask { i32 1073676288, i32 16383, i32 1073676288, i32 16383, i32 1073676288, i32 16383, i32 15, i32 1, i32 48, i32 192, i32 256, i32 512, i32 1024, i32 7, i32 0, i32 3, i32 4, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 3, i32 65535, i32 -65536, i32 7, i32 32, i32 4, i32 0, i32 0, i32 262143, i32 133169152, i32 262143, i32 65535, i32 -65536, i32 65535, i32 511, i32 28672, i32 33488896, i32 1879048192, i32 12, i32 0, i32 7, i32 7, i32 3, i32 3, i32 16, i32 3840, i32 7, i32 1, i32 536805376, i32 8191, i32 536805376, i32 8191, i32 256, i32 48, i32 458752, i32 3840, i32 15, i32 32768, i32 16383, i32 -2147483648, i32 1073676288, i32 1073676288, i32 16383, i32 16383, i32 1073676288, i32 67108863, i32 67108863, i32 251658240, i32 16777215, i32 0, i32 0, i32 0, i32 0, i32 117440512, i32 16777215, i32 0, i32 0, i32 3145728, i32 4095, i32 256, i32 256, i32 0, i32 0, i32 16777216, i32 -2147483648 }, [72 x i8] zeroinitializer }, align 32
@opp_regs = internal constant { [6 x %struct.dce_opp_registers], [80 x i8] } { [6 x %struct.dce_opp_registers] [%struct.dce_opp_registers { i32 7149, i32 7154, i32 7150, i32 7155, i32 7156, i32 7157, i32 7158, i32 7159, i32 7160, i32 0, i32 7161, i32 7144, i32 7145, i32 7146 }, %struct.dce_opp_registers { i32 7661, i32 7666, i32 7662, i32 7667, i32 7668, i32 7669, i32 7670, i32 7671, i32 7672, i32 0, i32 7673, i32 7656, i32 7657, i32 7658 }, %struct.dce_opp_registers { i32 8173, i32 8178, i32 8174, i32 8179, i32 8180, i32 8181, i32 8182, i32 8183, i32 8184, i32 0, i32 8185, i32 8168, i32 8169, i32 8170 }, %struct.dce_opp_registers { i32 16877, i32 16882, i32 16878, i32 16883, i32 16884, i32 16885, i32 16886, i32 16887, i32 16888, i32 0, i32 16889, i32 16872, i32 16873, i32 16874 }, %struct.dce_opp_registers { i32 17389, i32 17394, i32 17390, i32 17395, i32 17396, i32 17397, i32 17398, i32 17399, i32 17400, i32 0, i32 17401, i32 17384, i32 17385, i32 17386 }, %struct.dce_opp_registers { i32 17901, i32 17906, i32 17902, i32 17907, i32 17908, i32 17909, i32 17910, i32 17911, i32 17912, i32 0, i32 17913, i32 17896, i32 17897, i32 17898 }], [80 x i8] zeroinitializer }, align 32
@opp_shift = internal constant { %struct.dce_opp_shift, [54 x i8] } { %struct.dce_opp_shift { i8 0, i8 4, i8 0, i8 4, i8 1, i8 8, i8 11, i8 9, i8 16, i8 25, i8 21, i8 17, i8 24, i8 26, i8 28, i8 30, i8 15, i8 13, i8 14, i8 8, i8 12, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 24, i8 0, i8 0, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 0, i8 16, i8 16, i8 18, i8 17, i8 0 }, [54 x i8] zeroinitializer }, align 32
@opp_mask = internal constant { %struct.dce_opp_mask, [56 x i8] } { %struct.dce_opp_mask { i32 1, i32 16, i32 1, i32 48, i32 2, i32 256, i32 6144, i32 1536, i32 65536, i32 33554432, i32 6291456, i32 393216, i32 16777216, i32 201326592, i32 805306368, i32 -1073741824, i32 32768, i32 8192, i32 16384, i32 3840, i32 12288, i32 1, i32 255, i32 255, i32 255, i32 0, i32 0, i32 117440512, i32 0, i32 0, i32 1, i32 458752, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65535, i32 -65536, i32 65536, i32 262144, i32 131072, i32 0 }, [56 x i8] zeroinitializer }, align 32
@aux_engine_regs = internal constant { [6 x %struct.dce110_aux_registers], [48 x i8] } { [6 x %struct.dce110_aux_registers] [%struct.dce110_aux_registers { i32 23552, i32 23554, i32 23558, i32 23553, i32 23555, i32 0, i32 23556, i32 18492, i32 18491, i32 0 }, %struct.dce110_aux_registers { i32 23580, i32 23582, i32 23586, i32 23581, i32 23583, i32 0, i32 23584, i32 18492, i32 18491, i32 0 }, %struct.dce110_aux_registers { i32 23608, i32 23610, i32 23614, i32 23609, i32 23611, i32 0, i32 23612, i32 18492, i32 18491, i32 0 }, %struct.dce110_aux_registers { i32 23636, i32 23638, i32 23642, i32 23637, i32 23639, i32 0, i32 23640, i32 18492, i32 18491, i32 0 }, %struct.dce110_aux_registers { i32 23664, i32 23666, i32 23670, i32 23665, i32 23667, i32 0, i32 23668, i32 18492, i32 18491, i32 0 }, %struct.dce110_aux_registers { i32 23692, i32 23694, i32 23698, i32 23693, i32 23695, i32 0, i32 23696, i32 18492, i32 18491, i32 0 }], [48 x i8] zeroinitializer }, align 32
@aux_mask = internal constant { %struct.dce110_aux_registers_mask, [32 x i8] } { %struct.dce110_aux_registers_mask { i32 1, i32 16, i32 32, i32 12, i32 65536, i32 131072, i32 -2147483648, i32 1, i32 2031616, i32 1, i32 65280, i32 520093696, i32 1, i32 2, i32 1, i32 1, i32 268435456, i32 268435456, i32 0, i32 0, i32 1024, i32 1024, i32 240, i32 2031616 }, [32 x i8] zeroinitializer }, align 32
@aux_shift = internal constant { %struct.dce110_aux_registers_shift, [40 x i8] } { %struct.dce110_aux_registers_shift { i8 0, i8 4, i8 5, i8 2, i8 16, i8 17, i8 31, i8 0, i8 16, i8 0, i8 8, i8 24, i8 0, i8 1, i8 0, i8 0, i8 28, i8 28, i8 0, i8 0, i8 10, i8 10, i8 4, i8 16 }, [40 x i8] zeroinitializer }, align 32
@i2c_hw_regs = internal constant { [6 x %struct.dce_i2c_registers], [80 x i8] } { [6 x %struct.dce_i2c_registers] [%struct.dce_i2c_registers { i32 5855, i32 5854, i32 5848, i32 5845, i32 5844, i32 5847, i32 5866, i32 5867, i32 5868, i32 5869, i32 5870, i32 315, i32 0, i32 0 }, %struct.dce_i2c_registers { i32 5857, i32 5856, i32 5849, i32 5845, i32 5844, i32 5847, i32 5866, i32 5867, i32 5868, i32 5869, i32 5870, i32 315, i32 0, i32 0 }, %struct.dce_i2c_registers { i32 5859, i32 5858, i32 5850, i32 5845, i32 5844, i32 5847, i32 5866, i32 5867, i32 5868, i32 5869, i32 5870, i32 315, i32 0, i32 0 }, %struct.dce_i2c_registers { i32 5861, i32 5860, i32 5851, i32 5845, i32 5844, i32 5847, i32 5866, i32 5867, i32 5868, i32 5869, i32 5870, i32 315, i32 0, i32 0 }, %struct.dce_i2c_registers { i32 5863, i32 5862, i32 5852, i32 5845, i32 5844, i32 5847, i32 5866, i32 5867, i32 5868, i32 5869, i32 5870, i32 315, i32 0, i32 0 }, %struct.dce_i2c_registers { i32 5865, i32 5864, i32 5853, i32 5845, i32 5844, i32 5847, i32 5866, i32 5867, i32 5868, i32 5869, i32 5870, i32 315, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@i2c_shifts = internal constant { %struct.dce_i2c_shift, [55 x i8] } { %struct.dce_i2c_shift { i8 6, i8 24, i8 0, i8 7, i8 1, i8 16, i8 8, i8 0, i8 21, i8 20, i8 4, i8 0, i8 1, i8 3, i8 0, i8 2, i8 20, i8 8, i8 16, i8 0, i8 8, i8 8, i8 5, i8 4, i8 2, i8 0, i8 8, i8 12, i8 0, i8 13, i8 16, i8 0, i8 8, i8 16, i8 31, i8 8, i8 0, i8 0, i8 2, i8 0, i8 0 }, [55 x i8] zeroinitializer }, align 32
@i2c_masks = internal constant { %struct.dce_i2c_mask, [60 x i8] } { %struct.dce_i2c_mask { i32 64, i32 -16777216, i32 1, i32 128, i32 2, i32 16711680, i32 65280, i32 3, i32 2097152, i32 1048576, i32 16, i32 3, i32 2, i32 8, i32 1, i32 4, i32 3145728, i32 1792, i32 -65536, i32 3, i32 768, i32 256, i32 32, i32 16, i32 4, i32 3, i32 256, i32 4096, i32 1, i32 8192, i32 16711680, i32 1, i32 65280, i32 16711680, i32 -2147483648, i32 32512, i32 127, i32 0, i32 12, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@audio_regs = internal constant { [7 x %struct.dce_audio_registers], [76 x i8] } { [7 x %struct.dce_audio_registers] [%struct.dce_audio_registers { i32 6056, i32 6057, i32 6190, i32 6189, i32 6191, i32 363, i32 365, i32 364, i32 367, i32 366, i32 0 }, %struct.dce_audio_registers { i32 6060, i32 6061, i32 6190, i32 6189, i32 6191, i32 363, i32 365, i32 364, i32 367, i32 366, i32 0 }, %struct.dce_audio_registers { i32 6064, i32 6065, i32 6190, i32 6189, i32 6191, i32 363, i32 365, i32 364, i32 367, i32 366, i32 0 }, %struct.dce_audio_registers { i32 6068, i32 6069, i32 6190, i32 6189, i32 6191, i32 363, i32 365, i32 364, i32 367, i32 366, i32 0 }, %struct.dce_audio_registers { i32 6072, i32 6073, i32 6190, i32 6189, i32 6191, i32 363, i32 365, i32 364, i32 367, i32 366, i32 0 }, %struct.dce_audio_registers { i32 6076, i32 6077, i32 6190, i32 6189, i32 6191, i32 363, i32 365, i32 364, i32 367, i32 366, i32 0 }, %struct.dce_audio_registers { i32 6080, i32 6081, i32 6190, i32 6189, i32 6191, i32 363, i32 365, i32 364, i32 367, i32 366, i32 0 }], [76 x i8] zeroinitializer }, align 32
@audio_shift = internal constant { %struct.dce_audio_shift, [40 x i8] } { %struct.dce_audio_shift { i8 0, i8 0, i8 0, i8 30, i8 31, i8 0, i8 4, i8 0, i8 0, i8 0, i8 0, i8 20, i32 24, i32 28, i32 0 }, [40 x i8] zeroinitializer }, align 32
@audio_mask = internal constant { %struct.dce_audio_mask, [36 x i8] } { %struct.dce_audio_mask { i32 16383, i32 -1, i32 4095, i32 1073741824, i32 -2147483648, i32 7, i32 48, i32 -1, i32 -1, i32 -1, i32 -1, i32 1048576, i32 16777216, i32 268435456, i32 0 }, [36 x i8] zeroinitializer }, align 32
@stream_enc_regs = internal constant { [3 x %struct.dce110_stream_enc_registers], [164 x i8] } { [3 x %struct.dce110_stream_enc_registers] [%struct.dce110_stream_enc_registers { i32 19070, i32 18974, i32 18975, i32 18976, i32 18977, i32 18981, i32 18982, i32 18983, i32 18984, i32 18985, i32 18986, i32 18987, i32 18988, i32 18980, i32 19012, i32 19011, i32 0, i32 19010, i32 18964, i32 19013, i32 19000, i32 19001, i32 19007, i32 18944, i32 19151, i32 19153, i32 19105, i32 19139, i32 19109, i32 19114, i32 19113, i32 19108, i32 19112, i32 19145, i32 19149, i32 18953, i32 18963, i32 18960, i32 18989, i32 0, i32 0, i32 18958, i32 18959, i32 18957, i32 18955, i32 18956, i32 18990, i32 18991, i32 18992, i32 18993, i32 18994, i32 18995, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.dce110_stream_enc_registers { i32 19326, i32 19230, i32 19231, i32 19232, i32 19233, i32 19237, i32 19238, i32 19239, i32 19240, i32 19241, i32 19242, i32 19243, i32 19244, i32 19236, i32 19268, i32 19267, i32 0, i32 19266, i32 19220, i32 19269, i32 19256, i32 19257, i32 19263, i32 19200, i32 19407, i32 19409, i32 19361, i32 19395, i32 19365, i32 19370, i32 19369, i32 19364, i32 19368, i32 19401, i32 19405, i32 19209, i32 19219, i32 19216, i32 19245, i32 0, i32 0, i32 19214, i32 19215, i32 19213, i32 19211, i32 19212, i32 19246, i32 19247, i32 19248, i32 19249, i32 19250, i32 19251, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.dce110_stream_enc_registers { i32 19582, i32 19486, i32 19487, i32 19488, i32 19489, i32 19493, i32 19494, i32 19495, i32 19496, i32 19497, i32 19498, i32 19499, i32 19500, i32 19492, i32 19524, i32 19523, i32 0, i32 19522, i32 19476, i32 19525, i32 19512, i32 19513, i32 19519, i32 19456, i32 19663, i32 19665, i32 19617, i32 19651, i32 19621, i32 19626, i32 19625, i32 19620, i32 19624, i32 19657, i32 19661, i32 19465, i32 19475, i32 19472, i32 19501, i32 0, i32 0, i32 19470, i32 19471, i32 19469, i32 19467, i32 19468, i32 19502, i32 19503, i32 19504, i32 19505, i32 19506, i32 19507, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [164 x i8] zeroinitializer }, align 32
@se_shift = internal constant { %struct.dce_stream_encoder_shift, [32 x i8] } { %struct.dce_stream_encoder_shift { i8 30, i8 2, i8 3, i8 0, i8 8, i8 16, i8 24, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 16, i8 5, i8 4, i8 24, i8 0, i8 24, i8 8, i8 16, i8 4, i8 0, i8 24, i8 2, i8 28, i8 5, i8 4, i8 0, i8 1, i8 4, i8 7, i8 8, i8 0, i8 26, i8 0, i8 0, i8 24, i8 0, i8 1, i8 0, i8 20, i8 0, i8 21, i8 22, i8 23, i8 0, i8 0, i8 0, i8 0, i8 24, i8 28, i8 8, i8 0, i8 16, i8 0, i8 8, i8 0, i8 0, i8 10, i8 0, i8 8, i8 16, i8 4, i8 26, i8 0, i8 28, i8 12, i8 8, i8 31, i8 12, i8 0, i8 12, i8 0, i8 12, i8 0, i8 20, i8 28, i8 20, i8 0, i8 4, i8 8, i8 12, i8 16, i8 20, i8 0, i8 0, i8 4, i8 8, i8 12, i8 16, i8 0, i8 0, i8 28, i8 30, i8 4, i8 8, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@se_mask = internal constant { %struct.dce_stream_encoder_mask, [128 x i8] } { %struct.dce_stream_encoder_mask { i32 -1073741824, i32 4, i32 8, i32 255, i32 65280, i32 16711680, i32 -16777216, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 1, i32 4128768, i32 32, i32 16, i32 1056964608, i32 7, i32 117440512, i32 256, i32 65536, i32 16, i32 1, i32 16777216, i32 4, i32 805306368, i32 32, i32 16, i32 1, i32 2, i32 16, i32 128, i32 16128, i32 1, i32 -67108864, i32 67108863, i32 1, i32 -16777216, i32 1, i32 2, i32 63, i32 1048576, i32 1, i32 2097152, i32 4194304, i32 8388608, i32 0, i32 0, i32 0, i32 0, i32 16777216, i32 268435456, i32 768, i32 1, i32 65536, i32 1, i32 256, i32 16777215, i32 16777215, i32 1024, i32 7, i32 65280, i32 2031616, i32 48, i32 67108864, i32 1, i32 268435456, i32 4096, i32 256, i32 -2147483648, i32 -4096, i32 1048575, i32 -4096, i32 1048575, i32 -4096, i32 1048575, i32 15728640, i32 805306368, i32 15728640, i32 15, i32 240, i32 3840, i32 61440, i32 983040, i32 15728640, i32 16777215, i32 1, i32 16, i32 256, i32 4096, i32 65536, i32 1, i32 1, i32 268435456, i32 112, i32 256, i32 -1073741824, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7 }, [128 x i8] zeroinitializer }, align 32
@hwseq_stoney_reg = internal constant { %struct.dce_hwseq_registers, [132 x i8] } { %struct.dce_hwseq_registers { [6 x i32] [i32 6912, i32 7424, i32 18164, i32 0, i32 0, i32 0], i32 18164, i32 306, [6 x i32] [i32 7027, i32 7539, i32 18291, i32 0, i32 0, i32 0], [6 x i32] [i32 7021, i32 7533, i32 18285, i32 0, i32 0, i32 0], i32 18285, [6 x i32] [i32 7041, i32 7553, i32 18305, i32 0, i32 0, i32 0], [6 x i32] [i32 320, i32 324, i32 328, i32 332, i32 336, i32 340], [6 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [132 x i8] zeroinitializer }, align 32
@hwseq_cz_reg = internal constant { %struct.dce_hwseq_registers, [132 x i8] } { %struct.dce_hwseq_registers { [6 x i32] [i32 6912, i32 7424, i32 7936, i32 18164, i32 0, i32 0], i32 18164, i32 306, [6 x i32] [i32 7027, i32 7539, i32 8051, i32 18291, i32 0, i32 0], [6 x i32] [i32 7021, i32 7533, i32 8045, i32 18285, i32 0, i32 0], i32 18285, [6 x i32] [i32 7041, i32 7553, i32 8065, i32 18305, i32 0, i32 0], [6 x i32] [i32 320, i32 324, i32 328, i32 332, i32 336, i32 340], [6 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [132 x i8] zeroinitializer }, align 32
@hwseq_shift = internal constant { %struct.dce_hwseq_shift, [35 x i8] } { %struct.dce_hwseq_shift { i8 31, i8 31, i8 0, i8 0, i8 28, i8 1, i8 29, i8 31, i8 13, i8 16, i8 8, i8 20, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [35 x i8] zeroinitializer }, align 32
@hwseq_mask = internal constant { %struct.dce_hwseq_mask, [108 x i8] } { %struct.dce_hwseq_mask { i32 -2147483648, i32 -2147483648, i32 1, i32 1, i32 268435456, i32 2, i32 536870912, i32 -2147483648, i32 8192, i32 196608, i32 768, i32 1048576, i32 16, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [108 x i8] zeroinitializer }, align 32
@switch.table.dce110_link_encoder_create = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 0, i32 0, i32 0, i32 6], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1546, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [10 x i8] c"bios_regs\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 381, i32 36 }
@___asan_gen_.25 = private unnamed_addr constant [22 x i8] c"dce110_res_pool_funcs\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1230, i32 36 }
@___asan_gen_.28 = private unnamed_addr constant [13 x i8] c"clk_src_regs\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 367, i32 41 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1399, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1406, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant [10 x i8] c"dmcu_regs\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 153, i32 40 }
@___asan_gen_.40 = private unnamed_addr constant [11 x i8] c"dmcu_shift\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 157, i32 36 }
@___asan_gen_.43 = private unnamed_addr constant [10 x i8] c"dmcu_mask\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 161, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1417, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [9 x i8] c"abm_regs\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 165, i32 39 }
@___asan_gen_.52 = private unnamed_addr constant [10 x i8] c"abm_shift\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 169, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant [9 x i8] c"abm_mask\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 173, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1427, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"dce110_tg_offsets\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 118, i32 53 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1445, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1452, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1460, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1468, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1476, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1486, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 1493, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"res_create_funcs\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 576, i32 43 }
@___asan_gen_.88 = private unnamed_addr constant [10 x i8] c"plane_cap\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 404, i32 34 }
@___asan_gen_.91 = private unnamed_addr constant [19 x i8] c"underlay_plane_cap\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 431, i32 34 }
@___asan_gen_.94 = private unnamed_addr constant [20 x i8] c"stoney_resource_cap\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 395, i32 35 }
@___asan_gen_.97 = private unnamed_addr constant [21 x i8] c"carrizo_resource_cap\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 386, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant [16 x i8] c"panel_cntl_regs\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 279, i32 46 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"panel_cntl_shift\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 283, i32 42 }
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"panel_cntl_mask\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 287, i32 41 }
@___asan_gen_.109 = private unnamed_addr constant [14 x i8] c"link_enc_regs\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 249, i32 47 }
@___asan_gen_.112 = private unnamed_addr constant [18 x i8] c"link_enc_aux_regs\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 220, i32 51 }
@___asan_gen_.115 = private unnamed_addr constant [18 x i8] c"link_enc_hpd_regs\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 234, i32 51 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 487, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"link_enc_feature\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 657, i32 45 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 970, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 984, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 993, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [9 x i8] c"cs_shift\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 373, i32 42 }
@___asan_gen_.142 = private unnamed_addr constant [8 x i8] c"cs_mask\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 377, i32 41 }
@___asan_gen_.145 = private unnamed_addr constant [8 x i8] c"mi_regs\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 587, i32 45 }
@___asan_gen_.148 = private unnamed_addr constant [10 x i8] c"mi_shifts\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 593, i32 41 }
@___asan_gen_.151 = private unnamed_addr constant [9 x i8] c"mi_masks\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 598, i32 40 }
@___asan_gen_.154 = private unnamed_addr constant [9 x i8] c"ipp_regs\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 182, i32 39 }
@___asan_gen_.157 = private unnamed_addr constant [10 x i8] c"ipp_shift\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 188, i32 35 }
@___asan_gen_.160 = private unnamed_addr constant [9 x i8] c"ipp_mask\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 192, i32 34 }
@___asan_gen_.163 = private unnamed_addr constant [9 x i8] c"xfm_regs\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 201, i32 45 }
@___asan_gen_.166 = private unnamed_addr constant [10 x i8] c"xfm_shift\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 207, i32 41 }
@___asan_gen_.169 = private unnamed_addr constant [9 x i8] c"xfm_mask\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 211, i32 40 }
@___asan_gen_.172 = private unnamed_addr constant [9 x i8] c"opp_regs\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 304, i32 39 }
@___asan_gen_.175 = private unnamed_addr constant [10 x i8] c"opp_shift\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 313, i32 35 }
@___asan_gen_.178 = private unnamed_addr constant [9 x i8] c"opp_mask\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 317, i32 34 }
@___asan_gen_.181 = private unnamed_addr constant [16 x i8] c"aux_engine_regs\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 327, i32 42 }
@___asan_gen_.184 = private unnamed_addr constant [9 x i8] c"aux_mask\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 295, i32 47 }
@___asan_gen_.187 = private unnamed_addr constant [10 x i8] c"aux_shift\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 291, i32 48 }
@___asan_gen_.190 = private unnamed_addr constant [12 x i8] c"i2c_hw_regs\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 739, i32 39 }
@___asan_gen_.193 = private unnamed_addr constant [11 x i8] c"i2c_shifts\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 748, i32 35 }
@___asan_gen_.196 = private unnamed_addr constant [10 x i8] c"i2c_masks\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 752, i32 34 }
@___asan_gen_.199 = private unnamed_addr constant [11 x i8] c"audio_regs\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 341, i32 41 }
@___asan_gen_.202 = private unnamed_addr constant [12 x i8] c"audio_shift\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 351, i32 37 }
@___asan_gen_.205 = private unnamed_addr constant [11 x i8] c"audio_mask\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 355, i32 36 }
@___asan_gen_.208 = private unnamed_addr constant [16 x i8] c"stream_enc_regs\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 265, i32 49 }
@___asan_gen_.211 = private unnamed_addr constant [9 x i8] c"se_shift\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 271, i32 46 }
@___asan_gen_.214 = private unnamed_addr constant [8 x i8] c"se_mask\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 275, i32 45 }
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"hwseq_stoney_reg\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 544, i32 41 }
@___asan_gen_.220 = private unnamed_addr constant [13 x i8] c"hwseq_cz_reg\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 548, i32 41 }
@___asan_gen_.223 = private unnamed_addr constant [12 x i8] c"hwseq_shift\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 552, i32 37 }
@___asan_gen_.226 = private unnamed_addr constant [11 x i8] c"hwseq_mask\00", align 1
@___asan_gen_.227 = private constant [69 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 556, i32 36 }
@___asan_gen_.229 = private unnamed_addr constant [40 x i8] c"switch.table.dce110_link_encoder_create\00", align 1
@llvm.compiler.used = appending global [71 x ptr] [ptr @.str, ptr @bios_regs, ptr @dce110_res_pool_funcs, ptr @clk_src_regs, ptr @.str.1, ptr @.str.2, ptr @dmcu_regs, ptr @dmcu_shift, ptr @dmcu_mask, ptr @.str.3, ptr @abm_regs, ptr @abm_shift, ptr @abm_mask, ptr @.str.4, ptr @dce110_tg_offsets, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @res_create_funcs, ptr @plane_cap, ptr @underlay_plane_cap, ptr @stoney_resource_cap, ptr @carrizo_resource_cap, ptr @panel_cntl_regs, ptr @panel_cntl_shift, ptr @panel_cntl_mask, ptr @link_enc_regs, ptr @link_enc_aux_regs, ptr @link_enc_hpd_regs, ptr @.str.12, ptr @link_enc_feature, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @cs_shift, ptr @cs_mask, ptr @mi_regs, ptr @mi_shifts, ptr @mi_masks, ptr @ipp_regs, ptr @ipp_shift, ptr @ipp_mask, ptr @xfm_regs, ptr @xfm_shift, ptr @xfm_mask, ptr @opp_regs, ptr @opp_shift, ptr @opp_mask, ptr @aux_engine_regs, ptr @aux_mask, ptr @aux_shift, ptr @i2c_hw_regs, ptr @i2c_shifts, ptr @i2c_masks, ptr @audio_regs, ptr @audio_shift, ptr @audio_mask, ptr @stream_enc_regs, ptr @se_shift, ptr @se_mask, ptr @hwseq_stoney_reg, ptr @hwseq_cz_reg, ptr @hwseq_shift, ptr @hwseq_mask, ptr @switch.table.dce110_link_encoder_create], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bios_regs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce110_res_pool_funcs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_src_regs to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmcu_regs to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmcu_shift to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmcu_mask to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abm_regs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abm_shift to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abm_mask to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dce110_tg_offsets to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_create_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plane_cap to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @underlay_plane_cap to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stoney_resource_cap to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @carrizo_resource_cap to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_cntl_regs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_cntl_shift to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_cntl_mask to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_enc_regs to i32), i32 952, i32 1184, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_enc_aux_regs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_enc_hpd_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @link_enc_feature to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 450, i32 576, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_shift to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs_mask to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi_regs to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi_shifts to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mi_masks to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipp_regs to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipp_shift to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipp_mask to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfm_regs to i32), i32 780, i32 992, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfm_shift to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfm_mask to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opp_regs to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opp_shift to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opp_mask to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aux_engine_regs to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aux_mask to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aux_shift to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_hw_regs to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_shifts to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_masks to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_regs to i32), i32 308, i32 384, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_shift to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_mask to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stream_enc_regs to i32), i32 732, i32 896, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @se_shift to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @se_mask to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwseq_stoney_reg to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwseq_cz_reg to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwseq_shift to i32), i32 125, i32 160, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwseq_mask to i32), i32 500, i32 608, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dce110_link_encoder_create to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dce110_resource_build_pipe_hw_param(ptr noundef %pipe_ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pix_clk_params = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 5
  %stream1.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 1
  %0 = ptrtoint ptr %stream1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream1.i, align 4
  %pix_clk_100hz.i = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 5, i32 12
  %2 = ptrtoint ptr %pix_clk_100hz.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pix_clk_100hz.i, align 8
  %4 = ptrtoint ptr %pix_clk_params to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pix_clk_params, align 4
  %encoder_object_id.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 5, i32 3
  %link.i = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %link.i, align 4
  %link_enc.i = getelementptr inbounds %struct.dc_link, ptr %6, i32 0, i32 38
  %7 = ptrtoint ptr %link_enc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %link_enc.i, align 8
  %id.i = getelementptr inbounds %struct.link_encoder, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id.i, align 4
  %11 = ptrtoint ptr %encoder_object_id.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %encoder_object_id.i, align 4
  %signal.i = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 36
  %12 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %signal.i, align 4
  %signal_type.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 5, i32 4
  %14 = ptrtoint ptr %signal_type.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %signal_type.i, align 4
  %tg.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %tg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tg.i, align 8
  %inst.i = getelementptr inbounds %struct.timing_generator, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %inst.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %inst.i, align 4
  %add.i = add i32 %18, 1
  %controller_id.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 5, i32 5
  %19 = ptrtoint ptr %controller_id.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add.i, ptr %controller_id.i, align 4
  %requested_sym_clk.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 5, i32 1
  %20 = ptrtoint ptr %requested_sym_clk.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 162000, ptr %requested_sym_clk.i, align 4
  %flags.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 5, i32 9
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i = load i8, ptr %flags.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %flags.i, align 4
  %display_color_depth.i = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 5, i32 16
  %22 = ptrtoint ptr %display_color_depth.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %display_color_depth.i, align 8
  %color_depth.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 5, i32 6
  %24 = ptrtoint ptr %color_depth.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %color_depth.i, align 4
  %bf.clear6.i = and i8 %bf.load.i, 63
  %bf.set7.i = or i8 %bf.clear6.i, 64
  store i8 %bf.set7.i, ptr %flags.i, align 4
  %pixel_encoding.i = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 5, i32 17
  %25 = ptrtoint ptr %pixel_encoding.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pixel_encoding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp.i = icmp eq i32 %26, 4
  %bf.shl.i = select i1 %cmp.i, i8 8, i8 0
  %bf.clear11.i = and i8 %bf.set7.i, 119
  %bf.set12.i = or i8 %bf.shl.i, %bf.clear11.i
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %bf.set12.i, ptr %flags.i, align 4
  %28 = ptrtoint ptr %pixel_encoding.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pixel_encoding.i, align 4
  %pixel_encoding15.i = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 3, i32 5, i32 8
  %30 = ptrtoint ptr %pixel_encoding15.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %pixel_encoding15.i, align 4
  %31 = load i32, ptr %pixel_encoding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp18.i = icmp eq i32 %31, 2
  br i1 %cmp18.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %color_depth.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %color_depth.i, align 4
  %33 = ptrtoint ptr %pixel_encoding.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr.i = load i32, ptr %pixel_encoding.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %34 = phi i32 [ %.pr.i, %if.then.i ], [ %31, %entry.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp23.i = icmp eq i32 %34, 4
  br i1 %cmp23.i, label %if.then25.i, label %if.end.i.if.end28.i_crit_edge

if.end.i.if.end28.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.then25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %div57.i = lshr i32 %3, 1
  %35 = ptrtoint ptr %pix_clk_params to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div57.i, ptr %pix_clk_params, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then25.i, %if.end.i.if.end28.i_crit_edge
  %timing_3d_format.i = getelementptr inbounds %struct.dc_stream_state, ptr %1, i32 0, i32 5, i32 15
  %36 = ptrtoint ptr %timing_3d_format.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %timing_3d_format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %37)
  %cmp30.i = icmp eq i32 %37, 5
  br i1 %cmp30.i, label %if.then32.i, label %if.end28.i.get_pixel_clock_parameters.exit_crit_edge

if.end28.i.get_pixel_clock_parameters.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_pixel_clock_parameters.exit

if.then32.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %pix_clk_params to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pix_clk_params, align 4
  %mul.i = shl i32 %39, 1
  store i32 %mul.i, ptr %pix_clk_params, align 4
  br label %get_pixel_clock_parameters.exit

get_pixel_clock_parameters.exit:                  ; preds = %if.then32.i, %if.end28.i.get_pixel_clock_parameters.exit_crit_edge
  %clock_source = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 5
  %40 = ptrtoint ptr %clock_source to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clock_source, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %get_pix_clk_dividers = getelementptr inbounds %struct.clock_source_funcs, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %get_pix_clk_dividers to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %get_pix_clk_dividers, align 4
  %pll_settings = getelementptr inbounds %struct.pipe_ctx, ptr %pipe_ctx, i32 0, i32 6
  %call = tail call i32 %45(ptr noundef %41, ptr noundef %pix_clk_params, ptr noundef %pll_settings) #8
  %46 = ptrtoint ptr %stream1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %stream1.i, align 4
  %bit_depth_params = getelementptr inbounds %struct.dc_stream_state, ptr %47, i32 0, i32 33
  tail call void @resource_build_bit_depth_reduction_params(ptr noundef %47, ptr noundef %bit_depth_params) #8
  %48 = ptrtoint ptr %stream1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %stream1.i, align 4
  %pixel_encoding = getelementptr inbounds %struct.dc_stream_state, ptr %49, i32 0, i32 5, i32 17
  %50 = ptrtoint ptr %pixel_encoding to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pixel_encoding, align 4
  %clamping = getelementptr inbounds %struct.dc_stream_state, ptr %49, i32 0, i32 34
  %52 = ptrtoint ptr %clamping to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %clamping, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @resource_build_bit_depth_reduction_params(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dce110_find_first_free_match_stream_enc_for_link(ptr nocapture noundef readonly %res_ctx, ptr nocapture noundef readonly %pool, ptr nocapture noundef readonly %stream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stream_enc_count = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 21
  %0 = ptrtoint ptr %stream_enc_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream_enc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp30.not = icmp eq i32 %1, 0
  br i1 %cmp30.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %link1 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 1
  %2 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link1, align 4
  %link_enc = getelementptr inbounds %struct.dc_link, ptr %3, i32 0, i32 38
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %j.033 = phi i32 [ -1, %for.body.lr.ph ], [ %j.1, %for.inc.for.body_crit_edge ]
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.resource_context, ptr %res_ctx, i32 0, i32 1, i32 %i.031
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx2 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 7, i32 %i.031
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %id = getelementptr inbounds %struct.stream_encoder, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %10 = ptrtoint ptr %link_enc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link_enc, align 8
  %preferred_engine = getelementptr inbounds %struct.link_encoder, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %preferred_engine to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %preferred_engine, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp6 = icmp eq i32 %9, %13
  br i1 %cmp6, label %if.then.cleanup_crit_edge, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %if.then.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %j.1 = phi i32 [ %j.033, %for.body.for.inc_crit_edge ], [ %i.031, %if.then.for.inc_crit_edge ], [ %j.033, %land.lhs.true.for.inc_crit_edge ]
  %inc = add nuw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.1)
  %cmp11 = icmp sgt i32 %j.1, -1
  br i1 %cmp11, label %if.then12, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx14 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 7, i32 %j.1
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %for.end.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %15, %if.then12 ], [ null, %for.end.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ %7, %if.then.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dce110_create_resource_pool(i8 noundef zeroext %num_virtual_links, ptr noundef %dc, [9 x i32] %asic_id.coerce) local_unnamed_addr #0 align 64 {
entry:
  %clks.i = alloca %struct.dm_pp_clock_levels, align 4
  %tmp.i = alloca %struct.bw_fixed, align 8
  %tmp2.i = alloca %struct.bw_fixed, align 8
  %tmp8.i = alloca %struct.bw_fixed, align 8
  %tmp15.i = alloca %struct.bw_fixed, align 8
  %tmp23.i = alloca %struct.bw_fixed, align 8
  %tmp31.i = alloca %struct.bw_fixed, align 8
  %tmp39.i = alloca %struct.bw_fixed, align 8
  %tmp47.i = alloca %struct.bw_fixed, align 8
  %tmp54.i = alloca %struct.bw_fixed, align 8
  %tmp61.i = alloca %struct.bw_fixed, align 8
  %tmp67.i = alloca %struct.bw_fixed, align 8
  %tmp74.i = alloca %struct.bw_fixed, align 8
  %tmp80.i = alloca %struct.bw_fixed, align 8
  %tmp88.i = alloca %struct.bw_fixed, align 8
  %init_data.i = alloca %struct.irq_service_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 516) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctx1.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %1 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx1.i, align 8
  %dc_bios.i = getelementptr inbounds %struct.dc_context, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dc_bios.i, align 4
  %regs.i = getelementptr inbounds %struct.dc_bios, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @bios_regs, ptr %regs.i, align 4
  %hw_internal_rev.i.i = getelementptr inbounds %struct.dc_context, ptr %2, i32 0, i32 5, i32 3
  %6 = ptrtoint ptr %hw_internal_rev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_internal_rev.i.i, align 4
  %8 = add i32 %7, -97
  call void @__sanitizer_cov_trace_const_cmp4(i32 158, i32 %8)
  %9 = icmp ult i32 %8, 158
  %retval.0.i.i = select i1 %9, ptr @stoney_resource_cap, ptr @carrizo_resource_cap
  %res_cap.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 41
  %10 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i.i, ptr %res_cap.i, align 4
  %funcs.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 40
  %11 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @dce110_res_pool_funcs, ptr %funcs.i, align 8
  %12 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %retval.0.i.i, align 4
  %pipe_count.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 19
  %14 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %pipe_count.i, align 4
  %underlay_pipe_index.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 20
  %15 = ptrtoint ptr %underlay_pipe_index.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %underlay_pipe_index.i, align 8
  %timing_generator_count.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 26
  %16 = ptrtoint ptr %timing_generator_count.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %timing_generator_count.i, align 8
  %max_downscale_ratio.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 7
  %17 = ptrtoint ptr %max_downscale_ratio.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 150, ptr %max_downscale_ratio.i, align 4
  %i2c_speed_in_khz.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 8
  %18 = ptrtoint ptr %i2c_speed_in_khz.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 40, ptr %i2c_speed_in_khz.i, align 4
  %i2c_speed_in_khz_hdcp.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 9
  %19 = ptrtoint ptr %i2c_speed_in_khz_hdcp.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 40, ptr %i2c_speed_in_khz_hdcp.i, align 4
  %max_cursor_size.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 11
  %20 = ptrtoint ptr %max_cursor_size.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 128, ptr %max_cursor_size.i, align 4
  %min_horizontal_blanking_period.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 13
  %21 = ptrtoint ptr %min_horizontal_blanking_period.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 80, ptr %min_horizontal_blanking_period.i, align 4
  %is_apu.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 17
  %22 = ptrtoint ptr %is_apu.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %is_apu.i, align 2
  %extended_aux_timeout_support.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 23
  %23 = ptrtoint ptr %extended_aux_timeout_support.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %extended_aux_timeout_support.i, align 4
  %24 = ptrtoint ptr %dc_bios.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dc_bios.i, align 4
  %fw_info_valid.i = getelementptr inbounds %struct.dc_bios, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %fw_info_valid.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fw_info_valid.i, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.lhs.true.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %external_clock_source_frequency_for_dp.i = getelementptr inbounds %struct.dc_bios, ptr %25, i32 0, i32 7, i32 3
  %28 = ptrtoint ptr %external_clock_source_frequency_for_dp.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %external_clock_source_frequency_for_dp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.not.i = icmp eq i32 %29, 0
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 184) #11
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.dce110_clock_source_create.exit.i_crit_edge, label %if.end.i.i

if.then.i.dce110_clock_source_create.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dce110_clock_source_create.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %2, ptr noundef %25, i32 noundef 4, ptr noundef null, ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #8
  br i1 %call1.i.i, label %if.then2.i.i, label %if.end7.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dp_clk_src4.i.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %dp_clk_src4.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %dp_clk_src4.i.i, align 4
  br label %dce110_clock_source_create.exit.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce110_clock_source_create, i32 noundef 791) #8
  tail call void @kgdb_breakpoint() #8
  br label %dce110_clock_source_create.exit.i

dce110_clock_source_create.exit.i:                ; preds = %if.end7.i.i, %if.then2.i.i, %if.then.i.dce110_clock_source_create.exit.i_crit_edge
  %retval.0.i17.i = phi ptr [ %call7.i.i.i.i, %if.then2.i.i ], [ null, %if.end7.i.i ], [ null, %if.then.i.dce110_clock_source_create.exit.i_crit_edge ]
  %dp_clock_source.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 29
  %32 = ptrtoint ptr %dp_clock_source.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %retval.0.i17.i, ptr %dp_clock_source.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i18.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 184) #11
  %tobool.not.i19.i = icmp eq ptr %call7.i.i.i18.i, null
  br i1 %tobool.not.i19.i, label %dce110_clock_source_create.exit.i.dce110_clock_source_create.exit26.i_crit_edge, label %if.end.i21.i

dce110_clock_source_create.exit.i.dce110_clock_source_create.exit26.i_crit_edge: ; preds = %dce110_clock_source_create.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dce110_clock_source_create.exit26.i

if.end.i21.i:                                     ; preds = %dce110_clock_source_create.exit.i
  %call1.i20.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i18.i, ptr noundef %2, ptr noundef %25, i32 noundef 1, ptr noundef nonnull @clk_src_regs, ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #8
  br i1 %call1.i20.i, label %if.then2.i23.i, label %if.end7.i24.i

if.then2.i23.i:                                   ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #10
  %dp_clk_src4.i22.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i18.i, i32 0, i32 3
  %34 = ptrtoint ptr %dp_clk_src4.i22.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %dp_clk_src4.i22.i, align 4
  br label %dce110_clock_source_create.exit26.i

if.end7.i24.i:                                    ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i18.i) #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce110_clock_source_create, i32 noundef 791) #8
  tail call void @kgdb_breakpoint() #8
  br label %dce110_clock_source_create.exit26.i

dce110_clock_source_create.exit26.i:              ; preds = %if.end7.i24.i, %if.then2.i23.i, %dce110_clock_source_create.exit.i.dce110_clock_source_create.exit26.i_crit_edge
  %retval.0.i25.i = phi ptr [ %call7.i.i.i18.i, %if.then2.i23.i ], [ null, %if.end7.i24.i ], [ null, %dce110_clock_source_create.exit.i.dce110_clock_source_create.exit26.i_crit_edge ]
  %clock_sources.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30
  %35 = ptrtoint ptr %clock_sources.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %retval.0.i25.i, ptr %clock_sources.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i27.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 184) #11
  %tobool.not.i28.i = icmp eq ptr %call7.i.i.i27.i, null
  br i1 %tobool.not.i28.i, label %dce110_clock_source_create.exit26.i.dce110_clock_source_create.exit35.i_crit_edge, label %if.end.i30.i

dce110_clock_source_create.exit26.i.dce110_clock_source_create.exit35.i_crit_edge: ; preds = %dce110_clock_source_create.exit26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dce110_clock_source_create.exit35.i

if.end.i30.i:                                     ; preds = %dce110_clock_source_create.exit26.i
  %call1.i29.i = tail call zeroext i1 @dce110_clk_src_construct(ptr noundef nonnull %call7.i.i.i27.i, ptr noundef %2, ptr noundef %25, i32 noundef 2, ptr noundef getelementptr inbounds ([3 x %struct.dce110_clk_src_regs], ptr @clk_src_regs, i32 0, i32 1), ptr noundef nonnull @cs_shift, ptr noundef nonnull @cs_mask) #8
  br i1 %call1.i29.i, label %if.then2.i32.i, label %if.end7.i33.i

if.then2.i32.i:                                   ; preds = %if.end.i30.i
  call void @__sanitizer_cov_trace_pc() #10
  %dp_clk_src4.i31.i = getelementptr inbounds %struct.clock_source, ptr %call7.i.i.i27.i, i32 0, i32 3
  %37 = ptrtoint ptr %dp_clk_src4.i31.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %dp_clk_src4.i31.i, align 4
  br label %dce110_clock_source_create.exit35.i

if.end7.i33.i:                                    ; preds = %if.end.i30.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i27.i) #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce110_clock_source_create, i32 noundef 791) #8
  tail call void @kgdb_breakpoint() #8
  br label %dce110_clock_source_create.exit35.i

dce110_clock_source_create.exit35.i:              ; preds = %if.end7.i33.i, %if.then2.i32.i, %dce110_clock_source_create.exit26.i.dce110_clock_source_create.exit35.i_crit_edge
  %retval.0.i34.i = phi ptr [ %call7.i.i.i27.i, %if.then2.i32.i ], [ null, %if.end7.i33.i ], [ null, %dce110_clock_source_create.exit26.i.dce110_clock_source_create.exit35.i_crit_edge ]
  %arrayidx28.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 1
  %38 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %retval.0.i34.i, ptr %arrayidx28.i, align 4
  %clk_src_count.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 31
  %39 = ptrtoint ptr %clk_src_count.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %clk_src_count.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %dce110_clock_source_create.exit35.i, %land.lhs.true.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %dp_clock_source31.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 29
  %40 = ptrtoint ptr %dp_clock_source31.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dp_clock_source31.i, align 4
  %cmp32.i = icmp eq ptr %41, null
  br i1 %cmp32.i, label %if.then33.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %clk_src_count36.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 31
  %42 = ptrtoint ptr %clk_src_count36.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %clk_src_count36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp3787.not.i = icmp eq i32 %43, 0
  br i1 %cmp3787.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.then33.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce110_resource_construct, i32 noundef 1400) #8
  tail call void @kgdb_breakpoint() #8
  br label %if.end3

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.088.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %43
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.088.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx40.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 30, i32 %i.088.i
  %44 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx40.i, align 4
  %cmp41.i = icmp eq ptr %45, null
  br i1 %cmp41.i, label %if.then42.i, label %for.cond.i

if.then42.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce110_resource_construct, i32 noundef 1407) #8
  tail call void @kgdb_breakpoint() #8
  br label %if.end3

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %call47.i = tail call ptr @dce_dmcu_create(ptr noundef %2, ptr noundef nonnull @dmcu_regs, ptr noundef nonnull @dmcu_shift, ptr noundef nonnull @dmcu_mask) #8
  %dmcu.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 38
  %46 = ptrtoint ptr %dmcu.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call47.i, ptr %dmcu.i, align 8
  %cmp51.i = icmp eq ptr %call47.i, null
  br i1 %cmp51.i, label %if.then52.i, label %if.end56.i

if.then52.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce110_resource_construct, i32 noundef 1418) #8
  tail call void @kgdb_breakpoint() #8
  br label %if.end3

if.end56.i:                                       ; preds = %for.end.i
  %call57.i = tail call ptr @dce_abm_create(ptr noundef %2, ptr noundef nonnull @abm_regs, ptr noundef nonnull @abm_shift, ptr noundef nonnull @abm_mask) #8
  %abm.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 37
  %47 = ptrtoint ptr %abm.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call57.i, ptr %abm.i, align 4
  %cmp61.i = icmp eq ptr %call57.i, null
  br i1 %cmp61.i, label %if.then62.i, label %if.end66.i

if.then62.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce110_resource_construct, i32 noundef 1428) #8
  tail call void @kgdb_breakpoint() #8
  br label %if.end3

if.end66.i:                                       ; preds = %if.end56.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %init_data.i) #8
  %48 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctx1.i, align 8
  %50 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %init_data.i, align 4
  %call69.i = call ptr @dal_irq_service_dce110_create(ptr noundef nonnull %init_data.i) #8
  %irqs.i = getelementptr inbounds %struct.resource_pool, ptr %call7.i.i, i32 0, i32 36
  %51 = ptrtoint ptr %irqs.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call69.i, ptr %irqs.i, align 8
  %tobool73.not.i = icmp eq ptr %call69.i, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %init_data.i) #8
  br i1 %tobool73.not.i, label %if.end66.i.if.end3_crit_edge, label %for.cond76.preheader.i

if.end66.i.if.end3_crit_edge:                     ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

for.cond76.preheader.i:                           ; preds = %if.end66.i
  %52 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pipe_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp7989.not.i = icmp eq i32 %53, 0
  br i1 %cmp7989.not.i, label %for.cond76.preheader.i.for.cond145.preheader.i_crit_edge, label %for.cond76.preheader.i.for.body80.i_crit_edge

for.cond76.preheader.i.for.body80.i_crit_edge:    ; preds = %for.cond76.preheader.i
  br label %for.body80.i

for.cond76.preheader.i.for.cond145.preheader.i_crit_edge: ; preds = %for.cond76.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond145.preheader.i

for.cond145.preheader.i:                          ; preds = %for.inc142.i.for.cond145.preheader.i_crit_edge, %for.cond76.preheader.i.for.cond145.preheader.i_crit_edge
  %54 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %res_cap.i, align 4
  %num_ddc91.i = getelementptr inbounds %struct.resource_caps, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %num_ddc91.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_ddc91.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp14892.not.i = icmp eq i32 %57, 0
  br i1 %cmp14892.not.i, label %for.cond145.preheader.i.for.end178.i_crit_edge, label %for.cond145.preheader.i.for.body149.i_crit_edge

for.cond145.preheader.i.for.body149.i_crit_edge:  ; preds = %for.cond145.preheader.i
  br label %for.body149.i

for.cond145.preheader.i.for.end178.i_crit_edge:   ; preds = %for.cond145.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end178.i

for.body80.i:                                     ; preds = %for.inc142.i.for.body80.i_crit_edge, %for.cond76.preheader.i.for.body80.i_crit_edge
  %i.190.i = phi i32 [ %inc143.i, %for.inc142.i.for.body80.i_crit_edge ], [ 0, %for.cond76.preheader.i.for.body80.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %58 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i36.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %58, i32 noundef 3520, i32 noundef 76) #11
  %tobool.not.i37.i = icmp eq ptr %call7.i.i.i36.i, null
  br i1 %tobool.not.i37.i, label %do.body90.i, label %if.end93.i

do.body90.i:                                      ; preds = %for.body80.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx8462.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 6, i32 %i.190.i
  %59 = ptrtoint ptr %arrayidx8462.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %arrayidx8462.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce110_resource_construct, i32 noundef 1444) #8
  call void @kgdb_breakpoint() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #8
  br label %if.end3

if.end93.i:                                       ; preds = %for.body80.i
  %arrayidx81.i = getelementptr [6 x %struct.dce110_timing_generator_offsets], ptr @dce110_tg_offsets, i32 0, i32 %i.190.i
  call void @dce110_timing_generator_construct(ptr noundef nonnull %call7.i.i.i36.i, ptr noundef %2, i32 noundef %i.190.i, ptr noundef %arrayidx81.i) #8
  %arrayidx84.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 6, i32 %i.190.i
  %60 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call7.i.i.i36.i, ptr %arrayidx84.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %61 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i39.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 3520, i32 noundef 272) #11
  %tobool.not.i40.i = icmp eq ptr %call7.i.i.i39.i, null
  br i1 %tobool.not.i40.i, label %do.body102.i, label %if.end105.i

do.body102.i:                                     ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce110_mem_input_create, i32 noundef 612) #8
  call void @kgdb_breakpoint() #8
  %arrayidx9663.i = getelementptr [6 x ptr], ptr %call7.i.i, i32 0, i32 %i.190.i
  %62 = ptrtoint ptr %arrayidx9663.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %arrayidx9663.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce110_resource_construct, i32 noundef 1451) #8
  call void @kgdb_breakpoint() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #8
  br label %if.end3

if.end105.i:                                      ; preds = %if.end93.i
  %arrayidx.i.i = getelementptr [3 x %struct.dce_mem_input_registers], ptr @mi_regs, i32 0, i32 %i.190.i
  call void @dce_mem_input_construct(ptr noundef nonnull %call7.i.i.i39.i, ptr noundef %2, i32 noundef %i.190.i, ptr noundef %arrayidx.i.i, ptr noundef nonnull @mi_shifts, ptr noundef nonnull @mi_masks) #8
  %wa.i.i = getelementptr inbounds %struct.dce_mem_input, ptr %call7.i.i.i39.i, i32 0, i32 4
  %63 = ptrtoint ptr %wa.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 3, ptr %wa.i.i, align 4
  %arrayidx96.i = getelementptr [6 x ptr], ptr %call7.i.i, i32 0, i32 %i.190.i
  %64 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call7.i.i.i39.i, ptr %arrayidx96.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %65 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i42.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3520, i32 noundef 24) #11
  %tobool.not.i43.i = icmp eq ptr %call7.i.i.i42.i, null
  br i1 %tobool.not.i43.i, label %do.body114.i, label %if.end117.i

do.body114.i:                                     ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce110_ipp_create, i32 noundef 648) #8
  call void @kgdb_breakpoint() #8
  %arrayidx10864.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 2, i32 %i.190.i
  %66 = ptrtoint ptr %arrayidx10864.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %arrayidx10864.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce110_resource_construct, i32 noundef 1459) #8
  call void @kgdb_breakpoint() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %if.end3

if.end117.i:                                      ; preds = %if.end105.i
  %arrayidx.i45.i = getelementptr [3 x %struct.dce_ipp_registers], ptr @ipp_regs, i32 0, i32 %i.190.i
  call void @dce_ipp_construct(ptr noundef nonnull %call7.i.i.i42.i, ptr noundef %2, i32 noundef %i.190.i, ptr noundef %arrayidx.i45.i, ptr noundef nonnull @ipp_shift, ptr noundef nonnull @ipp_mask) #8
  %arrayidx108.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 2, i32 %i.190.i
  %67 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call7.i.i.i42.i, ptr %arrayidx108.i, align 4
  %call1.i.i.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 19280, i32 noundef 3520, i32 noundef 3) #12
  %tobool.not.i47.i = icmp eq ptr %call1.i.i.i.i.i, null
  br i1 %tobool.not.i47.i, label %do.body126.i, label %if.end129.i

do.body126.i:                                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx12065.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 3, i32 %i.190.i
  %68 = ptrtoint ptr %arrayidx12065.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %arrayidx12065.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce110_resource_construct, i32 noundef 1467) #8
  call void @kgdb_breakpoint() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #8
  br label %if.end3

if.end129.i:                                      ; preds = %if.end117.i
  %arrayidx.i48.i = getelementptr [3 x %struct.dce_transform_registers], ptr @xfm_regs, i32 0, i32 %i.190.i
  call void @dce_transform_construct(ptr noundef nonnull %call1.i.i.i.i.i, ptr noundef %2, i32 noundef %i.190.i, ptr noundef %arrayidx.i48.i, ptr noundef nonnull @xfm_shift, ptr noundef nonnull @xfm_mask) #8
  %arrayidx120.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 3, i32 %i.190.i
  %69 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call1.i.i.i.i.i, ptr %arrayidx120.i, align 4
  %call1.i.i.i.i50.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 19264, i32 noundef 3520, i32 noundef 3) #12
  %tobool.not.i51.i = icmp eq ptr %call1.i.i.i.i50.i, null
  br i1 %tobool.not.i51.i, label %do.body138.i, label %for.inc142.i

do.body138.i:                                     ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx13266.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 5, i32 %i.190.i
  %70 = ptrtoint ptr %arrayidx13266.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %arrayidx13266.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce110_resource_construct, i32 noundef 1475) #8
  call void @kgdb_breakpoint() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #8
  br label %if.end3

for.inc142.i:                                     ; preds = %if.end129.i
  %arrayidx.i52.i = getelementptr [6 x %struct.dce_opp_registers], ptr @opp_regs, i32 0, i32 %i.190.i
  call void @dce110_opp_construct(ptr noundef nonnull %call1.i.i.i.i50.i, ptr noundef %2, i32 noundef %i.190.i, ptr noundef %arrayidx.i52.i, ptr noundef nonnull @opp_shift, ptr noundef nonnull @opp_mask) #8
  %arrayidx132.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 5, i32 %i.190.i
  %71 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call1.i.i.i.i50.i, ptr %arrayidx132.i, align 4
  %inc143.i = add nuw i32 %i.190.i, 1
  %72 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pipe_count.i, align 4
  %cmp79.i = icmp ult i32 %inc143.i, %73
  br i1 %cmp79.i, label %for.inc142.i.for.body80.i_crit_edge, label %for.inc142.i.for.cond145.preheader.i_crit_edge

for.inc142.i.for.cond145.preheader.i_crit_edge:   ; preds = %for.inc142.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond145.preheader.i

for.inc142.i.for.body80.i_crit_edge:              ; preds = %for.inc142.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body80.i

for.body149.i:                                    ; preds = %if.end173.i.for.body149.i_crit_edge, %for.cond145.preheader.i.for.body149.i_crit_edge
  %i.293.i = phi i32 [ %inc177.i, %if.end173.i.for.body149.i_crit_edge ], [ 0, %for.cond145.preheader.i.for.body149.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %74 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i54.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %74, i32 noundef 3520, i32 noundef 76) #11
  %tobool.not.i55.i = icmp eq ptr %call7.i.i.i54.i, null
  br i1 %tobool.not.i55.i, label %do.body158.i, label %if.end161.i

do.body158.i:                                     ; preds = %for.body149.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx15267.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 11, i32 %i.293.i
  %75 = ptrtoint ptr %arrayidx15267.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %arrayidx15267.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce110_resource_construct, i32 noundef 1485) #8
  call void @kgdb_breakpoint() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #8
  br label %if.end3

if.end161.i:                                      ; preds = %for.body149.i
  %arrayidx.i56.i = getelementptr [6 x %struct.dce110_aux_registers], ptr @aux_engine_regs, i32 0, i32 %i.293.i
  %76 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %2, align 8
  %extended_aux_timeout_support.i.i = getelementptr inbounds %struct.dc, ptr %77, i32 0, i32 2, i32 23
  %78 = ptrtoint ptr %extended_aux_timeout_support.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %extended_aux_timeout_support.i.i, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool1.i.i = icmp ne i8 %79, 0
  %call2.i.i = call ptr @dce110_aux_engine_construct(ptr noundef nonnull %call7.i.i.i54.i, ptr noundef %2, i32 noundef %i.293.i, i32 noundef 2400, ptr noundef %arrayidx.i56.i, ptr noundef nonnull @aux_mask, ptr noundef nonnull @aux_shift, i1 noundef zeroext %tobool1.i.i) #8
  %arrayidx152.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 11, i32 %i.293.i
  %80 = ptrtoint ptr %arrayidx152.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call7.i.i.i54.i, ptr %arrayidx152.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %81 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i58.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %81, i32 noundef 3520, i32 noundef 60) #11
  %tobool.not.i59.i = icmp eq ptr %call7.i.i.i58.i, null
  br i1 %tobool.not.i59.i, label %do.body170.i, label %if.end173.i

do.body170.i:                                     ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx16468.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 12, i32 %i.293.i
  %82 = ptrtoint ptr %arrayidx16468.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %arrayidx16468.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce110_resource_construct, i32 noundef 1492) #8
  call void @kgdb_breakpoint() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #8
  br label %if.end3

if.end173.i:                                      ; preds = %if.end161.i
  %arrayidx.i60.i = getelementptr [6 x %struct.dce_i2c_registers], ptr @i2c_hw_regs, i32 0, i32 %i.293.i
  call void @dce100_i2c_hw_construct(ptr noundef nonnull %call7.i.i.i58.i, ptr noundef %2, i32 noundef %i.293.i, ptr noundef %arrayidx.i60.i, ptr noundef nonnull @i2c_shifts, ptr noundef nonnull @i2c_masks) #8
  %arrayidx164.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 12, i32 %i.293.i
  %83 = ptrtoint ptr %arrayidx164.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call7.i.i.i58.i, ptr %arrayidx164.i, align 4
  %arrayidx175.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 13, i32 %i.293.i
  %84 = ptrtoint ptr %arrayidx175.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %arrayidx175.i, align 4
  %inc177.i = add nuw i32 %i.293.i, 1
  %85 = ptrtoint ptr %res_cap.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %res_cap.i, align 4
  %num_ddc.i = getelementptr inbounds %struct.resource_caps, ptr %86, i32 0, i32 7
  %87 = ptrtoint ptr %num_ddc.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %num_ddc.i, align 4
  %cmp148.i = icmp ult i32 %inc177.i, %88
  br i1 %cmp148.i, label %if.end173.i.for.body149.i_crit_edge, label %if.end173.i.for.end178.i_crit_edge

if.end173.i.for.end178.i_crit_edge:               ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end178.i

if.end173.i.for.body149.i_crit_edge:              ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body149.i

for.end178.i:                                     ; preds = %if.end173.i.for.end178.i_crit_edge, %for.cond145.preheader.i.for.end178.i_crit_edge
  %fbc_support.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 4, i32 2
  %89 = ptrtoint ptr %fbc_support.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %fbc_support.i, align 2, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool179.not.i = icmp eq i8 %90, 0
  br i1 %tobool179.not.i, label %for.end178.i.if.end182.i_crit_edge, label %if.then180.i

for.end178.i.if.end182.i_crit_edge:               ; preds = %for.end178.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end182.i

if.then180.i:                                     ; preds = %for.end178.i
  call void @__sanitizer_cov_trace_pc() #10
  %call181.i = call ptr @dce110_compressor_create(ptr noundef %2) #8
  %fbc_compressor.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 21
  %91 = ptrtoint ptr %fbc_compressor.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call181.i, ptr %fbc_compressor.i, align 4
  br label %if.end182.i

if.end182.i:                                      ; preds = %if.then180.i, %for.end178.i.if.end182.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %92 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %92, i32 noundef 3520, i32 noundef 76) #11
  %call1.i.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 19280, i32 noundef 3520, i32 noundef 3) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %93 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i55.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %93, i32 noundef 3520, i32 noundef 272) #11
  %call1.i.i.i56.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 19264, i32 noundef 3520, i32 noundef 3) #12
  %tobool.not.i11 = icmp eq ptr %call7.i.i.i, null
  %tobool4.not.i = icmp eq ptr %call1.i.i.i.i, null
  %or.cond.i = select i1 %tobool.not.i11, i1 true, i1 %tobool4.not.i
  %tobool6.not.i = icmp eq ptr %call7.i.i55.i, null
  %or.cond53.i = select i1 %or.cond.i, i1 true, i1 %tobool6.not.i
  %tobool8.not.i = icmp eq ptr %call1.i.i.i56.i, null
  %or.cond54.i = select i1 %or.cond53.i, i1 true, i1 %tobool8.not.i
  br i1 %or.cond54.i, label %underlay_create.exit, label %if.end186.i

underlay_create.exit:                             ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef %call7.i.i.i) #8
  call void @kfree(ptr noundef %call1.i.i.i.i) #8
  call void @kfree(ptr noundef %call7.i.i55.i) #8
  call void @kfree(ptr noundef %call1.i.i.i56.i) #8
  br label %if.end3

if.end186.i:                                      ; preds = %if.end182.i
  call void @dce110_opp_v_construct(ptr noundef nonnull %call1.i.i.i56.i, ptr noundef %2) #8
  call void @dce110_timing_generator_v_construct(ptr noundef nonnull %call7.i.i.i, ptr noundef %2) #8
  call void @dce110_mem_input_v_construct(ptr noundef nonnull %call7.i.i55.i, ptr noundef %2) #8
  %call9.i = call zeroext i1 @dce110_transform_v_construct(ptr noundef nonnull %call1.i.i.i.i, ptr noundef %2) #8
  %94 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pipe_count.i, align 4
  %arrayidx.i14 = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 5, i32 %95
  %96 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call1.i.i.i56.i, ptr %arrayidx.i14, align 4
  %97 = load i32, ptr %pipe_count.i, align 4
  %arrayidx12.i15 = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 6, i32 %97
  %98 = ptrtoint ptr %arrayidx12.i15 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call7.i.i.i, ptr %arrayidx12.i15, align 4
  %99 = load i32, ptr %pipe_count.i, align 4
  %arrayidx15.i = getelementptr [6 x ptr], ptr %call7.i.i, i32 0, i32 %99
  %100 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call7.i.i55.i, ptr %arrayidx15.i, align 4
  %101 = load i32, ptr %pipe_count.i, align 4
  %arrayidx18.i = getelementptr %struct.resource_pool, ptr %call7.i.i, i32 0, i32 3, i32 %101
  %102 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call1.i.i.i.i, ptr %arrayidx18.i, align 4
  %103 = load i32, ptr %pipe_count.i, align 4
  %inc.i16 = add i32 %103, 1
  store i32 %inc.i16, ptr %pipe_count.i, align 4
  %104 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %2, align 8
  %max_slave_planes.i = getelementptr inbounds %struct.dc, ptr %105, i32 0, i32 2, i32 3
  %106 = ptrtoint ptr %max_slave_planes.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1, ptr %max_slave_planes.i, align 4
  %107 = load ptr, ptr %2, align 8
  %max_slave_yuv_planes.i = getelementptr inbounds %struct.dc, ptr %107, i32 0, i32 2, i32 4
  %108 = ptrtoint ptr %max_slave_yuv_planes.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1, ptr %max_slave_yuv_planes.i, align 4
  %109 = load ptr, ptr %2, align 8
  %max_slave_rgb_planes.i = getelementptr inbounds %struct.dc, ptr %109, i32 0, i32 2, i32 5
  %110 = ptrtoint ptr %max_slave_rgb_planes.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %max_slave_rgb_planes.i, align 4
  %conv.i = zext i8 %num_virtual_links to i32
  %call188.i = call zeroext i1 @resource_construct(i32 noundef %conv.i, ptr noundef %dc, ptr noundef %call7.i.i, ptr noundef nonnull @res_create_funcs) #8
  br i1 %call188.i, label %if.end190.i, label %if.end186.i.if.end3_crit_edge

if.end186.i.if.end3_crit_edge:                    ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.end190.i:                                      ; preds = %if.end186.i
  call void @dce110_hw_sequencer_construct(ptr noundef %dc) #8
  %111 = ptrtoint ptr %pipe_count.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pipe_count.i, align 4
  %max_planes.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 2, i32 6
  %113 = ptrtoint ptr %max_planes.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %max_planes.i, align 4
  %114 = ptrtoint ptr %underlay_pipe_index.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %underlay_pipe_index.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp19794.not.i = icmp eq i32 %115, 0
  br i1 %cmp19794.not.i, label %if.end190.i.dce110_resource_construct.exit.thread_crit_edge, label %if.end190.i.for.body199.i_crit_edge

if.end190.i.for.body199.i_crit_edge:              ; preds = %if.end190.i
  br label %for.body199.i

if.end190.i.dce110_resource_construct.exit.thread_crit_edge: ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dce110_resource_construct.exit.thread

for.body199.i:                                    ; preds = %for.body199.i.for.body199.i_crit_edge, %if.end190.i.for.body199.i_crit_edge
  %i.395.i = phi i32 [ %inc203.i, %for.body199.i.for.body199.i_crit_edge ], [ 0, %if.end190.i.for.body199.i_crit_edge ]
  %arrayidx201.i = getelementptr %struct.dc, ptr %dc, i32 0, i32 2, i32 30, i32 %i.395.i
  %116 = call ptr @memcpy(ptr %arrayidx201.i, ptr @plane_cap, i32 44)
  %inc203.i = add nuw i32 %i.395.i, 1
  %exitcond.not = icmp eq i32 %inc203.i, %115
  br i1 %exitcond.not, label %for.body199.i.dce110_resource_construct.exit.thread_crit_edge, label %for.body199.i.for.body199.i_crit_edge

for.body199.i.for.body199.i_crit_edge:            ; preds = %for.body199.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body199.i

for.body199.i.dce110_resource_construct.exit.thread_crit_edge: ; preds = %for.body199.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dce110_resource_construct.exit.thread

dce110_resource_construct.exit.thread:            ; preds = %for.body199.i.dce110_resource_construct.exit.thread_crit_edge, %if.end190.i.dce110_resource_construct.exit.thread_crit_edge
  %arrayidx209.i = getelementptr %struct.dc, ptr %dc, i32 0, i32 2, i32 30, i32 %115
  %117 = call ptr @memcpy(ptr %arrayidx209.i, ptr @underlay_plane_cap, i32 44)
  %bw_dceip.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 15
  %118 = ptrtoint ptr %bw_dceip.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %bw_dceip.i, align 4
  %bw_vbios.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 16
  %120 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bw_vbios.i, align 8
  %122 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ctx1.i, align 8
  %asic_id211.i = getelementptr inbounds %struct.dc_context, ptr %123, i32 0, i32 5
  %124 = ptrtoint ptr %asic_id211.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %.unpack.i = load i32, ptr %asic_id211.i, align 4
  %125 = insertvalue [9 x i32] undef, i32 %.unpack.i, 0
  %.elt1.i = getelementptr inbounds %struct.dc_context, ptr %123, i32 0, i32 5, i32 1
  %126 = ptrtoint ptr %.elt1.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %.unpack2.i = load i32, ptr %.elt1.i, align 4
  %127 = insertvalue [9 x i32] %125, i32 %.unpack2.i, 1
  %.elt3.i = getelementptr inbounds %struct.dc_context, ptr %123, i32 0, i32 5, i32 2
  %128 = ptrtoint ptr %.elt3.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %.unpack4.i = load i32, ptr %.elt3.i, align 4
  %129 = insertvalue [9 x i32] %127, i32 %.unpack4.i, 2
  %.elt5.i = getelementptr inbounds %struct.dc_context, ptr %123, i32 0, i32 5, i32 3
  %130 = ptrtoint ptr %.elt5.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %.unpack6.i = load i32, ptr %.elt5.i, align 4
  %131 = insertvalue [9 x i32] %129, i32 %.unpack6.i, 3
  %.elt7.i = getelementptr inbounds %struct.dc_context, ptr %123, i32 0, i32 5, i32 4
  %132 = ptrtoint ptr %.elt7.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %.unpack8.i = load i32, ptr %.elt7.i, align 4
  %133 = insertvalue [9 x i32] %131, i32 %.unpack8.i, 4
  %.elt9.i = getelementptr inbounds %struct.dc_context, ptr %123, i32 0, i32 5, i32 5
  %134 = ptrtoint ptr %.elt9.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %.unpack10.i = load i32, ptr %.elt9.i, align 4
  %135 = insertvalue [9 x i32] %133, i32 %.unpack10.i, 5
  %.elt11.i = getelementptr inbounds %struct.dc_context, ptr %123, i32 0, i32 5, i32 6
  %136 = ptrtoint ptr %.elt11.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %.unpack12.i = load i32, ptr %.elt11.i, align 4
  %137 = insertvalue [9 x i32] %135, i32 %.unpack12.i, 6
  %.elt13.i = getelementptr inbounds %struct.dc_context, ptr %123, i32 0, i32 5, i32 7
  %138 = ptrtoint ptr %.elt13.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %.unpack14.i = load i32, ptr %.elt13.i, align 4
  %139 = insertvalue [9 x i32] %137, i32 %.unpack14.i, 7
  %.elt15.i = getelementptr inbounds %struct.dc_context, ptr %123, i32 0, i32 5, i32 8
  %140 = ptrtoint ptr %.elt15.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %.unpack16.i = load i32, ptr %.elt15.i, align 4
  %141 = insertvalue [9 x i32] %139, i32 %.unpack16.i, 8
  call void @bw_calcs_init(ptr noundef %119, ptr noundef %121, [9 x i32] %141) #8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %clks.i) #8
  %142 = call ptr @memset(ptr %clks.i, i32 0, i32 68)
  %143 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ctx1.i, align 8
  %call.i = call zeroext i1 @dm_pp_get_clock_levels_by_type(ptr noundef %144, i32 noundef 2, ptr noundef nonnull %clks.i) #8
  %145 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %bw_vbios.i, align 8
  %high_sclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %146, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #8
  %clocks_in_khz.i = getelementptr inbounds %struct.dm_pp_clock_levels, ptr %clks.i, i32 0, i32 1
  %147 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %clks.i, align 4
  %sub.i = add i32 %148, -1
  %arrayidx.i = getelementptr %struct.dm_pp_clock_levels, ptr %clks.i, i32 0, i32 1, i32 %sub.i
  %149 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx.i, align 4
  %conv.i8 = zext i32 %150 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp.i, i64 noundef %conv.i8, i64 noundef 1000) #8
  %151 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %tmp.i, align 8
  %153 = ptrtoint ptr %high_sclk.i to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %152, ptr %high_sclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #8
  %154 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %bw_vbios.i, align 8
  %mid1_sclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %155, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp2.i) #8
  %156 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %clks.i, align 4
  %div112.i = lshr i32 %157, 3
  %arrayidx5.i = getelementptr %struct.dm_pp_clock_levels, ptr %clks.i, i32 0, i32 1, i32 %div112.i
  %158 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx5.i, align 4
  %conv6.i = zext i32 %159 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp2.i, i64 noundef %conv6.i, i64 noundef 1000) #8
  %160 = ptrtoint ptr %tmp2.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %tmp2.i, align 8
  %162 = ptrtoint ptr %mid1_sclk.i to i32
  call void @__asan_store8_noabort(i32 %162)
  store i64 %161, ptr %mid1_sclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp2.i) #8
  %163 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %bw_vbios.i, align 8
  %mid2_sclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %164, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp8.i) #8
  %165 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %clks.i, align 4
  %167 = lshr i32 %166, 2
  %div11113.i = and i32 %167, 536870911
  %arrayidx12.i = getelementptr %struct.dm_pp_clock_levels, ptr %clks.i, i32 0, i32 1, i32 %div11113.i
  %168 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx12.i, align 4
  %conv13.i = zext i32 %169 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp8.i, i64 noundef %conv13.i, i64 noundef 1000) #8
  %170 = ptrtoint ptr %tmp8.i to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %tmp8.i, align 8
  %172 = ptrtoint ptr %mid2_sclk.i to i32
  call void @__asan_store8_noabort(i32 %172)
  store i64 %171, ptr %mid2_sclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp8.i) #8
  %173 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %bw_vbios.i, align 8
  %mid3_sclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %174, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp15.i) #8
  %175 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %clks.i, align 4
  %mul18.i = mul i32 %176, 3
  %div19114.i = lshr i32 %mul18.i, 3
  %arrayidx20.i = getelementptr %struct.dm_pp_clock_levels, ptr %clks.i, i32 0, i32 1, i32 %div19114.i
  %177 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx20.i, align 4
  %conv21.i = zext i32 %178 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp15.i, i64 noundef %conv21.i, i64 noundef 1000) #8
  %179 = ptrtoint ptr %tmp15.i to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %tmp15.i, align 8
  %181 = ptrtoint ptr %mid3_sclk.i to i32
  call void @__asan_store8_noabort(i32 %181)
  store i64 %180, ptr %mid3_sclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp15.i) #8
  %182 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %bw_vbios.i, align 8
  %mid4_sclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %183, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp23.i) #8
  %184 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %clks.i, align 4
  %186 = lshr i32 %185, 1
  %div27115.i = and i32 %186, 536870911
  %arrayidx28.i9 = getelementptr %struct.dm_pp_clock_levels, ptr %clks.i, i32 0, i32 1, i32 %div27115.i
  %187 = ptrtoint ptr %arrayidx28.i9 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx28.i9, align 4
  %conv29.i = zext i32 %188 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp23.i, i64 noundef %conv29.i, i64 noundef 1000) #8
  %189 = ptrtoint ptr %tmp23.i to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %tmp23.i, align 8
  %191 = ptrtoint ptr %mid4_sclk.i to i32
  call void @__asan_store8_noabort(i32 %191)
  store i64 %190, ptr %mid4_sclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp23.i) #8
  %192 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %bw_vbios.i, align 8
  %mid5_sclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %193, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp31.i) #8
  %194 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %clks.i, align 4
  %mul34.i = mul i32 %195, 5
  %div35116.i = lshr i32 %mul34.i, 3
  %arrayidx36.i = getelementptr %struct.dm_pp_clock_levels, ptr %clks.i, i32 0, i32 1, i32 %div35116.i
  %196 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx36.i, align 4
  %conv37.i = zext i32 %197 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp31.i, i64 noundef %conv37.i, i64 noundef 1000) #8
  %198 = ptrtoint ptr %tmp31.i to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %tmp31.i, align 8
  %200 = ptrtoint ptr %mid5_sclk.i to i32
  call void @__asan_store8_noabort(i32 %200)
  store i64 %199, ptr %mid5_sclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp31.i) #8
  %201 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %bw_vbios.i, align 8
  %mid6_sclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %202, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp39.i) #8
  %203 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %clks.i, align 4
  %mul42.i = mul i32 %204, 6
  %div43117.i = lshr i32 %mul42.i, 3
  %arrayidx44.i = getelementptr %struct.dm_pp_clock_levels, ptr %clks.i, i32 0, i32 1, i32 %div43117.i
  %205 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx44.i, align 4
  %conv45.i = zext i32 %206 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp39.i, i64 noundef %conv45.i, i64 noundef 1000) #8
  %207 = ptrtoint ptr %tmp39.i to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %tmp39.i, align 8
  %209 = ptrtoint ptr %mid6_sclk.i to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 %208, ptr %mid6_sclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp39.i) #8
  %210 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %bw_vbios.i, align 8
  %low_sclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %211, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp47.i) #8
  %212 = ptrtoint ptr %clocks_in_khz.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %clocks_in_khz.i, align 4
  %conv50.i = zext i32 %213 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp47.i, i64 noundef %conv50.i, i64 noundef 1000) #8
  %214 = ptrtoint ptr %tmp47.i to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %tmp47.i, align 8
  %216 = ptrtoint ptr %low_sclk.i to i32
  call void @__asan_store8_noabort(i32 %216)
  store i64 %215, ptr %low_sclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp47.i) #8
  %sclk_lvls.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 14
  %217 = call ptr @memcpy(ptr %sclk_lvls.i, ptr %clks.i, i32 68)
  %218 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %ctx1.i, align 8
  %call52.i = call zeroext i1 @dm_pp_get_clock_levels_by_type(ptr noundef %219, i32 noundef 1, ptr noundef nonnull %clks.i) #8
  %220 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %bw_vbios.i, align 8
  %high_voltage_max_dispclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %221, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp54.i) #8
  %222 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %clks.i, align 4
  %sub57.i = add i32 %223, -1
  %arrayidx58.i = getelementptr %struct.dm_pp_clock_levels, ptr %clks.i, i32 0, i32 1, i32 %sub57.i
  %224 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %arrayidx58.i, align 4
  %conv59.i = zext i32 %225 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp54.i, i64 noundef %conv59.i, i64 noundef 1000) #8
  %226 = ptrtoint ptr %tmp54.i to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %tmp54.i, align 8
  %228 = ptrtoint ptr %high_voltage_max_dispclk.i to i32
  call void @__asan_store8_noabort(i32 %228)
  store i64 %227, ptr %high_voltage_max_dispclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp54.i) #8
  %229 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %bw_vbios.i, align 8
  %mid_voltage_max_dispclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %230, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp61.i) #8
  %231 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %clks.i, align 4
  %shr.i = lshr i32 %232, 1
  %arrayidx64.i = getelementptr %struct.dm_pp_clock_levels, ptr %clks.i, i32 0, i32 1, i32 %shr.i
  %233 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %arrayidx64.i, align 4
  %conv65.i = zext i32 %234 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp61.i, i64 noundef %conv65.i, i64 noundef 1000) #8
  %235 = ptrtoint ptr %tmp61.i to i32
  call void @__asan_load8_noabort(i32 %235)
  %236 = load i64, ptr %tmp61.i, align 8
  %237 = ptrtoint ptr %mid_voltage_max_dispclk.i to i32
  call void @__asan_store8_noabort(i32 %237)
  store i64 %236, ptr %mid_voltage_max_dispclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp61.i) #8
  %238 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %bw_vbios.i, align 8
  %low_voltage_max_dispclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %239, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp67.i) #8
  %240 = ptrtoint ptr %clocks_in_khz.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %clocks_in_khz.i, align 4
  %conv70.i = zext i32 %241 to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp67.i, i64 noundef %conv70.i, i64 noundef 1000) #8
  %242 = ptrtoint ptr %tmp67.i to i32
  call void @__asan_load8_noabort(i32 %242)
  %243 = load i64, ptr %tmp67.i, align 8
  %244 = ptrtoint ptr %low_voltage_max_dispclk.i to i32
  call void @__asan_store8_noabort(i32 %244)
  store i64 %243, ptr %low_voltage_max_dispclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp67.i) #8
  %245 = ptrtoint ptr %ctx1.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %ctx1.i, align 8
  %call72.i = call zeroext i1 @dm_pp_get_clock_levels_by_type(ptr noundef %246, i32 noundef 3, ptr noundef nonnull %clks.i) #8
  %247 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %bw_vbios.i, align 8
  %low_yclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %248, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp74.i) #8
  %249 = ptrtoint ptr %clocks_in_khz.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %clocks_in_khz.i, align 4
  %mul77.i = shl i32 %250, 2
  %conv78.i = zext i32 %mul77.i to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp74.i, i64 noundef %conv78.i, i64 noundef 1000) #8
  %251 = ptrtoint ptr %tmp74.i to i32
  call void @__asan_load8_noabort(i32 %251)
  %252 = load i64, ptr %tmp74.i, align 8
  %253 = ptrtoint ptr %low_yclk.i to i32
  call void @__asan_store8_noabort(i32 %253)
  store i64 %252, ptr %low_yclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp74.i) #8
  %254 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %bw_vbios.i, align 8
  %mid_yclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %255, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp80.i) #8
  %256 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %clks.i, align 4
  %shr83.i = lshr i32 %257, 1
  %arrayidx84.i10 = getelementptr %struct.dm_pp_clock_levels, ptr %clks.i, i32 0, i32 1, i32 %shr83.i
  %258 = ptrtoint ptr %arrayidx84.i10 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx84.i10, align 4
  %mul85.i = shl i32 %259, 2
  %conv86.i = zext i32 %mul85.i to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp80.i, i64 noundef %conv86.i, i64 noundef 1000) #8
  %260 = ptrtoint ptr %tmp80.i to i32
  call void @__asan_load8_noabort(i32 %260)
  %261 = load i64, ptr %tmp80.i, align 8
  %262 = ptrtoint ptr %mid_yclk.i to i32
  call void @__asan_store8_noabort(i32 %262)
  store i64 %261, ptr %mid_yclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp80.i) #8
  %263 = ptrtoint ptr %bw_vbios.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %bw_vbios.i, align 8
  %high_yclk.i = getelementptr inbounds %struct.bw_calcs_vbios, ptr %264, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp88.i) #8
  %265 = ptrtoint ptr %clks.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %clks.i, align 4
  %sub91.i = add i32 %266, -1
  %arrayidx92.i = getelementptr %struct.dm_pp_clock_levels, ptr %clks.i, i32 0, i32 1, i32 %sub91.i
  %267 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %arrayidx92.i, align 4
  %mul93.i = shl i32 %268, 2
  %conv94.i = zext i32 %mul93.i to i64
  call void @bw_frc_to_fixed(ptr nonnull sret(%struct.bw_fixed) align 8 %tmp88.i, i64 noundef %conv94.i, i64 noundef 1000) #8
  %269 = ptrtoint ptr %tmp88.i to i32
  call void @__asan_load8_noabort(i32 %269)
  %270 = load i64, ptr %tmp88.i, align 8
  %271 = ptrtoint ptr %high_yclk.i to i32
  call void @__asan_store8_noabort(i32 %271)
  store i64 %270, ptr %high_yclk.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp88.i) #8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %clks.i) #8
  br label %cleanup

if.end3:                                          ; preds = %if.end186.i.if.end3_crit_edge, %underlay_create.exit, %do.body170.i, %do.body158.i, %do.body138.i, %do.body126.i, %do.body114.i, %do.body102.i, %do.body90.i, %if.end66.i.if.end3_crit_edge, %if.then62.i, %if.then52.i, %if.then42.i, %if.then33.i
  call fastcc void @dce110_resource_destruct(ptr noundef %call7.i.i) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dce110_create_resource_pool, i32 noundef 1546) #8
  call void @kgdb_breakpoint() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %dce110_resource_construct.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end3 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %dce110_resource_construct.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dce_dmcu_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dce_abm_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dal_irq_service_dce110_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dce110_compressor_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @resource_construct(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_hw_sequencer_construct(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bw_calcs_init(ptr noundef, ptr noundef, [9 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dce110_resource_destruct(ptr noundef %pool) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe_count = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 19
  %0 = ptrtoint ptr %pipe_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pipe_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp240.not = icmp eq i32 %1, 0
  br i1 %cmp240.not, label %entry.for.cond47.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond47.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond47.preheader

for.cond47.preheader:                             ; preds = %for.inc.for.cond47.preheader_crit_edge, %entry.for.cond47.preheader_crit_edge
  %res_cap = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 41
  %2 = ptrtoint ptr %res_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res_cap, align 4
  %num_ddc242 = getelementptr inbounds %struct.resource_caps, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %num_ddc242 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ddc242, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp49243.not = icmp eq i32 %5, 0
  br i1 %cmp49243.not, label %for.cond47.preheader.for.cond84.preheader_crit_edge, label %for.cond47.preheader.for.body50_crit_edge

for.cond47.preheader.for.body50_crit_edge:        ; preds = %for.cond47.preheader
  br label %for.body50

for.cond47.preheader.for.cond84.preheader_crit_edge: ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond84.preheader

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0241 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 5, i32 %i.0241
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp2.not = icmp eq ptr %7, null
  br i1 %cmp2.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dce110_opp_destroy(ptr noundef %arrayidx) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %arrayidx7 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 3, i32 %i.0241
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx7, align 4
  %cmp8.not = icmp eq ptr %9, null
  br i1 %cmp8.not, label %if.end.if.end13_crit_edge, label %if.then9

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %9) #8
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx7, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge
  %arrayidx15 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 2, i32 %i.0241
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx15, align 4
  %cmp16.not = icmp eq ptr %12, null
  br i1 %cmp16.not, label %if.end13.if.end21_crit_edge, label %if.then17

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dce_ipp_destroy(ptr noundef %arrayidx15) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end13.if.end21_crit_edge
  %arrayidx23 = getelementptr [6 x ptr], ptr %pool, i32 0, i32 %i.0241
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx23, align 4
  %cmp24.not = icmp eq ptr %14, null
  br i1 %cmp24.not, label %if.end21.if.end32_crit_edge, label %if.then25

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %14) #8
  %15 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx23, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then25, %if.end21.if.end32_crit_edge
  %arrayidx34 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 6, i32 %i.0241
  %16 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx34, align 4
  %cmp35.not = icmp eq ptr %17, null
  br i1 %cmp35.not, label %if.end32.for.inc_crit_edge, label %if.then36

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %17) #8
  %18 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx34, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then36, %if.end32.for.inc_crit_edge
  %inc = add nuw i32 %i.0241, 1
  %19 = ptrtoint ptr %pipe_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pipe_count, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond47.preheader_crit_edge

for.inc.for.cond47.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond47.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond84.preheader:                             ; preds = %for.inc81.for.cond84.preheader_crit_edge, %for.cond47.preheader.for.cond84.preheader_crit_edge
  %stream_enc_count = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 21
  %21 = ptrtoint ptr %stream_enc_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stream_enc_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp86245.not = icmp eq i32 %22, 0
  br i1 %cmp86245.not, label %for.cond84.preheader.for.cond102.preheader_crit_edge, label %for.cond84.preheader.for.body87_crit_edge

for.cond84.preheader.for.body87_crit_edge:        ; preds = %for.cond84.preheader
  br label %for.body87

for.cond84.preheader.for.cond102.preheader_crit_edge: ; preds = %for.cond84.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond102.preheader

for.body50:                                       ; preds = %for.inc81.for.body50_crit_edge, %for.cond47.preheader.for.body50_crit_edge
  %i.1244 = phi i32 [ %inc82, %for.inc81.for.body50_crit_edge ], [ 0, %for.cond47.preheader.for.body50_crit_edge ]
  %arrayidx52 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 11, i32 %i.1244
  %23 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx52, align 4
  %cmp53.not = icmp eq ptr %24, null
  br i1 %cmp53.not, label %for.body50.if.end58_crit_edge, label %if.then54

for.body50.if.end58_crit_edge:                    ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then54:                                        ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dce110_engine_destroy(ptr noundef %arrayidx52) #8
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %for.body50.if.end58_crit_edge
  %arrayidx60 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 12, i32 %i.1244
  %25 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx60, align 4
  %cmp61.not = icmp eq ptr %26, null
  br i1 %cmp61.not, label %if.end58.if.end69_crit_edge, label %if.then62

if.end58.if.end69_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %26) #8
  %27 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx60, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then62, %if.end58.if.end69_crit_edge
  %arrayidx71 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 13, i32 %i.1244
  %28 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx71, align 4
  %cmp72.not = icmp eq ptr %29, null
  br i1 %cmp72.not, label %if.end69.for.inc81_crit_edge, label %if.then73

if.end69.for.inc81_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc81

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %29) #8
  %30 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx71, align 4
  br label %for.inc81

for.inc81:                                        ; preds = %if.then73, %if.end69.for.inc81_crit_edge
  %inc82 = add nuw i32 %i.1244, 1
  %31 = ptrtoint ptr %res_cap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %res_cap, align 4
  %num_ddc = getelementptr inbounds %struct.resource_caps, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %num_ddc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_ddc, align 4
  %cmp49 = icmp ult i32 %inc82, %34
  br i1 %cmp49, label %for.inc81.for.body50_crit_edge, label %for.inc81.for.cond84.preheader_crit_edge

for.inc81.for.cond84.preheader_crit_edge:         ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond84.preheader

for.inc81.for.body50_crit_edge:                   ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body50

for.cond102.preheader:                            ; preds = %for.inc99.for.cond102.preheader_crit_edge, %for.cond84.preheader.for.cond102.preheader_crit_edge
  %clk_src_count = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 31
  %35 = ptrtoint ptr %clk_src_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %clk_src_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp104247.not = icmp eq i32 %36, 0
  br i1 %cmp104247.not, label %for.cond102.preheader.for.end116_crit_edge, label %for.cond102.preheader.for.body105_crit_edge

for.cond102.preheader.for.body105_crit_edge:      ; preds = %for.cond102.preheader
  br label %for.body105

for.cond102.preheader.for.end116_crit_edge:       ; preds = %for.cond102.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end116

for.body87:                                       ; preds = %for.inc99.for.body87_crit_edge, %for.cond84.preheader.for.body87_crit_edge
  %i.2246 = phi i32 [ %inc100, %for.inc99.for.body87_crit_edge ], [ 0, %for.cond84.preheader.for.body87_crit_edge ]
  %arrayidx89 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 7, i32 %i.2246
  %37 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx89, align 4
  %cmp90.not = icmp eq ptr %38, null
  br i1 %cmp90.not, label %for.body87.for.inc99_crit_edge, label %if.then91

for.body87.for.inc99_crit_edge:                   ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc99

if.then91:                                        ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %38) #8
  br label %for.inc99

for.inc99:                                        ; preds = %if.then91, %for.body87.for.inc99_crit_edge
  %inc100 = add nuw i32 %i.2246, 1
  %39 = ptrtoint ptr %stream_enc_count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %stream_enc_count, align 4
  %cmp86 = icmp ult i32 %inc100, %40
  br i1 %cmp86, label %for.inc99.for.body87_crit_edge, label %for.inc99.for.cond102.preheader_crit_edge

for.inc99.for.cond102.preheader_crit_edge:        ; preds = %for.inc99
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond102.preheader

for.inc99.for.body87_crit_edge:                   ; preds = %for.inc99
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body87

for.body105:                                      ; preds = %for.inc114.for.body105_crit_edge, %for.cond102.preheader.for.body105_crit_edge
  %i.3248 = phi i32 [ %inc115, %for.inc114.for.body105_crit_edge ], [ 0, %for.cond102.preheader.for.body105_crit_edge ]
  %arrayidx107 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 30, i32 %i.3248
  %41 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx107, align 4
  %cmp108.not = icmp eq ptr %42, null
  %tobool.not.i = icmp eq ptr %arrayidx107, null
  %or.cond = or i1 %tobool.not.i, %cmp108.not
  br i1 %or.cond, label %for.body105.for.inc114_crit_edge, label %if.end.i

for.body105.for.inc114_crit_edge:                 ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc114

if.end.i:                                         ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #10
  %dp_ss_params.i = getelementptr inbounds %struct.dce110_clk_src, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %dp_ss_params.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dp_ss_params.i, align 4
  tail call void @kfree(ptr noundef %44) #8
  %hdmi_ss_params.i = getelementptr inbounds %struct.dce110_clk_src, ptr %42, i32 0, i32 7
  %45 = ptrtoint ptr %hdmi_ss_params.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hdmi_ss_params.i, align 4
  tail call void @kfree(ptr noundef %46) #8
  %dvi_ss_params.i = getelementptr inbounds %struct.dce110_clk_src, ptr %42, i32 0, i32 9
  %47 = ptrtoint ptr %dvi_ss_params.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dvi_ss_params.i, align 4
  tail call void @kfree(ptr noundef %48) #8
  tail call void @kfree(ptr noundef nonnull %42) #8
  %49 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %arrayidx107, align 4
  br label %for.inc114

for.inc114:                                       ; preds = %if.end.i, %for.body105.for.inc114_crit_edge
  %inc115 = add nuw i32 %i.3248, 1
  %50 = ptrtoint ptr %clk_src_count to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %clk_src_count, align 4
  %cmp104 = icmp ult i32 %inc115, %51
  br i1 %cmp104, label %for.inc114.for.body105_crit_edge, label %for.inc114.for.end116_crit_edge

for.inc114.for.end116_crit_edge:                  ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end116

for.inc114.for.body105_crit_edge:                 ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body105

for.end116:                                       ; preds = %for.inc114.for.end116_crit_edge, %for.cond102.preheader.for.end116_crit_edge
  %dp_clock_source = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 29
  %52 = ptrtoint ptr %dp_clock_source to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dp_clock_source, align 4
  %cmp118.not = icmp eq ptr %53, null
  %tobool.not.i233 = icmp eq ptr %dp_clock_source, null
  %or.cond239 = or i1 %tobool.not.i233, %cmp118.not
  br i1 %or.cond239, label %for.end116.if.end122_crit_edge, label %if.end.i237

for.end116.if.end122_crit_edge:                   ; preds = %for.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

if.end.i237:                                      ; preds = %for.end116
  call void @__sanitizer_cov_trace_pc() #10
  %dp_ss_params.i234 = getelementptr inbounds %struct.dce110_clk_src, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %dp_ss_params.i234 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dp_ss_params.i234, align 4
  tail call void @kfree(ptr noundef %55) #8
  %hdmi_ss_params.i235 = getelementptr inbounds %struct.dce110_clk_src, ptr %53, i32 0, i32 7
  %56 = ptrtoint ptr %hdmi_ss_params.i235 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hdmi_ss_params.i235, align 4
  tail call void @kfree(ptr noundef %57) #8
  %dvi_ss_params.i236 = getelementptr inbounds %struct.dce110_clk_src, ptr %53, i32 0, i32 9
  %58 = ptrtoint ptr %dvi_ss_params.i236 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dvi_ss_params.i236, align 4
  tail call void @kfree(ptr noundef %59) #8
  tail call void @kfree(ptr noundef nonnull %53) #8
  %60 = ptrtoint ptr %dp_clock_source to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %dp_clock_source, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.end.i237, %for.end116.if.end122_crit_edge
  %audio_count = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 33
  %61 = ptrtoint ptr %audio_count to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %audio_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp125249.not = icmp eq i32 %62, 0
  br i1 %cmp125249.not, label %if.end122.for.end137_crit_edge, label %if.end122.for.body126_crit_edge

if.end122.for.body126_crit_edge:                  ; preds = %if.end122
  br label %for.body126

if.end122.for.end137_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end137

for.body126:                                      ; preds = %for.inc135.for.body126_crit_edge, %if.end122.for.body126_crit_edge
  %i.4250 = phi i32 [ %inc136, %for.inc135.for.body126_crit_edge ], [ 0, %if.end122.for.body126_crit_edge ]
  %arrayidx128 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 32, i32 %i.4250
  %63 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx128, align 4
  %cmp129.not = icmp eq ptr %64, null
  br i1 %cmp129.not, label %for.body126.for.inc135_crit_edge, label %if.then130

for.body126.for.inc135_crit_edge:                 ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc135

if.then130:                                       ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dce_aud_destroy(ptr noundef %arrayidx128) #8
  br label %for.inc135

for.inc135:                                       ; preds = %if.then130, %for.body126.for.inc135_crit_edge
  %inc136 = add nuw i32 %i.4250, 1
  %65 = ptrtoint ptr %audio_count to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %audio_count, align 4
  %cmp125 = icmp ult i32 %inc136, %66
  br i1 %cmp125, label %for.inc135.for.body126_crit_edge, label %for.inc135.for.end137_crit_edge

for.inc135.for.end137_crit_edge:                  ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end137

for.inc135.for.body126_crit_edge:                 ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body126

for.end137:                                       ; preds = %for.inc135.for.end137_crit_edge, %if.end122.for.end137_crit_edge
  %abm = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 37
  %67 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %abm, align 4
  %cmp139.not = icmp eq ptr %68, null
  br i1 %cmp139.not, label %for.end137.if.end143_crit_edge, label %if.then140

for.end137.if.end143_crit_edge:                   ; preds = %for.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

if.then140:                                       ; preds = %for.end137
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dce_abm_destroy(ptr noundef %abm) #8
  br label %if.end143

if.end143:                                        ; preds = %if.then140, %for.end137.if.end143_crit_edge
  %dmcu = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 38
  %69 = ptrtoint ptr %dmcu to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dmcu, align 4
  %cmp145.not = icmp eq ptr %70, null
  br i1 %cmp145.not, label %if.end143.if.end149_crit_edge, label %if.then146

if.end143.if.end149_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149

if.then146:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dce_dmcu_destroy(ptr noundef %dmcu) #8
  br label %if.end149

if.end149:                                        ; preds = %if.then146, %if.end143.if.end149_crit_edge
  %irqs = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 36
  %71 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %irqs, align 4
  %cmp151.not = icmp eq ptr %72, null
  br i1 %cmp151.not, label %if.end149.if.end155_crit_edge, label %if.then152

if.end149.if.end155_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end155

if.then152:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dal_irq_service_destroy(ptr noundef %irqs) #8
  br label %if.end155

if.end155:                                        ; preds = %if.then152, %if.end149.if.end155_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dce110_destroy_resource_pool(ptr nocapture noundef %pool) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pool, align 4
  tail call fastcc void @dce110_resource_destruct(ptr noundef %1)
  tail call void @kfree(ptr noundef %1) #8
  %2 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pool, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dce110_panel_cntl_create(ptr noundef %init_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 40) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %inst = getelementptr inbounds %struct.panel_cntl_init_data, ptr %init_data, i32 0, i32 1
  %1 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %inst, align 4
  %arrayidx = getelementptr [1 x %struct.dce_panel_cntl_registers], ptr @panel_cntl_regs, i32 0, i32 %2
  tail call void @dce_panel_cntl_construct(ptr noundef nonnull %call7.i.i, ptr noundef %init_data, ptr noundef %arrayidx, ptr noundef nonnull @panel_cntl_shift, ptr noundef nonnull @panel_cntl_mask) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dce110_link_encoder_create(ptr noundef %enc_init_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 68) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %transmitter = getelementptr inbounds %struct.encoder_init_data, ptr %enc_init_data, i32 0, i32 5
  %1 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %transmitter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %2)
  %3 = icmp ult i32 %2, 10
  br i1 %3, label %switch.hole_check, label %if.end.land.end.i_crit_edge

if.end.land.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i

land.end.i:                                       ; preds = %switch.hole_check.land.end.i_crit_edge, %if.end.land.end.i_crit_edge
  %.b47.i = load i1, ptr @map_transmitter_id_to_phy_instance.__already_done, align 1
  br i1 %.b47.i, label %land.end.i.if.then41.i_crit_edge, label %if.then.i, !prof !160

land.end.i.if.then41.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41.i

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @map_transmitter_id_to_phy_instance.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 487, i32 noundef 9, ptr noundef null) #8
  br label %if.then41.i

if.then41.i:                                      ; preds = %if.then.i, %land.end.i.if.then41.i_crit_edge
  tail call void @kgdb_breakpoint() #8
  br label %map_transmitter_id_to_phy_instance.exit

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %2 to i16
  %switch.shifted = lshr i16 575, %switch.maskindex
  %4 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %switch.lobit.not = icmp eq i16 %4, 0
  br i1 %switch.lobit.not, label %switch.hole_check.land.end.i_crit_edge, label %switch.lookup

switch.hole_check.land.end.i_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.dce110_link_encoder_create, i32 0, i32 %2
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %map_transmitter_id_to_phy_instance.exit

map_transmitter_id_to_phy_instance.exit:          ; preds = %switch.lookup, %if.then41.i
  %retval.0.i = phi i32 [ 0, %if.then41.i ], [ %switch.load, %switch.lookup ]
  %arrayidx = getelementptr [7 x %struct.dce110_link_enc_registers], ptr @link_enc_regs, i32 0, i32 %retval.0.i
  %6 = ptrtoint ptr %enc_init_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enc_init_data, align 4
  %sub = add i32 %7, -1
  %arrayidx2 = getelementptr [6 x %struct.dce110_link_enc_aux_registers], ptr @link_enc_aux_regs, i32 0, i32 %sub
  %hpd_source = getelementptr inbounds %struct.encoder_init_data, ptr %enc_init_data, i32 0, i32 2
  %8 = ptrtoint ptr %hpd_source to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hpd_source, align 4
  %arrayidx3 = getelementptr [6 x %struct.dce110_link_enc_hpd_registers], ptr @link_enc_hpd_regs, i32 0, i32 %9
  tail call void @dce110_link_encoder_construct(ptr noundef nonnull %call7.i.i, ptr noundef %enc_init_data, ptr noundef nonnull @link_enc_feature, ptr noundef %arrayidx, ptr noundef %arrayidx2, ptr noundef %arrayidx3) #8
  br label %cleanup

cleanup:                                          ; preds = %map_transmitter_id_to_phy_instance.exit, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dce110_validate_bandwidth(ptr nocapture noundef readonly %dc, ptr noundef %context, i1 noundef zeroext %fast_validate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dce110_validate_bandwidth.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dce110_validate_bandwidth, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dce110_validate_bandwidth.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ctx = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 7
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %bw_dceip = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 15
  %2 = ptrtoint ptr %bw_dceip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bw_dceip, align 4
  %bw_vbios = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 16
  %4 = ptrtoint ptr %bw_vbios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bw_vbios, align 8
  %res_ctx = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %6 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %res_pool, align 8
  %pipe_count = getelementptr inbounds %struct.resource_pool, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %pipe_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pipe_count, align 4
  %bw_ctx = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5
  %call4 = tail call zeroext i1 @bw_calcs(ptr noundef %1, ptr noundef %3, ptr noundef %5, ptr noundef %res_ctx, i32 noundef %9, ptr noundef %bw_ctx) #8
  br i1 %call4, label %do.end.if.end15_crit_edge, label %if.then8

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %context, align 8
  %h_addressable = getelementptr inbounds %struct.dc_stream_state, ptr %11, i32 0, i32 5, i32 2
  %12 = ptrtoint ptr %h_addressable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %h_addressable, align 8
  %v_addressable = getelementptr inbounds %struct.dc_stream_state, ptr %11, i32 0, i32 5, i32 8
  %14 = ptrtoint ptr %v_addressable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %v_addressable, align 8
  %pix_clk_100hz = getelementptr inbounds %struct.dc_stream_state, ptr %11, i32 0, i32 5, i32 12
  %16 = ptrtoint ptr %pix_clk_100hz to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pix_clk_100hz, align 8
  %div = udiv i32 %17, 10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %13, i32 noundef %15, i32 noundef %div) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %do.end.if.end15_crit_edge
  %current_state = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 11
  %18 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %current_state, align 4
  %bw_ctx16 = getelementptr inbounds %struct.dc_state, ptr %19, i32 0, i32 5
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(412) %bw_ctx16, ptr noundef dereferenceable(412) %bw_ctx, i32 412) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool21.not = icmp eq i32 %bcmp, 0
  br i1 %tobool21.not, label %if.end15.if.end153_crit_edge, label %do.body23

if.end15.if.end153_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end153

do.body23:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dce110_validate_bandwidth.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dce110_validate_bandwidth, %if.then35)) #8
          to label %if.end153 [label %if.then35], !srcloc !161

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %nbp_state_change_wm_ns = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 8
  %b_mark = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 8, i32 0, i32 1
  %20 = ptrtoint ptr %b_mark to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %b_mark, align 4
  %22 = ptrtoint ptr %nbp_state_change_wm_ns to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nbp_state_change_wm_ns, align 8
  %urgent_wm_ns = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 5
  %b_mark46 = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 5, i32 0, i32 1
  %24 = ptrtoint ptr %b_mark46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %b_mark46, align 4
  %26 = ptrtoint ptr %urgent_wm_ns to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %urgent_wm_ns, align 8
  %stutter_exit_wm_ns = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 6
  %b_mark55 = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 6, i32 0, i32 1
  %28 = ptrtoint ptr %b_mark55 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %b_mark55, align 4
  %30 = ptrtoint ptr %stutter_exit_wm_ns to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %stutter_exit_wm_ns, align 8
  %arrayidx64 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 8, i32 1
  %b_mark65 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 8, i32 1, i32 1
  %32 = ptrtoint ptr %b_mark65 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %b_mark65, align 4
  %34 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx64, align 8
  %arrayidx74 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 5, i32 1
  %b_mark75 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 5, i32 1, i32 1
  %36 = ptrtoint ptr %b_mark75 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %b_mark75, align 4
  %38 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx74, align 8
  %arrayidx84 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 6, i32 1
  %b_mark85 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 6, i32 1, i32 1
  %40 = ptrtoint ptr %b_mark85 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %b_mark85, align 4
  %42 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx84, align 8
  %arrayidx94 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 8, i32 2
  %b_mark95 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 8, i32 2, i32 1
  %44 = ptrtoint ptr %b_mark95 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %b_mark95, align 4
  %46 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx94, align 8
  %arrayidx104 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 5, i32 2
  %b_mark105 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 5, i32 2, i32 1
  %48 = ptrtoint ptr %b_mark105 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %b_mark105, align 4
  %50 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx104, align 8
  %arrayidx114 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 6, i32 2
  %b_mark115 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 6, i32 2, i32 1
  %52 = ptrtoint ptr %b_mark115 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %b_mark115, align 4
  %54 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx114, align 8
  %stutter_mode_enable = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 2
  %56 = ptrtoint ptr %stutter_mode_enable to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %stutter_mode_enable, align 2, !range !159
  %58 = zext i8 %57 to i32
  %59 = ptrtoint ptr %bw_ctx to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bw_ctx, align 8, !range !159
  %61 = zext i8 %60 to i32
  %cpup_state_change_enable = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 1
  %62 = ptrtoint ptr %cpup_state_change_enable to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %cpup_state_change_enable, align 1, !range !159
  %64 = zext i8 %63 to i32
  %nbp_state_change_enable = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 3
  %65 = ptrtoint ptr %nbp_state_change_enable to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %nbp_state_change_enable, align 1, !range !159
  %67 = zext i8 %66 to i32
  %all_displays_in_sync = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 4
  %68 = ptrtoint ptr %all_displays_in_sync to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %all_displays_in_sync, align 4, !range !159
  %70 = zext i8 %69 to i32
  %dispclk_khz = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 12
  %71 = ptrtoint ptr %dispclk_khz to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dispclk_khz, align 4
  %sclk_khz = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 9
  %73 = ptrtoint ptr %sclk_khz to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sclk_khz, align 8
  %sclk_deep_sleep_khz = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 10
  %75 = ptrtoint ptr %sclk_deep_sleep_khz to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sclk_deep_sleep_khz, align 4
  %yclk_khz = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 11
  %77 = ptrtoint ptr %yclk_khz to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %yclk_khz, align 8
  %blackout_recovery_time_us = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 5, i32 0, i32 0, i32 13
  %79 = ptrtoint ptr %blackout_recovery_time_us to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %blackout_recovery_time_us, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dce110_validate_bandwidth.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.15, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %58, i32 noundef %61, i32 noundef %64, i32 noundef %67, i32 noundef %70, i32 noundef %72, i32 noundef %74, i32 noundef %76, i32 noundef %78, i32 noundef %80) #8
  br label %if.end153

if.end153:                                        ; preds = %if.then35, %do.body23, %if.end15.if.end153_crit_edge
  ret i1 %call4
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @dce110_validate_global(ptr nocapture noundef readnone %dc, ptr nocapture noundef readonly %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stream_count.i = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stream_count.i, align 8
  %conv.i = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp68.not.i = icmp eq i8 %1, 0
  br i1 %cmp68.not.i, label %entry.dce110_validate_surface_sets.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dce110_validate_surface_sets.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dce110_validate_surface_sets.exit.thread

for.body.i:                                       ; preds = %for.inc41.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %cmp72.i = phi i1 [ %cmp.i, %for.inc41.i.for.body.i_crit_edge ], [ true, %entry.for.body.i_crit_edge ]
  %i.069.i = phi i32 [ %inc42.i, %for.inc41.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %plane_count.i = getelementptr %struct.dc_state, ptr %context, i32 0, i32 1, i32 %i.069.i, i32 2
  %2 = ptrtoint ptr %plane_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %plane_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.i = icmp eq i32 %3, 0
  br i1 %cmp2.i, label %for.body.i.for.inc41.i_crit_edge, label %if.end.i

for.body.i.for.inc41.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc41.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp7.i = icmp sgt i32 %3, 2
  br i1 %cmp7.i, label %if.end.i.dce110_validate_surface_sets.exit_crit_edge, label %for.cond11.preheader.i

if.end.i.dce110_validate_surface_sets.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dce110_validate_surface_sets.exit

for.cond11.preheader.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1565.i = icmp sgt i32 %3, 0
  br i1 %cmp1565.i, label %for.body17.lr.ph.i, label %for.cond11.preheader.i.for.inc41.i_crit_edge

for.cond11.preheader.i.for.inc41.i_crit_edge:     ; preds = %for.cond11.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc41.i

for.body17.lr.ph.i:                               ; preds = %for.cond11.preheader.i
  %arrayidx35.i = getelementptr [6 x ptr], ptr %context, i32 0, i32 %i.069.i
  %arrayidx20.i = getelementptr %struct.dc_state, ptr %context, i32 0, i32 1, i32 %i.069.i, i32 5, i32 0
  %4 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx20.i, align 4
  %format.i = getelementptr inbounds %struct.dc_plane_state, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %7)
  %cmp21.i = icmp ugt i32 %7, 17
  br i1 %cmp21.i, label %for.body17.lr.ph.i.dce110_validate_surface_sets.exit_crit_edge, label %for.inc.critedge.i

for.body17.lr.ph.i.dce110_validate_surface_sets.exit_crit_edge: ; preds = %for.body17.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dce110_validate_surface_sets.exit

for.inc.critedge.i:                               ; preds = %for.body17.lr.ph.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %exitcond.not.i = icmp eq i32 %3, 1
  br i1 %exitcond.not.i, label %for.inc.critedge.i.for.inc41.i_crit_edge, label %for.body17.i.1

for.inc.critedge.i.for.inc41.i_crit_edge:         ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc41.i

for.body17.i.1:                                   ; preds = %for.inc.critedge.i
  %arrayidx20.i.1 = getelementptr %struct.dc_state, ptr %context, i32 0, i32 1, i32 %i.069.i, i32 5, i32 1
  %8 = ptrtoint ptr %arrayidx20.i.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx20.i.1, align 4
  %format.i.1 = getelementptr inbounds %struct.dc_plane_state, ptr %9, i32 0, i32 22
  %10 = ptrtoint ptr %format.i.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %format.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %11)
  %cmp21.i.1 = icmp ugt i32 %11, 17
  br i1 %cmp21.i.1, label %if.then23.i.1, label %for.body17.i.1.for.inc41.i_crit_edge

for.body17.i.1.for.inc41.i_crit_edge:             ; preds = %for.body17.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc41.i

if.then23.i.1:                                    ; preds = %for.body17.i.1
  %width.i.1 = getelementptr inbounds %struct.dc_plane_state, ptr %9, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %width.i.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1920, i32 %13)
  %cmp24.i.1 = icmp sgt i32 %13, 1920
  br i1 %cmp24.i.1, label %if.then23.i.1.dce110_validate_surface_sets.exit_crit_edge, label %lor.lhs.false.i.1

if.then23.i.1.dce110_validate_surface_sets.exit_crit_edge: ; preds = %if.then23.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %dce110_validate_surface_sets.exit

lor.lhs.false.i.1:                                ; preds = %if.then23.i.1
  %height.i.1 = getelementptr inbounds %struct.dc_plane_state, ptr %9, i32 0, i32 4, i32 3
  %14 = ptrtoint ptr %height.i.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1080, i32 %15)
  %cmp27.i.1 = icmp sgt i32 %15, 1080
  br i1 %cmp27.i.1, label %lor.lhs.false.i.1.dce110_validate_surface_sets.exit_crit_edge, label %if.end34.i.1

lor.lhs.false.i.1.dce110_validate_surface_sets.exit_crit_edge: ; preds = %lor.lhs.false.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %dce110_validate_surface_sets.exit

if.end34.i.1:                                     ; preds = %lor.lhs.false.i.1
  %16 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx35.i, align 4
  %pixel_encoding.i.1 = getelementptr inbounds %struct.dc_stream_state, ptr %17, i32 0, i32 5, i32 17
  %18 = ptrtoint ptr %pixel_encoding.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pixel_encoding.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp36.not.i.1 = icmp eq i32 %19, 1
  br i1 %cmp36.not.i.1, label %if.end34.i.1.for.inc41.i_crit_edge, label %if.end34.i.1.dce110_validate_surface_sets.exit_crit_edge

if.end34.i.1.dce110_validate_surface_sets.exit_crit_edge: ; preds = %if.end34.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %dce110_validate_surface_sets.exit

if.end34.i.1.for.inc41.i_crit_edge:               ; preds = %if.end34.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc41.i

for.inc41.i:                                      ; preds = %if.end34.i.1.for.inc41.i_crit_edge, %for.body17.i.1.for.inc41.i_crit_edge, %for.inc.critedge.i.for.inc41.i_crit_edge, %for.cond11.preheader.i.for.inc41.i_crit_edge, %for.body.i.for.inc41.i_crit_edge
  %inc42.i = add nuw nsw i32 %i.069.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc42.i, i32 %conv.i)
  %cmp.i = icmp ult i32 %inc42.i, %conv.i
  %exitcond76.not.i = icmp eq i32 %inc42.i, %conv.i
  br i1 %exitcond76.not.i, label %for.inc41.i.dce110_validate_surface_sets.exit_crit_edge, label %for.inc41.i.for.body.i_crit_edge

for.inc41.i.for.body.i_crit_edge:                 ; preds = %for.inc41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc41.i.dce110_validate_surface_sets.exit_crit_edge: ; preds = %for.inc41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dce110_validate_surface_sets.exit

dce110_validate_surface_sets.exit:                ; preds = %for.inc41.i.dce110_validate_surface_sets.exit_crit_edge, %if.end34.i.1.dce110_validate_surface_sets.exit_crit_edge, %lor.lhs.false.i.1.dce110_validate_surface_sets.exit_crit_edge, %if.then23.i.1.dce110_validate_surface_sets.exit_crit_edge, %for.body17.lr.ph.i.dce110_validate_surface_sets.exit_crit_edge, %if.end.i.dce110_validate_surface_sets.exit_crit_edge
  %cmp64.i = phi i1 [ %cmp72.i, %if.end34.i.1.dce110_validate_surface_sets.exit_crit_edge ], [ %cmp72.i, %lor.lhs.false.i.1.dce110_validate_surface_sets.exit_crit_edge ], [ %cmp72.i, %if.then23.i.1.dce110_validate_surface_sets.exit_crit_edge ], [ %cmp.i, %for.inc41.i.dce110_validate_surface_sets.exit_crit_edge ], [ %cmp72.i, %if.end.i.dce110_validate_surface_sets.exit_crit_edge ], [ %cmp72.i, %for.body17.lr.ph.i.dce110_validate_surface_sets.exit_crit_edge ]
  %spec.select = select i1 %cmp64.i, i32 9, i32 1
  br label %dce110_validate_surface_sets.exit.thread

dce110_validate_surface_sets.exit.thread:         ; preds = %dce110_validate_surface_sets.exit, %entry.dce110_validate_surface_sets.exit.thread_crit_edge
  %20 = phi i32 [ 1, %entry.dce110_validate_surface_sets.exit.thread_crit_edge ], [ %spec.select, %dce110_validate_surface_sets.exit ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dce110_acquire_underlay(ptr noundef %context, ptr nocapture noundef readonly %pool, ptr noundef %stream) #0 align 64 {
entry:
  %black_color = alloca %struct.tg_color, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 32
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hwseq = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %hwseq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwseq, align 4
  %res_ctx2 = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 4
  %underlay_pipe_index = getelementptr inbounds %struct.resource_pool, ptr %pool, i32 0, i32 20
  %6 = ptrtoint ptr %underlay_pipe_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %underlay_pipe_index, align 4
  %arrayidx = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx2, i32 0, i32 %7
  %stream6 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx2, i32 0, i32 %7, i32 1
  %8 = ptrtoint ptr %stream6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stream6, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx7 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 6, i32 %7
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx7, align 4
  %stream_res = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx2, i32 0, i32 %7, i32 3
  %tg = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx2, i32 0, i32 %7, i32 3, i32 2
  %12 = ptrtoint ptr %tg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %tg, align 8
  %arrayidx8 = getelementptr [6 x ptr], ptr %pool, i32 0, i32 %7
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx8, align 4
  %mi = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx2, i32 0, i32 %7, i32 2, i32 2
  %15 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %mi, align 4
  %arrayidx9 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 3, i32 %7
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx9, align 4
  %xfm = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx2, i32 0, i32 %7, i32 2, i32 4
  %18 = ptrtoint ptr %xfm to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %xfm, align 4
  %arrayidx11 = getelementptr %struct.resource_pool, ptr %pool, i32 0, i32 5, i32 %7
  %19 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx11, align 4
  %21 = ptrtoint ptr %stream_res to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %stream_res, align 8
  %conv = trunc i32 %7 to i8
  %pipe_idx = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx2, i32 0, i32 %7, i32 7
  %22 = ptrtoint ptr %pipe_idx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %pipe_idx, align 8
  %23 = ptrtoint ptr %stream6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %stream, ptr %stream6, align 4
  %current_state = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 11
  %24 = ptrtoint ptr %current_state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %current_state, align 4
  %res_ctx14 = getelementptr inbounds %struct.dc_state, ptr %25, i32 0, i32 4
  %stream17 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx14, i32 0, i32 %7, i32 1
  %26 = ptrtoint ptr %stream17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stream17, align 4
  %tobool18.not = icmp eq ptr %27, null
  br i1 %tobool18.not, label %if.then19, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %black_color) #8
  %28 = call ptr @memset(ptr %black_color, i32 0, i32 6)
  %ctx20 = getelementptr inbounds %struct.dc, ptr %3, i32 0, i32 7
  %29 = ptrtoint ptr %ctx20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctx20, align 8
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dc_bios, align 4
  %enable_display_power_gating = getelementptr inbounds %struct.dce_hwseq, ptr %5, i32 0, i32 6, i32 11
  %33 = ptrtoint ptr %enable_display_power_gating to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %enable_display_power_gating, align 4
  %inst = getelementptr inbounds %struct.timing_generator, ptr %11, i32 0, i32 3
  %35 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %inst, align 4
  %conv23 = trunc i32 %36 to i8
  %call = tail call zeroext i1 %34(ptr noundef %3, i8 noundef zeroext %conv23, ptr noundef %32, i32 noundef 0) #8
  %37 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tg, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %program_timing = getelementptr inbounds %struct.timing_generator_funcs, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %program_timing to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %program_timing, align 4
  %timing = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5
  %43 = ptrtoint ptr %stream6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %stream6, align 4
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %44, i32 0, i32 36
  %45 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %signal, align 4
  tail call void %42(ptr noundef %38, ptr noundef %timing, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %46, i1 noundef zeroext false) #8
  %47 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tg, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %enable_advanced_request = getelementptr inbounds %struct.timing_generator_funcs, ptr %50, i32 0, i32 35
  %51 = ptrtoint ptr %enable_advanced_request to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %enable_advanced_request, align 4
  tail call void %52(ptr noundef %48, i1 noundef zeroext true, ptr noundef %timing) #8
  %53 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mi, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 8
  %allocate_mem_input = getelementptr inbounds %struct.mem_input_funcs, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %allocate_mem_input to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %allocate_mem_input, align 4
  %59 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %timing, align 8
  %v_total = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 6
  %61 = ptrtoint ptr %v_total to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %v_total, align 8
  %pix_clk_100hz = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 5, i32 12
  %63 = ptrtoint ptr %pix_clk_100hz to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pix_clk_100hz, align 8
  %div = udiv i32 %64, 10
  %stream_count = getelementptr inbounds %struct.dc_state, ptr %context, i32 0, i32 2
  %65 = ptrtoint ptr %stream_count to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %stream_count, align 8
  %conv44 = zext i8 %66 to i32
  tail call void %58(ptr noundef %54, i32 noundef %60, i32 noundef %62, i32 noundef %div, i32 noundef %conv44) #8
  call void @color_space_to_black_color(ptr noundef %3, i32 noundef 5, ptr noundef nonnull %black_color) #8
  %67 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tg, align 8
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %set_blank_color = getelementptr inbounds %struct.timing_generator_funcs, ptr %70, i32 0, i32 20
  %71 = ptrtoint ptr %set_blank_color to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %set_blank_color, align 4
  call void %72(ptr noundef %68, ptr noundef nonnull %black_color) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %black_color) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %arrayidx, %if.then19 ], [ %arrayidx, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dce110_validate_plane(ptr nocapture noundef readonly %plane_state, ptr nocapture noundef readnone %caps) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.dc_plane_state, ptr %plane_state, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 8
  %mul = shl i32 %1, 1
  %width1 = getelementptr inbounds %struct.dc_plane_state, ptr %plane_state, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %width1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %3)
  %cmp = icmp slt i32 %mul, %3
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %height = getelementptr inbounds %struct.dc_plane_state, ptr %plane_state, i32 0, i32 5, i32 3
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %mul3 = shl i32 %5, 1
  %height5 = getelementptr inbounds %struct.dc_plane_state, ptr %plane_state, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %height5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul3, i32 %7)
  %cmp6 = icmp slt i32 %mul3, %7
  %spec.select = select i1 %cmp6, i32 9, i32 1
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry.return_crit_edge
  %retval.0 = phi i32 [ 9, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dce110_add_stream_to_ctx(ptr noundef %dc, ptr noundef %new_ctx, ptr noundef %dc_stream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @resource_map_pool_resources(ptr noundef %dc, ptr noundef %new_ctx, ptr noundef %dc_stream) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.end, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @resource_map_clock_resources(ptr noundef %dc, ptr noundef %new_ctx, ptr noundef %dc_stream) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 1
  br i1 %cmp2, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  %res_ctx.i = getelementptr inbounds %struct.dc_state, ptr %new_ctx, i32 0, i32 4
  %call.i = tail call ptr @resource_get_head_pipe_for_stream(ptr noundef %res_ctx.i, ptr noundef %dc_stream) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then3.if.end5_crit_edge, label %if.end.i

if.then3.if.end5_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end.i:                                         ; preds = %if.then3
  %res_pool.i = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %0 = ptrtoint ptr %res_pool.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res_pool.i, align 8
  %underlay_pipe_index.i = getelementptr inbounds %struct.resource_pool, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %underlay_pipe_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %underlay_pipe_index.i, align 4
  %pipe_idx.i.i = getelementptr inbounds %struct.pipe_ctx, ptr %call.i, i32 0, i32 7
  %4 = ptrtoint ptr %pipe_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pipe_idx.i.i, align 8
  %conv.i.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i.i)
  %cmp.not.i.i = icmp eq i32 %3, %conv.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.end.i.i:                                       ; preds = %if.end.i
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end5_crit_edge, label %is_surface_pixel_format_supported.exit.i

if.end.i.i.if.end5_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

is_surface_pixel_format_supported.exit.i:         ; preds = %if.end.i.i
  %format.i.i = getelementptr inbounds %struct.dc_plane_state, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %format.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %9)
  %cmp5.i.i = icmp ugt i32 %9, 17
  br i1 %cmp5.i.i, label %is_surface_pixel_format_supported.exit.i.if.end3.i_crit_edge, label %is_surface_pixel_format_supported.exit.i.if.end5_crit_edge

is_surface_pixel_format_supported.exit.i.if.end5_crit_edge: ; preds = %is_surface_pixel_format_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

is_surface_pixel_format_supported.exit.i.if.end3.i_crit_edge: ; preds = %is_surface_pixel_format_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.end3.i:                                        ; preds = %is_surface_pixel_format_supported.exit.i.if.end3.i_crit_edge, %if.end.i.if.end3.i_crit_edge
  tail call void @dce110_resource_build_pipe_hw_param(ptr noundef nonnull %call.i) #8
  tail call void @resource_build_info_frame(ptr noundef nonnull %call.i) #8
  br label %if.end5

if.end5:                                          ; preds = %if.end3.i, %is_surface_pixel_format_supported.exit.i.if.end5_crit_edge, %if.end.i.i.if.end5_crit_edge, %if.then3.if.end5_crit_edge, %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  %result.1 = phi i32 [ %call1, %if.end.if.end5_crit_edge ], [ 1, %if.end3.i ], [ -1, %if.then3.if.end5_crit_edge ], [ 12, %is_surface_pixel_format_supported.exit.i.if.end5_crit_edge ], [ 12, %if.end.i.i.if.end5_crit_edge ], [ %call, %entry.if.end5_crit_edge ]
  ret i32 %result.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_panel_cntl_construct(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_link_encoder_construct(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bw_calcs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @color_space_to_black_color(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @resource_map_pool_resources(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @resource_map_clock_resources(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @resource_get_head_pipe_for_stream(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @resource_build_info_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce110_clk_src_construct(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_timing_generator_construct(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_mem_input_construct(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_ipp_construct(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_transform_construct(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_opp_construct(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dce110_aux_engine_construct(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce100_i2c_hw_construct(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_opp_v_construct(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_timing_generator_v_construct(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_mem_input_v_construct(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dce110_transform_v_construct(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @read_dce_straps(ptr noundef %ctx, ptr noundef %straps) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %audio_stream_number = getelementptr inbounds %struct.resource_straps, ptr %straps, i32 0, i32 2
  %call = tail call i32 @generic_reg_get2(ptr noundef %ctx, i32 noundef 18457, i8 noundef zeroext 6, i32 noundef 64, ptr noundef %straps, i8 noundef zeroext 8, i32 noundef 1792, ptr noundef %audio_stream_number) #8
  %dc_pinstraps_audio = getelementptr inbounds %struct.resource_straps, ptr %straps, i32 0, i32 1
  %call1 = tail call i32 @generic_reg_get(ptr noundef %ctx, i32 noundef 18456, i8 noundef zeroext 14, i32 noundef 49152, ptr noundef %dc_pinstraps_audio) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @create_audio(ptr noundef %ctx, i32 noundef %inst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [7 x %struct.dce_audio_registers], ptr @audio_regs, i32 0, i32 %inst
  %call = tail call ptr @dce_audio_create(ptr noundef %ctx, i32 noundef %inst, ptr noundef %arrayidx, ptr noundef nonnull @audio_shift, ptr noundef nonnull @audio_mask) #8
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dce110_stream_encoder_create(i32 noundef %eng_id, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 40) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dc_bios = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 7
  %1 = ptrtoint ptr %dc_bios to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dc_bios, align 4
  %arrayidx = getelementptr [3 x %struct.dce110_stream_enc_registers], ptr @stream_enc_regs, i32 0, i32 %eng_id
  tail call void @dce110_stream_encoder_construct(ptr noundef nonnull %call7.i.i, ptr noundef %ctx, ptr noundef %2, i32 noundef %eng_id, ptr noundef %arrayidx, ptr noundef nonnull @se_shift, ptr noundef nonnull @se_mask) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @dce110_hwseq_create(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 216) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ctx, ptr %call7.i.i, align 8
  %hw_internal_rev = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 5, i32 3
  %2 = ptrtoint ptr %hw_internal_rev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_internal_rev, align 4
  %4 = add i32 %3, -97
  call void @__sanitizer_cov_trace_const_cmp4(i32 158, i32 %4)
  %5 = icmp ult i32 %4, 158
  %6 = select i1 %5, ptr @hwseq_stoney_reg, ptr @hwseq_cz_reg
  %regs = getelementptr inbounds %struct.dce_hwseq, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %regs, align 4
  %shifts = getelementptr inbounds %struct.dce_hwseq, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %shifts to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @hwseq_shift, ptr %shifts, align 8
  %masks = getelementptr inbounds %struct.dce_hwseq, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %masks to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @hwseq_mask, ptr %masks, align 4
  %wa = getelementptr inbounds %struct.dce_hwseq, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %wa to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %wa, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_get2(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_reg_get(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dce_audio_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_stream_encoder_construct(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_pp_get_clock_levels_by_type(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bw_frc_to_fixed(ptr sret(%struct.bw_fixed) align 8, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_opp_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_ipp_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce110_engine_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_aud_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_abm_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dce_dmcu_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_irq_service_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !46, !48, !50, !52, !54, !55, !56, !57, !59, !61, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 1546, i32 2}
!2 = !{ptr @__func__.dce110_create_resource_pool, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 1399, i32 3}
!5 = !{ptr @__func__.dce110_resource_construct, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 1400, i32 3}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 1406, i32 4}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 1417, i32 3}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 1427, i32 3}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 1445, i32 4}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 1452, i32 4}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 1460, i32 4}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 1468, i32 4}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 1476, i32 4}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 1486, i32 4}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 1493, i32 4}
!27 = !{ptr @bios_regs, !28, !"bios_regs", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 381, i32 36}
!29 = !{ptr @stoney_resource_cap, !30, !"stoney_resource_cap", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 395, i32 35}
!31 = !{ptr @carrizo_resource_cap, !32, !"carrizo_resource_cap", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 386, i32 35}
!33 = !{ptr @dce110_res_pool_funcs, !34, !"dce110_res_pool_funcs", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 1230, i32 36}
!35 = !{ptr @panel_cntl_regs, !36, !"panel_cntl_regs", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 279, i32 46}
!37 = !{ptr @panel_cntl_shift, !38, !"panel_cntl_shift", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 283, i32 42}
!39 = !{ptr @panel_cntl_mask, !40, !"panel_cntl_mask", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 287, i32 41}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 487, i32 3}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @link_enc_feature, !45, !"link_enc_feature", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 657, i32 45}
!46 = !{ptr @link_enc_regs, !47, !"link_enc_regs", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 249, i32 47}
!48 = !{ptr @link_enc_aux_regs, !49, !"link_enc_aux_regs", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 220, i32 51}
!50 = !{ptr @link_enc_hpd_regs, !51, !"link_enc_hpd_regs", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 234, i32 51}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 970, i32 2}
!54 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @dce110_validate_bandwidth.__UNIQUE_ID_ddebug303, !53, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 984, i32 3}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 993, i32 3}
!61 = !{ptr @dce110_validate_bandwidth.__UNIQUE_ID_ddebug304, !60, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!62 = !{ptr @__func__.dce110_clock_source_create, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 791, i32 2}
!64 = !{ptr @cs_shift, !65, !"cs_shift", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 373, i32 42}
!66 = !{ptr @cs_mask, !67, !"cs_mask", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 377, i32 41}
!68 = !{ptr @clk_src_regs, !69, !"clk_src_regs", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 367, i32 41}
!70 = !{ptr @dmcu_regs, !71, !"dmcu_regs", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 153, i32 40}
!72 = !{ptr @dmcu_shift, !73, !"dmcu_shift", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 157, i32 36}
!74 = !{ptr @dmcu_mask, !75, !"dmcu_mask", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 161, i32 35}
!76 = !{ptr @abm_regs, !77, !"abm_regs", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 165, i32 39}
!78 = !{ptr @abm_shift, !79, !"abm_shift", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 169, i32 35}
!80 = !{ptr @abm_mask, !81, !"abm_mask", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 173, i32 34}
!82 = !{ptr @dce110_tg_offsets, !83, !"dce110_tg_offsets", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 118, i32 53}
!84 = !{ptr @__func__.dce110_mem_input_create, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 612, i32 3}
!86 = !{ptr @mi_regs, !87, !"mi_regs", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 587, i32 45}
!88 = !{ptr @mi_shifts, !89, !"mi_shifts", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 593, i32 41}
!90 = !{ptr @mi_masks, !91, !"mi_masks", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 598, i32 40}
!92 = !{ptr @__func__.dce110_ipp_create, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 648, i32 3}
!94 = !{ptr @ipp_regs, !95, !"ipp_regs", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 182, i32 39}
!96 = !{ptr @ipp_shift, !97, !"ipp_shift", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 188, i32 35}
!98 = !{ptr @ipp_mask, !99, !"ipp_mask", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 192, i32 34}
!100 = !{ptr @xfm_regs, !101, !"xfm_regs", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 201, i32 45}
!102 = !{ptr @xfm_shift, !103, !"xfm_shift", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 207, i32 41}
!104 = !{ptr @xfm_mask, !105, !"xfm_mask", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 211, i32 40}
!106 = !{ptr @opp_regs, !107, !"opp_regs", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 304, i32 39}
!108 = !{ptr @opp_shift, !109, !"opp_shift", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 313, i32 35}
!110 = !{ptr @opp_mask, !111, !"opp_mask", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 317, i32 34}
!112 = !{ptr @aux_engine_regs, !113, !"aux_engine_regs", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 327, i32 42}
!114 = !{ptr @aux_mask, !115, !"aux_mask", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 295, i32 47}
!116 = !{ptr @aux_shift, !117, !"aux_shift", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 291, i32 48}
!118 = !{ptr @i2c_hw_regs, !119, !"i2c_hw_regs", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 739, i32 39}
!120 = !{ptr @i2c_shifts, !121, !"i2c_shifts", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 748, i32 35}
!122 = !{ptr @i2c_masks, !123, !"i2c_masks", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 752, i32 34}
!124 = !{ptr @res_create_funcs, !125, !"res_create_funcs", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 576, i32 43}
!126 = !{ptr @audio_regs, !127, !"audio_regs", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 341, i32 41}
!128 = !{ptr @audio_shift, !129, !"audio_shift", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 351, i32 37}
!130 = !{ptr @audio_mask, !131, !"audio_mask", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 355, i32 36}
!132 = !{ptr @stream_enc_regs, !133, !"stream_enc_regs", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 265, i32 49}
!134 = !{ptr @se_shift, !135, !"se_shift", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 271, i32 46}
!136 = !{ptr @se_mask, !137, !"se_mask", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 275, i32 45}
!138 = !{ptr @hwseq_stoney_reg, !139, !"hwseq_stoney_reg", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 544, i32 41}
!140 = !{ptr @hwseq_cz_reg, !141, !"hwseq_cz_reg", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 548, i32 41}
!142 = !{ptr @hwseq_shift, !143, !"hwseq_shift", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 552, i32 37}
!144 = !{ptr @hwseq_mask, !145, !"hwseq_mask", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 556, i32 36}
!146 = !{ptr @plane_cap, !147, !"plane_cap", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 404, i32 34}
!148 = !{ptr @underlay_plane_cap, !149, !"underlay_plane_cap", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_resource.c", i32 431, i32 34}
!150 = !{i32 1, !"wchar_size", i32 2}
!151 = !{i32 1, !"min_enum_size", i32 4}
!152 = !{i32 8, !"branch-target-enforcement", i32 0}
!153 = !{i32 8, !"sign-return-address", i32 0}
!154 = !{i32 8, !"sign-return-address-all", i32 0}
!155 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!156 = !{i32 7, !"uwtable", i32 1}
!157 = !{i32 7, !"frame-pointer", i32 2}
!158 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!159 = !{i8 0, i8 2}
!160 = !{!"branch_weights", i32 2000, i32 1}
!161 = !{i64 2148240111, i64 2148240116, i64 2148240129, i64 2148240173, i64 2148240207, i64 2148240228}
