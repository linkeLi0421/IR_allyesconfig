; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/core/dc_debug.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.dc_debug_options = type { i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i32, i32, i8, i8, i8, i8, %struct.dc_bw_validation_profile, i8, i8, i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i8, %union.mem_low_power_enable_options, %union.root_clock_optimization_options, i8, i8, i8, i8, i8, i8, i32, i32, i8 }
%struct.dc_bw_validation_profile = type { i8, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.mem_low_power_enable_options = type { i32 }
%union.root_clock_optimization_options = type { %struct.anon.0 }
%struct.anon.0 = type { i32 }
%struct.dc_plane_state = type { %struct.dc_plane_address, %struct.dc_plane_flip_time, i8, %struct.scaling_taps, %struct.rect, %struct.rect, %struct.rect, %struct.plane_size, %union.dc_tiling_info, %struct.dc_plane_dcc_param, ptr, ptr, ptr, %struct.dc_csc_transform, %struct.fixed31_32, %struct.fixed31_32, %struct.colorspace_transform, %struct.dc_hdr_static_metadata, i32, ptr, ptr, ptr, i32, i32, i32, i8, i8, i8, i32, i8, i8, i8, i32, %union.surface_update_flags, i8, i8, %struct.dc_plane_status, ptr, i8, i32, %struct.kref }
%struct.dc_plane_address = type { i32, i8, %union.anon.26, %union.large_integer, i8 }
%union.anon.26 = type { %struct.anon.28 }
%struct.anon.28 = type { %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer, %union.large_integer }
%union.large_integer = type { i64 }
%struct.dc_plane_flip_time = type { [10 x i32], i32, i32 }
%struct.scaling_taps = type { i32, i32, i32, i32, i8 }
%struct.rect = type { i32, i32, i32, i32 }
%struct.plane_size = type { i32, i32, %struct.rect, %struct.rect }
%union.dc_tiling_info = type { %struct.anon.31 }
%struct.anon.31 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_plane_dcc_param = type { i8, i32, i8, i8, i32, i8, i8 }
%struct.dc_csc_transform = type { [12 x i16], i8 }
%struct.fixed31_32 = type { i64 }
%struct.colorspace_transform = type { [12 x %struct.fixed31_32], i8 }
%struct.dc_hdr_static_metadata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.surface_update_flags = type { %struct.anon.35 }
%struct.anon.35 = type { i32 }
%struct.dc_plane_status = type { %struct.dc_plane_address, %struct.dc_plane_address, i8, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dc_surface_update = type { ptr, ptr, ptr, ptr, %struct.fixed31_32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_flip_addrs = type { %struct.dc_plane_address, i32, i8, i8 }
%struct.dc_plane_info = type { %struct.plane_size, %union.dc_tiling_info, %struct.dc_plane_dcc_param, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i32 }
%struct.dc_scaling_info = type { %struct.rect, %struct.rect, %struct.rect, %struct.scaling_taps }
%struct.crtc_position = type { i32, i32, i32 }
%struct.dc = type { %struct.dc_debug_options, %struct.dc_versions, %struct.dc_caps, %struct.dc_cap_funcs, %struct.dc_config, %struct.dc_bounding_box_overrides, %struct.dc_bug_wa, ptr, %struct.dc_phy_addr_space_config, i8, [12 x ptr], ptr, ptr, ptr, %struct.dm_pp_clock_levels, ptr, ptr, %struct.hw_sequencer_funcs, ptr, i8, i8, ptr, %struct.dc_debug_data, %struct.dpcd_vendor_signature, ptr, ptr }
%struct.dc_versions = type { ptr, %struct.dmcu_version }
%struct.dmcu_version = type { i32, i32, i32, i32 }
%struct.dc_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [6 x %struct.dc_plane_cap], %struct.dc_color_caps, i8, i8, i8, i32 }
%struct.dc_plane_cap = type { i32, i8, [3 x i8], %struct.anon.1, %struct.anon.2, %struct.anon.3, i32, i32 }
%struct.anon.1 = type { i8, [3 x i8] }
%struct.anon.2 = type { i32, i32, i32 }
%struct.anon.3 = type { i32, i32, i32 }
%struct.dc_color_caps = type { %struct.dpp_color_caps, %struct.mpc_color_caps }
%struct.dpp_color_caps = type { i16, %struct.rom_curve_caps, %struct.rom_curve_caps }
%struct.rom_curve_caps = type { i8, i8 }
%struct.mpc_color_caps = type { i8, i8, %struct.rom_curve_caps }
%struct.dc_cap_funcs = type { ptr }
%struct.dc_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64, i8, i8, i8, i8 }
%struct.dc_bounding_box_overrides = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dc_bug_wa = type { i8, i8, i8, i8 }
%struct.dc_phy_addr_space_config = type { %struct.anon.55, %struct.anon.56, i8, i8, i64 }
%struct.anon.55 = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.56 = type { i64, i64, i64, i8 }
%struct.dm_pp_clock_levels = type { i32, [16 x i32] }
%struct.hw_sequencer_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dc_debug_data = type { i32, i32, i32 }
%struct.dpcd_vendor_signature = type { i8, %union.dpcd_ieee_vendor_signature }
%union.dpcd_ieee_vendor_signature = type { %struct.anon.69 }
%struct.anon.69 = type { [3 x i8], [6 x i8], i8, [2 x i8] }
%struct.resource_pool = type { [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [6 x ptr], [12 x ptr], ptr, ptr, ptr, [6 x ptr], [6 x ptr], [6 x ptr], i8, [1 x ptr], [1 x ptr], %struct.anon.62, [6 x ptr], i32, i32, i32, [7 x ptr], i32, i32, %struct.anon.63, i32, i32, i32, ptr, [7 x ptr], i32, [7 x ptr], i32, %struct.audio_support, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.62 = type { i8, [3 x i8] }
%struct.anon.63 = type { i32, i32, i32 }
%struct.audio_support = type { i8, i8, i8 }
%struct.pipe_ctx = type { ptr, ptr, %struct.plane_resource, %struct.stream_resource, %struct.link_resource, ptr, %struct.pll_settings, i8, i8, ptr, ptr, ptr, ptr, %union.pipe_update_flags, ptr, ptr, i8 }
%struct.plane_resource = type { %struct.scaler_data, ptr, ptr, ptr, ptr, ptr, i8, %struct.dcn_fe_bandwidth }
%struct.scaler_data = type { i32, i32, %struct.scaling_taps, %struct.rect, %struct.rect, %struct.rect, %struct.scaling_ratios, %struct.scl_inits, %struct.sharpness_adj, i32, %struct.line_buffer_params }
%struct.scaling_ratios = type { %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32, %struct.fixed31_32 }
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
%struct.timing_generator_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.timing_generator = type { ptr, ptr, ptr, i32 }
%struct.dc_stream_state = type { ptr, ptr, ptr, %struct.dc_panel_patch, %union.display_content_support, %struct.dc_crtc_timing, %struct.dc_crtc_timing_adjust, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.rect, %struct.rect, %struct.freesync_context, %struct.audio_info, %struct.dc_info_packet, %union.large_integer, i8, ptr, %struct.colorspace_transform, %struct.dc_csc_transform, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.periodic_interrupt_config, %struct.periodic_interrupt_config, ptr, %struct.bit_depth_reduction_params, %struct.clamping_and_pixel_encoding_params, i32, i32, i8, ptr, %struct.dc_cursor_attributes, %struct.dc_cursor_position, i32, %struct.kref, %struct.crtc_trigger_info, i32, [1 x %struct.dc_writeback_info], ptr, ptr, i8, %struct.anon.36, i8, i8, i32, %struct.test_pattern, %union.stream_update_flags, i8, i8 }
%struct.dc_panel_patch = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.display_content_support = type { i32 }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_flags, i32, %struct.dc_dsc_config }
%struct.dc_crtc_timing_flags = type { i24 }
%struct.dc_dsc_config = type { i32, i32, i32, i8, i32, i32, i8, i32, i8 }
%struct.dc_crtc_timing_adjust = type { i32, i32, i32, i32 }
%struct.freesync_context = type { i8 }
%struct.audio_info = type { %struct.audio_info_flags, i32, i32, i32, [20 x i8], i32, i32, [2 x i32], i32, [16 x %struct.audio_mode] }
%struct.audio_info_flags = type { %union.anon.18 }
%union.anon.18 = type { %struct.audio_speaker_flags }
%struct.audio_speaker_flags = type { i8, [3 x i8] }
%struct.audio_mode = type { i32, i8, %union.audio_sample_rates, %union.anon.19 }
%union.audio_sample_rates = type { %struct.sample_rates }
%struct.sample_rates = type { i8 }
%union.anon.19 = type { i8 }
%struct.periodic_interrupt_config = type { i32, i32 }
%struct.bit_depth_reduction_params = type { %struct.anon.24, i32, i32, i32, i32 }
%struct.anon.24 = type { i24 }
%struct.clamping_and_pixel_encoding_params = type { i32, i32, i32 }
%struct.dc_cursor_attributes = type { %union.large_integer, i32, i32, i32, i32, i32, i32, %union.dc_cursor_attribute_flags }
%union.dc_cursor_attribute_flags = type { %struct.anon.25 }
%struct.anon.25 = type { i32 }
%struct.dc_cursor_position = type { i32, i32, i32, i32, i8, i8 }
%struct.crtc_trigger_info = type { i8, ptr, i32, i32 }
%struct.dc_writeback_info = type { i8, i32, %struct.dc_dwb_params, %struct.mcif_buf_params, %struct.mcif_warmup_params, ptr, i32 }
%struct.dc_dwb_params = type { i32, i32, %struct.cm_grph_csc_adjustment, %struct.dwb_stereo_params, %struct.dc_dwb_cnv_params, i32, i32, i32, i32, i32, %struct.scaling_taps, i32, ptr }
%struct.cm_grph_csc_adjustment = type { [12 x %struct.fixed31_32], i32, i32 }
%struct.dwb_stereo_params = type { i8, i32, i8, i32 }
%struct.dc_dwb_cnv_params = type { i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mcif_buf_params = type { [4 x i64], [4 x i64], i32, i32, i32, i32, i32 }
%struct.mcif_warmup_params = type { %union.large_integer, i32, i32, i32 }
%struct.anon.36 = type { i8 }
%struct.test_pattern = type { i32, i32, ptr, ptr, i32 }
%union.stream_update_flags = type { i32 }

@pre_surface_trace.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pre_surface_trace\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[IF_TRACE]:Planes %d:\0A\00", [41 x i8] zeroinitializer }, align 32
@pre_surface_trace.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [384 x i8], [96 x i8] } { [384 x i8] c"[IF_TRACE]:plane_state->visible = %d;\0Aplane_state->flip_immediate = %d;\0Aplane_state->address.type = %d;\0Aplane_state->address.grph.addr.quad_part = 0x%llX;\0Aplane_state->address.grph.meta_addr.quad_part = 0x%llX;\0Aplane_state->scaling_quality.h_taps = %d;\0Aplane_state->scaling_quality.v_taps = %d;\0Aplane_state->scaling_quality.h_taps_c = %d;\0Aplane_state->scaling_quality.v_taps_c = %d;\0A\00", [96 x i8] zeroinitializer }, align 32
@pre_surface_trace.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [403 x i8], [109 x i8] } { [403 x i8] c"[IF_TRACE]:plane_state->src_rect.x = %d;\0Aplane_state->src_rect.y = %d;\0Aplane_state->src_rect.width = %d;\0Aplane_state->src_rect.height = %d;\0Aplane_state->dst_rect.x = %d;\0Aplane_state->dst_rect.y = %d;\0Aplane_state->dst_rect.width = %d;\0Aplane_state->dst_rect.height = %d;\0Aplane_state->clip_rect.x = %d;\0Aplane_state->clip_rect.y = %d;\0Aplane_state->clip_rect.width = %d;\0Aplane_state->clip_rect.height = %d;\0A\00", [109 x i8] zeroinitializer }, align 32
@pre_surface_trace.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [245 x i8], [43 x i8] } { [245 x i8] c"[IF_TRACE]:plane_state->plane_size.surface_size.x = %d;\0Aplane_state->plane_size.surface_size.y = %d;\0Aplane_state->plane_size.surface_size.width = %d;\0Aplane_state->plane_size.surface_size.height = %d;\0Aplane_state->plane_size.surface_pitch = %d;\0A\00", [43 x i8] zeroinitializer }, align 32
@pre_surface_trace.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [540 x i8], [132 x i8] } { [540 x i8] c"[IF_TRACE]:plane_state->tiling_info.gfx8.num_banks = %d;\0Aplane_state->tiling_info.gfx8.bank_width = %d;\0Aplane_state->tiling_info.gfx8.bank_width_c = %d;\0Aplane_state->tiling_info.gfx8.bank_height = %d;\0Aplane_state->tiling_info.gfx8.bank_height_c = %d;\0Aplane_state->tiling_info.gfx8.tile_aspect = %d;\0Aplane_state->tiling_info.gfx8.tile_aspect_c = %d;\0Aplane_state->tiling_info.gfx8.tile_split = %d;\0Aplane_state->tiling_info.gfx8.tile_split_c = %d;\0Aplane_state->tiling_info.gfx8.tile_mode = %d;\0Aplane_state->tiling_info.gfx8.tile_mode_c = %d;\0A\00", [132 x i8] zeroinitializer }, align 32
@pre_surface_trace.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [255 x i8], [33 x i8] } { [255 x i8] c"[IF_TRACE]:plane_state->tiling_info.gfx8.pipe_config = %d;\0Aplane_state->tiling_info.gfx8.array_mode = %d;\0Aplane_state->color_space = %d;\0Aplane_state->dcc.enable = %d;\0Aplane_state->format = %d;\0Aplane_state->rotation = %d;\0Aplane_state->stereo_format = %d;\0A\00", [33 x i8] zeroinitializer }, align 32
@pre_surface_trace.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[IF_TRACE]:plane_state->tiling_info.gfx9.swizzle = %d;\0A\00", [40 x i8] zeroinitializer }, align 32
@pre_surface_trace.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[IF_TRACE]:\0A\00", [19 x i8] zeroinitializer }, align 32
@pre_surface_trace.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@update_surface_trace.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"update_surface_trace\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[IF_TRACE]:Update %d\0A\00", [42 x i8] zeroinitializer }, align 32
@update_surface_trace.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [177 x i8], [47 x i8] } { [177 x i8] c"[IF_TRACE]:flip_addr->address.type = %d;\0Aflip_addr->address.grph.addr.quad_part = 0x%llX;\0Aflip_addr->address.grph.meta_addr.quad_part = 0x%llX;\0Aflip_addr->flip_immediate = %d;\0A\00", [47 x i8] zeroinitializer }, align 32
@update_surface_trace.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.14, i8 0, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [354 x i8], [94 x i8] } { [354 x i8] c"[IF_TRACE]:plane_info->color_space = %d;\0Aplane_info->format = %d;\0Aplane_info->plane_size.surface_pitch = %d;\0Aplane_info->plane_size.surface_size.height = %d;\0Aplane_info->plane_size.surface_size.width = %d;\0Aplane_info->plane_size.surface_size.x = %d;\0Aplane_info->plane_size.surface_size.y = %d;\0Aplane_info->rotation = %d;\0Aplane_info->stereo_format = %d;\0A\00", [94 x i8] zeroinitializer }, align 32
@update_surface_trace.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.15, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [529 x i8], [143 x i8] } { [529 x i8] c"[IF_TRACE]:plane_info->tiling_info.gfx8.num_banks = %d;\0Aplane_info->tiling_info.gfx8.bank_width = %d;\0Aplane_info->tiling_info.gfx8.bank_width_c = %d;\0Aplane_info->tiling_info.gfx8.bank_height = %d;\0Aplane_info->tiling_info.gfx8.bank_height_c = %d;\0Aplane_info->tiling_info.gfx8.tile_aspect = %d;\0Aplane_info->tiling_info.gfx8.tile_aspect_c = %d;\0Aplane_info->tiling_info.gfx8.tile_split = %d;\0Aplane_info->tiling_info.gfx8.tile_split_c = %d;\0Aplane_info->tiling_info.gfx8.tile_mode = %d;\0Aplane_info->tiling_info.gfx8.tile_mode_c = %d;\0A\00", [143 x i8] zeroinitializer }, align 32
@update_surface_trace.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.16, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [165 x i8], [59 x i8] } { [165 x i8] c"[IF_TRACE]:plane_info->tiling_info.gfx8.pipe_config = %d;\0Aplane_info->tiling_info.gfx8.array_mode = %d;\0Aplane_info->visible = %d;\0Aplane_info->per_pixel_alpha = %d;\0A\00", [59 x i8] zeroinitializer }, align 32
@update_surface_trace.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.17, i8 0, i8 64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[IF_TRACE]:surface->tiling_info.gfx9.swizzle = %d;\0A\00", [44 x i8] zeroinitializer }, align 32
@update_surface_trace.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.18, i8 0, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [591 x i8], [145 x i8] } { [591 x i8] c"[IF_TRACE]:scaling_info->src_rect.x = %d;\0Ascaling_info->src_rect.y = %d;\0Ascaling_info->src_rect.width = %d;\0Ascaling_info->src_rect.height = %d;\0Ascaling_info->dst_rect.x = %d;\0Ascaling_info->dst_rect.y = %d;\0Ascaling_info->dst_rect.width = %d;\0Ascaling_info->dst_rect.height = %d;\0Ascaling_info->clip_rect.x = %d;\0Ascaling_info->clip_rect.y = %d;\0Ascaling_info->clip_rect.width = %d;\0Ascaling_info->clip_rect.height = %d;\0Ascaling_info->scaling_quality.h_taps = %d;\0Ascaling_info->scaling_quality.v_taps = %d;\0Ascaling_info->scaling_quality.h_taps_c = %d;\0Ascaling_info->scaling_quality.v_taps_c = %d;\0A\00", [145 x i8] zeroinitializer }, align 32
@update_surface_trace.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.10, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@update_surface_trace.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.10, i8 0, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@post_surface_trace.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"post_surface_trace\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[IF_TRACE]:post surface process.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"OTG_%d   H_tot:%d  V_tot:%d   H_pos:%d  V_pos:%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DC OK\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No controller resource\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No stream encoder\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"No clock source\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Controller validation failure\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Encoder validation failure\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Surfaces attachment failure\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Surfaces detachment failure\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Surface validation failure\00", [37 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No DP link bandwidth\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Exceed dongle capability\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unsupported pixel format\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Bandwidth validation failure (BW and Watermark)\00", [48 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Scaling failure\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DP link training failure\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DSC validation failure\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"No DSC resource\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Unsupported\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Clk exceed max failure\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Fail clk below minimum\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Fail clk below required CFG (hard_min in PPLIB)\00", [48 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"The operation is not supported.\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"The value specified is not supported.\00", [58 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No link encoder resource\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Unexpected error\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unexpected status error\00", [40 x i8] zeroinitializer }, align 32
@switch.table.dc_status_to_str = internal constant { [28 x ptr], [48 x i8] } { [28 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.47, ptr @.str.47, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 68, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 70, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 90, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 116, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 129, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 153, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 169, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 172, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 188, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 190, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 201, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 221, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 245, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 255, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 260, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 303, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 336, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 380, i32 10 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 382, i32 10 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 384, i32 10 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 386, i32 10 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 388, i32 10 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 390, i32 10 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 392, i32 10 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 394, i32 10 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 396, i32 10 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 398, i32 10 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 400, i32 10 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 402, i32 10 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 404, i32 10 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 406, i32 10 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 408, i32 10 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 410, i32 10 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 412, i32 10 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 414, i32 10 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 416, i32 10 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 418, i32 10 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 420, i32 10 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 422, i32 10 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 424, i32 10 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 426, i32 10 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 428, i32 10 }
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.190 = private constant [60 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 431, i32 9 }
@___asan_gen_.192 = private unnamed_addr constant [30 x i8] c"switch.table.dc_status_to_str\00", align 1
@llvm.compiler.used = appending global [49 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @switch.table.dc_status_to_str], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 403, i32 512, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 245, i32 288, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 255, i32 288, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 177, i32 224, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 354, i32 448, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 529, i32 672, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 165, i32 224, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 591, i32 736, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dc_status_to_str to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pre_surface_trace(ptr nocapture noundef readonly %dc, ptr nocapture noundef readonly %plane_states, i32 noundef %surface_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %surface_count)
  %cmp340 = icmp sgt i32 %surface_count, 0
  br i1 %cmp340, label %for.body.lr.ph, label %entry.do.body228_crit_edge

entry.do.body228_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body228

for.body.lr.ph:                                   ; preds = %entry
  %surface_trace = getelementptr inbounds %struct.dc_debug_options, ptr %dc, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %do.end227.for.body_crit_edge, %for.body.lr.ph
  %i.0341 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end227.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %plane_states, i32 %i.0341
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %surface_trace to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %surface_trace, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.body.do.body9_crit_edge, label %do.body1

for.body.do.body9_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body9

do.body1:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pre_surface_trace.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pre_surface_trace, %if.then5)) #4
          to label %do.body9 [label %if.then5], !srcloc !123

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pre_surface_trace.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.3, i32 noundef %i.0341) #4
  br label %do.body9

do.body9:                                         ; preds = %if.then5, %do.body1, %for.body.do.body9_crit_edge
  %4 = ptrtoint ptr %surface_trace to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %surface_trace, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool12.not = icmp eq i8 %5, 0
  br i1 %tobool12.not, label %do.body9.do.body41_crit_edge, label %do.body14

do.body9.do.body41_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body41

do.body14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pre_surface_trace.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pre_surface_trace, %if.then26)) #4
          to label %do.body41 [label %if.then26], !srcloc !123

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  %visible = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 29
  %6 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %visible, align 4, !range !122
  %8 = zext i8 %7 to i32
  %flip_immediate = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 30
  %9 = ptrtoint ptr %flip_immediate to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flip_immediate, align 1, !range !122
  %11 = zext i8 %10 to i32
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 8
  %14 = getelementptr inbounds %struct.dc_plane_address, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %14, align 8
  %meta_addr = getelementptr inbounds %struct.dc_plane_address, ptr %1, i32 0, i32 2, i32 0, i32 2
  %17 = ptrtoint ptr %meta_addr to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %meta_addr, align 8
  %scaling_quality = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 3
  %h_taps = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %h_taps to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %h_taps, align 4
  %21 = ptrtoint ptr %scaling_quality to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %scaling_quality, align 4
  %h_taps_c = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %h_taps_c to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %h_taps_c, align 4
  %v_taps_c = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %v_taps_c to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %v_taps_c, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pre_surface_trace.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.4, i32 noundef %8, i32 noundef %11, i32 noundef %13, i64 noundef %16, i64 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26) #4
  br label %do.body41

do.body41:                                        ; preds = %if.then26, %do.body14, %do.body9.do.body41_crit_edge
  %27 = ptrtoint ptr %surface_trace to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %surface_trace, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool44.not = icmp eq i8 %28, 0
  br i1 %tobool44.not, label %do.body41.do.body82_crit_edge, label %do.body46

do.body41.do.body82_crit_edge:                    ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body82

do.body46:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pre_surface_trace.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pre_surface_trace, %if.then58)) #4
          to label %do.body82 [label %if.then58], !srcloc !123

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #6
  %src_rect = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %src_rect to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %src_rect, align 8
  %y = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %y, align 4
  %width = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 4, i32 2
  %33 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 4, i32 3
  %35 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height, align 4
  %dst_rect = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 5
  %37 = ptrtoint ptr %dst_rect to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dst_rect, align 8
  %y64 = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 5, i32 1
  %39 = ptrtoint ptr %y64 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %y64, align 4
  %width66 = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 5, i32 2
  %41 = ptrtoint ptr %width66 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %width66, align 8
  %height68 = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 5, i32 3
  %43 = ptrtoint ptr %height68 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %height68, align 4
  %clip_rect = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 6
  %45 = ptrtoint ptr %clip_rect to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %clip_rect, align 8
  %y71 = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 6, i32 1
  %47 = ptrtoint ptr %y71 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %y71, align 4
  %width73 = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 6, i32 2
  %49 = ptrtoint ptr %width73 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %width73, align 8
  %height75 = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 6, i32 3
  %51 = ptrtoint ptr %height75 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %height75, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pre_surface_trace.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.5, i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %52) #4
  br label %do.body82

do.body82:                                        ; preds = %if.then58, %do.body46, %do.body41.do.body82_crit_edge
  %53 = ptrtoint ptr %surface_trace to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %surface_trace, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool85.not = icmp eq i8 %54, 0
  br i1 %tobool85.not, label %do.body82.do.body117_crit_edge, label %do.body87

do.body82.do.body117_crit_edge:                   ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body117

do.body87:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pre_surface_trace.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pre_surface_trace, %if.then99)) #4
          to label %do.body117 [label %if.then99], !srcloc !123

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #6
  %plane_size = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 7
  %surface_size = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 7, i32 2
  %55 = ptrtoint ptr %surface_size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %surface_size, align 8
  %y103 = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 7, i32 2, i32 1
  %57 = ptrtoint ptr %y103 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %y103, align 4
  %width106 = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 7, i32 2, i32 2
  %59 = ptrtoint ptr %width106 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %width106, align 8
  %height109 = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 7, i32 2, i32 3
  %61 = ptrtoint ptr %height109 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %height109, align 4
  %63 = ptrtoint ptr %plane_size to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %plane_size, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pre_surface_trace.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.6, i32 noundef %56, i32 noundef %58, i32 noundef %60, i32 noundef %62, i32 noundef %64) #4
  br label %do.body117

do.body117:                                       ; preds = %if.then99, %do.body87, %do.body82.do.body117_crit_edge
  %65 = ptrtoint ptr %surface_trace to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %surface_trace, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool120.not = icmp eq i8 %66, 0
  br i1 %tobool120.not, label %do.body117.do.body151_crit_edge, label %do.body122

do.body117.do.body151_crit_edge:                  ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body151

do.body122:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pre_surface_trace.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pre_surface_trace, %if.then134)) #4
          to label %do.body151 [label %if.then134], !srcloc !123

if.then134:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #6
  %tiling_info = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 8
  %67 = ptrtoint ptr %tiling_info to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tiling_info, align 8
  %bank_width = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 8, i32 0, i32 1
  %69 = ptrtoint ptr %bank_width to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bank_width, align 4
  %bank_width_c = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 8, i32 0, i32 2
  %71 = ptrtoint ptr %bank_width_c to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bank_width_c, align 8
  %bank_height = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 8, i32 0, i32 3
  %73 = ptrtoint ptr %bank_height to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bank_height, align 4
  %bank_height_c = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 8, i32 0, i32 4
  %75 = ptrtoint ptr %bank_height_c to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bank_height_c, align 8
  %tile_aspect = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 8, i32 0, i32 5
  %77 = ptrtoint ptr %tile_aspect to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tile_aspect, align 4
  %tile_aspect_c = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 8, i32 0, i32 6
  %79 = ptrtoint ptr %tile_aspect_c to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tile_aspect_c, align 8
  %tile_split = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 8, i32 0, i32 7
  %81 = ptrtoint ptr %tile_split to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tile_split, align 4
  %tile_split_c = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 8, i32 0, i32 8
  %83 = ptrtoint ptr %tile_split_c to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tile_split_c, align 8
  %tile_mode = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 8, i32 0, i32 9
  %85 = ptrtoint ptr %tile_mode to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tile_mode, align 4
  %tile_mode_c = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 8, i32 0, i32 10
  %87 = ptrtoint ptr %tile_mode_c to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tile_mode_c, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pre_surface_trace.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.7, i32 noundef %68, i32 noundef %70, i32 noundef %72, i32 noundef %74, i32 noundef %76, i32 noundef %78, i32 noundef %80, i32 noundef %82, i32 noundef %84, i32 noundef %86, i32 noundef %88) #4
  br label %do.body151

do.body151:                                       ; preds = %if.then134, %do.body122, %do.body117.do.body151_crit_edge
  %89 = ptrtoint ptr %surface_trace to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %surface_trace, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool154.not = icmp eq i8 %90, 0
  br i1 %tobool154.not, label %do.body151.do.body179_crit_edge, label %do.body156

do.body151.do.body179_crit_edge:                  ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body179

do.body156:                                       ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pre_surface_trace.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pre_surface_trace, %if.then168)) #4
          to label %do.body179 [label %if.then168], !srcloc !123

if.then168:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #6
  %pipe_config = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 8, i32 0, i32 11
  %91 = ptrtoint ptr %pipe_config to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pipe_config, align 4
  %array_mode = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 8, i32 0, i32 12
  %93 = ptrtoint ptr %array_mode to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %array_mode, align 8
  %color_space = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 18
  %95 = ptrtoint ptr %color_space to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %color_space, align 8
  %dcc = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 9
  %97 = ptrtoint ptr %dcc to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %dcc, align 4, !range !122
  %99 = zext i8 %98 to i32
  %format = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 22
  %100 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %format, align 8
  %rotation = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 23
  %102 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %rotation, align 4
  %stereo_format = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 24
  %104 = ptrtoint ptr %stereo_format to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %stereo_format, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pre_surface_trace.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.8, i32 noundef %92, i32 noundef %94, i32 noundef %96, i32 noundef %99, i32 noundef %101, i32 noundef %103, i32 noundef %105) #4
  br label %do.body179

do.body179:                                       ; preds = %if.then168, %do.body156, %do.body151.do.body179_crit_edge
  %106 = ptrtoint ptr %surface_trace to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %surface_trace, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool182.not = icmp eq i8 %107, 0
  br i1 %tobool182.not, label %do.body179.do.body204_crit_edge, label %do.body184

do.body179.do.body204_crit_edge:                  ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body204

do.body184:                                       ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pre_surface_trace.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pre_surface_trace, %if.then196)) #4
          to label %do.body204 [label %if.then196], !srcloc !123

if.then196:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #6
  %tiling_info197 = getelementptr inbounds %struct.dc_plane_state, ptr %1, i32 0, i32 8
  %108 = ptrtoint ptr %tiling_info197 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %tiling_info197, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pre_surface_trace.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.9, i32 noundef %109) #4
  br label %do.body204

do.body204:                                       ; preds = %if.then196, %do.body184, %do.body179.do.body204_crit_edge
  %110 = ptrtoint ptr %surface_trace to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %surface_trace, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool207.not = icmp eq i8 %111, 0
  br i1 %tobool207.not, label %do.body204.do.end227_crit_edge, label %do.body209

do.body204.do.end227_crit_edge:                   ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end227

do.body209:                                       ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pre_surface_trace.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pre_surface_trace, %if.then221)) #4
          to label %do.end227 [label %if.then221], !srcloc !123

if.then221:                                       ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pre_surface_trace.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.10) #4
  br label %do.end227

do.end227:                                        ; preds = %if.then221, %do.body209, %do.body204.do.end227_crit_edge
  %inc = add nuw nsw i32 %i.0341, 1
  %exitcond.not = icmp eq i32 %inc, %surface_count
  br i1 %exitcond.not, label %do.end227.do.body228_crit_edge, label %do.end227.for.body_crit_edge

do.end227.for.body_crit_edge:                     ; preds = %do.end227
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.end227.do.body228_crit_edge:                   ; preds = %do.end227
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body228

do.body228:                                       ; preds = %do.end227.do.body228_crit_edge, %entry.do.body228_crit_edge
  %surface_trace230 = getelementptr inbounds %struct.dc_debug_options, ptr %dc, i32 0, i32 6
  %112 = ptrtoint ptr %surface_trace230 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %surface_trace230, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool231.not = icmp eq i8 %113, 0
  br i1 %tobool231.not, label %do.body228.do.end251_crit_edge, label %do.body233

do.body228.do.end251_crit_edge:                   ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end251

do.body233:                                       ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pre_surface_trace.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pre_surface_trace, %if.then245)) #4
          to label %do.end251 [label %if.then245], !srcloc !123

if.then245:                                       ; preds = %do.body233
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pre_surface_trace.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.10) #4
  br label %do.end251

do.end251:                                        ; preds = %if.then245, %do.body233, %do.body228.do.end251_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_surface_trace(ptr nocapture noundef readonly %dc, ptr nocapture noundef readonly %updates, i32 noundef %surface_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %surface_count)
  %cmp397 = icmp sgt i32 %surface_count, 0
  br i1 %cmp397, label %for.body.lr.ph, label %entry.do.body282_crit_edge

entry.do.body282_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body282

for.body.lr.ph:                                   ; preds = %entry
  %surface_trace = getelementptr inbounds %struct.dc_debug_options, ptr %dc, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %do.end281.for.body_crit_edge, %for.body.lr.ph
  %i.0398 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end281.for.body_crit_edge ]
  %0 = ptrtoint ptr %surface_trace to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %surface_trace, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.body.do.end8_crit_edge, label %do.body1

for.body.do.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end8

do.body1:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_surface_trace.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_surface_trace, %if.then5)) #4
          to label %do.end8 [label %if.then5], !srcloc !123

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @update_surface_trace.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.12, i32 noundef %i.0398) #4
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %for.body.do.end8_crit_edge
  %flip_addr = getelementptr %struct.dc_surface_update, ptr %updates, i32 %i.0398, i32 1
  %2 = ptrtoint ptr %flip_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %flip_addr, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %do.end8.if.end42_crit_edge, label %do.body11

do.end8.if.end42_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

do.body11:                                        ; preds = %do.end8
  %4 = ptrtoint ptr %surface_trace to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %surface_trace, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool14.not = icmp eq i8 %5, 0
  br i1 %tobool14.not, label %do.body11.if.end42_crit_edge, label %do.body16

do.body11.if.end42_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

do.body16:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_surface_trace.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_surface_trace, %if.then28)) #4
          to label %if.end42 [label %if.then28], !srcloc !123

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %flip_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %flip_addr, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %10 = getelementptr inbounds %struct.dc_plane_address, ptr %7, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %10, align 8
  %meta_addr = getelementptr inbounds %struct.dc_plane_address, ptr %7, i32 0, i32 2, i32 0, i32 2
  %13 = ptrtoint ptr %meta_addr to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %meta_addr, align 8
  %flip_immediate = getelementptr inbounds %struct.dc_flip_addrs, ptr %7, i32 0, i32 2
  %15 = ptrtoint ptr %flip_immediate to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flip_immediate, align 4, !range !122
  %17 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @update_surface_trace.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.13, i32 noundef %9, i64 noundef %12, i64 noundef %14, i32 noundef %17) #4
  br label %if.end42

if.end42:                                         ; preds = %if.then28, %do.body16, %do.body11.if.end42_crit_edge, %do.end8.if.end42_crit_edge
  %plane_info = getelementptr %struct.dc_surface_update, ptr %updates, i32 %i.0398, i32 2
  %18 = ptrtoint ptr %plane_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %plane_info, align 8
  %tobool43.not = icmp eq ptr %19, null
  br i1 %tobool43.not, label %if.end42.if.end190_crit_edge, label %do.body45

if.end42.if.end190_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end190

do.body45:                                        ; preds = %if.end42
  %20 = ptrtoint ptr %surface_trace to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %surface_trace, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool48.not = icmp eq i8 %21, 0
  br i1 %tobool48.not, label %do.body45.do.body85_crit_edge, label %do.body50

do.body45.do.body85_crit_edge:                    ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body85

do.body50:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_surface_trace.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_surface_trace, %if.then62)) #4
          to label %do.body85 [label %if.then62], !srcloc !123

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %plane_info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %plane_info, align 8
  %color_space = getelementptr inbounds %struct.dc_plane_info, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %color_space to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %color_space, align 4
  %format = getelementptr inbounds %struct.dc_plane_info, ptr %23, i32 0, i32 3
  %26 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %format, align 4
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %23, align 4
  %surface_size = getelementptr inbounds %struct.plane_size, ptr %23, i32 0, i32 2
  %height = getelementptr inbounds %struct.plane_size, ptr %23, i32 0, i32 2, i32 3
  %30 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %height, align 4
  %width = getelementptr inbounds %struct.plane_size, ptr %23, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %width, align 4
  %34 = ptrtoint ptr %surface_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %surface_size, align 4
  %y = getelementptr inbounds %struct.plane_size, ptr %23, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %y, align 4
  %rotation = getelementptr inbounds %struct.dc_plane_info, ptr %23, i32 0, i32 4
  %38 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rotation, align 4
  %stereo_format = getelementptr inbounds %struct.dc_plane_info, ptr %23, i32 0, i32 5
  %40 = ptrtoint ptr %stereo_format to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %stereo_format, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @update_surface_trace.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.14, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41) #4
  br label %do.body85

do.body85:                                        ; preds = %if.then62, %do.body50, %do.body45.do.body85_crit_edge
  %42 = ptrtoint ptr %surface_trace to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %surface_trace, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool88.not = icmp eq i8 %43, 0
  br i1 %tobool88.not, label %do.body85.do.body130_crit_edge, label %do.body90

do.body85.do.body130_crit_edge:                   ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body130

do.body90:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_surface_trace.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_surface_trace, %if.then102)) #4
          to label %do.body130 [label %if.then102], !srcloc !123

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #6
  %44 = ptrtoint ptr %plane_info to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %plane_info, align 8
  %tiling_info = getelementptr inbounds %struct.dc_plane_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %tiling_info to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tiling_info, align 4
  %bank_width = getelementptr inbounds %struct.dc_plane_info, ptr %45, i32 0, i32 1, i32 0, i32 1
  %48 = ptrtoint ptr %bank_width to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bank_width, align 4
  %bank_width_c = getelementptr inbounds %struct.dc_plane_info, ptr %45, i32 0, i32 1, i32 0, i32 2
  %50 = ptrtoint ptr %bank_width_c to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bank_width_c, align 4
  %bank_height = getelementptr inbounds %struct.dc_plane_info, ptr %45, i32 0, i32 1, i32 0, i32 3
  %52 = ptrtoint ptr %bank_height to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bank_height, align 4
  %bank_height_c = getelementptr inbounds %struct.dc_plane_info, ptr %45, i32 0, i32 1, i32 0, i32 4
  %54 = ptrtoint ptr %bank_height_c to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bank_height_c, align 4
  %tile_aspect = getelementptr inbounds %struct.dc_plane_info, ptr %45, i32 0, i32 1, i32 0, i32 5
  %56 = ptrtoint ptr %tile_aspect to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tile_aspect, align 4
  %tile_aspect_c = getelementptr inbounds %struct.dc_plane_info, ptr %45, i32 0, i32 1, i32 0, i32 6
  %58 = ptrtoint ptr %tile_aspect_c to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tile_aspect_c, align 4
  %tile_split = getelementptr inbounds %struct.dc_plane_info, ptr %45, i32 0, i32 1, i32 0, i32 7
  %60 = ptrtoint ptr %tile_split to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tile_split, align 4
  %tile_split_c = getelementptr inbounds %struct.dc_plane_info, ptr %45, i32 0, i32 1, i32 0, i32 8
  %62 = ptrtoint ptr %tile_split_c to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tile_split_c, align 4
  %tile_mode = getelementptr inbounds %struct.dc_plane_info, ptr %45, i32 0, i32 1, i32 0, i32 9
  %64 = ptrtoint ptr %tile_mode to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tile_mode, align 4
  %tile_mode_c = getelementptr inbounds %struct.dc_plane_info, ptr %45, i32 0, i32 1, i32 0, i32 10
  %66 = ptrtoint ptr %tile_mode_c to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tile_mode_c, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @update_surface_trace.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.15, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %65, i32 noundef %67) #4
  br label %do.body130

do.body130:                                       ; preds = %if.then102, %do.body90, %do.body85.do.body130_crit_edge
  %68 = ptrtoint ptr %surface_trace to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %surface_trace, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool133.not = icmp eq i8 %69, 0
  br i1 %tobool133.not, label %do.body130.do.body164_crit_edge, label %do.body135

do.body130.do.body164_crit_edge:                  ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body164

do.body135:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_surface_trace.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_surface_trace, %if.then147)) #4
          to label %do.body164 [label %if.then147], !srcloc !123

if.then147:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #6
  %70 = ptrtoint ptr %plane_info to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %plane_info, align 8
  %pipe_config = getelementptr inbounds %struct.dc_plane_info, ptr %71, i32 0, i32 1, i32 0, i32 11
  %72 = ptrtoint ptr %pipe_config to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pipe_config, align 4
  %array_mode = getelementptr inbounds %struct.dc_plane_info, ptr %71, i32 0, i32 1, i32 0, i32 12
  %74 = ptrtoint ptr %array_mode to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %array_mode, align 4
  %visible = getelementptr inbounds %struct.dc_plane_info, ptr %71, i32 0, i32 8
  %76 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %visible, align 1, !range !122
  %78 = zext i8 %77 to i32
  %per_pixel_alpha = getelementptr inbounds %struct.dc_plane_info, ptr %71, i32 0, i32 9
  %79 = ptrtoint ptr %per_pixel_alpha to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %per_pixel_alpha, align 2, !range !122
  %81 = zext i8 %80 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @update_surface_trace.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.16, i32 noundef %73, i32 noundef %75, i32 noundef %78, i32 noundef %81) #4
  br label %do.body164

do.body164:                                       ; preds = %if.then147, %do.body135, %do.body130.do.body164_crit_edge
  %82 = ptrtoint ptr %surface_trace to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %surface_trace, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool167.not = icmp eq i8 %83, 0
  br i1 %tobool167.not, label %do.body164.if.end190_crit_edge, label %do.body169

do.body164.if.end190_crit_edge:                   ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end190

do.body169:                                       ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_surface_trace.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_surface_trace, %if.then181)) #4
          to label %if.end190 [label %if.then181], !srcloc !123

if.then181:                                       ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #6
  %84 = ptrtoint ptr %plane_info to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %plane_info, align 8
  %tiling_info183 = getelementptr inbounds %struct.dc_plane_info, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %tiling_info183 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tiling_info183, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @update_surface_trace.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.17, i32 noundef %87) #4
  br label %if.end190

if.end190:                                        ; preds = %if.then181, %do.body169, %do.body164.if.end190_crit_edge, %if.end42.if.end190_crit_edge
  %scaling_info = getelementptr %struct.dc_surface_update, ptr %updates, i32 %i.0398, i32 3
  %88 = ptrtoint ptr %scaling_info to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %scaling_info, align 4
  %tobool191.not = icmp eq ptr %89, null
  br i1 %tobool191.not, label %if.end190.do.body258_crit_edge, label %do.body193

if.end190.do.body258_crit_edge:                   ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body258

do.body193:                                       ; preds = %if.end190
  %90 = ptrtoint ptr %surface_trace to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %surface_trace, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool196.not = icmp eq i8 %91, 0
  br i1 %tobool196.not, label %do.body193.do.body258_crit_edge, label %do.body198

do.body193.do.body258_crit_edge:                  ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body258

do.body198:                                       ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_surface_trace.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_surface_trace, %if.then210)) #4
          to label %do.body258 [label %if.then210], !srcloc !123

if.then210:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #6
  %92 = ptrtoint ptr %scaling_info to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %scaling_info, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 4
  %y215 = getelementptr inbounds %struct.rect, ptr %93, i32 0, i32 1
  %96 = ptrtoint ptr %y215 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %y215, align 4
  %width218 = getelementptr inbounds %struct.rect, ptr %93, i32 0, i32 2
  %98 = ptrtoint ptr %width218 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %width218, align 4
  %height221 = getelementptr inbounds %struct.rect, ptr %93, i32 0, i32 3
  %100 = ptrtoint ptr %height221 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %height221, align 4
  %dst_rect = getelementptr inbounds %struct.dc_scaling_info, ptr %93, i32 0, i32 1
  %102 = ptrtoint ptr %dst_rect to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %dst_rect, align 4
  %y226 = getelementptr inbounds %struct.dc_scaling_info, ptr %93, i32 0, i32 1, i32 1
  %104 = ptrtoint ptr %y226 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %y226, align 4
  %width229 = getelementptr inbounds %struct.dc_scaling_info, ptr %93, i32 0, i32 1, i32 2
  %106 = ptrtoint ptr %width229 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %width229, align 4
  %height232 = getelementptr inbounds %struct.dc_scaling_info, ptr %93, i32 0, i32 1, i32 3
  %108 = ptrtoint ptr %height232 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %height232, align 4
  %clip_rect = getelementptr inbounds %struct.dc_scaling_info, ptr %93, i32 0, i32 2
  %110 = ptrtoint ptr %clip_rect to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %clip_rect, align 4
  %y237 = getelementptr inbounds %struct.dc_scaling_info, ptr %93, i32 0, i32 2, i32 1
  %112 = ptrtoint ptr %y237 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %y237, align 4
  %width240 = getelementptr inbounds %struct.dc_scaling_info, ptr %93, i32 0, i32 2, i32 2
  %114 = ptrtoint ptr %width240 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %width240, align 4
  %height243 = getelementptr inbounds %struct.dc_scaling_info, ptr %93, i32 0, i32 2, i32 3
  %116 = ptrtoint ptr %height243 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %height243, align 4
  %scaling_quality = getelementptr inbounds %struct.dc_scaling_info, ptr %93, i32 0, i32 3
  %h_taps = getelementptr inbounds %struct.dc_scaling_info, ptr %93, i32 0, i32 3, i32 1
  %118 = ptrtoint ptr %h_taps to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %h_taps, align 4
  %120 = ptrtoint ptr %scaling_quality to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %scaling_quality, align 4
  %h_taps_c = getelementptr inbounds %struct.dc_scaling_info, ptr %93, i32 0, i32 3, i32 3
  %122 = ptrtoint ptr %h_taps_c to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %h_taps_c, align 4
  %v_taps_c = getelementptr inbounds %struct.dc_scaling_info, ptr %93, i32 0, i32 3, i32 2
  %124 = ptrtoint ptr %v_taps_c to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %v_taps_c, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @update_surface_trace.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.18, i32 noundef %95, i32 noundef %97, i32 noundef %99, i32 noundef %101, i32 noundef %103, i32 noundef %105, i32 noundef %107, i32 noundef %109, i32 noundef %111, i32 noundef %113, i32 noundef %115, i32 noundef %117, i32 noundef %119, i32 noundef %121, i32 noundef %123, i32 noundef %125) #4
  br label %do.body258

do.body258:                                       ; preds = %if.then210, %do.body198, %do.body193.do.body258_crit_edge, %if.end190.do.body258_crit_edge
  %126 = ptrtoint ptr %surface_trace to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %surface_trace, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool261.not = icmp eq i8 %127, 0
  br i1 %tobool261.not, label %do.body258.do.end281_crit_edge, label %do.body263

do.body258.do.end281_crit_edge:                   ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end281

do.body263:                                       ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_surface_trace.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_surface_trace, %if.then275)) #4
          to label %do.end281 [label %if.then275], !srcloc !123

if.then275:                                       ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @update_surface_trace.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.10) #4
  br label %do.end281

do.end281:                                        ; preds = %if.then275, %do.body263, %do.body258.do.end281_crit_edge
  %inc = add nuw nsw i32 %i.0398, 1
  %exitcond.not = icmp eq i32 %inc, %surface_count
  br i1 %exitcond.not, label %do.end281.do.body282_crit_edge, label %do.end281.for.body_crit_edge

do.end281.for.body_crit_edge:                     ; preds = %do.end281
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.end281.do.body282_crit_edge:                   ; preds = %do.end281
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body282

do.body282:                                       ; preds = %do.end281.do.body282_crit_edge, %entry.do.body282_crit_edge
  %surface_trace284 = getelementptr inbounds %struct.dc_debug_options, ptr %dc, i32 0, i32 6
  %128 = ptrtoint ptr %surface_trace284 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %surface_trace284, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool285.not = icmp eq i8 %129, 0
  br i1 %tobool285.not, label %do.body282.do.end305_crit_edge, label %do.body287

do.body282.do.end305_crit_edge:                   ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end305

do.body287:                                       ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_surface_trace.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_surface_trace, %if.then299)) #4
          to label %do.end305 [label %if.then299], !srcloc !123

if.then299:                                       ; preds = %do.body287
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @update_surface_trace.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.10) #4
  br label %do.end305

do.end305:                                        ; preds = %if.then299, %do.body287, %do.body282.do.end305_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @post_surface_trace(ptr nocapture noundef readonly %dc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %surface_trace = getelementptr inbounds %struct.dc_debug_options, ptr %dc, i32 0, i32 6
  %0 = ptrtoint ptr %surface_trace to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %surface_trace, align 2, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.body1

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @post_surface_trace.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@post_surface_trace, %if.then5)) #4
          to label %do.end7 [label %if.then5], !srcloc !123

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @post_surface_trace.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.20) #4
  br label %do.end7

do.end7:                                          ; preds = %if.then5, %do.body1, %entry.do.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @context_timing_trace(ptr nocapture noundef readonly %dc, ptr nocapture noundef readonly %res_ctx) local_unnamed_addr #0 align 64 {
entry:
  %h_pos = alloca [6 x i32], align 4
  %v_pos = alloca [6 x i32], align 4
  %position = alloca %struct.crtc_position, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %h_pos) #4
  %0 = call ptr @memset(ptr %h_pos, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %v_pos) #4
  %1 = call ptr @memset(ptr %v_pos, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %position) #4
  %2 = ptrtoint ptr %position to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %position, align 4, !annotation !124
  %3 = getelementptr inbounds %struct.crtc_position, ptr %position, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !124
  %5 = getelementptr inbounds %struct.crtc_position, ptr %position, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !124
  %res_pool = getelementptr inbounds %struct.dc, ptr %dc, i32 0, i32 12
  %7 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %res_pool, align 8
  %underlay_pipe_index = getelementptr inbounds %struct.resource_pool, ptr %8, i32 0, i32 20
  %9 = ptrtoint ptr %underlay_pipe_index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %underlay_pipe_index, align 4
  %pipe_count65 = getelementptr inbounds %struct.resource_pool, ptr %8, i32 0, i32 19
  %11 = ptrtoint ptr %pipe_count65 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pipe_count65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp66.not = icmp eq i32 %12, 0
  br i1 %cmp66.not, label %entry.for.cond10.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond10.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %cleanup.for.cond10.preheader_crit_edge, %entry.for.cond10.preheader_crit_edge
  %13 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %res_pool, align 8
  %pipe_count1269 = getelementptr inbounds %struct.resource_pool, ptr %14, i32 0, i32 19
  %15 = ptrtoint ptr %pipe_count1269 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pipe_count1269, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp1370.not = icmp eq i32 %16, 0
  br i1 %cmp1370.not, label %for.cond10.preheader.for.end43_crit_edge, label %for.body15.lr.ph

for.cond10.preheader.for.end43_crit_edge:         ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end43

for.body15.lr.ph:                                 ; preds = %for.cond10.preheader
  %timing_trace = getelementptr inbounds %struct.dc_debug_options, ptr %dc, i32 0, i32 7
  br label %for.body15

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %i.067 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %stream = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.067, i32 1
  %17 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stream, align 4
  %cmp3 = icmp eq ptr %18, null
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %pipe_idx = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.067, i32 7
  %19 = ptrtoint ptr %pipe_idx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pipe_idx, align 8
  %conv = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv)
  %cmp4 = icmp eq i32 %10, %conv
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %tg = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.067, i32 3, i32 2
  %21 = ptrtoint ptr %tg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tg, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %get_position = getelementptr inbounds %struct.timing_generator_funcs, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %get_position to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_position, align 4
  call void %26(ptr noundef %22, ptr noundef nonnull %position) #4
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %3, align 4
  %arrayidx8 = getelementptr [6 x i32], ptr %h_pos, i32 0, i32 %i.067
  %29 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx8, align 4
  %30 = ptrtoint ptr %position to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %position, align 4
  %arrayidx9 = getelementptr [6 x i32], ptr %v_pos, i32 0, i32 %i.067
  %32 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.067, 1
  %33 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %res_pool, align 8
  %pipe_count = getelementptr inbounds %struct.resource_pool, ptr %34, i32 0, i32 19
  %35 = ptrtoint ptr %pipe_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pipe_count, align 4
  %cmp = icmp ult i32 %inc, %36
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.cond10.preheader_crit_edge

cleanup.for.cond10.preheader_crit_edge:           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond10.preheader

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body15:                                       ; preds = %cleanup38.for.body15_crit_edge, %for.body15.lr.ph
  %i.171 = phi i32 [ 0, %for.body15.lr.ph ], [ %inc42, %cleanup38.for.body15_crit_edge ]
  %stream19 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.171, i32 1
  %37 = ptrtoint ptr %stream19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %stream19, align 4
  %cmp20 = icmp eq ptr %38, null
  br i1 %cmp20, label %for.body15.cleanup38_crit_edge, label %lor.lhs.false22

for.body15.cleanup38_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup38

lor.lhs.false22:                                  ; preds = %for.body15
  %pipe_idx23 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.171, i32 7
  %39 = ptrtoint ptr %pipe_idx23 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pipe_idx23, align 8
  %conv24 = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv24)
  %cmp25 = icmp eq i32 %10, %conv24
  br i1 %cmp25, label %lor.lhs.false22.cleanup38_crit_edge, label %do.body

lor.lhs.false22.cleanup38_crit_edge:              ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup38

do.body:                                          ; preds = %lor.lhs.false22
  %41 = ptrtoint ptr %timing_trace to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %timing_trace, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not = icmp eq i8 %42, 0
  br i1 %tobool.not, label %do.body.cleanup38_crit_edge, label %if.then29

do.body.cleanup38_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup38

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %tg31 = getelementptr [6 x %struct.pipe_ctx], ptr %res_ctx, i32 0, i32 %i.171, i32 3, i32 2
  %43 = ptrtoint ptr %tg31 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tg31, align 8
  %inst = getelementptr inbounds %struct.timing_generator, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %inst, align 4
  %timing = getelementptr inbounds %struct.dc_stream_state, ptr %38, i32 0, i32 5
  %47 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %timing, align 8
  %v_total = getelementptr inbounds %struct.dc_stream_state, ptr %38, i32 0, i32 5, i32 6
  %49 = ptrtoint ptr %v_total to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %v_total, align 8
  %arrayidx35 = getelementptr [6 x i32], ptr %h_pos, i32 0, i32 %i.171
  %51 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx35, align 4
  %arrayidx36 = getelementptr [6 x i32], ptr %v_pos, i32 0, i32 %i.171
  %53 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx36, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.21, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %54) #4
  br label %cleanup38

cleanup38:                                        ; preds = %if.then29, %do.body.cleanup38_crit_edge, %lor.lhs.false22.cleanup38_crit_edge, %for.body15.cleanup38_crit_edge
  %inc42 = add nuw i32 %i.171, 1
  %55 = ptrtoint ptr %res_pool to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %res_pool, align 8
  %pipe_count12 = getelementptr inbounds %struct.resource_pool, ptr %56, i32 0, i32 19
  %57 = ptrtoint ptr %pipe_count12 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pipe_count12, align 4
  %cmp13 = icmp ult i32 %inc42, %58
  br i1 %cmp13, label %cleanup38.for.body15_crit_edge, label %cleanup38.for.end43_crit_edge

cleanup38.for.end43_crit_edge:                    ; preds = %cleanup38
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end43

cleanup38.for.body15_crit_edge:                   ; preds = %cleanup38
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body15

for.end43:                                        ; preds = %cleanup38.for.end43_crit_edge, %for.cond10.preheader.for.end43_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %position) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %v_pos) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %h_pos) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @context_clock_trace(ptr nocapture noundef %dc, ptr nocapture noundef %context) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @dc_status_to_str(i32 noundef %status) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 28
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [28 x ptr], ptr @switch.table.dc_status_to_str, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.47, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !31, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !55, !57, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 68, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @pre_surface_trace.__UNIQUE_ID_ddebug303, !1, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 70, i32 3}
!8 = !{ptr @pre_surface_trace.__UNIQUE_ID_ddebug304, !7, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 90, i32 3}
!11 = !{ptr @pre_surface_trace.__UNIQUE_ID_ddebug305, !10, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 116, i32 3}
!14 = !{ptr @pre_surface_trace.__UNIQUE_ID_ddebug306, !13, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 129, i32 3}
!17 = !{ptr @pre_surface_trace.__UNIQUE_ID_ddebug307, !16, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 153, i32 3}
!20 = !{ptr @pre_surface_trace.__UNIQUE_ID_ddebug308, !19, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 169, i32 3}
!23 = !{ptr @pre_surface_trace.__UNIQUE_ID_ddebug309, !22, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 172, i32 3}
!26 = !{ptr @pre_surface_trace.__UNIQUE_ID_ddebug310, !25, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!27 = !{ptr @pre_surface_trace.__UNIQUE_ID_ddebug311, !28, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 174, i32 2}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 188, i32 3}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @update_surface_trace.__UNIQUE_ID_ddebug312, !30, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 190, i32 4}
!35 = !{ptr @update_surface_trace.__UNIQUE_ID_ddebug313, !34, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 201, i32 4}
!38 = !{ptr @update_surface_trace.__UNIQUE_ID_ddebug314, !37, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 221, i32 4}
!41 = !{ptr @update_surface_trace.__UNIQUE_ID_ddebug315, !40, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 245, i32 4}
!44 = !{ptr @update_surface_trace.__UNIQUE_ID_ddebug316, !43, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 255, i32 4}
!47 = !{ptr @update_surface_trace.__UNIQUE_ID_ddebug317, !46, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 260, i32 4}
!50 = !{ptr @update_surface_trace.__UNIQUE_ID_ddebug318, !49, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!51 = !{ptr @update_surface_trace.__UNIQUE_ID_ddebug319, !52, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 294, i32 3}
!53 = !{ptr @update_surface_trace.__UNIQUE_ID_ddebug320, !54, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 296, i32 2}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 303, i32 2}
!57 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @post_surface_trace.__UNIQUE_ID_ddebug321, !56, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 336, i32 3}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 380, i32 10}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 382, i32 10}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 384, i32 10}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 386, i32 10}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 388, i32 10}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 390, i32 10}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 392, i32 10}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 394, i32 10}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 396, i32 10}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 398, i32 10}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 400, i32 10}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 402, i32 10}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 404, i32 10}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 406, i32 10}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 408, i32 10}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 410, i32 10}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 412, i32 10}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 414, i32 10}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 416, i32 10}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 418, i32 10}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 420, i32 10}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 422, i32 10}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 424, i32 10}
!107 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 426, i32 10}
!109 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 428, i32 10}
!111 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_debug.c", i32 431, i32 9}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{i8 0, i8 2}
!123 = !{i64 2148758376, i64 2148758381, i64 2148758394, i64 2148758438, i64 2148758472, i64 2148758493}
!124 = !{!"auto-init"}
