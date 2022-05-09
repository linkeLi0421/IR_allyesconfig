; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_helpers.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_helpers.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dc_link = type { [4 x ptr], i32, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, %struct.dc_link_settings, %struct.dc_link_settings, %struct.dc_link_settings, [4 x %struct.dc_lane_settings], %struct.dc_link_settings, %struct.dc_link_training_overrides, %struct.dp_audio_test_data, i8, i8, i8, i32, i8, %union.compliance_test_state, ptr, ptr, i8, ptr, ptr, ptr, ptr, %struct.graphics_object_id, i32, %union.ddi_channel_mapping, %struct.connector_device_tag_info, %struct.dpcd_caps, i32, i16, i32, %struct.hdcp_caps, i32, %union.dpcd_sink_ext_caps, %struct.psr_settings, %struct.dc_lane_settings, i8, i8, %struct.link_flags, %struct.link_mst_stream_allocation_table, %struct.dc_link_status, %struct.link_trace, ptr, i32 }
%struct.dc_link_settings = type { i32, i32, i32, i8, i8, i8 }
%struct.dc_link_training_overrides = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dp_audio_test_data = type { %struct.dp_audio_test_data_flags, i8, i8, i8, [8 x i8] }
%struct.dp_audio_test_data_flags = type { i8 }
%union.compliance_test_state = type { %struct.anon.46 }
%struct.anon.46 = type { i8 }
%struct.graphics_object_id = type { i32 }
%union.ddi_channel_mapping = type { %struct.mapping }
%struct.mapping = type { i8 }
%struct.connector_device_tag_info = type { i32, %struct.device_id }
%struct.device_id = type { i32, i16 }
%struct.dpcd_caps = type { %union.dpcd_rev, %union.max_lane_count, %union.max_down_spread, %union.dprx_feature, i8, [8 x i32], i32, i8, %union.sink_count, %struct.dc_dongle_caps, i32, [6 x i8], i8, [2 x i8], i32, [6 x i8], i8, [2 x i8], i8, i8, i8, i8, i8, %union.dpcd_fec_capability, %struct.dpcd_dsc_capabilities, %struct.dc_lttpr_caps, %struct.psr_caps, %struct.dpcd_usb4_dp_tunneling_info }
%union.dpcd_rev = type { %struct.anon.48 }
%struct.anon.48 = type { i8 }
%union.max_lane_count = type { %struct.anon.49 }
%struct.anon.49 = type { i8 }
%union.max_down_spread = type { %struct.anon.50 }
%struct.anon.50 = type { i8 }
%union.dprx_feature = type { %struct.anon.51 }
%struct.anon.51 = type { i8 }
%union.sink_count = type { %struct.anon.52 }
%struct.anon.52 = type { i8 }
%struct.dc_dongle_caps = type { i32, i8, i8, i8, i8, i8, i8, i32, i32 }
%union.dpcd_fec_capability = type { %struct.anon.53 }
%struct.anon.53 = type { i8 }
%struct.dpcd_dsc_capabilities = type { %union.dpcd_dsc_basic_capabilities, %union.dpcd_dsc_branch_decoder_capabilities }
%union.dpcd_dsc_basic_capabilities = type { %struct.anon.54 }
%struct.anon.54 = type { %struct.dpcd_dsc_support, %struct.dpcd_dsc_algorithm_revision, %struct.dpcd_dsc_rc_buffer_block_size, i8, %struct.dpcd_dsc_slice_capability1, %struct.dpcd_dsc_line_buffer_bit_depth, %struct.dpcd_dsc_block_prediction_support, %struct.dpcd_maximum_bits_per_pixel_supported_by_the_decompressor, %struct.dpcd_dsc_decoder_color_format_capabilities, %struct.dpcd_dsc_decoder_color_depth_capabilities, %struct.dpcd_peak_dsc_throughput_dsc_sink, i8, %struct.dpcd_dsc_slice_capabilities_2, i8, %struct.dpcd_bits_per_pixel_increment }
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
%union.dpcd_dsc_branch_decoder_capabilities = type { %struct.anon.55 }
%struct.anon.55 = type { i8, i8, i8 }
%struct.dc_lttpr_caps = type { %union.dpcd_rev, i8, i8, i8, i8, i8, [7 x i8] }
%struct.psr_caps = type { i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.dpcd_usb4_dp_tunneling_info = type { %union.dp_tun_cap_support, %union.dpia_info, i8, [5 x i8] }
%union.dp_tun_cap_support = type { %struct.anon.56 }
%struct.anon.56 = type { i8 }
%union.dpia_info = type { %struct.anon.57 }
%struct.anon.57 = type { i8 }
%struct.hdcp_caps = type { %union.hdcp_rx_caps, %union.hdcp_bcaps }
%union.hdcp_rx_caps = type { %struct.anon.58 }
%struct.anon.58 = type { i8, i8, %struct.anon.59 }
%struct.anon.59 = type { i8 }
%union.hdcp_bcaps = type { %struct.anon.60 }
%struct.anon.60 = type { i8 }
%union.dpcd_sink_ext_caps = type { %struct.anon.61 }
%struct.anon.61 = type { i8 }
%struct.psr_settings = type { i8, i8, i32, i8, i32, i32 }
%struct.dc_lane_settings = type { i32, i32, i32 }
%struct.link_flags = type { i8, i8, i8, i8, i8 }
%struct.link_mst_stream_allocation_table = type { i32, [6 x %struct.link_mst_stream_allocation] }
%struct.link_mst_stream_allocation = type { ptr, i8, i8 }
%struct.dc_link_status = type { i8, ptr }
%struct.link_trace = type { %struct.time_stamp }
%struct.time_stamp = type { i64, i64 }
%struct.dc_edid = type { i32, [2048 x i8] }
%struct.dc_edid_caps = type { i16, i16, i32, i8, i8, [20 x i8], i8, i32, [16 x %struct.dc_cea_audio_mode], i32, i32, %union.display_content_support, i8, i8, i32, i8, i8, i8, %struct.dc_panel_patch }
%struct.dc_cea_audio_mode = type { i8, i8, i8, %union.anon }
%union.anon = type { i8 }
%union.display_content_support = type { i32 }
%struct.dc_panel_patch = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.64 }
%union.anon.64 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.153 }
%union.anon.153 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.cea_sad = type { i8, i8, i8, i8 }
%struct.dc_stream_state = type { ptr, ptr, ptr, %struct.dc_panel_patch, %union.display_content_support, %struct.dc_crtc_timing, %struct.dc_crtc_timing_adjust, %struct.dc_info_packet, %struct.dc_info_packet, %struct.dc_info_packet, %struct.rect, %struct.rect, %struct.freesync_context, %struct.audio_info, %struct.dc_info_packet, %union.large_integer, i8, ptr, %struct.colorspace_transform, %struct.dc_csc_transform, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.periodic_interrupt_config, %struct.periodic_interrupt_config, ptr, %struct.bit_depth_reduction_params, %struct.clamping_and_pixel_encoding_params, i32, i32, i8, ptr, %struct.dc_cursor_attributes, %struct.dc_cursor_position, i32, %struct.kref, %struct.crtc_trigger_info, i32, [1 x %struct.dc_writeback_info], ptr, ptr, i8, %struct.anon.35, i8, i8, i32, %struct.test_pattern, %union.stream_update_flags, i8, i8 }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dc_crtc_timing_flags, i32, %struct.dc_dsc_config }
%struct.dc_crtc_timing_flags = type { i24 }
%struct.dc_dsc_config = type { i32, i32, i32, i8, i32, i32, i8, i32, i8 }
%struct.dc_crtc_timing_adjust = type { i32, i32, i32, i32 }
%struct.rect = type { i32, i32, i32, i32 }
%struct.freesync_context = type { i8 }
%struct.audio_info = type { %struct.audio_info_flags, i32, i32, i32, [20 x i8], i32, i32, [2 x i32], i32, [16 x %struct.audio_mode] }
%struct.audio_info_flags = type { %union.anon.17 }
%union.anon.17 = type { %struct.audio_speaker_flags }
%struct.audio_speaker_flags = type { i8, [3 x i8] }
%struct.audio_mode = type { i32, i8, %union.audio_sample_rates, %union.anon.18 }
%union.audio_sample_rates = type { %struct.sample_rates }
%struct.sample_rates = type { i8 }
%union.anon.18 = type { i8 }
%struct.dc_info_packet = type { i8, i8, i8, i8, i8, [32 x i8] }
%union.large_integer = type { i64 }
%struct.colorspace_transform = type { [12 x %struct.fixed31_32], i8 }
%struct.fixed31_32 = type { i64 }
%struct.dc_csc_transform = type { [12 x i16], i8 }
%struct.periodic_interrupt_config = type { i32, i32 }
%struct.bit_depth_reduction_params = type { %struct.anon.23, i32, i32, i32, i32 }
%struct.anon.23 = type { i24 }
%struct.clamping_and_pixel_encoding_params = type { i32, i32, i32 }
%struct.dc_cursor_attributes = type { %union.large_integer, i32, i32, i32, i32, i32, i32, %union.dc_cursor_attribute_flags }
%union.dc_cursor_attribute_flags = type { %struct.anon.24 }
%struct.anon.24 = type { i32 }
%struct.dc_cursor_position = type { i32, i32, i32, i32, i8, i8 }
%struct.crtc_trigger_info = type { i8, ptr, i32, i32 }
%struct.dc_writeback_info = type { i8, i32, %struct.dc_dwb_params, %struct.mcif_buf_params, %struct.mcif_warmup_params, ptr, i32 }
%struct.dc_dwb_params = type { i32, i32, %struct.cm_grph_csc_adjustment, %struct.dwb_stereo_params, %struct.dc_dwb_cnv_params, i32, i32, i32, i32, i32, %struct.scaling_taps, i32, ptr }
%struct.cm_grph_csc_adjustment = type { [12 x %struct.fixed31_32], i32, i32 }
%struct.dwb_stereo_params = type { i8, i32, i8, i32 }
%struct.dc_dwb_cnv_params = type { i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scaling_taps = type { i32, i32, i32, i32, i8 }
%struct.mcif_buf_params = type { [4 x i64], [4 x i64], i32, i32, i32, i32, i32 }
%struct.mcif_warmup_params = type { %union.large_integer, i32, i32, i32 }
%struct.anon.35 = type { i8 }
%struct.test_pattern = type { i32, i32, ptr, ptr, i32 }
%union.stream_update_flags = type { i32 }
%struct.amdgpu_dm_connector = type { %struct.drm_connector, i32, ptr, %struct.amdgpu_hpd, i32, ptr, ptr, ptr, %struct.drm_dp_mst_topology_mgr, %struct.amdgpu_dm_dp_aux, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.mutex, i8, i32, i32, i8, %struct.dsc_preferred_settings, %struct.drm_display_mode, i32 }
%struct.amdgpu_hpd = type { i32, i8, %struct.amdgpu_gpio_rec }
%struct.amdgpu_gpio_rec = type { i8, i8, i32, i32, i32 }
%struct.drm_dp_mst_topology_mgr = type { %struct.drm_private_obj, ptr, ptr, i32, ptr, i32, i32, i32, i32, %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx, %struct.mutex, %struct.mutex, i8, ptr, [15 x i8], i8, i32, ptr, %struct.mutex, %struct.list_head, %struct.mutex, ptr, ptr, i32, i32, %struct.wait_queue_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.mutex, ptr, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, %struct.mutex }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_dp_sideband_msg_rx = type { [48 x i8], [256 x i8], i8, i8, i8, i8, i8, i8, %struct.drm_dp_sideband_msg_hdr }
%struct.drm_dp_sideband_msg_hdr = type { i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.63 }
%union.anon.63 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.amdgpu_dm_dp_aux = type { %struct.drm_dp_aux, ptr }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.dsc_preferred_settings = type { i32, i32, i32, i32, i8 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.dm_connector_state = type { %struct.drm_connector_state, i32, i8, i8, i8, i8, i8, i8, i32, i64 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_dp_payload = type { i32, i32, i32, i32 }
%struct.dp_mst_stream_allocation_table = type { i32, [6 x %struct.dp_mst_stream_allocation] }
%struct.dp_mst_stream_allocation = type { i8, i8 }
%struct.__va_list = type { ptr }
%struct.va_format = type { ptr, ptr }
%struct.dc_log_buffer_ctx = type { ptr, i32, i32 }
%struct.i2c_command = type { ptr, i8, i32, i32 }
%struct.i2c_payload = type { i8, i8, i32, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dc_sink = type { i32, %struct.dc_edid, %struct.dc_edid_caps, ptr, i32, ptr, [14 x %struct.stereo_3d_features], i8, %struct.dc_sink_dsc_caps, %struct.dc_sink_fec_caps, i8, ptr, ptr, i32, %struct.kref }
%struct.stereo_3d_features = type { i8, i8, i8, i8, i8 }
%struct.dc_sink_dsc_caps = type { i8, %struct.dsc_dec_dpcd_caps }
%struct.dsc_dec_dpcd_caps = type { i8, i8, i32, %union.dsc_slice_caps1, %union.dsc_slice_caps2, i32, i8, i32, %union.dsc_color_formats, %union.dsc_color_depth, i32, i32, i32, i32, i32, i32, i32, i8 }
%union.dsc_slice_caps1 = type { %struct.anon.0 }
%struct.anon.0 = type { i8 }
%union.dsc_slice_caps2 = type { %struct.anon.1 }
%struct.anon.1 = type { i8 }
%union.dsc_color_formats = type { %struct.anon.2 }
%struct.anon.2 = type { i8 }
%union.dsc_color_depth = type { %struct.anon.3 }
%struct.anon.3 = type { i8 }
%struct.dc_sink_fec_caps = type { i8, i8 }
%struct.edid = type { [8 x i8], [2 x i8], [2 x i8], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.est_timings, [8 x %struct.std_timing], [4 x %struct.detailed_timing], i8, i8 }
%struct.est_timings = type { i8, i8, i8 }
%struct.std_timing = type { i8, i8 }
%struct.detailed_timing = type { i16, %union.anon.154 }
%union.anon.154 = type { %struct.detailed_pixel_timing }
%struct.detailed_pixel_timing = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dc_context = type { ptr, ptr, ptr, ptr, i32, %struct.hw_asic_id, i32, ptr, i8, ptr, i32, i32, i32, i64, ptr, %struct.cp_psp }
%struct.hw_asic_id = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.cp_psp = type { ptr, %struct.cp_psp_funcs }
%struct.cp_psp_funcs = type { ptr, ptr }
%struct.dal_allocation = type { %struct.list_head, ptr, ptr, i64 }
%struct.amdgpu_device = type { ptr, ptr, %struct.drm_device, %struct.amdgpu_acp, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.notifier_block, [16 x ptr], %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.mutex, %struct.mutex, %struct.dev_pm_domain, i8, i8, i8, ptr, i32, i32, [16 x i32], i32, i32, ptr, %struct.spinlock, %struct.amdgpu_mmio_remap, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.amdgpu_doorbell, %struct.amdgpu_clock, %struct.amdgpu_gmc, %struct.amdgpu_gart, i32, %struct.amdgpu_vm_manager, [3 x %struct.amdgpu_vmhub], i32, %struct.amdgpu_mman, %struct.amdgpu_vram_scratch, %struct.amdgpu_wb, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.168, i8, ptr, %struct.amdgpu_mode_info, %struct.work_struct, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i64, i32, [28 x ptr], i8, [3 x %struct.amdgpu_sa_manager], [9 x [3 x %struct.amdgpu_sched]], %struct.amdgpu_irq, %struct.amd_powerplay, i8, %struct.smu_context, %struct.amdgpu_pm, i32, i32, %struct.amdgpu_nbio, %struct.amdgpu_hdp, %struct.amdgpu_smuio, %struct.amdgpu_mmhub, %struct.amdgpu_gfxhub, %struct.amdgpu_gfx, %struct.amdgpu_sdma, %struct.amdgpu_uvd, %struct.amdgpu_vce, %struct.amdgpu_vcn, %struct.amdgpu_jpeg, %struct.amdgpu_firmware, %struct.psp_context, %struct.amdgpu_gds, %struct.amdgpu_kfd_dev, %struct.amdgpu_umc, %struct.amdgpu_display_manager, i8, %struct.amdgpu_mes, %struct.amdgpu_df, %struct.amdgpu_mca, [16 x %struct.amdgpu_ip_block], i32, i32, %struct.mutex, [128 x %struct.hlist_head], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [31 x [10 x ptr]], %struct.delayed_work, %struct.amdgpu_virt, %struct.list_head, %struct.mutex, i8, [64 x i8], i8, i8, i8, i8, %struct.atomic_t, i32, %struct.rw_semaphore, %struct.amdgpu_doorbell_index, %struct.mutex, i32, %struct.work_struct, %struct.list_head, i32, i32, i32, i32, i64, [4 x i64], i8, i8, i8, i8, i8, i8, [16 x i8], [64 x i8], [20 x i8], %struct.atomic_t, %struct.ratelimit_state, i32, i32, i8, ptr, i32, ptr, [31 x [10 x i32]], i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.142, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.152, ptr, i32, ptr, i8, i32 }
%struct.anon.142 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.152 = type { i32, ptr }
%struct.amdgpu_acp = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amdgpu_mmio_remap = type { i32, i32 }
%struct.amdgpu_doorbell = type { i32, i32, ptr, i32 }
%struct.amdgpu_clock = type { [3 x %struct.amdgpu_pll], %struct.amdgpu_pll, %struct.amdgpu_pll, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_pll = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_gmc = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, ptr, i32, %struct.amdgpu_irq_src, i32, i8, i32, i8, i32, i64, i64, i64, i64, %struct.spinlock, i8, ptr, %struct.atomic_t, [256 x %struct.amdgpu_gmc_fault], [256 x %struct.anon.167], i8, i8, ptr, %struct.amdgpu_xgmi, %struct.amdgpu_irq_src, i32, i32, i32, ptr, ptr }
%struct.amdgpu_gmc_fault = type { i56, %struct.atomic64_t }
%struct.anon.167 = type { i8, [7 x i8] }
%struct.amdgpu_xgmi = type { i64, i64, i64, i32, i32, %struct.list_head, i8, ptr, i8, i8, ptr }
%struct.amdgpu_gart = type { ptr, ptr, i32, i32, i32, i8, i64 }
%struct.amdgpu_vm_manager = type { [3 x %struct.amdgpu_vmid_mgr], i32, i8, i64, [28 x i32], i64, i32, i32, i32, i32, i64, ptr, [28 x ptr], i32, ptr, %struct.spinlock, %struct.atomic_t, i32, %struct.xarray }
%struct.amdgpu_vmid_mgr = type { %struct.mutex, i32, %struct.list_head, [16 x %struct.amdgpu_vmid], %struct.atomic_t }
%struct.amdgpu_vmid = type { %struct.list_head, %struct.amdgpu_sync, ptr, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.amdgpu_sync = type { [16 x %struct.hlist_head], ptr }
%struct.hlist_head = type { ptr }
%struct.amdgpu_vmhub = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.amdgpu_mman = type { %struct.ttm_device, i8, ptr, ptr, ptr, i8, %struct.mutex, %struct.drm_sched_entity, %struct.amdgpu_vram_mgr, %struct.amdgpu_gtt_mgr, %struct.amdgpu_preempt_mgr, i64, ptr, i64, ptr, i8, ptr, i64, i64, ptr, i32, ptr, i64, i64, ptr, ptr }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.164] }
%struct.anon.164 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.amdgpu_vram_mgr = type { %struct.ttm_resource_manager, %struct.drm_mm, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.atomic64_t, %struct.atomic64_t }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.amdgpu_gtt_mgr = type { %struct.ttm_resource_manager, %struct.drm_mm, %struct.spinlock, %struct.atomic64_t }
%struct.amdgpu_preempt_mgr = type { %struct.ttm_resource_manager, %struct.atomic64_t }
%struct.amdgpu_vram_scratch = type { ptr, ptr, i64 }
%struct.amdgpu_wb = type { ptr, ptr, i64, i32, [8 x i32] }
%struct.anon.168 = type { %struct.spinlock, i64, i64, i64, i32 }
%struct.amdgpu_mode_info = type { ptr, ptr, i8, [6 x ptr], [6 x ptr], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i8, %struct.amdgpu_audio, i32, i32, i32, i32, ptr, ptr }
%struct.amdgpu_audio = type { i8, [9 x %struct.amdgpu_audio_pin], i32 }
%struct.amdgpu_audio_pin = type { i32, i32, i32, i8, i8, i32, i8, i32 }
%struct.amdgpu_irq_src = type { i32, ptr, ptr }
%struct.amdgpu_sa_manager = type { %struct.wait_queue_head, ptr, ptr, [32 x %struct.list_head], %struct.list_head, i32, i64, ptr, i32, i32 }
%struct.amdgpu_sched = type { i32, [8 x ptr] }
%struct.amdgpu_irq = type { i8, i32, %struct.spinlock, [32 x %struct.amdgpu_irq_client], i8, %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.amdgpu_irq_src, ptr, [256 x i32], i32 }
%struct.amdgpu_irq_client = type { ptr }
%struct.amdgpu_ih_ring = type { i32, i32, i32, i8, i8, ptr, ptr, i64, i64, ptr, i64, ptr, i8, i32, %struct.amdgpu_ih_regs, %struct.wait_queue_head, i64 }
%struct.amdgpu_ih_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amd_powerplay = type { ptr, ptr }
%struct.smu_context = type { ptr, %struct.amdgpu_irq_src, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, i64, %struct.smu_table_context, %struct.smu_dpm_context, %struct.smu_power_context, %struct.smu_feature, ptr, %struct.smu_baco_context, %struct.smu_temperature_range, ptr, %struct.smu_umd_pstate_table, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i8, i8, i32, i32, i8, i32, [7 x i32], [7 x i32], i32, i32, i8, i8, i32, i32, i32, i8, i8, %struct.work_struct, %struct.atomic64_t, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, %struct.smu_user_dpm_profile, %struct.stb_context }
%struct.smu_table_context = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, %struct.smu_bios_boot_up_values, ptr, ptr, [15 x %struct.smu_table], %struct.smu_table, %struct.smu_table, %struct.smu_table, i8, ptr, ptr, ptr, i32, ptr }
%struct.smu_bios_boot_up_values = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, i32, i32, i32, i32 }
%struct.smu_table = type { i64, i32, i8, i64, ptr, ptr }
%struct.smu_dpm_context = type { i32, ptr, ptr, i8, i32, i32, i32, ptr, ptr, ptr }
%struct.smu_power_context = type { ptr, i32, %struct.smu_power_gate }
%struct.smu_power_gate = type { i8, i8, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.mutex }
%struct.smu_feature = type { i32, [2 x i32], [2 x i32], [2 x i32], %struct.mutex }
%struct.smu_baco_context = type { %struct.mutex, i32, i8 }
%struct.smu_temperature_range = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.smu_umd_pstate_table = type { %struct.pstates_clk_freq, %struct.pstates_clk_freq, %struct.pstates_clk_freq, %struct.pstates_clk_freq, %struct.pstates_clk_freq }
%struct.pstates_clk_freq = type { i32, i32, i32, %struct.smu_freq_info, %struct.smu_freq_info }
%struct.smu_freq_info = type { i32, i32, i32 }
%struct.smu_user_dpm_profile = type { i32, i32, i32, i32, i32, i32, [23 x i32], i32 }
%struct.stb_context = type { i32, i8, %struct.spinlock }
%struct.amdgpu_pm = type { %struct.mutex, i32, i32, i32, i32, ptr, i8, i32, ptr, i8, i8, i8, i8, i8, i8, %struct.amdgpu_dpm, ptr, i32, i32, i32, %struct.amd_pp_display_configuration, i32, ptr, i8, i32, %struct.i2c_adapter, %struct.mutex, %struct.list_head, [14 x %struct.atomic_t], i32 }
%struct.amdgpu_dpm = type { ptr, i32, ptr, ptr, ptr, ptr, i32, [6 x %struct.amd_vce_state], i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.amdgpu_dpm_dynamic_state, %struct.amdgpu_dpm_fan, i32, i32, i32, i32, i32, i16, i32, i16, i8, i8, i8, i8, %struct.amdgpu_dpm_thermal, i32 }
%struct.amd_vce_state = type { i32, i32, i32, i32, i8, i8 }
%struct.amdgpu_dpm_dynamic_state = type { %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_uvd_clock_voltage_dependency_table, %struct.amdgpu_vce_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_array, %struct.amdgpu_clock_array, %struct.amdgpu_clock_and_voltage_limits, %struct.amdgpu_clock_and_voltage_limits, i32, i32, i16, i16, %struct.amdgpu_cac_leakage_table, %struct.amdgpu_phase_shedding_limits_table, ptr, ptr }
%struct.amdgpu_uvd_clock_voltage_dependency_table = type { i8, ptr }
%struct.amdgpu_vce_clock_voltage_dependency_table = type { i8, ptr }
%struct.amdgpu_clock_voltage_dependency_table = type { i32, ptr }
%struct.amdgpu_clock_array = type { i32, ptr }
%struct.amdgpu_clock_and_voltage_limits = type { i32, i32, i16, i16 }
%struct.amdgpu_cac_leakage_table = type { i32, ptr }
%struct.amdgpu_phase_shedding_limits_table = type { i32, ptr }
%struct.amdgpu_dpm_fan = type { i16, i16, i16, i16, i16, i16, i8, i32, i16, i8, i16, i16, i16, i8 }
%struct.amdgpu_dpm_thermal = type { %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.amdgpu_irq_src }
%struct.amd_pp_display_configuration = type { i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, [32 x %struct.single_display_configuration], i32, i32, i8, i32, i32, i8, i32, i32, i32, i32 }
%struct.single_display_configuration = type { i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_nbio = type { ptr, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, ptr, ptr, ptr }
%struct.amdgpu_hdp = type { ptr, ptr, ptr }
%struct.amdgpu_smuio = type { ptr }
%struct.amdgpu_mmhub = type { ptr, ptr, ptr }
%struct.amdgpu_gfxhub = type { ptr }
%struct.amdgpu_gfx = type { %struct.mutex, %struct.amdgpu_gfx_config, %struct.amdgpu_rlc, %struct.amdgpu_pfp, %struct.amdgpu_ce, %struct.amdgpu_me, %struct.amdgpu_mec, %struct.amdgpu_kiq, %struct.amdgpu_scratch, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [2 x %struct.amdgpu_ring], i32, [8 x %struct.amdgpu_ring], i32, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.sq_work, i32, i32, %struct.amdgpu_cu_info, ptr, i32, i32, i8, %struct.mutex, i32, %struct.delayed_work, %struct.mutex, [4 x i32], ptr, ptr }
%struct.amdgpu_gfx_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], [16 x i32], %struct.gb_addr_config, [4 x [2 x %struct.amdgpu_rb_config]], i32, i32, i32, i32, i32, i64 }
%struct.gb_addr_config = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.amdgpu_rb_config = type { i32, i32, i32, i32 }
%struct.amdgpu_rlc = type { ptr, i64, ptr, ptr, i32, ptr, i64, ptr, ptr, i32, ptr, i64, ptr, i32, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, i64, ptr, ptr, i64, ptr }
%struct.amdgpu_pfp = type { ptr, i64, ptr }
%struct.amdgpu_ce = type { ptr, i64, ptr }
%struct.amdgpu_me = type { ptr, i64, ptr, i32, i32, i32, [2 x ptr], [4 x i32] }
%struct.amdgpu_mec = type { ptr, i64, ptr, i64, i32, i32, i32, [9 x ptr], [4 x i32] }
%struct.amdgpu_kiq = type { i64, ptr, %struct.spinlock, %struct.amdgpu_ring, %struct.amdgpu_irq_src, ptr }
%struct.amdgpu_ring = type { ptr, ptr, %struct.amdgpu_fence_driver, %struct.drm_gpu_scheduler, ptr, ptr, i32, i64, i64, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, ptr, i64, ptr, i64, i32, i8, i8, i32, i32, i64, [16 x i8], i32, i32, i64, ptr, i32, i64, ptr, i32, ptr, i8, i8, i32 }
%struct.amdgpu_fence_driver = type { i64, ptr, i32, %struct.atomic_t, i8, ptr, i32, %struct.timer_list, i32, %struct.spinlock, ptr }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.amdgpu_scratch = type { i32, i32, i32 }
%struct.sq_work = type { %struct.work_struct, i32 }
%struct.amdgpu_cu_info = type { i32, i32, i32, i32, i32, i32, i32, [4 x [4 x i32]], [4 x [4 x i32]] }
%struct.amdgpu_sdma = type { [8 x %struct.amdgpu_sdma_instance], %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, i32, i32, i8, ptr, ptr }
%struct.amdgpu_sdma_instance = type { ptr, i32, i32, %struct.amdgpu_ring, %struct.amdgpu_ring, i8 }
%struct.amdgpu_uvd = type { ptr, i32, i32, i32, i8, i8, i8, [2 x %struct.amdgpu_uvd_inst], [40 x ptr], [40 x %struct.atomic_t], %struct.drm_sched_entity, %struct.delayed_work, i32, i32, i32, ptr }
%struct.amdgpu_uvd_inst = type { ptr, ptr, i64, ptr, %struct.amdgpu_ring, [2 x %struct.amdgpu_ring], %struct.amdgpu_irq_src, i32 }
%struct.amdgpu_vce = type { ptr, i64, ptr, ptr, i32, i32, [16 x %struct.atomic_t], [16 x ptr], [16 x i32], %struct.delayed_work, %struct.mutex, ptr, [3 x %struct.amdgpu_ring], %struct.amdgpu_irq_src, i32, %struct.drm_sched_entity, i32, i32 }
%struct.amdgpu_vcn = type { i32, %struct.delayed_work, ptr, i32, i32, i8, i8, [2 x %struct.amdgpu_vcn_inst], [2 x i8], %struct.amdgpu_vcn_reg, %struct.mutex, %struct.mutex, %struct.atomic_t, i32, ptr }
%struct.amdgpu_vcn_inst = type { ptr, ptr, i64, ptr, %struct.amdgpu_ring, [3 x %struct.amdgpu_ring], %struct.atomic_t, %struct.amdgpu_irq_src, %struct.amdgpu_vcn_reg, ptr, %struct.dpg_pause_state, ptr, i64, ptr, %struct.atomic_t, ptr, i64 }
%struct.dpg_pause_state = type { i32, i32 }
%struct.amdgpu_vcn_reg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_jpeg = type { i8, [2 x %struct.amdgpu_jpeg_inst], %struct.amdgpu_jpeg_reg, i32, %struct.delayed_work, i32, %struct.mutex, %struct.atomic_t }
%struct.amdgpu_jpeg_inst = type { %struct.amdgpu_ring, %struct.amdgpu_irq_src, %struct.amdgpu_jpeg_reg }
%struct.amdgpu_jpeg_reg = type { i32 }
%struct.amdgpu_firmware = type { [35 x %struct.amdgpu_firmware_info], i32, ptr, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i64 }
%struct.amdgpu_firmware_info = type { i32, ptr, i64, ptr, i32, i32, i32 }
%struct.psp_context = type { ptr, %struct.psp_ring, ptr, ptr, ptr, i64, ptr, ptr, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, %struct.psp_bin_desc, ptr, i64, ptr, ptr, ptr, i64, ptr, ptr, i64, ptr, %struct.atomic_t, i8, i8, ptr, i32, %struct.ta_context, %struct.psp_xgmi_context, %struct.psp_ras_context, %struct.ta_cp_context, %struct.ta_cp_context, %struct.ta_cp_context, %struct.ta_cp_context, %struct.mutex, %struct.psp_memory_training_context, i32 }
%struct.psp_ring = type { i32, ptr, i64, ptr, i32, i32 }
%struct.psp_bin_desc = type { i32, i32, i32, ptr }
%struct.ta_context = type { i8, i32, %struct.ta_mem_context, %struct.psp_bin_desc, i32 }
%struct.ta_mem_context = type { ptr, i64, ptr, i32 }
%struct.psp_xgmi_context = type { %struct.ta_context, %struct.psp_xgmi_topology_info, i8 }
%struct.psp_xgmi_topology_info = type { i32, [64 x %struct.psp_xgmi_node_info] }
%struct.psp_xgmi_node_info = type { i64, i8, i8, i32, i8 }
%struct.psp_ras_context = type { %struct.ta_context, ptr }
%struct.ta_cp_context = type { %struct.ta_context, %struct.mutex }
%struct.psp_memory_training_context = type { i64, ptr, i64, i64, ptr, i32, i32, i8 }
%struct.amdgpu_gds = type { i32, i32, i32, i32 }
%struct.amdgpu_kfd_dev = type { ptr, i64, i8 }
%struct.amdgpu_umc = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.amdgpu_display_manager = type { ptr, ptr, ptr, [5 x ptr], [5 x i8], ptr, ptr, ptr, i64, ptr, i32, ptr, ptr, ptr, i16, %struct.drm_private_obj, %struct.mutex, %struct.mutex, ptr, i8, [99 x %struct.list_head], [99 x %struct.list_head], [7 x %struct.common_irq_params], [6 x %struct.common_irq_params], [6 x %struct.common_irq_params], [6 x %struct.common_irq_params], [1 x %struct.common_irq_params], [1 x %struct.common_irq_params], %struct.spinlock, [2 x ptr], [2 x ptr], i8, [2 x %struct.amdgpu_dm_backlight_caps], ptr, ptr, ptr, ptr, %struct.dm_compressor_info, ptr, i32, ptr, ptr, [6 x %struct.amdgpu_encoder], i8, i8, i8, %struct.list_head, %struct.completion, ptr, [2 x i32] }
%struct.common_irq_params = type { ptr, i32, %struct.atomic64_t }
%struct.amdgpu_dm_backlight_caps = type { ptr, i32, i32, i32, i32, i8, i8 }
%struct.dm_compressor_info = type { ptr, ptr, i64 }
%struct.amdgpu_encoder = type { %struct.drm_encoder, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, ptr, i32, i8, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.amdgpu_mes = type { ptr, i32, i32, i32, i64, i64, %struct.amdgpu_ring, ptr, ptr, i64, ptr, i32, i64, ptr, i64, ptr, i32, i64, ptr, i64, ptr, i32, i32, [8 x i32], [2 x i32], [2 x i32], [5 x i32], i32, i64, ptr, i32, i64, ptr, ptr }
%struct.amdgpu_df = type { %struct.amdgpu_df_hash_status, ptr }
%struct.amdgpu_df_hash_status = type { i8, i8, i8 }
%struct.amdgpu_mca = type { ptr, %struct.amdgpu_mca_ras, %struct.amdgpu_mca_ras, %struct.amdgpu_mca_ras }
%struct.amdgpu_mca_ras = type { ptr, ptr }
%struct.amdgpu_ip_block = type { %struct.amdgpu_ip_block_status, ptr }
%struct.amdgpu_ip_block_status = type { i8, i8, i8, i8, i8 }
%struct.atomic64_t = type { i64 }
%struct.amdgpu_virt = type { i32, ptr, ptr, i8, i32, %struct.amdgpu_irq_src, %struct.amdgpu_irq_src, %struct.work_struct, %struct.amdgpu_mm_table, ptr, %struct.amdgpu_vf_error_buffer, %struct.amdgpu_virt_fw_reserve, i32, i32, i32, i8, ptr, i8, i32, %struct.delayed_work, i32, i8, i32, i32, i32, i32 }
%struct.amdgpu_mm_table = type { ptr, ptr, i64 }
%struct.amdgpu_vf_error_buffer = type { %struct.mutex, i32, i32, [16 x i16], [16 x i16], [16 x i64] }
%struct.amdgpu_virt_fw_reserve = type { ptr, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.amdgpu_doorbell_index = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, %union.anon.173, i32, i32, i32, i32 }
%union.anon.173 = type { %struct.anon.175 }
%struct.anon.175 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%union.down_spread_ctrl = type { %struct.anon.176 }
%struct.anon.176 = type { i8 }

@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Couldn't read Speaker Allocation Data Block: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@dm_dtn_log_begin.msg = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[dtn begin]\0A\00", [19 x i8] zeroinitializer }, align 32
@dm_dtn_log_begin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\016amdgpu: %s\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dm_dtn_log_begin\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_helpers.c\00", [60 x i8] zeroinitializer }, align 32
@dm_dtn_log_begin._entry_ptr = internal global ptr @dm_dtn_log_begin._entry, section ".printk_index", align 4
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@dm_dtn_log_append_v._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\016amdgpu: %pV\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dm_dtn_log_append_v\00", [44 x i8] zeroinitializer }, align 32
@dm_dtn_log_append_v._entry_ptr = internal global ptr @dm_dtn_log_append_v._entry, section ".printk_index", align 4
@dm_dtn_log_end.msg = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[dtn end]\0A\00", [21 x i8] zeroinitializer }, align 32
@dm_dtn_log_end._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.7, ptr @.str.3, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dm_dtn_log_end\00", [17 x i8] zeroinitializer }, align 32
@dm_dtn_log_end._entry_ptr = internal global ptr @dm_dtn_log_end._entry, section ".printk_index", align 4
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to find connector for link!\00", [61 x i8] zeroinitializer }, align 32
@dm_helpers_dp_mst_start_top_mgr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016[drm] DM_MST: Differing MST start on aconnector: %p [id: %d]\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dm_helpers_dp_mst_start_top_mgr\00", [32 x i8] zeroinitializer }, align 32
@dm_helpers_dp_mst_start_top_mgr._entry_ptr = internal global ptr @dm_helpers_dp_mst_start_top_mgr._entry, section ".printk_index", align 4
@dm_helpers_dp_mst_start_top_mgr._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016[drm] DM_MST: starting TM on aconnector: %p [id: %d]\0A\00", [40 x i8] zeroinitializer }, align 32
@dm_helpers_dp_mst_start_top_mgr._entry_ptr.13 = internal global ptr @dm_helpers_dp_mst_start_top_mgr._entry.11, section ".printk_index", align 4
@dm_helpers_dp_mst_stop_top_mgr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016[drm] DM_MST: stopping TM on aconnector: %p [id: %d]\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dm_helpers_dp_mst_stop_top_mgr\00", [33 x i8] zeroinitializer }, align 32
@dm_helpers_dp_mst_stop_top_mgr._entry_ptr = internal global ptr @dm_helpers_dp_mst_stop_top_mgr._entry, section ".printk_index", align 4
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to find connector for link!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Send DSC %s to SST RX\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"EDID err: %d, on connector: %s\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Dmub trace irq %sabling: r=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@get_payload_table.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 23450, i64 23487]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 128]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 138, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 339, i32 20 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 342, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 346, i32 36 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 366, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 414, i32 20 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 417, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 432, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 437, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 442, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 460, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 495, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 581, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 667, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private constant [71 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_helpers.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 770, i32 2 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @dm_dtn_log_append_v._entry, ptr @dm_dtn_log_append_v._entry_ptr, ptr @dm_dtn_log_begin._entry, ptr @dm_dtn_log_begin._entry_ptr, ptr @dm_dtn_log_end._entry, ptr @dm_dtn_log_end._entry_ptr, ptr @dm_helpers_dp_mst_start_top_mgr._entry, ptr @dm_helpers_dp_mst_start_top_mgr._entry.11, ptr @dm_helpers_dp_mst_start_top_mgr._entry_ptr, ptr @dm_helpers_dp_mst_start_top_mgr._entry_ptr.13, ptr @dm_helpers_dp_mst_stop_top_mgr._entry, ptr @dm_helpers_dp_mst_stop_top_mgr._entry_ptr, ptr @.str, ptr @dm_dtn_log_begin.msg, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @dm_dtn_log_end.msg, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_dtn_log_begin.msg to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_dtn_log_begin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_dtn_log_append_v._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_dtn_log_end.msg to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_dtn_log_end._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_helpers_dp_mst_start_top_mgr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_helpers_dp_mst_start_top_mgr._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_helpers_dp_mst_stop_top_mgr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_helpers_parse_edid_caps(ptr nocapture noundef readonly %link, ptr noundef %edid, ptr noundef %edid_caps) local_unnamed_addr #0 align 64 {
entry:
  %sads = alloca ptr, align 4
  %sadb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 32
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %raw_edid = getelementptr inbounds %struct.dc_edid, ptr %edid, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sads) #10
  %2 = ptrtoint ptr %sads to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %sads, align 4, !annotation !64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sadb) #10
  %3 = ptrtoint ptr %sadb to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %sadb, align 4
  %tobool.not = icmp eq ptr %edid_caps, null
  %tobool1.not = icmp eq ptr %edid, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call zeroext i1 @drm_edid_is_valid(ptr noundef %raw_edid) #10
  %spec.select = select i1 %call, i32 0, i32 3
  %mfg_id = getelementptr inbounds %struct.dc_edid, ptr %edid, i32 0, i32 1, i32 8
  %4 = ptrtoint ptr %mfg_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mfg_id, align 1
  %conv4 = zext i8 %5 to i16
  %arrayidx6 = getelementptr %struct.dc_edid, ptr %edid, i32 0, i32 1, i32 9
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx6, align 1
  %conv8 = zext i8 %7 to i16
  %shl = shl nuw i16 %conv8, 8
  %or = or i16 %shl, %conv4
  %8 = ptrtoint ptr %edid_caps to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %or, ptr %edid_caps, align 4
  %prod_code = getelementptr inbounds %struct.dc_edid, ptr %edid, i32 0, i32 1, i32 10
  %9 = ptrtoint ptr %prod_code to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %prod_code, align 1
  %conv12 = zext i8 %10 to i16
  %arrayidx14 = getelementptr %struct.dc_edid, ptr %edid, i32 0, i32 1, i32 11
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx14, align 1
  %conv16 = zext i8 %12 to i16
  %shl17 = shl nuw i16 %conv16, 8
  %or18 = or i16 %shl17, %conv12
  %product_id = getelementptr inbounds %struct.dc_edid_caps, ptr %edid_caps, i32 0, i32 1
  %13 = ptrtoint ptr %product_id to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %or18, ptr %product_id, align 2
  %serial = getelementptr inbounds %struct.dc_edid, ptr %edid, i32 0, i32 1, i32 12
  %14 = ptrtoint ptr %serial to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %serial, align 1
  %serial_number = getelementptr inbounds %struct.dc_edid_caps, ptr %edid_caps, i32 0, i32 2
  %16 = ptrtoint ptr %serial_number to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %serial_number, align 4
  %mfg_week = getelementptr inbounds %struct.dc_edid, ptr %edid, i32 0, i32 1, i32 16
  %17 = ptrtoint ptr %mfg_week to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mfg_week, align 1
  %manufacture_week = getelementptr inbounds %struct.dc_edid_caps, ptr %edid_caps, i32 0, i32 3
  %19 = ptrtoint ptr %manufacture_week to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %manufacture_week, align 4
  %mfg_year = getelementptr inbounds %struct.dc_edid, ptr %edid, i32 0, i32 1, i32 17
  %20 = ptrtoint ptr %mfg_year to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mfg_year, align 1
  %manufacture_year = getelementptr inbounds %struct.dc_edid_caps, ptr %edid_caps, i32 0, i32 4
  %22 = ptrtoint ptr %manufacture_year to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %manufacture_year, align 1
  %display_name = getelementptr inbounds %struct.dc_edid_caps, ptr %edid_caps, i32 0, i32 5
  tail call void @drm_edid_get_monitor_name(ptr noundef %raw_edid, ptr noundef %display_name, i32 noundef 20) #10
  %is_hdmi = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 20, i32 11
  %23 = ptrtoint ptr %is_hdmi to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_hdmi, align 1, !range !65
  %edid_hdmi = getelementptr inbounds %struct.dc_edid_caps, ptr %edid_caps, i32 0, i32 16
  %25 = ptrtoint ptr %edid_hdmi to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %edid_hdmi, align 1
  %call24 = call i32 @drm_edid_to_sad(ptr noundef %raw_edid, ptr noundef nonnull %sads) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call24)
  %cmp = icmp slt i32 %call24, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %26 = call i32 @llvm.umin.i32(i32 %call24, i32 16)
  %audio_mode_count = getelementptr inbounds %struct.dc_edid_caps, ptr %edid_caps, i32 0, i32 7
  %27 = ptrtoint ptr %audio_mode_count to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %audio_mode_count, align 4
  %28 = ptrtoint ptr %sads to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sads, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end27
  %i.0109 = phi i32 [ 0, %if.end27 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx33 = getelementptr %struct.cea_sad, ptr %29, i32 %i.0109
  %30 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx33, align 1
  %arrayidx34 = getelementptr %struct.dc_edid_caps, ptr %edid_caps, i32 0, i32 8, i32 %i.0109
  %32 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx34, align 4
  %channels = getelementptr %struct.cea_sad, ptr %29, i32 %i.0109, i32 1
  %33 = ptrtoint ptr %channels to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %channels, align 1
  %add = add i8 %34, 1
  %channel_count = getelementptr %struct.dc_edid_caps, ptr %edid_caps, i32 0, i32 8, i32 %i.0109, i32 1
  %35 = ptrtoint ptr %channel_count to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %add, ptr %channel_count, align 1
  %freq = getelementptr %struct.cea_sad, ptr %29, i32 %i.0109, i32 2
  %36 = ptrtoint ptr %freq to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %freq, align 1
  %sample_rate = getelementptr %struct.dc_edid_caps, ptr %edid_caps, i32 0, i32 8, i32 %i.0109, i32 2
  %38 = ptrtoint ptr %sample_rate to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %sample_rate, align 2
  %byte2 = getelementptr %struct.cea_sad, ptr %29, i32 %i.0109, i32 3
  %39 = ptrtoint ptr %byte2 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %byte2, align 1
  %41 = getelementptr %struct.dc_edid_caps, ptr %edid_caps, i32 0, i32 8, i32 %i.0109, i32 3
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %40, ptr %41, align 1
  %inc = add nuw i32 %i.0109, 1
  %43 = ptrtoint ptr %audio_mode_count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %audio_mode_count, align 4
  %cmp31 = icmp ult i32 %inc, %44
  br i1 %cmp31, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %call45 = call i32 @drm_edid_to_speaker_allocation(ptr noundef %raw_edid, ptr noundef nonnull %sadb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end49.thread, label %if.end49

if.end49.thread:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %call45) #10
  br label %if.end54

if.end49:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool50.not = icmp eq i32 %call45, 0
  br i1 %tobool50.not, label %if.end49.if.end54_crit_edge, label %if.then51

if.end49.if.end54_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %sadb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sadb, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 1
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end49.if.end54_crit_edge, %if.end49.thread
  %.sink = phi i8 [ %48, %if.then51 ], [ 5, %if.end49.thread ], [ 5, %if.end49.if.end54_crit_edge ]
  %speaker_flags53 = getelementptr inbounds %struct.dc_edid_caps, ptr %edid_caps, i32 0, i32 6
  %49 = ptrtoint ptr %speaker_flags53 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %.sink, ptr %speaker_flags53, align 2
  %50 = ptrtoint ptr %sads to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sads, align 4
  call void @kfree(ptr noundef %51) #10
  %52 = ptrtoint ptr %sadb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sadb, align 4
  call void @kfree(ptr noundef %53) #10
  %54 = ptrtoint ptr %edid_caps to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %edid_caps, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 27934, i16 %55)
  %cmp2.i = icmp eq i16 %55, 27934
  br i1 %cmp2.i, label %land.lhs.true.i, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end54
  %56 = ptrtoint ptr %product_id to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %product_id, align 2
  %58 = zext i16 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values)
  switch i16 %57, label %land.lhs.true.i.cleanup_crit_edge [
    i16 23487, label %land.lhs.true.i.for.inc.1.sink.split.i_crit_edge
    i16 23450, label %land.lhs.true.i.for.inc.1.sink.split.i_crit_edge110
  ]

land.lhs.true.i.for.inc.1.sink.split.i_crit_edge110: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.sink.split.i

land.lhs.true.i.for.inc.1.sink.split.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.sink.split.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.1.sink.split.i:                           ; preds = %land.lhs.true.i.for.inc.1.sink.split.i_crit_edge, %land.lhs.true.i.for.inc.1.sink.split.i_crit_edge110
  %max_dsc_target_bpp_limit.i.i = getelementptr inbounds %struct.dc_edid_caps, ptr %edid_caps, i32 0, i32 18, i32 8
  %59 = ptrtoint ptr %max_dsc_target_bpp_limit.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 15, ptr %max_dsc_target_bpp_limit.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.inc.1.sink.split.i, %land.lhs.true.i.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %spec.select, %if.end.cleanup_crit_edge ], [ %spec.select, %if.end54.cleanup_crit_edge ], [ %spec.select, %land.lhs.true.i.cleanup_crit_edge ], [ %spec.select, %for.inc.1.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sadb) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sads) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_edid_is_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_edid_get_monitor_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_edid_to_sad(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_edid_to_speaker_allocation(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dm_helpers_dp_update_branch_info(ptr nocapture noundef %ctx, ptr nocapture noundef %link) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dm_helpers_dp_mst_write_payload_allocation_table(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %stream, ptr nocapture noundef %proposed_table, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dm_stream_context = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 38
  %0 = ptrtoint ptr %dm_stream_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm_stream_context, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %mst_port1 = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %mst_port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mst_port1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %state = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 52
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 8
  %mst_mgr4 = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 8
  %mst_state = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 8, i32 13
  %6 = ptrtoint ptr %mst_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %mst_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %port = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port, align 8
  br i1 %enable, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  %pbn = getelementptr inbounds %struct.dm_connector_state, ptr %5, i32 0, i32 9
  %9 = ptrtoint ptr %pbn to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %pbn, align 8
  %conv = trunc i64 %10 to i32
  %vcpi_slots = getelementptr inbounds %struct.dm_connector_state, ptr %5, i32 0, i32 8
  %11 = ptrtoint ptr %vcpi_slots to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vcpi_slots, align 8
  %call = tail call zeroext i1 @drm_dp_mst_allocate_vcpi(ptr noundef %mst_mgr4, ptr noundef %8, i32 noundef %conv, i32 noundef %12) #10
  br i1 %call, label %if.then8.if.end13_crit_edge, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @drm_dp_mst_reset_vcpi_slots(ptr noundef %mst_mgr4, ptr noundef %8) #10
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then8.if.end13_crit_edge
  %call16 = tail call i32 @drm_dp_update_payload_part1(ptr noundef %mst_mgr4, i32 noundef 1) #10
  %13 = ptrtoint ptr %mst_port1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mst_port1, align 4
  %payload_lock.i = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %14, i32 0, i32 8, i32 21
  tail call void @mutex_lock_nested(ptr noundef %payload_lock.i, i32 noundef 0) #10
  %15 = ptrtoint ptr %proposed_table to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %proposed_table, align 4
  %payloads.i = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %14, i32 0, i32 8, i32 23
  %max_payloads.i = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %14, i32 0, i32 8, i32 5
  %16 = ptrtoint ptr %max_payloads.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_payloads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp92.i = icmp sgt i32 %17, 0
  br i1 %cmp92.i, label %for.body.lr.ph.i, label %if.end13.get_payload_table.exit_crit_edge

if.end13.get_payload_table.exit_crit_edge:        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_payload_table.exit

for.body.lr.ph.i:                                 ; preds = %if.end13
  %proposed_vcpis.i = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %14, i32 0, i32 8, i32 22
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.093.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc67.i, %for.inc.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %payloads.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %payloads.i, align 4
  %num_slots.i = getelementptr %struct.drm_dp_payload, ptr %19, i32 %i.093.i, i32 2
  %20 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp2.i = icmp eq i32 %21, 0
  br i1 %cmp2.i, label %for.body.i.get_payload_table.exit_crit_edge, label %do.body.i

for.body.i.get_payload_table.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_payload_table.exit

do.body.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.drm_dp_payload, ptr %19, i32 %i.093.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp5.not.i = icmp eq i32 %23, 3
  br i1 %cmp5.not.i, label %land.rhs.i, label %do.body.i.do.end48.i_crit_edge

do.body.i.do.end48.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end48.i

land.rhs.i:                                       ; preds = %do.body.i
  %.b90.i = load i1, ptr @get_payload_table.__already_done, align 1
  br i1 %.b90.i, label %land.rhs.i.if.then45.i_crit_edge, label %if.then13.i, !prof !66

land.rhs.i.if.then45.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then45.i

if.then13.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @get_payload_table.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 173, i32 noundef 9, ptr noundef null) #10
  br label %if.then45.i

if.then45.i:                                      ; preds = %if.then13.i, %land.rhs.i.if.then45.i_crit_edge
  tail call void @kgdb_breakpoint() #10
  br label %do.end48.i

do.end48.i:                                       ; preds = %if.then45.i, %do.body.i.do.end48.i_crit_edge
  %24 = ptrtoint ptr %payloads.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %payloads.i, align 4
  %arrayidx50.i = getelementptr %struct.drm_dp_payload, ptr %25, i32 %i.093.i
  %26 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx50.i, align 4
  %.off.i = add i32 %27, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then57.i, label %do.end48.i.for.inc.i_crit_edge

do.end48.i.for.inc.i_crit_edge:                   ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then57.i:                                      ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %proposed_table to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %proposed_table, align 4
  %arrayidx59.i = getelementptr %struct.dp_mst_stream_allocation_table, ptr %proposed_table, i32 0, i32 1, i32 %29
  %num_slots62.i = getelementptr %struct.drm_dp_payload, ptr %25, i32 %i.093.i, i32 2
  %30 = ptrtoint ptr %num_slots62.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_slots62.i, align 4
  %conv.i = trunc i32 %31 to i8
  %slot_count.i = getelementptr %struct.dp_mst_stream_allocation_table, ptr %proposed_table, i32 0, i32 1, i32 %29, i32 1
  %32 = ptrtoint ptr %slot_count.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i, ptr %slot_count.i, align 1
  %33 = ptrtoint ptr %proposed_vcpis.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %proposed_vcpis.i, align 4
  %arrayidx63.i = getelementptr ptr, ptr %34, i32 %i.093.i
  %35 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx63.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %conv64.i = trunc i32 %38 to i8
  %39 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv64.i, ptr %arrayidx59.i, align 1
  %40 = load i32, ptr %proposed_table, align 4
  %inc.i = add i32 %40, 1
  store i32 %inc.i, ptr %proposed_table, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then57.i, %do.end48.i.for.inc.i_crit_edge
  %inc67.i = add nuw nsw i32 %i.093.i, 1
  %41 = ptrtoint ptr %max_payloads.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_payloads.i, align 4
  %cmp.i = icmp slt i32 %inc67.i, %42
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.get_payload_table.exit_crit_edge

for.inc.i.get_payload_table.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_payload_table.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

get_payload_table.exit:                           ; preds = %for.inc.i.get_payload_table.exit_crit_edge, %for.body.i.get_payload_table.exit_crit_edge, %if.end13.get_payload_table.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %payload_lock.i) #10
  br label %cleanup

cleanup:                                          ; preds = %get_payload_table.exit, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %get_payload_table.exit ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.then8.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_mst_allocate_vcpi(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_mst_reset_vcpi_slots(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_update_payload_part1(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dm_helpers_dp_mst_poll_pending_down_reply(ptr nocapture noundef %ctx, ptr nocapture noundef %link) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dm_helpers_dp_mst_clear_payload_allocation_table(ptr nocapture noundef %ctx, ptr nocapture noundef %link) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_helpers_dp_mst_poll_for_allocation_change_trigger(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %stream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dm_stream_context = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 38
  %0 = ptrtoint ptr %dm_stream_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm_stream_context, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %mst_port = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %mst_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mst_port, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mst_state = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 8, i32 13
  %4 = ptrtoint ptr %mst_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %mst_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mst_mgr3 = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 8
  %call = tail call i32 @drm_dp_check_act_status(ptr noundef %mst_mgr3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  %. = select i1 %tobool6.not, i32 0, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %lor.lhs.false.cleanup_crit_edge ], [ 2, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ %., %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_check_act_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dm_helpers_dp_mst_send_payload_allocation(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %stream, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dm_stream_context = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 38
  %0 = ptrtoint ptr %dm_stream_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm_stream_context, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %mst_port1 = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %mst_port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mst_port1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %port = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 8
  %mst_mgr4 = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 8
  %mst_state = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %3, i32 0, i32 8, i32 13
  %6 = ptrtoint ptr %mst_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %mst_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call = tail call i32 @drm_dp_update_payload_part2(ptr noundef %mst_mgr4) #10
  br i1 %enable, label %if.end6.cleanup_crit_edge, label %if.then8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @drm_dp_mst_deallocate_vcpi(ptr noundef %mst_mgr4, ptr noundef %5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ true, %if.then8 ], [ true, %if.end6.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_update_payload_part2(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_mst_deallocate_vcpi(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_dtn_log_begin(ptr nocapture noundef readnone %ctx, ptr noundef %log_ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %log_ctx, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @dm_dtn_log_begin.msg) #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @dm_dtn_log_append_v(ptr undef, ptr noundef nonnull %log_ctx, ptr noundef nonnull @.str.4, ptr noundef nonnull @dm_dtn_log_begin.msg)
  br label %return

return:                                           ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_dtn_log_append_v(ptr nocapture readnone %ctx, ptr noundef %log_ctx, ptr noundef %msg, ...) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  %vaf = alloca %struct.va_format, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #10
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !64
  %tobool.not = icmp eq ptr %log_ctx, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #10
  %1 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %msg, ptr %vaf, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %args, ptr %1, align 4
  call void @llvm.va_start(ptr nonnull %args)
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %vaf) #13
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.va_start(ptr nonnull %args)
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call1 = call i32 @vsnprintf(ptr noundef null, i32 noundef 0, ptr noundef %msg, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %pos = getelementptr inbounds %struct.dc_log_buffer_ctx, ptr %log_ctx, i32 0, i32 1
  %5 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pos, align 4
  %add = add nuw i32 %call1, 1
  %add4 = add i32 %add, %6
  %size = getelementptr inbounds %struct.dc_log_buffer_ctx, ptr %log_ctx, i32 0, i32 2
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %8)
  %cmp5 = icmp ugt i32 %add4, %8
  br i1 %cmp5, label %if.then6, label %if.end3.if.end16_crit_edge

if.end3.if.end16_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then6:                                         ; preds = %if.end3
  %call.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef %add4, i32 noundef 3520, i32 noundef -1) #14
  %tobool8.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool8.not, label %if.then6.if.end16_crit_edge, label %if.end16.thread

if.then6.if.end16_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end16.thread:                                  ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %log_ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %log_ctx, align 4
  %11 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pos, align 4
  %13 = call ptr @memcpy(ptr %call.i.i.i, ptr %10, i32 %12)
  call void @kfree(ptr noundef %10) #10
  %14 = ptrtoint ptr %log_ctx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i.i, ptr %log_ctx, align 4
  %15 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add4, ptr %size, align 4
  br label %if.end20

if.end16:                                         ; preds = %if.then6.if.end16_crit_edge, %if.end3.if.end16_crit_edge
  %16 = ptrtoint ptr %log_ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load ptr, ptr %log_ctx, align 4
  %tobool18.not = icmp eq ptr %.pr, null
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end16.if.end20_crit_edge, %if.end16.thread
  call void @llvm.va_start(ptr nonnull %args)
  %17 = ptrtoint ptr %log_ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %log_ctx, align 4
  %19 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pos, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 %20
  %21 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size, align 4
  %sub = sub i32 %22, %20
  %23 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %23)
  %.fca.0.load42 = load i32, ptr %args, align 4
  %.fca.0.insert43 = insertvalue [1 x i32] poison, i32 %.fca.0.load42, 0
  %call26 = call i32 @vscnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef %msg, [1 x i32] %.fca.0.insert43) #10
  call void @llvm.va_end(ptr nonnull %args)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp sgt i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pos, align 4
  %add30 = add i32 %25, %call26
  store i32 %add30, ptr %pos, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vscnprintf(ptr noundef, i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_dtn_log_end(ptr nocapture noundef readnone %ctx, ptr noundef %log_ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %log_ctx, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @dm_dtn_log_end.msg) #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @dm_dtn_log_append_v(ptr undef, ptr noundef nonnull %log_ctx, ptr noundef nonnull @.str.4, ptr noundef nonnull @dm_dtn_log_end.msg)
  br label %return

return:                                           ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dm_helpers_dp_mst_start_top_mgr(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %link, i1 noundef zeroext %boot) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 32
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %base3 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base3, align 8
  br i1 %boot, label %do.end, label %do.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %1, i32 noundef %3) #13
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull %1, i32 noundef %3) #13
  %mst_mgr = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 8
  %call13 = tail call i32 @drm_dp_mst_topology_mgr_set_mst(ptr noundef %mst_mgr, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp eq i32 %call13, 0
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %do.end, %if.then
  %retval.0 = phi i1 [ true, %do.end ], [ %cmp, %do.end7 ], [ false, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_mst_topology_mgr_set_mst(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_helpers_dp_mst_stop_top_mgr(ptr nocapture noundef readnone %ctx, ptr noundef %link) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 32
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #10
  br label %cleanup

do.end:                                           ; preds = %entry
  %base1 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base1, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull %1, i32 noundef %3) #13
  %mst_state = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 8, i32 13
  %4 = ptrtoint ptr %mst_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %mst_state, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %do.end.cleanup_crit_edge, label %if.then3

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %do.end
  %mst_mgr = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 8
  %call5 = tail call i32 @drm_dp_mst_topology_mgr_set_mst(ptr noundef %mst_mgr, i1 noundef zeroext false) #10
  %dc_sink = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 5
  %dc_link = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %link, align 4
  %cmp9 = icmp eq ptr %6, null
  br i1 %cmp9, label %if.then3.for.inc_crit_edge, label %if.end12

if.then3.for.inc_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end12:                                         ; preds = %if.then3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %8)
  %cmp16 = icmp eq i32 %8, 64
  br i1 %cmp16, label %if.then18, label %if.end12.for.inc_crit_edge

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then18:                                        ; preds = %if.end12
  tail call void @dc_link_remove_remote_sink(ptr noundef %link, ptr noundef nonnull %6) #10
  %9 = ptrtoint ptr %dc_sink to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dc_sink, align 4
  %tobool22.not = icmp eq ptr %10, null
  br i1 %tobool22.not, label %if.then18.for.inc_crit_edge, label %if.then23

if.then18.for.inc_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then23:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dc_sink_release(ptr noundef nonnull %10) #10
  %11 = ptrtoint ptr %dc_sink to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %dc_sink, align 4
  %12 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dc_link, align 8
  %cur_link_settings = getelementptr inbounds %struct.dc_link, ptr %13, i32 0, i32 21
  %14 = ptrtoint ptr %cur_link_settings to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %cur_link_settings, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then23, %if.then18.for.inc_crit_edge, %if.end12.for.inc_crit_edge, %if.then3.for.inc_crit_edge
  %arrayidx.1 = getelementptr [4 x ptr], ptr %link, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.1, align 4
  %cmp9.1 = icmp eq ptr %16, null
  br i1 %cmp9.1, label %for.inc.for.inc.1_crit_edge, label %if.end12.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end12.1:                                       ; preds = %for.inc
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %18)
  %cmp16.1 = icmp eq i32 %18, 64
  br i1 %cmp16.1, label %if.then18.1, label %if.end12.1.for.inc.1_crit_edge

if.end12.1.for.inc.1_crit_edge:                   ; preds = %if.end12.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then18.1:                                      ; preds = %if.end12.1
  tail call void @dc_link_remove_remote_sink(ptr noundef %link, ptr noundef nonnull %16) #10
  %19 = ptrtoint ptr %dc_sink to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dc_sink, align 4
  %tobool22.not.1 = icmp eq ptr %20, null
  br i1 %tobool22.not.1, label %if.then18.1.for.inc.1_crit_edge, label %if.then23.1

if.then18.1.for.inc.1_crit_edge:                  ; preds = %if.then18.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then23.1:                                      ; preds = %if.then18.1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dc_sink_release(ptr noundef nonnull %20) #10
  %21 = ptrtoint ptr %dc_sink to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %dc_sink, align 4
  %22 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dc_link, align 8
  %cur_link_settings.1 = getelementptr inbounds %struct.dc_link, ptr %23, i32 0, i32 21
  %24 = ptrtoint ptr %cur_link_settings.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %cur_link_settings.1, align 8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then23.1, %if.then18.1.for.inc.1_crit_edge, %if.end12.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr [4 x ptr], ptr %link, i32 0, i32 2
  %25 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.2, align 4
  %cmp9.2 = icmp eq ptr %26, null
  br i1 %cmp9.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end12.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end12.2:                                       ; preds = %for.inc.1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %28)
  %cmp16.2 = icmp eq i32 %28, 64
  br i1 %cmp16.2, label %if.then18.2, label %if.end12.2.for.inc.2_crit_edge

if.end12.2.for.inc.2_crit_edge:                   ; preds = %if.end12.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then18.2:                                      ; preds = %if.end12.2
  tail call void @dc_link_remove_remote_sink(ptr noundef %link, ptr noundef nonnull %26) #10
  %29 = ptrtoint ptr %dc_sink to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dc_sink, align 4
  %tobool22.not.2 = icmp eq ptr %30, null
  br i1 %tobool22.not.2, label %if.then18.2.for.inc.2_crit_edge, label %if.then23.2

if.then18.2.for.inc.2_crit_edge:                  ; preds = %if.then18.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then23.2:                                      ; preds = %if.then18.2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dc_sink_release(ptr noundef nonnull %30) #10
  %31 = ptrtoint ptr %dc_sink to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %dc_sink, align 4
  %32 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dc_link, align 8
  %cur_link_settings.2 = getelementptr inbounds %struct.dc_link, ptr %33, i32 0, i32 21
  %34 = ptrtoint ptr %cur_link_settings.2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %cur_link_settings.2, align 8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then23.2, %if.then18.2.for.inc.2_crit_edge, %if.end12.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr [4 x ptr], ptr %link, i32 0, i32 3
  %35 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.3, align 4
  %cmp9.3 = icmp eq ptr %36, null
  br i1 %cmp9.3, label %for.inc.2.cleanup_crit_edge, label %if.end12.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12.3:                                       ; preds = %for.inc.2
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %38)
  %cmp16.3 = icmp eq i32 %38, 64
  br i1 %cmp16.3, label %if.then18.3, label %if.end12.3.cleanup_crit_edge

if.end12.3.cleanup_crit_edge:                     ; preds = %if.end12.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then18.3:                                      ; preds = %if.end12.3
  tail call void @dc_link_remove_remote_sink(ptr noundef %link, ptr noundef nonnull %36) #10
  %39 = ptrtoint ptr %dc_sink to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dc_sink, align 4
  %tobool22.not.3 = icmp eq ptr %40, null
  br i1 %tobool22.not.3, label %if.then18.3.cleanup_crit_edge, label %if.then23.3

if.then18.3.cleanup_crit_edge:                    ; preds = %if.then18.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then23.3:                                      ; preds = %if.then18.3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dc_sink_release(ptr noundef nonnull %40) #10
  %41 = ptrtoint ptr %dc_sink to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %dc_sink, align 4
  %42 = ptrtoint ptr %dc_link to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dc_link, align 8
  %cur_link_settings.3 = getelementptr inbounds %struct.dc_link, ptr %43, i32 0, i32 21
  %44 = ptrtoint ptr %cur_link_settings.3 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %cur_link_settings.3, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then23.3, %if.then18.3.cleanup_crit_edge, %if.end12.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_link_remove_remote_sink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dc_sink_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dm_helpers_dp_read_dpcd(ptr nocapture readnone %ctx, ptr nocapture noundef readonly %link, i32 noundef %address, ptr noundef %data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 32
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.16) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dm_dp_aux = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 9
  %call = tail call i32 @drm_dp_dpcd_read(ptr noundef %dm_dp_aux, i32 noundef %address, ptr noundef %data, i32 noundef %size) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i1 [ %cmp, %if.end ], [ false, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dm_helpers_dp_write_dpcd(ptr nocapture readnone %ctx, ptr nocapture noundef readonly %link, i32 noundef %address, ptr noundef %data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 32
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dm_dp_aux = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 9
  %call = tail call i32 @drm_dp_dpcd_write(ptr noundef %dm_dp_aux, i32 noundef %address, ptr noundef %data, i32 noundef %size) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i1 [ %cmp, %if.end ], [ false, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dm_helpers_submit_i2c(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %link, ptr nocapture noundef readonly %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 32
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %number_of_payloads = getelementptr inbounds %struct.i2c_command, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %number_of_payloads to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %number_of_payloads, align 4
  %conv = zext i8 %3 to i32
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end7.i.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %4 = mul nuw nsw i32 %conv, 12
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #14
  %tobool1.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool1.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp53.not = icmp eq i8 %3, 0
  br i1 %cmp53.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.054 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.i2c_payload, ptr %6, i32 %i.054
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 4, !range !65
  %9 = xor i8 %8, 1
  %10 = zext i8 %9 to i16
  %arrayidx8 = getelementptr %struct.i2c_msg, ptr %call8.i.i, i32 %i.054
  %flags = getelementptr %struct.i2c_msg, ptr %call8.i.i, i32 %i.054, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %flags, align 2
  %address = getelementptr %struct.i2c_payload, ptr %6, i32 %i.054, i32 1
  %12 = ptrtoint ptr %address to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %address, align 1
  %conv11 = zext i8 %13 to i16
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv11, ptr %arrayidx8, align 4
  %length = getelementptr %struct.i2c_payload, ptr %6, i32 %i.054, i32 2
  %15 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length, align 4
  %conv15 = trunc i32 %16 to i16
  %len = getelementptr %struct.i2c_msg, ptr %call8.i.i, i32 %i.054, i32 2
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv15, ptr %len, align 4
  %data = getelementptr %struct.i2c_payload, ptr %6, i32 %i.054, i32 3
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %buf = getelementptr %struct.i2c_msg, ptr %call8.i.i, i32 %i.054, i32 3
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %buf, align 4
  %inc = add nuw nsw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i2c = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 13
  %21 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c, align 4
  %call20 = tail call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %call8.i.i, i32 noundef %conv) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call20, i32 %conv)
  %cmp21 = icmp eq i32 %call20, %conv
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end7.i.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i1 [ %cmp21, %for.end ], [ false, %if.then ], [ false, %if.end7.i.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dm_helpers_dp_write_dsc_enable(ptr nocapture noundef readnone %ctx, ptr noundef readonly %stream, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %enable_dsc = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable_dsc) #10
  %conv = zext i1 %enable to i8
  %0 = ptrtoint ptr %enable_dsc to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %enable_dsc, align 1
  %tobool1.not = icmp eq ptr %stream, null
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %signal = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 36
  %1 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %signal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %2)
  %cmp = icmp eq i32 %2, 64
  br i1 %cmp, label %if.then3, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %dm_stream_context = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 38
  %3 = ptrtoint ptr %dm_stream_context to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dm_stream_context, align 4
  %dsc_aux = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %dsc_aux to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dsc_aux, align 8
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.then3.cleanup_crit_edge, label %if.end6

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %call = call i32 @drm_dp_dpcd_write(ptr noundef nonnull %6, i32 noundef 352, ptr noundef nonnull %enable_dsc, i32 noundef 1) #10
  %7 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %signal, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end6, %if.end.if.end9_crit_edge
  %8 = phi i32 [ %.pr, %if.end6 ], [ %2, %if.end.if.end9_crit_edge ]
  %ret.0 = phi i32 [ %call, %if.end6 ], [ 0, %if.end.if.end9_crit_edge ]
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %8, label %if.end9.if.end22_crit_edge [
    i32 32, label %if.end9.if.then16_crit_edge
    i32 128, label %if.end9.if.then16_crit_edge35
  ]

if.end9.if.then16_crit_edge35:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.end9.if.then16_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.end9.if.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then16:                                        ; preds = %if.end9.if.then16_crit_edge, %if.end9.if.then16_crit_edge35
  %link = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 1
  %10 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link, align 4
  %priv.i = getelementptr inbounds %struct.dc_link, ptr %11, i32 0, i32 32
  %12 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #10
  br label %dm_helpers_dp_write_dpcd.exit

if.end.i:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %dm_dp_aux.i = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %13, i32 0, i32 9
  %call.i = call i32 @drm_dp_dpcd_write(ptr noundef %dm_dp_aux.i, i32 noundef 352, ptr noundef nonnull %enable_dsc, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  %phi.cast = zext i1 %cmp.i to i32
  br label %dm_helpers_dp_write_dpcd.exit

dm_helpers_dp_write_dpcd.exit:                    ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %phi.cast, %if.end.i ], [ 0, %if.then.i ]
  %14 = ptrtoint ptr %enable_dsc to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enable_dsc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool20.not = icmp eq i8 %15, 0
  %cond21 = select i1 %tobool20.not, ptr @.str.19, ptr @.str.18
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.17, ptr noundef nonnull %cond21) #10
  br label %if.end22

if.end22:                                         ; preds = %dm_helpers_dp_write_dpcd.exit, %if.end9.if.end22_crit_edge
  %ret.1 = phi i32 [ %retval.0.i, %dm_helpers_dp_write_dpcd.exit ], [ %ret.0, %if.end9.if.end22_crit_edge ]
  %conv23 = and i32 %ret.1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv23)
  %cmp24 = icmp ne i32 %conv23, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp24, %if.end22 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.then3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable_dsc) #10
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dm_helpers_is_dp_sink_present(ptr noundef %link) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 32
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body1, label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_helpers.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 599, 0\0A.popsection", ""() #10, !srcloc !67
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hw_mutex = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 9, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %hw_mutex, i32 noundef 0) #10
  %call = tail call zeroext i1 @dc_link_is_dp_sink_present(ptr noundef %link) #10
  tail call void @mutex_unlock(ptr noundef %hw_mutex) #10
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dc_link_is_dp_sink_present(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_helpers_read_local_edid(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %link, ptr noundef %sink) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 32
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %aux_mode = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 34
  %2 = ptrtoint ptr %aux_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %aux_mode, align 8, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ddc1 = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 9, i32 0, i32 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i2c = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ddc.0 = phi ptr [ %ddc1, %if.then ], [ %5, %if.else ]
  %edid_corrupt = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 49
  %dm_dp_aux8 = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %1, i32 0, i32 9
  %real_edid_checksum = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 50
  %dc_edid = getelementptr inbounds %struct.dc_sink, ptr %sink, i32 0, i32 1
  %raw_edid = getelementptr inbounds %struct.dc_sink, ptr %sink, i32 0, i32 1, i32 1
  %edid_caps = getelementptr inbounds %struct.dc_sink, ptr %sink, i32 0, i32 2
  %call = tail call ptr @drm_get_edid(ptr noundef %1, ptr noundef %ddc.0) #10
  %6 = ptrtoint ptr %aux_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %aux_mode, align 8, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %8 = ptrtoint ptr %edid_corrupt to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %edid_corrupt, align 8, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end11_crit_edge, label %if.then7

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %real_edid_checksum to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %real_edid_checksum, align 1
  %call10 = tail call zeroext i1 @drm_dp_send_real_edid_checksum(ptr noundef %dm_dp_aux8, i8 noundef zeroext %11) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %tobool12.not = icmp eq ptr %call, null
  br i1 %tobool12.not, label %if.end11.land.lhs.true13_crit_edge, label %if.end21

if.end11.land.lhs.true13_crit_edge:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true13

land.lhs.true13:                                  ; preds = %if.end11.2.land.lhs.true13_crit_edge, %if.end11.1.land.lhs.true13_crit_edge, %if.end11.land.lhs.true13_crit_edge
  %12 = ptrtoint ptr %edid_corrupt to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %edid_corrupt, align 8, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool15.not = icmp eq i8 %13, 0
  br i1 %tobool15.not, label %land.lhs.true13.cleanup_crit_edge, label %if.then16

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %edid_corrupt to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %edid_corrupt, align 8
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  %extensions = getelementptr inbounds %struct.edid, ptr %call, i32 0, i32 26
  %15 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %extensions, align 1
  %conv = zext i8 %16 to i32
  %add = shl nuw nsw i32 %conv, 7
  %mul = add nuw nsw i32 %add, 128
  %17 = ptrtoint ptr %dc_edid to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul, ptr %dc_edid, align 4
  %18 = call ptr @memmove(ptr %raw_edid, ptr %call, i32 %mul)
  tail call void @kfree(ptr noundef nonnull %call) #10
  tail call void @amdgpu_dm_update_connector_after_detect(ptr noundef %1) #10
  %call26 = tail call i32 @dm_helpers_parse_edid_caps(ptr noundef %link, ptr noundef %dc_edid, ptr noundef %edid_caps)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call26)
  %cmp = icmp eq i32 %call26, 3
  br i1 %cmp, label %do.body.1, label %if.end21.do.end_crit_edge

if.end21.do.end_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.body.1:                                        ; preds = %if.end21
  %call.1 = tail call ptr @drm_get_edid(ptr noundef %1, ptr noundef %ddc.0) #10
  %19 = ptrtoint ptr %aux_mode to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %aux_mode, align 8, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool5.not.1 = icmp eq i8 %20, 0
  br i1 %tobool5.not.1, label %do.body.1.if.end11.1_crit_edge, label %land.lhs.true.1

do.body.1.if.end11.1_crit_edge:                   ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.1

land.lhs.true.1:                                  ; preds = %do.body.1
  %21 = ptrtoint ptr %edid_corrupt to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %edid_corrupt, align 8, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool6.not.1 = icmp eq i8 %22, 0
  br i1 %tobool6.not.1, label %land.lhs.true.1.if.end11.1_crit_edge, label %if.then7.1

land.lhs.true.1.if.end11.1_crit_edge:             ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.1

if.then7.1:                                       ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %real_edid_checksum to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %real_edid_checksum, align 1
  %call10.1 = tail call zeroext i1 @drm_dp_send_real_edid_checksum(ptr noundef %dm_dp_aux8, i8 noundef zeroext %24) #10
  br label %if.end11.1

if.end11.1:                                       ; preds = %if.then7.1, %land.lhs.true.1.if.end11.1_crit_edge, %do.body.1.if.end11.1_crit_edge
  %tobool12.not.1 = icmp eq ptr %call.1, null
  br i1 %tobool12.not.1, label %if.end11.1.land.lhs.true13_crit_edge, label %if.end21.1

if.end11.1.land.lhs.true13_crit_edge:             ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true13

if.end21.1:                                       ; preds = %if.end11.1
  %extensions.1 = getelementptr inbounds %struct.edid, ptr %call.1, i32 0, i32 26
  %25 = ptrtoint ptr %extensions.1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %extensions.1, align 1
  %conv.1 = zext i8 %26 to i32
  %add.1 = shl nuw nsw i32 %conv.1, 7
  %mul.1 = add nuw nsw i32 %add.1, 128
  %27 = ptrtoint ptr %dc_edid to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul.1, ptr %dc_edid, align 4
  %28 = call ptr @memmove(ptr %raw_edid, ptr %call.1, i32 %mul.1)
  tail call void @kfree(ptr noundef nonnull %call.1) #10
  tail call void @amdgpu_dm_update_connector_after_detect(ptr noundef %1) #10
  %call26.1 = tail call i32 @dm_helpers_parse_edid_caps(ptr noundef %link, ptr noundef %dc_edid, ptr noundef %edid_caps)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call26.1)
  %cmp.1 = icmp eq i32 %call26.1, 3
  br i1 %cmp.1, label %do.body.2, label %if.end21.1.do.end_crit_edge

if.end21.1.do.end_crit_edge:                      ; preds = %if.end21.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.body.2:                                        ; preds = %if.end21.1
  %call.2 = tail call ptr @drm_get_edid(ptr noundef %1, ptr noundef %ddc.0) #10
  %29 = ptrtoint ptr %aux_mode to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %aux_mode, align 8, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool5.not.2 = icmp eq i8 %30, 0
  br i1 %tobool5.not.2, label %do.body.2.if.end11.2_crit_edge, label %land.lhs.true.2

do.body.2.if.end11.2_crit_edge:                   ; preds = %do.body.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.2

land.lhs.true.2:                                  ; preds = %do.body.2
  %31 = ptrtoint ptr %edid_corrupt to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %edid_corrupt, align 8, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool6.not.2 = icmp eq i8 %32, 0
  br i1 %tobool6.not.2, label %land.lhs.true.2.if.end11.2_crit_edge, label %if.then7.2

land.lhs.true.2.if.end11.2_crit_edge:             ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.2

if.then7.2:                                       ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %real_edid_checksum to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %real_edid_checksum, align 1
  %call10.2 = tail call zeroext i1 @drm_dp_send_real_edid_checksum(ptr noundef %dm_dp_aux8, i8 noundef zeroext %34) #10
  br label %if.end11.2

if.end11.2:                                       ; preds = %if.then7.2, %land.lhs.true.2.if.end11.2_crit_edge, %do.body.2.if.end11.2_crit_edge
  %tobool12.not.2 = icmp eq ptr %call.2, null
  br i1 %tobool12.not.2, label %if.end11.2.land.lhs.true13_crit_edge, label %if.end21.2

if.end11.2.land.lhs.true13_crit_edge:             ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true13

if.end21.2:                                       ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #12
  %extensions.2 = getelementptr inbounds %struct.edid, ptr %call.2, i32 0, i32 26
  %35 = ptrtoint ptr %extensions.2 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %extensions.2, align 1
  %conv.2 = zext i8 %36 to i32
  %add.2 = shl nuw nsw i32 %conv.2, 7
  %mul.2 = add nuw nsw i32 %add.2, 128
  %37 = ptrtoint ptr %dc_edid to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %mul.2, ptr %dc_edid, align 4
  %38 = call ptr @memmove(ptr %raw_edid, ptr %call.2, i32 %mul.2)
  tail call void @kfree(ptr noundef nonnull %call.2) #10
  tail call void @amdgpu_dm_update_connector_after_detect(ptr noundef %1) #10
  %call26.2 = tail call i32 @dm_helpers_parse_edid_caps(ptr noundef %link, ptr noundef %dc_edid, ptr noundef %edid_caps)
  br label %do.end

do.end:                                           ; preds = %if.end21.2, %if.end21.1.do.end_crit_edge, %if.end21.do.end_crit_edge
  %call26.lcssa = phi i32 [ %call26, %if.end21.do.end_crit_edge ], [ %call26.1, %if.end21.1.do.end_crit_edge ], [ %call26.2, %if.end21.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.lcssa)
  %cmp30.not = icmp eq i32 %call26.lcssa, 0
  br i1 %cmp30.not, label %do.end.if.end34_crit_edge, label %if.then32

do.end.if.end34_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then32:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 7
  %39 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, i32 noundef %call26.lcssa, ptr noundef %40) #10
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %do.end.if.end34_crit_edge
  %41 = ptrtoint ptr %aux_mode to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %aux_mode, align 8, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool36.not = icmp eq i8 %42, 0
  br i1 %tobool36.not, label %if.end34.cleanup_crit_edge, label %if.then37

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %dc_edid to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dc_edid, align 4
  %sub = add i32 %44, -1
  %arrayidx = getelementptr %struct.dc_sink, ptr %sink, i32 0, i32 1, i32 1, i32 %sub
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx, align 1
  %call44 = tail call zeroext i1 @drm_dp_send_real_edid_checksum(ptr noundef %dm_dp_aux8, i8 noundef zeroext %46) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end34.cleanup_crit_edge, %if.then16, %land.lhs.true13.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %if.then16 ], [ %call26.lcssa, %if.then37 ], [ %call26.lcssa, %if.end34.cleanup_crit_edge ], [ 2, %land.lhs.true13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_send_real_edid_checksum(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_dm_update_connector_after_detect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_helper_dmub_aux_transfer_sync(ptr noundef %ctx, ptr nocapture noundef readonly %link, ptr noundef %payload, ptr noundef %operation_result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %link_index = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 3
  %0 = ptrtoint ptr %link_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link_index, align 8
  %call = tail call i32 @amdgpu_dm_process_dmub_aux_transfer_sync(i1 noundef zeroext true, ptr noundef %ctx, i32 noundef %1, ptr noundef %payload, ptr noundef %operation_result) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dm_process_dmub_aux_transfer_sync(i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_helpers_dmub_set_config_sync(ptr noundef %ctx, ptr nocapture noundef readonly %link, ptr noundef %payload, ptr noundef %operation_result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %link_index = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 3
  %0 = ptrtoint ptr %link_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link_index, align 8
  %call = tail call i32 @amdgpu_dm_process_dmub_aux_transfer_sync(i1 noundef zeroext false, ptr noundef %ctx, i32 noundef %1, ptr noundef %payload, ptr noundef %operation_result) #10
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dm_set_dcn_clocks(ptr nocapture noundef %ctx, ptr nocapture noundef %clks) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dm_helpers_smu_timeout(ptr nocapture noundef %ctx, i32 noundef %msg_id, i32 noundef %param, i32 noundef %timeout_us) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dm_helpers_allocate_gpu_mem(ptr nocapture noundef readonly %ctx, i32 noundef %type, i32 noundef %size, ptr nocapture noundef writeonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_context, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 24) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  %cond = select i1 %cmp, i32 2, i32 4
  %bo = getelementptr inbounds %struct.dal_allocation, ptr %call7.i.i, i32 0, i32 1
  %gpu_addr = getelementptr inbounds %struct.dal_allocation, ptr %call7.i.i, i32 0, i32 3
  %cpu_ptr = getelementptr inbounds %struct.dal_allocation, ptr %call7.i.i, i32 0, i32 2
  %call1 = tail call i32 @amdgpu_bo_create_kernel(ptr noundef %1, i32 noundef %size, i32 noundef 4096, i32 noundef %cond, ptr noundef %bo, ptr noundef %gpu_addr, ptr noundef %cpu_ptr) #10
  %3 = ptrtoint ptr %gpu_addr to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %gpu_addr, align 8
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool3.not = icmp eq i32 %call1, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %da_list = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 117, i32 46
  %6 = ptrtoint ptr %da_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %da_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %da_list, ptr noundef %7) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.list_add.exit_crit_edge

if.end5.list_add.exit_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %da_list, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %da_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call7.i.i, ptr %da_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end5.list_add.exit_crit_edge
  %12 = ptrtoint ptr %cpu_ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpu_ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then4 ], [ %13, %list_add.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_bo_create_kernel(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_helpers_free_gpu_mem(ptr nocapture noundef readonly %ctx, i32 noundef %type, ptr noundef readnone %pvMem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_context = getelementptr inbounds %struct.dc_context, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %driver_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_context, align 4
  %da_list = getelementptr inbounds %struct.amdgpu_device, ptr %1, i32 0, i32 117, i32 46
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %da.0.in = phi ptr [ %da_list, %entry ], [ %da.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %da.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %da.0 = load ptr, ptr %da.0.in, align 4
  %cmp.not = icmp eq ptr %da.0, %da_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %cpu_ptr = getelementptr inbounds %struct.dal_allocation, ptr %da.0, i32 0, i32 2
  %3 = ptrtoint ptr %cpu_ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cpu_ptr, align 4
  %cmp3 = icmp eq ptr %4, %pvMem
  br i1 %cmp3, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then:                                          ; preds = %for.body
  %cpu_ptr.le = getelementptr inbounds %struct.dal_allocation, ptr %da.0, i32 0, i32 2
  %bo = getelementptr inbounds %struct.dal_allocation, ptr %da.0, i32 0, i32 1
  %gpu_addr = getelementptr inbounds %struct.dal_allocation, ptr %da.0, i32 0, i32 3
  tail call void @amdgpu_bo_free_kernel(ptr noundef %bo, ptr noundef %gpu_addr, ptr noundef %cpu_ptr.le) #10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %da.0) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %da.0, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %da.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %da.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %11 = ptrtoint ptr %da.0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %da.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %da.0, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %da.0) #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_free_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dm_helpers_dmub_outbox_interrupt_control(ptr nocapture noundef readonly %ctx, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %call = tail call zeroext i1 @dc_interrupt_set(ptr noundef %1, i32 noundef 96, i1 noundef zeroext %enable) #10
  %cond = select i1 %enable, ptr @.str.22, ptr @.str.23
  %conv = zext i1 %call to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.21, ptr noundef nonnull %cond, i32 noundef %conv) #10
  ret i1 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dc_interrupt_set(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_helpers_mst_enable_stream_features(ptr nocapture noundef readonly %stream) local_unnamed_addr #0 align 64 {
entry:
  %old_downspread = alloca %union.down_spread_ctrl, align 1
  %new_downspread = alloca %union.down_spread_ctrl, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %link1 = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 1
  %0 = ptrtoint ptr %link1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %old_downspread) #10
  %2 = ptrtoint ptr %old_downspread to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %old_downspread, align 1, !annotation !64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %new_downspread) #10
  %aux_access_disabled = getelementptr inbounds %struct.dc_link, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %aux_access_disabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %aux_access_disabled, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.dc_link, ptr %1, i32 0, i32 32
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %dm_helpers_dp_read_dpcd.exit.thread, label %dm_helpers_dp_read_dpcd.exit

dm_helpers_dp_read_dpcd.exit.thread:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.16) #10
  br label %cleanup

dm_helpers_dp_read_dpcd.exit:                     ; preds = %if.end
  %dm_dp_aux.i = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %6, i32 0, i32 9
  %call.i = call i32 @drm_dp_dpcd_read(ptr noundef %dm_dp_aux.i, i32 noundef 263, ptr noundef nonnull %old_downspread, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  br i1 %cmp.i, label %if.end3, label %dm_helpers_dp_read_dpcd.exit.cleanup_crit_edge

dm_helpers_dp_read_dpcd.exit.cleanup_crit_edge:   ; preds = %dm_helpers_dp_read_dpcd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %dm_helpers_dp_read_dpcd.exit
  %7 = ptrtoint ptr %old_downspread to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %old_downspread, align 1
  %ignore_msa_timing_param = getelementptr inbounds %struct.dc_stream_state, ptr %stream, i32 0, i32 24
  %9 = ptrtoint ptr %ignore_msa_timing_param to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ignore_msa_timing_param, align 1, !range !65
  %bf.clear = and i8 %8, -2
  %bf.set = or i8 %10, %bf.clear
  %11 = ptrtoint ptr %new_downspread to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %bf.set, ptr %new_downspread, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.set, i8 %8)
  %cmp.not = icmp eq i8 %bf.set, %8
  br i1 %cmp.not, label %if.end3.cleanup_crit_edge, label %if.then8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.end3
  %12 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i, align 8
  %tobool.not.i20 = icmp eq ptr %13, null
  br i1 %tobool.not.i20, label %if.then.i21, label %if.end.i25

if.then.i21:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end.i25:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %dm_dp_aux.i22 = getelementptr inbounds %struct.amdgpu_dm_connector, ptr %13, i32 0, i32 9
  %call.i23 = call i32 @drm_dp_dpcd_write(ptr noundef %dm_dp_aux.i22, i32 noundef 263, ptr noundef nonnull %new_downspread, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i25, %if.then.i21, %if.end3.cleanup_crit_edge, %dm_helpers_dp_read_dpcd.exit.cleanup_crit_edge, %dm_helpers_dp_read_dpcd.exit.thread, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new_downspread) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %old_downspread) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !16, !17, !19, !21, !22, !23, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !43, !44, !45, !47, !49, !50, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_helpers.c", i32 138, i32 3}
!2 = !{ptr @dm_dtn_log_begin.msg, !3, !"msg", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_helpers.c", i32 339, i32 20}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_helpers.c", i32 342, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @dm_dtn_log_begin._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @dm_dtn_log_begin._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_helpers.c", i32 346, i32 36}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_helpers.c", i32 366, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @dm_dtn_log_append_v._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @dm_dtn_log_append_v._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @dm_dtn_log_end.msg, !18, !"msg", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_helpers.c", i32 414, i32 20}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_helpers.c", i32 417, i32 3}
!21 = !{ptr @dm_dtn_log_end._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @dm_dtn_log_end._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_helpers.c", i32 432, i32 3}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_helpers.c", i32 437, i32 3}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @dm_helpers_dp_mst_start_top_mgr._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @dm_helpers_dp_mst_start_top_mgr._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_helpers.c", i32 442, i32 2}
!32 = !{ptr @dm_helpers_dp_mst_start_top_mgr._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @dm_helpers_dp_mst_start_top_mgr._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_helpers.c", i32 460, i32 2}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @dm_helpers_dp_mst_stop_top_mgr._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @dm_helpers_dp_mst_stop_top_mgr._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_helpers.c", i32 495, i32 3}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_helpers.c", i32 581, i32 4}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_helpers.c", i32 667, i32 3}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_helpers.c", i32 770, i32 2}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"monitor_patch_table", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_helpers.c", i32 51, i32 40}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_helpers.c", i32 172, i32 3}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"auto-init"}
!65 = !{i8 0, i8 2}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !{i64 2159124919, i64 2159125451, i64 2159124956, i64 2159125012, i64 2159125046, i64 2159125070, i64 2159125111, i64 2159125132, i64 2159125160, i64 2159125194}
