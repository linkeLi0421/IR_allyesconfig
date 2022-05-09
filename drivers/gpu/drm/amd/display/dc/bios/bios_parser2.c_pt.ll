; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/bios/bios_parser2.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dc_vbios_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bp_init_data = type { ptr, ptr }
%struct.dc_bios = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, %struct.dc_firmware_info, i8, %struct.dc_vram_info, %struct.dc_golden_table }
%struct.dc_firmware_info = type { %struct.pll_info, %struct.firmware_feature, i32, i32, i32, i8, i8, i32, i32, i32, i32, i8, i8 }
%struct.pll_info = type { i32, i32, i32, i32, i32 }
%struct.firmware_feature = type { i32, i32 }
%struct.dc_vram_info = type { i32, i32 }
%struct.dc_golden_table = type { i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atom_common_table_header = type { i16, i8, i8 }
%struct.atom_rom_header_v2_2 = type { %struct.atom_common_table_header, [4 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32 }
%struct.bios_parser = type { %struct.dc_bios, %struct.object_info_table, i32, ptr, ptr, ptr, %struct.cmd_tbl, i8 }
%struct.object_info_table = type { %struct.atom_data_revision, %union.anon.2 }
%struct.atom_data_revision = type { i32, i32 }
%union.anon.2 = type { ptr }
%struct.cmd_tbl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atom_master_data_table_v2_1 = type { %struct.atom_common_table_header, %struct.atom_master_list_of_data_tables_v2_1 }
%struct.atom_master_list_of_data_tables_v2_1 = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.atom_integrated_system_info_v1_11 = type { %struct.atom_common_table_header, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.atom_external_display_connection_info, %struct.atom_14nm_dpphy_dvihdmi_tuningset, %struct.atom_14nm_dpphy_dvihdmi_tuningset, %struct.atom_14nm_dpphy_dvihdmi_tuningset, %struct.atom_14nm_dpphy_dp_tuningset, %struct.atom_14nm_dpphy_dp_tuningset, %struct.atom_camera_data, %struct.atom_hdmi_retimer_redriver_set, %struct.atom_hdmi_retimer_redriver_set, %struct.atom_hdmi_retimer_redriver_set, %struct.atom_hdmi_retimer_redriver_set, %struct.atom_14nm_dpphy_dp_tuningset, %struct.atom_14nm_dpphy_dp_tuningset, %struct.atom_14nm_dpphy_dp_tuningset, [66 x i32] }
%struct.atom_external_display_connection_info = type { %struct.atom_common_table_header, [16 x i8], [7 x %struct.atom_ext_display_path], i8, i8, i8, i8, i8, [3 x i8] }
%struct.atom_ext_display_path = type { i16, i16, i16, i8, i8, i16, i8, i8, i16, i16 }
%struct.atom_14nm_dpphy_dvihdmi_tuningset = type { i32, i8, i8, i16, i8, i8, i8, i8 }
%struct.atom_camera_data = type { i32, [3 x %struct.atom_camera_module_info], %struct.atom_camera_flashlight_info, %struct.atom_camera_dphy_elec_param, i32 }
%struct.atom_camera_module_info = type { i8, [8 x i8], [6 x %struct.atom_camera_dphy_timing_param] }
%struct.atom_camera_dphy_timing_param = type <{ i8, i32 }>
%struct.atom_camera_flashlight_info = type { i8, [8 x i8] }
%struct.atom_camera_dphy_elec_param = type { [3 x i16] }
%struct.atom_hdmi_retimer_redriver_set = type { i8, i8, i8, [9 x %struct.atom_i2c_reg_info], [3 x %struct.atom_i2c_reg_info] }
%struct.atom_i2c_reg_info = type { i8, i8 }
%struct.atom_14nm_dpphy_dp_tuningset = type { i8, i8, i16, i16, [10 x %struct.atom_14nm_dpphy_dp_setting] }
%struct.atom_14nm_dpphy_dp_setting = type <{ i8, i16, i8, i8 }>
%struct.integrated_info = type { [4 x %struct.clock_voltage_caps], %struct.display_connection_info, [5 x %struct.available_s_clk_list], i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [9 x %struct.i2c_reg_info], i8, [3 x %struct.i2c_reg_info], i8, i8, [9 x %struct.i2c_reg_info], i8, [3 x %struct.i2c_reg_info], i8, i8, [9 x %struct.i2c_reg_info], i8, [3 x %struct.i2c_reg_info], i8, i8, [9 x %struct.i2c_reg_info], i8, [3 x %struct.i2c_reg_info], i32, %struct.edp_info, %struct.edp_info }
%struct.clock_voltage_caps = type { i32, i32 }
%struct.display_connection_info = type { [7 x %struct.external_display_path], [16 x i8], i8, i8 }
%struct.external_display_path = type { i32, i32, %struct.graphics_object_id, i8, i8, %struct.graphics_object_id, %union.ddi_channel_mapping, i16 }
%struct.graphics_object_id = type { i32 }
%union.ddi_channel_mapping = type { %struct.mapping }
%struct.mapping = type { i8 }
%struct.available_s_clk_list = type { i32, i32, i32 }
%struct.i2c_reg_info = type { i8, i8 }
%struct.edp_info = type { i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.atom_integrated_system_info_v2_1 = type { %struct.atom_common_table_header, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, %struct.edp_info_table, %struct.edp_info_table, [8 x i32], %struct.atom_external_display_connection_info, %struct.atom_DCN_dpphy_dvihdmi_tuningset, %struct.atom_DCN_dpphy_dvihdmi_tuningset, %struct.atom_DCN_dpphy_dvihdmi_tuningset, %struct.atom_DCN_dpphy_dvihdmi_tuningset, [6 x i32], %struct.atom_DCN_dpphy_dp_tuningset, %struct.atom_DCN_dpphy_dp_tuningset, %struct.atom_DCN_dpphy_dp_tuningset, %struct.atom_DCN_dpphy_dp_tuningset, %struct.atom_DCN_dpphy_dp_tuningset, [28 x i32], %struct.atom_hdmi_retimer_redriver_set, %struct.atom_hdmi_retimer_redriver_set, %struct.atom_hdmi_retimer_redriver_set, %struct.atom_hdmi_retimer_redriver_set, [30 x i32], [32 x i32] }
%struct.edp_info_table = type { i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, [3 x i8], [3 x i32] }
%struct.atom_DCN_dpphy_dvihdmi_tuningset = type { i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.atom_DCN_dpphy_dp_tuningset = type { i8, i8, i16, i16, [10 x %struct.atom_DCN_dpphy_dp_setting] }
%struct.atom_DCN_dpphy_dp_setting = type { i8, i8, i8, i8, i8 }
%struct.atom_integrated_system_info_v2_2 = type { %struct.atom_common_table_header, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, %struct.edp_info_table, %struct.edp_info_table, [8 x i32], %struct.atom_external_display_connection_info, [189 x i32] }
%struct.atom_firmware_info_v3_1 = type { %struct.atom_common_table_header, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i8, i8, [2 x i8], i32, i32, [6 x i32] }
%struct.atom_display_controller_info_v4_1 = type { %struct.atom_common_table_header, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, [3 x i8], i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8] }
%struct.atom_smu_info_v3_2 = type { %struct.atom_common_table_header, i8, i8, i8, i8, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32] }
%struct.atom_smu_info_v3_3 = type { %struct.atom_common_table_header, i8, i8, i8, i8, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32 }
%struct.atom_firmware_info_v3_2 = type { %struct.atom_common_table_header, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i8, i8, [2 x i8], i32, i32, i8, i8, i8, i8, i16, i16, i32, [3 x i32] }
%struct.atom_display_controller_info_v4_4 = type { %struct.atom_common_table_header, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i16, i16, [3 x i32] }
%struct.atom_firmware_info_v3_4 = type { %struct.atom_common_table_header, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i8, i8, [2 x i8], i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.atom_vram_info_header_v2_3 = type { %struct.atom_common_table_header, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, [16 x %struct.atom_vram_module_v9] }
%struct.atom_vram_module_v9 = type { i32, i32, i32, [3 x i16], i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [20 x i8] }
%struct.atom_vram_info_header_v2_4 = type { %struct.atom_common_table_header, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, [16 x %struct.atom_vram_module_v10] }
%struct.atom_vram_module_v10 = type { i32, i32, i32, [3 x i16], i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, [20 x i8] }
%struct.atom_vram_info_header_v2_5 = type { %struct.atom_common_table_header, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, [16 x %struct.atom_vram_module_v11] }
%struct.atom_vram_module_v11 = type { i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, [4 x i16], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, [40 x i8] }
%struct.display_object_info_table_v1_4 = type { %struct.atom_common_table_header, i16, i8, i8, [8 x %struct.atom_display_object_path_v2] }
%struct.atom_display_object_path_v2 = type { i16, i16, i16, i16, i16, i16, i16, i8, i8 }
%struct.atom_gpio_pin_lut_v2_1 = type { %struct.atom_common_table_header, [8 x %struct.atom_gpio_pin_assignment] }
%struct.atom_gpio_pin_assignment = type { i32, i8, i8, i8, i8 }
%struct.graphics_object_i2c_info = type { %struct.gpio_info, i8, i32, i32, i32 }
%struct.gpio_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atom_common_record_header = type { i8, i8 }
%struct.atom_i2c_record = type { %struct.atom_common_record_header, i8, i8 }
%struct.atom_hpd_int_record = type { %struct.atom_common_record_header, i8, i8 }
%struct.graphics_object_hpd_info = type { i8, i8 }
%struct.connector_device_tag_info = type { i32, %struct.device_id }
%struct.device_id = type { i32, i16 }
%struct.spread_spectrum_info = type { %struct.spread_spectrum_type, i32, i32, i32, %union.anon }
%struct.spread_spectrum_type = type { i8 }
%union.anon = type { %struct.step_and_delay_info }
%struct.step_and_delay_info = type { i32, i32, i32 }
%struct.atom_display_controller_info_v4_2 = type { %struct.atom_common_table_header, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8] }
%struct.atom_smu_info_v3_1 = type { %struct.atom_common_table_header, i8, i8, i8, i8, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.lcd_info_v2_1 = type { %struct.atom_common_table_header, %struct.atom_dtd_format, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i32] }
%struct.atom_dtd_format = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i8, i8 }
%struct.device_timing = type { %struct.misc_info, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.misc_info = type { i16, [2 x i8] }
%struct.embedded_panel_info = type { %struct.device_timing, i32, %struct.supported_refresh_rate, i32, i32, i8 }
%struct.supported_refresh_rate = type { i8, [3 x i8] }
%struct.gpio_pin_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atom_encoder_caps_record = type <{ %struct.atom_common_record_header, i32 }>
%struct.board_layout_info = type { i32, i8, [4 x %struct.slot_layout_info] }
%struct.slot_layout_info = type { i32, i32, i32, [16 x %struct.connector_layout_info] }
%struct.connector_layout_info = type { %struct.graphics_object_id, i32, i32, i32 }
%struct.atom_bracket_layout_record = type { %struct.atom_common_record_header, i8, i8, i8, i8, [1 x %struct.atom_connector_layout_info] }
%struct.atom_connector_layout_info = type { i16, i8, i8 }
%struct.atom_dc_golden_table_v1 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [23 x i32] }
%struct.bp_soc_bb_info = type { i32, i32, i32 }
%struct.atom_disp_connector_caps_record = type <{ %struct.atom_common_record_header, i32 }>
%struct.atom_display_controller_info_v4_3 = type { %struct.atom_common_table_header, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8] }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vbios_funcs = internal constant { %struct.dc_vbios_funcs, [60 x i8] } { %struct.dc_vbios_funcs { ptr @bios_parser_get_connectors_number, ptr @bios_parser_get_connector_id, ptr @bios_parser_get_src_obj, ptr @bios_parser_get_i2c_info, ptr @bios_parser_get_hpd_info, ptr @bios_parser_get_device_tag, ptr @bios_parser_get_spread_spectrum_info, ptr @bios_parser_get_ss_entry_number, ptr @bios_parser_get_embedded_panel_info, ptr @bios_parser_get_gpio_pin_info, ptr @bios_parser_get_encoder_cap_info, ptr @bios_parser_is_accelerated_mode, ptr @bios_parser_set_scratch_critical_state, ptr @bios_parser_is_device_id_supported, ptr @bios_parser_encoder_control, ptr @bios_parser_transmitter_control, ptr @bios_parser_enable_crtc, ptr null, ptr @bios_parser_set_pixel_clock, ptr @bios_parser_set_dce_clock, ptr null, ptr @bios_parser_program_crtc_timing, ptr null, ptr @bios_parser_enable_disp_power_gating, ptr @firmware_parser_destroy, ptr @bios_get_board_layout_info, ptr @bios_parser_pack_data_tables, ptr @bios_get_atom_dc_golden_table, ptr @bios_parser_enable_lvtma_control, ptr @bios_parser_get_soc_bb_info, ptr @bios_parser_get_disp_connector_caps_info, ptr @bios_parser_get_lttpr_caps, ptr @bios_parser_get_lttpr_interop }, [60 x i8] zeroinitializer }, align 32
@bios_parser2_construct.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.bios_parser_get_device_tag = private unnamed_addr constant [27 x i8] c"bios_parser_get_device_tag\00", align 1
@__func__.device_type_from_device_id = private unnamed_addr constant [27 x i8] c"device_type_from_device_id\00", align 1
@bios_parser_get_spread_spectrum_info.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.firmware_parser_destroy = private unnamed_addr constant [24 x i8] c"firmware_parser_destroy\00", align 1
@__const.bios_get_board_layout_info.slot_index_to_vbios_id = private unnamed_addr constant [4 x i32] [i32 28933, i32 29189, i32 0, i32 0], align 4
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid board_layout_info\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid slot_layout_info\0A\00", [38 x i8] zeroinitializer }, align 32
@get_firmware_info_v3_4.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@switch.table.bios_parser_is_device_id_supported = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 8, i32 128, i32 512, i32 1024, i32 2048, i32 64], [40 x i8] zeroinitializer }, align 32
@switch.table.bios_get_board_layout_info = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 0, i32 0, i32 4, i32 5, i32 6], [40 x i8] zeroinitializer }, align 32
@switch.table.bios_get_board_layout_info.4 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 40, i32 30, i32 30, i32 16, i32 16, i32 9], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [10 x i64] [i64 8, i64 16, i64 2, i64 8, i64 32, i64 64, i64 128, i64 512, i64 1024, i64 2048]
@__sancov_gen_cov_switch_values.13 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 5]
@___asan_gen_.20 = private unnamed_addr constant [12 x i8] c"vbios_funcs\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 2873, i32 36 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 3008, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 460, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 2664, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [64 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 2631, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [48 x i8] c"switch.table.bios_parser_is_device_id_supported\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [40 x i8] c"switch.table.bios_get_board_layout_info\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [42 x i8] c"switch.table.bios_get_board_layout_info.4\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @vbios_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @switch.table.bios_parser_is_device_id_supported, ptr @switch.table.bios_get_board_layout_info, ptr @switch.table.bios_get_board_layout_info.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbios_funcs to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bios_parser_is_device_id_supported to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bios_get_board_layout_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bios_get_board_layout_info.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @firmware_parser_create(ptr noundef readonly %init, i32 noundef %dce_version) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %init, null
  br i1 %tobool.not.i, label %if.end.if.end3_crit_edge, label %if.end.i

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end.i:                                         ; preds = %if.end
  %bios.i = getelementptr inbounds %struct.bp_init_data, ptr %init, i32 0, i32 1
  %1 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bios.i, align 4
  %tobool1.not.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i, label %if.end.i.if.end3_crit_edge, label %if.end3.i

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end3.i:                                        ; preds = %if.end.i
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @vbios_funcs, ptr %call7.i.i, align 8
  %bios6.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %bios6.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %bios6.i, align 4
  %arrayidx.i = getelementptr i8, ptr %2, i32 2
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %6 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 9
  %bios_size.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %bios_size.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul.i, ptr %bios_size.i, align 8
  %8 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init, align 4
  %ctx11.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %ctx11.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %ctx11.i, align 8
  %bios_local_image.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %bios_local_image.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %bios_local_image.i, align 4
  %call.i = tail call ptr @bios_get_image(ptr noundef nonnull %call7.i.i, i32 noundef 72, i32 noundef 2) #7
  %tobool14.not.i = icmp eq ptr %call.i, null
  br i1 %tobool14.not.i, label %if.end3.i.if.end3_crit_edge, label %if.end16.i

if.end3.i.if.end3_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end16.i:                                       ; preds = %if.end3.i
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %call.i, align 2
  %conv18.i = zext i16 %13 to i32
  %call19.i = tail call ptr @bios_get_image(ptr noundef nonnull %call7.i.i, i32 noundef %conv18.i, i32 noundef 40) #7
  %tobool20.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool20.not.i, label %if.end16.i.if.end3_crit_edge, label %get_atom_data_table_revision.exit.i

if.end16.i.if.end3_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

get_atom_data_table_revision.exit.i:              ; preds = %if.end16.i
  %format_revision.i.i = getelementptr inbounds %struct.atom_common_table_header, ptr %call19.i, i32 0, i32 1
  %14 = ptrtoint ptr %format_revision.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %format_revision.i.i, align 1
  %16 = and i8 %15, 62
  %content_revision.i.i = getelementptr inbounds %struct.atom_common_table_header, ptr %call19.i, i32 0, i32 2
  %17 = ptrtoint ptr %content_revision.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %content_revision.i.i, align 1
  %19 = and i8 %18, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp.i = icmp ne i8 %16, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp24.i = icmp ne i8 %19, 0
  %or.cond.i = select i1 %cmp.i, i1 %cmp24.i, i1 false
  br i1 %or.cond.i, label %if.end27.i, label %get_atom_data_table_revision.exit.i.if.end3_crit_edge

get_atom_data_table_revision.exit.i.if.end3_crit_edge: ; preds = %get_atom_data_table_revision.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end27.i:                                       ; preds = %get_atom_data_table_revision.exit.i
  %masterdatatable_offset.i = getelementptr inbounds %struct.atom_rom_header_v2_2, ptr %call19.i, i32 0, i32 14
  %20 = ptrtoint ptr %masterdatatable_offset.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %masterdatatable_offset.i, align 1
  %conv29.i = zext i16 %21 to i32
  %call30.i = tail call ptr @bios_get_image(ptr noundef nonnull %call7.i.i, i32 noundef %conv29.i, i32 noundef 74) #7
  %master_data_tbl.i = getelementptr inbounds %struct.bios_parser, ptr %call7.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call30.i, ptr %master_data_tbl.i, align 8
  %tobool32.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool32.not.i, label %if.end27.i.if.end3_crit_edge, label %if.end34.i

if.end27.i.if.end3_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end34.i:                                       ; preds = %if.end27.i
  %displayobjectinfo.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %call30.i, i32 0, i32 1, i32 22
  %23 = ptrtoint ptr %displayobjectinfo.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %displayobjectinfo.i, align 1
  %conv36.i = zext i16 %24 to i32
  %object_info_tbl_offset.i = getelementptr inbounds %struct.bios_parser, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %object_info_tbl_offset.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv36.i, ptr %object_info_tbl_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool38.not.i = icmp eq i16 %24, 0
  br i1 %tobool38.not.i, label %if.end34.i.if.end3_crit_edge, label %if.end40.i

if.end34.i.if.end3_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end40.i:                                       ; preds = %if.end34.i
  %call43.i = tail call ptr @bios_get_image(ptr noundef nonnull %call7.i.i, i32 noundef %conv36.i, i32 noundef 136) #7
  %tobool44.not.i = icmp eq ptr %call43.i, null
  br i1 %tobool44.not.i, label %if.end40.i.if.end3_crit_edge, label %if.end46.i

if.end40.i.if.end3_crit_edge:                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end46.i:                                       ; preds = %if.end40.i
  %object_info_tbl48.i = getelementptr inbounds %struct.bios_parser, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %object_info_tbl48.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %object_info_tbl48.i, align 8
  %minor.i169.i = getelementptr inbounds %struct.bios_parser, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %minor.i169.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %minor.i169.i, align 4
  %format_revision.i171.i = getelementptr inbounds %struct.atom_common_table_header, ptr %call43.i, i32 0, i32 1
  %28 = ptrtoint ptr %format_revision.i171.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %format_revision.i171.i, align 1
  %30 = and i8 %29, 63
  %and.i172.i = zext i8 %30 to i32
  store i32 %and.i172.i, ptr %object_info_tbl48.i, align 8
  %content_revision.i173.i = getelementptr inbounds %struct.atom_common_table_header, ptr %call43.i, i32 0, i32 2
  %31 = ptrtoint ptr %content_revision.i173.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %content_revision.i173.i, align 1
  %33 = and i8 %32, 63
  %and6.i174.i = zext i8 %33 to i32
  store i32 %and6.i174.i, ptr %minor.i169.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp52.i = icmp eq i8 %30, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %33)
  %cmp58.i = icmp eq i8 %33, 4
  %or.cond = select i1 %cmp52.i, i1 %cmp58.i, i1 false
  br i1 %or.cond, label %if.then60.i, label %land.end.i

if.then60.i:                                      ; preds = %if.end46.i
  %34 = ptrtoint ptr %object_info_tbl_offset.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %object_info_tbl_offset.i, align 4
  %call63.i = tail call ptr @bios_get_image(ptr noundef nonnull %call7.i.i, i32 noundef %35, i32 noundef 136) #7
  %tobool64.not.i = icmp eq ptr %call63.i, null
  br i1 %tobool64.not.i, label %if.then60.i.if.end3_crit_edge, label %if.end66.i

if.then60.i.if.end3_crit_edge:                    ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end66.i:                                       ; preds = %if.then60.i
  %36 = getelementptr inbounds %struct.bios_parser, ptr %call7.i.i, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call63.i, ptr %36, align 8
  tail call void @dal_firmware_parser_init_cmd_tbl(ptr noundef nonnull %call7.i.i) #7
  %cmd_helper.i = getelementptr inbounds %struct.bios_parser, ptr %call7.i.i, i32 0, i32 5
  %call111.i = tail call zeroext i1 @dal_bios_parser_init_cmd_tbl_helper2(ptr noundef %cmd_helper.i, i32 noundef %dce_version) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 716) #10
  %cmp.i35 = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i35, label %do.end.i, label %land.lhs.true.i.i

do.end.i:                                         ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2490, i32 noundef 9, ptr noundef null) #7
  tail call void @kgdb_breakpoint() #7
  br label %bios_parser_create_integrated_info.exit

land.lhs.true.i.i:                                ; preds = %if.end66.i
  %39 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %master_data_tbl.i, align 8
  %integratedsysteminfo.i.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %40, i32 0, i32 1, i32 30
  %41 = ptrtoint ptr %integratedsysteminfo.i.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %integratedsysteminfo.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool1.not.i.i36 = icmp eq i16 %42, 0
  br i1 %tobool1.not.i.i36, label %land.lhs.true.i.i.if.end27.i45_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end27.i45_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i45

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %conv.i.i37 = zext i16 %42 to i32
  %call.i.i38 = tail call ptr @bios_get_image(ptr noundef nonnull %call7.i.i, i32 noundef %conv.i.i37, i32 noundef 4) #7
  %tobool1.not.i.i.i39 = icmp eq ptr %call.i.i38, null
  br i1 %tobool1.not.i.i.i39, label %if.then.i.i.if.end27.i45_crit_edge, label %get_atom_data_table_revision.exit.i.i43

if.then.i.i.if.end27.i45_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i45

get_atom_data_table_revision.exit.i.i43:          ; preds = %if.then.i.i
  %format_revision.i.i.i40 = getelementptr inbounds %struct.atom_common_table_header, ptr %call.i.i38, i32 0, i32 1
  %43 = ptrtoint ptr %format_revision.i.i.i40 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %format_revision.i.i.i40, align 1
  %45 = and i8 %44, 63
  %and.i.i.i = zext i8 %45 to i32
  %content_revision.i.i.i41 = getelementptr inbounds %struct.atom_common_table_header, ptr %call.i.i38, i32 0, i32 2
  %46 = ptrtoint ptr %content_revision.i.i.i41 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %content_revision.i.i.i41, align 1
  %48 = and i8 %47, 63
  %and6.i.i.i42 = zext i8 %48 to i32
  %49 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i.i.i, label %get_atom_data_table_revision.exit.i.i43.if.end27.i45_crit_edge [
    i32 1, label %sw.bb.i.i44
    i32 2, label %sw.bb8.i.i
  ]

get_atom_data_table_revision.exit.i.i43.if.end27.i45_crit_edge: ; preds = %get_atom_data_table_revision.exit.i.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i45

sw.bb.i.i44:                                      ; preds = %get_atom_data_table_revision.exit.i.i43
  %.off.i.i = add nsw i32 %and6.i.i.i42, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %sw.bb6.i.i, label %sw.bb.i.i44.if.end27.i45_crit_edge

sw.bb.i.i44.if.end27.i45_crit_edge:               ; preds = %sw.bb.i.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i45

sw.bb6.i.i:                                       ; preds = %sw.bb.i.i44
  %50 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %master_data_tbl.i, align 8
  %integratedsysteminfo.i.i.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %51, i32 0, i32 1, i32 30
  %52 = ptrtoint ptr %integratedsysteminfo.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %integratedsysteminfo.i.i.i, align 1
  %conv.i.i.i = zext i16 %53 to i32
  %call.i.i.i = tail call ptr @bios_get_image(ptr noundef nonnull %call7.i.i, i32 noundef %conv.i.i.i, i32 noundef 1024) #7
  %cmp.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.i.i.i, label %sw.bb6.i.i.if.end27.i45_crit_edge, label %if.end.i.i.i

sw.bb6.i.i.if.end27.i45_crit_edge:                ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i45

if.end.i.i.i:                                     ; preds = %sw.bb6.i.i
  %gpucapinfo.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 2
  %54 = ptrtoint ptr %gpucapinfo.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %gpucapinfo.i.i.i, align 1
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #7
  %gpu_cap_info.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 10
  %57 = ptrtoint ptr %gpu_cap_info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %gpu_cap_info.i.i.i, align 8
  %system_config.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 3
  %58 = ptrtoint ptr %system_config.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 4)
  %59 = load i32, ptr %system_config.i.i.i, align 1
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #7
  %system_config2.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 12
  %61 = ptrtoint ptr %system_config2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %system_config2.i.i.i, align 8
  %cpucapinfo.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 4
  %62 = ptrtoint ptr %cpucapinfo.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %cpucapinfo.i.i.i, align 1
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #7
  %cpu_cap_info.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 13
  %65 = ptrtoint ptr %cpu_cap_info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %cpu_cap_info.i.i.i, align 4
  %memorytype.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 16
  %66 = ptrtoint ptr %memorytype.i.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %memorytype.i.i.i, align 1
  %memory_type.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 3
  %68 = ptrtoint ptr %memory_type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %memory_type.i.i.i, align 8
  %umachannelnumber.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 17
  %69 = ptrtoint ptr %umachannelnumber.i.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %umachannelnumber.i.i.i, align 1
  %ma_channel_number.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 4
  %71 = ptrtoint ptr %ma_channel_number.i.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %ma_channel_number.i.i.i, align 1
  %lvds_ss_percentage.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 7
  %72 = ptrtoint ptr %lvds_ss_percentage.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %lvds_ss_percentage.i.i.i, align 1
  %74 = tail call i16 @llvm.bswap.i16(i16 %73) #7
  %conv3.i.i.i = zext i16 %74 to i32
  %lvds_ss_percentage4.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 27
  %75 = ptrtoint ptr %lvds_ss_percentage4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv3.i.i.i, ptr %lvds_ss_percentage4.i.i.i, align 8
  %reserved1.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 28
  %76 = ptrtoint ptr %reserved1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %reserved1.i.i.i, align 1
  %conv5.i.i.i = zext i8 %77 to i32
  %78 = shl nuw nsw i32 %conv5.i.i.i, 8
  %dp_ss_control.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 72
  %79 = ptrtoint ptr %dp_ss_control.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %dp_ss_control.i.i.i, align 8
  %lvds_ss_rate_10hz.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 8
  %80 = ptrtoint ptr %lvds_ss_rate_10hz.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %lvds_ss_rate_10hz.i.i.i, align 1
  %82 = tail call i16 @llvm.bswap.i16(i16 %81) #7
  %conv7.i.i.i = zext i16 %82 to i32
  %lvds_sspread_rate_in_10hz.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 28
  %83 = ptrtoint ptr %lvds_sspread_rate_in_10hz.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv7.i.i.i, ptr %lvds_sspread_rate_in_10hz.i.i.i, align 4
  %hdmi_ss_percentage.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 9
  %84 = ptrtoint ptr %hdmi_ss_percentage.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %85 = load i16, ptr %hdmi_ss_percentage.i.i.i, align 1
  %86 = tail call i16 @llvm.bswap.i16(i16 %85) #7
  %conv8.i.i.i = zext i16 %86 to i32
  %hdmi_ss_percentage9.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 29
  %87 = ptrtoint ptr %hdmi_ss_percentage9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv8.i.i.i, ptr %hdmi_ss_percentage9.i.i.i, align 8
  %hdmi_ss_rate_10hz.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 10
  %88 = ptrtoint ptr %hdmi_ss_rate_10hz.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %hdmi_ss_rate_10hz.i.i.i, align 1
  %90 = tail call i16 @llvm.bswap.i16(i16 %89) #7
  %conv10.i.i.i = zext i16 %90 to i32
  %hdmi_sspread_rate_in_10hz.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 30
  %91 = ptrtoint ptr %hdmi_sspread_rate_in_10hz.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %conv10.i.i.i, ptr %hdmi_sspread_rate_in_10hz.i.i.i, align 4
  %dvi_ss_percentage.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 11
  %92 = ptrtoint ptr %dvi_ss_percentage.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 2)
  %93 = load i16, ptr %dvi_ss_percentage.i.i.i, align 1
  %94 = tail call i16 @llvm.bswap.i16(i16 %93) #7
  %conv11.i.i.i = zext i16 %94 to i32
  %dvi_ss_percentage12.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 31
  %95 = ptrtoint ptr %dvi_ss_percentage12.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %conv11.i.i.i, ptr %dvi_ss_percentage12.i.i.i, align 8
  %dvi_ss_rate_10hz.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 12
  %96 = ptrtoint ptr %dvi_ss_rate_10hz.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %96, i32 2)
  %97 = load i16, ptr %dvi_ss_rate_10hz.i.i.i, align 1
  %98 = tail call i16 @llvm.bswap.i16(i16 %97) #7
  %conv13.i.i.i = zext i16 %98 to i32
  %dvi_sspread_rate_in_10_hz.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 32
  %99 = ptrtoint ptr %dvi_sspread_rate_in_10_hz.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %conv13.i.i.i, ptr %dvi_sspread_rate_in_10_hz.i.i.i, align 4
  %lvds_misc.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 14
  %100 = ptrtoint ptr %lvds_misc.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 2)
  %101 = load i16, ptr %lvds_misc.i.i.i, align 1
  %conv14.i.i.i = zext i16 %101 to i32
  %lvds_misc15.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 42
  %102 = ptrtoint ptr %lvds_misc15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %conv14.i.i.i, ptr %lvds_misc15.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 30, i32 1, i32 0
  %103 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx.i.i.i, align 1
  %arrayidx18.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 0
  %105 = ptrtoint ptr %arrayidx18.i.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %arrayidx18.i.i.i, align 8
  %arrayidx.1.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 30, i32 1, i32 1
  %106 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx.1.i.i.i, align 1
  %arrayidx18.1.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 1
  %108 = ptrtoint ptr %arrayidx18.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %arrayidx18.1.i.i.i, align 1
  %arrayidx.2.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 30, i32 1, i32 2
  %109 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx.2.i.i.i, align 1
  %arrayidx18.2.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 2
  %111 = ptrtoint ptr %arrayidx18.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %arrayidx18.2.i.i.i, align 2
  %arrayidx.3.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 30, i32 1, i32 3
  %112 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx.3.i.i.i, align 1
  %arrayidx18.3.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 3
  %114 = ptrtoint ptr %arrayidx18.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %arrayidx18.3.i.i.i, align 1
  %arrayidx.4.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 30, i32 1, i32 4
  %115 = ptrtoint ptr %arrayidx.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx.4.i.i.i, align 1
  %arrayidx18.4.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 4
  %117 = ptrtoint ptr %arrayidx18.4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %arrayidx18.4.i.i.i, align 4
  %arrayidx.5.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 30, i32 1, i32 5
  %118 = ptrtoint ptr %arrayidx.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx.5.i.i.i, align 1
  %arrayidx18.5.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 5
  %120 = ptrtoint ptr %arrayidx18.5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %arrayidx18.5.i.i.i, align 1
  %arrayidx.6.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 30, i32 1, i32 6
  %121 = ptrtoint ptr %arrayidx.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx.6.i.i.i, align 1
  %arrayidx18.6.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 6
  %123 = ptrtoint ptr %arrayidx18.6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %arrayidx18.6.i.i.i, align 2
  %arrayidx.7.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 30, i32 1, i32 7
  %124 = ptrtoint ptr %arrayidx.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx.7.i.i.i, align 1
  %arrayidx18.7.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 7
  %126 = ptrtoint ptr %arrayidx18.7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %arrayidx18.7.i.i.i, align 1
  %arrayidx.8.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 30, i32 1, i32 8
  %127 = ptrtoint ptr %arrayidx.8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx.8.i.i.i, align 1
  %arrayidx18.8.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 8
  %129 = ptrtoint ptr %arrayidx18.8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %arrayidx18.8.i.i.i, align 8
  %arrayidx.9.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 30, i32 1, i32 9
  %130 = ptrtoint ptr %arrayidx.9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx.9.i.i.i, align 1
  %arrayidx18.9.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 9
  %132 = ptrtoint ptr %arrayidx18.9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %arrayidx18.9.i.i.i, align 1
  %arrayidx.10.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 30, i32 1, i32 10
  %133 = ptrtoint ptr %arrayidx.10.i.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx.10.i.i.i, align 1
  %arrayidx18.10.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 10
  %135 = ptrtoint ptr %arrayidx18.10.i.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %arrayidx18.10.i.i.i, align 2
  %arrayidx.11.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 30, i32 1, i32 11
  %136 = ptrtoint ptr %arrayidx.11.i.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx.11.i.i.i, align 1
  %arrayidx18.11.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 11
  %138 = ptrtoint ptr %arrayidx18.11.i.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %arrayidx18.11.i.i.i, align 1
  %arrayidx.12.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 30, i32 1, i32 12
  %139 = ptrtoint ptr %arrayidx.12.i.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx.12.i.i.i, align 1
  %arrayidx18.12.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 12
  %141 = ptrtoint ptr %arrayidx18.12.i.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %140, ptr %arrayidx18.12.i.i.i, align 4
  %arrayidx.13.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 30, i32 1, i32 13
  %142 = ptrtoint ptr %arrayidx.13.i.i.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx.13.i.i.i, align 1
  %arrayidx18.13.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 13
  %144 = ptrtoint ptr %arrayidx18.13.i.i.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %arrayidx18.13.i.i.i, align 1
  %arrayidx.14.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 30, i32 1, i32 14
  %145 = ptrtoint ptr %arrayidx.14.i.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx.14.i.i.i, align 1
  %arrayidx18.14.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 14
  %147 = ptrtoint ptr %arrayidx18.14.i.i.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %arrayidx18.14.i.i.i, align 2
  %arrayidx.15.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 30, i32 1, i32 15
  %148 = ptrtoint ptr %arrayidx.15.i.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx.15.i.i.i, align 1
  %arrayidx18.15.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 15
  %150 = ptrtoint ptr %arrayidx18.15.i.i.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %arrayidx18.15.i.i.i, align 1
  %ext_disp_conn_info23.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1
  br label %for.body22.i.i.i

for.body22.i.i.i:                                 ; preds = %for.body22.i.i.i.for.body22.i.i.i_crit_edge, %if.end.i.i.i
  %i.1455.i.i.i = phi i32 [ 0, %if.end.i.i.i ], [ %inc82.i.i.i, %for.body22.i.i.i.for.body22.i.i.i_crit_edge ]
  %arrayidx24.i.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info23.i.i.i, i32 0, i32 %i.1455.i.i.i
  %device_connector_id.i.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info23.i.i.i, i32 0, i32 %i.1455.i.i.i, i32 2
  %arrayidx27.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 30, i32 2, i32 %i.1455.i.i.i
  %connectorobjid.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 30, i32 2, i32 %i.1455.i.i.i, i32 2
  %151 = ptrtoint ptr %connectorobjid.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %151, i32 2)
  %152 = load i16, ptr %connectorobjid.i.i.i, align 1
  %153 = tail call i16 @llvm.bswap.i16(i16 %152) #7
  %conv28.i.i.i = zext i16 %153 to i32
  %call29.i.i.i = tail call i32 @object_id_from_bios_object_id(i32 noundef %conv28.i.i.i) #7
  %154 = ptrtoint ptr %device_connector_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %call29.i.i.i, ptr %device_connector_id.i.i.i, align 8
  %ext_encoder_obj_id.i.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info23.i.i.i, i32 0, i32 %i.1455.i.i.i, i32 5
  %ext_encoder_objid.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 30, i32 2, i32 %i.1455.i.i.i, i32 5
  %155 = ptrtoint ptr %ext_encoder_objid.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %155, i32 2)
  %156 = load i16, ptr %ext_encoder_objid.i.i.i, align 1
  %157 = tail call i16 @llvm.bswap.i16(i16 %156) #7
  %conv37.i.i.i = zext i16 %157 to i32
  %call38.i.i.i = tail call i32 @object_id_from_bios_object_id(i32 noundef %conv37.i.i.i) #7
  %158 = ptrtoint ptr %ext_encoder_obj_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %call38.i.i.i, ptr %ext_encoder_obj_id.i.i.i, align 8
  %159 = ptrtoint ptr %arrayidx27.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %159, i32 2)
  %160 = load i16, ptr %arrayidx27.i.i.i, align 1
  %161 = tail call i16 @llvm.bswap.i16(i16 %160) #7
  %conv43.i.i.i = zext i16 %161 to i32
  %162 = ptrtoint ptr %arrayidx24.i.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %conv43.i.i.i, ptr %arrayidx24.i.i.i, align 8
  %device_acpi_enum.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 30, i32 2, i32 %i.1455.i.i.i, i32 1
  %163 = ptrtoint ptr %device_acpi_enum.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %163, i32 2)
  %164 = load i16, ptr %device_acpi_enum.i.i.i, align 1
  %165 = tail call i16 @llvm.bswap.i16(i16 %164) #7
  %conv51.i.i.i = zext i16 %165 to i32
  %device_acpi_enum55.i.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info23.i.i.i, i32 0, i32 %i.1455.i.i.i, i32 1
  %166 = ptrtoint ptr %device_acpi_enum55.i.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %conv51.i.i.i, ptr %device_acpi_enum55.i.i.i, align 4
  %auxddclut_index.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 30, i32 2, i32 %i.1455.i.i.i, i32 3
  %167 = ptrtoint ptr %auxddclut_index.i.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %auxddclut_index.i.i.i, align 1
  %ext_aux_ddc_lut_index.i.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info23.i.i.i, i32 0, i32 %i.1455.i.i.i, i32 3
  %169 = ptrtoint ptr %ext_aux_ddc_lut_index.i.i.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %168, ptr %ext_aux_ddc_lut_index.i.i.i, align 4
  %hpdlut_index.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 30, i32 2, i32 %i.1455.i.i.i, i32 4
  %170 = ptrtoint ptr %hpdlut_index.i.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %hpdlut_index.i.i.i, align 1
  %ext_hpd_pin_lut_index.i.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info23.i.i.i, i32 0, i32 %i.1455.i.i.i, i32 4
  %172 = ptrtoint ptr %ext_hpd_pin_lut_index.i.i.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %171, ptr %ext_hpd_pin_lut_index.i.i.i, align 1
  %channelmapping.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 30, i32 2, i32 %i.1455.i.i.i, i32 6
  %173 = ptrtoint ptr %channelmapping.i.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %channelmapping.i.i.i, align 1
  %channel_mapping.i.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info23.i.i.i, i32 0, i32 %i.1455.i.i.i, i32 6
  %175 = ptrtoint ptr %channel_mapping.i.i.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %174, ptr %channel_mapping.i.i.i, align 4
  %caps.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 30, i32 2, i32 %i.1455.i.i.i, i32 8
  %176 = ptrtoint ptr %caps.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %176, i32 2)
  %177 = load i16, ptr %caps.i.i.i, align 1
  %178 = tail call i16 @llvm.bswap.i16(i16 %177) #7
  %caps80.i.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info23.i.i.i, i32 0, i32 %i.1455.i.i.i, i32 7
  %179 = ptrtoint ptr %caps80.i.i.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %178, ptr %caps80.i.i.i, align 2
  %inc82.i.i.i = add nuw nsw i32 %i.1455.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc82.i.i.i, 7
  br i1 %exitcond.not.i.i.i, label %for.end83.i.i.i, label %for.body22.i.i.i.for.body22.i.i.i_crit_edge

for.body22.i.i.i.for.body22.i.i.i_crit_edge:      ; preds = %for.body22.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body22.i.i.i

for.end83.i.i.i:                                  ; preds = %for.body22.i.i.i
  %checksum.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 30, i32 3
  %180 = ptrtoint ptr %checksum.i.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %checksum.i.i.i, align 1
  %checksum86.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %182 = ptrtoint ptr %checksum86.i.i.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %181, ptr %checksum86.i.i.i, align 8
  %dp0_retimer_set.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 37
  %183 = ptrtoint ptr %dp0_retimer_set.i.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %dp0_retimer_set.i.i.i, align 1
  %dp0_ext_hdmi_slv_addr.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 52
  %185 = ptrtoint ptr %dp0_ext_hdmi_slv_addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %184, ptr %dp0_ext_hdmi_slv_addr.i.i.i, align 4
  %HdmiRegNum.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 37, i32 1
  %186 = ptrtoint ptr %HdmiRegNum.i.i.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %HdmiRegNum.i.i.i, align 1
  %dp0_ext_hdmi_reg_num.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 53
  %188 = ptrtoint ptr %dp0_ext_hdmi_reg_num.i.i.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %187, ptr %dp0_ext_hdmi_reg_num.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %cmp91457.not.i.i.i = icmp eq i8 %187, 0
  br i1 %cmp91457.not.i.i.i, label %for.end83.i.i.i.for.end104.i.i.i_crit_edge, label %for.end83.i.i.i.for.body93.i.i.i_crit_edge

for.end83.i.i.i.for.body93.i.i.i_crit_edge:       ; preds = %for.end83.i.i.i
  br label %for.body93.i.i.i

for.end83.i.i.i.for.end104.i.i.i_crit_edge:       ; preds = %for.end83.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end104.i.i.i

for.body93.i.i.i:                                 ; preds = %for.body93.i.i.i.for.body93.i.i.i_crit_edge, %for.end83.i.i.i.for.body93.i.i.i_crit_edge
  %i.2458.i.i.i = phi i32 [ %inc103.i.i.i, %for.body93.i.i.i.for.body93.i.i.i_crit_edge ], [ 0, %for.end83.i.i.i.for.body93.i.i.i_crit_edge ]
  %arrayidx95.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 37, i32 3, i32 %i.2458.i.i.i
  %189 = ptrtoint ptr %arrayidx95.i.i.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx95.i.i.i, align 1
  %arrayidx96.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 54, i32 %i.2458.i.i.i
  %191 = ptrtoint ptr %arrayidx96.i.i.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %190, ptr %arrayidx96.i.i.i, align 2
  %ucI2cRegVal.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 37, i32 3, i32 %i.2458.i.i.i, i32 1
  %192 = ptrtoint ptr %ucI2cRegVal.i.i.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %ucI2cRegVal.i.i.i, align 1
  %i2c_reg_val.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 54, i32 %i.2458.i.i.i, i32 1
  %194 = ptrtoint ptr %i2c_reg_val.i.i.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %193, ptr %i2c_reg_val.i.i.i, align 1
  %inc103.i.i.i = add nuw nsw i32 %i.2458.i.i.i, 1
  %195 = ptrtoint ptr %dp0_ext_hdmi_reg_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %dp0_ext_hdmi_reg_num.i.i.i, align 1
  %conv90.i.i.i = zext i8 %196 to i32
  %cmp91.i.i.i = icmp ult i32 %inc103.i.i.i, %conv90.i.i.i
  br i1 %cmp91.i.i.i, label %for.body93.i.i.i.for.body93.i.i.i_crit_edge, label %for.body93.i.i.i.for.end104.i.i.i_crit_edge

for.body93.i.i.i.for.end104.i.i.i_crit_edge:      ; preds = %for.body93.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end104.i.i.i

for.body93.i.i.i.for.body93.i.i.i_crit_edge:      ; preds = %for.body93.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body93.i.i.i

for.end104.i.i.i:                                 ; preds = %for.body93.i.i.i.for.end104.i.i.i_crit_edge, %for.end83.i.i.i.for.end104.i.i.i_crit_edge
  %Hdmi6GRegNum.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 37, i32 2
  %197 = ptrtoint ptr %Hdmi6GRegNum.i.i.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %Hdmi6GRegNum.i.i.i, align 1
  %dp0_ext_hdmi_6g_reg_num.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 55
  %199 = ptrtoint ptr %dp0_ext_hdmi_6g_reg_num.i.i.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %198, ptr %dp0_ext_hdmi_6g_reg_num.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %cmp109460.not.i.i.i = icmp eq i8 %198, 0
  br i1 %cmp109460.not.i.i.i, label %for.end104.i.i.i.for.end126.i.i.i_crit_edge, label %for.end104.i.i.i.for.body111.i.i.i_crit_edge

for.end104.i.i.i.for.body111.i.i.i_crit_edge:     ; preds = %for.end104.i.i.i
  br label %for.body111.i.i.i

for.end104.i.i.i.for.end126.i.i.i_crit_edge:      ; preds = %for.end104.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end126.i.i.i

for.body111.i.i.i:                                ; preds = %for.body111.i.i.i.for.body111.i.i.i_crit_edge, %for.end104.i.i.i.for.body111.i.i.i_crit_edge
  %i.3461.i.i.i = phi i32 [ %inc125.i.i.i, %for.body111.i.i.i.for.body111.i.i.i_crit_edge ], [ 0, %for.end104.i.i.i.for.body111.i.i.i_crit_edge ]
  %arrayidx113.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 37, i32 4, i32 %i.3461.i.i.i
  %200 = ptrtoint ptr %arrayidx113.i.i.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx113.i.i.i, align 1
  %arrayidx115.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 56, i32 %i.3461.i.i.i
  %202 = ptrtoint ptr %arrayidx115.i.i.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %201, ptr %arrayidx115.i.i.i, align 1
  %ucI2cRegVal120.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 37, i32 4, i32 %i.3461.i.i.i, i32 1
  %203 = ptrtoint ptr %ucI2cRegVal120.i.i.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %ucI2cRegVal120.i.i.i, align 1
  %i2c_reg_val123.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 56, i32 %i.3461.i.i.i, i32 1
  %205 = ptrtoint ptr %i2c_reg_val123.i.i.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %204, ptr %i2c_reg_val123.i.i.i, align 2
  %inc125.i.i.i = add nuw nsw i32 %i.3461.i.i.i, 1
  %206 = ptrtoint ptr %dp0_ext_hdmi_6g_reg_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %dp0_ext_hdmi_6g_reg_num.i.i.i, align 8
  %conv108.i.i.i = zext i8 %207 to i32
  %cmp109.i.i.i = icmp ult i32 %inc125.i.i.i, %conv108.i.i.i
  br i1 %cmp109.i.i.i, label %for.body111.i.i.i.for.body111.i.i.i_crit_edge, label %for.body111.i.i.i.for.end126.i.i.i_crit_edge

for.body111.i.i.i.for.end126.i.i.i_crit_edge:     ; preds = %for.body111.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end126.i.i.i

for.body111.i.i.i.for.body111.i.i.i_crit_edge:    ; preds = %for.body111.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body111.i.i.i

for.end126.i.i.i:                                 ; preds = %for.body111.i.i.i.for.end126.i.i.i_crit_edge, %for.end104.i.i.i.for.end126.i.i.i_crit_edge
  %dp1_retimer_set.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 38
  %208 = ptrtoint ptr %dp1_retimer_set.i.i.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %dp1_retimer_set.i.i.i, align 1
  %dp1_ext_hdmi_slv_addr.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 57
  %210 = ptrtoint ptr %dp1_ext_hdmi_slv_addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 %209, ptr %dp1_ext_hdmi_slv_addr.i.i.i, align 1
  %HdmiRegNum129.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 38, i32 1
  %211 = ptrtoint ptr %HdmiRegNum129.i.i.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %HdmiRegNum129.i.i.i, align 1
  %dp1_ext_hdmi_reg_num.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 58
  %213 = ptrtoint ptr %dp1_ext_hdmi_reg_num.i.i.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %212, ptr %dp1_ext_hdmi_reg_num.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %cmp133463.not.i.i.i = icmp eq i8 %212, 0
  br i1 %cmp133463.not.i.i.i, label %for.end126.i.i.i.for.end151.i.i.i_crit_edge, label %for.end126.i.i.i.for.body135.i.i.i_crit_edge

for.end126.i.i.i.for.body135.i.i.i_crit_edge:     ; preds = %for.end126.i.i.i
  br label %for.body135.i.i.i

for.end126.i.i.i.for.end151.i.i.i_crit_edge:      ; preds = %for.end126.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end151.i.i.i

for.body135.i.i.i:                                ; preds = %for.body135.i.i.i.for.body135.i.i.i_crit_edge, %for.end126.i.i.i.for.body135.i.i.i_crit_edge
  %i.4464.i.i.i = phi i32 [ %inc150.i.i.i, %for.body135.i.i.i.for.body135.i.i.i_crit_edge ], [ 0, %for.end126.i.i.i.for.body135.i.i.i_crit_edge ]
  %arrayidx138.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 38, i32 3, i32 %i.4464.i.i.i
  %214 = ptrtoint ptr %arrayidx138.i.i.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %arrayidx138.i.i.i, align 1
  %arrayidx140.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 59, i32 %i.4464.i.i.i
  %216 = ptrtoint ptr %arrayidx140.i.i.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %215, ptr %arrayidx140.i.i.i, align 1
  %ucI2cRegVal145.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 38, i32 3, i32 %i.4464.i.i.i, i32 1
  %217 = ptrtoint ptr %ucI2cRegVal145.i.i.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %ucI2cRegVal145.i.i.i, align 1
  %i2c_reg_val148.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 59, i32 %i.4464.i.i.i, i32 1
  %219 = ptrtoint ptr %i2c_reg_val148.i.i.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %218, ptr %i2c_reg_val148.i.i.i, align 2
  %inc150.i.i.i = add nuw nsw i32 %i.4464.i.i.i, 1
  %220 = ptrtoint ptr %dp1_ext_hdmi_reg_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %dp1_ext_hdmi_reg_num.i.i.i, align 8
  %conv132.i.i.i = zext i8 %221 to i32
  %cmp133.i.i.i = icmp ult i32 %inc150.i.i.i, %conv132.i.i.i
  br i1 %cmp133.i.i.i, label %for.body135.i.i.i.for.body135.i.i.i_crit_edge, label %for.body135.i.i.i.for.end151.i.i.i_crit_edge

for.body135.i.i.i.for.end151.i.i.i_crit_edge:     ; preds = %for.body135.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end151.i.i.i

for.body135.i.i.i.for.body135.i.i.i_crit_edge:    ; preds = %for.body135.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body135.i.i.i

for.end151.i.i.i:                                 ; preds = %for.body135.i.i.i.for.end151.i.i.i_crit_edge, %for.end126.i.i.i.for.end151.i.i.i_crit_edge
  %Hdmi6GRegNum153.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 38, i32 2
  %222 = ptrtoint ptr %Hdmi6GRegNum153.i.i.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %Hdmi6GRegNum153.i.i.i, align 1
  %dp1_ext_hdmi_6g_reg_num.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 60
  %224 = ptrtoint ptr %dp1_ext_hdmi_6g_reg_num.i.i.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %223, ptr %dp1_ext_hdmi_6g_reg_num.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %cmp157466.not.i.i.i = icmp eq i8 %223, 0
  br i1 %cmp157466.not.i.i.i, label %for.end151.i.i.i.for.end175.i.i.i_crit_edge, label %for.end151.i.i.i.for.body159.i.i.i_crit_edge

for.end151.i.i.i.for.body159.i.i.i_crit_edge:     ; preds = %for.end151.i.i.i
  br label %for.body159.i.i.i

for.end151.i.i.i.for.end175.i.i.i_crit_edge:      ; preds = %for.end151.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end175.i.i.i

for.body159.i.i.i:                                ; preds = %for.body159.i.i.i.for.body159.i.i.i_crit_edge, %for.end151.i.i.i.for.body159.i.i.i_crit_edge
  %i.5467.i.i.i = phi i32 [ %inc174.i.i.i, %for.body159.i.i.i.for.body159.i.i.i_crit_edge ], [ 0, %for.end151.i.i.i.for.body159.i.i.i_crit_edge ]
  %arrayidx162.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 38, i32 4, i32 %i.5467.i.i.i
  %225 = ptrtoint ptr %arrayidx162.i.i.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %arrayidx162.i.i.i, align 1
  %arrayidx164.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 61, i32 %i.5467.i.i.i
  %227 = ptrtoint ptr %arrayidx164.i.i.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %226, ptr %arrayidx164.i.i.i, align 2
  %ucI2cRegVal169.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 38, i32 4, i32 %i.5467.i.i.i, i32 1
  %228 = ptrtoint ptr %ucI2cRegVal169.i.i.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %ucI2cRegVal169.i.i.i, align 1
  %i2c_reg_val172.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 61, i32 %i.5467.i.i.i, i32 1
  %230 = ptrtoint ptr %i2c_reg_val172.i.i.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %229, ptr %i2c_reg_val172.i.i.i, align 1
  %inc174.i.i.i = add nuw nsw i32 %i.5467.i.i.i, 1
  %231 = ptrtoint ptr %dp1_ext_hdmi_6g_reg_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %dp1_ext_hdmi_6g_reg_num.i.i.i, align 1
  %conv156.i.i.i = zext i8 %232 to i32
  %cmp157.i.i.i = icmp ult i32 %inc174.i.i.i, %conv156.i.i.i
  br i1 %cmp157.i.i.i, label %for.body159.i.i.i.for.body159.i.i.i_crit_edge, label %for.body159.i.i.i.for.end175.i.i.i_crit_edge

for.body159.i.i.i.for.end175.i.i.i_crit_edge:     ; preds = %for.body159.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end175.i.i.i

for.body159.i.i.i.for.body159.i.i.i_crit_edge:    ; preds = %for.body159.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body159.i.i.i

for.end175.i.i.i:                                 ; preds = %for.body159.i.i.i.for.end175.i.i.i_crit_edge, %for.end151.i.i.i.for.end175.i.i.i_crit_edge
  %dp2_retimer_set.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 39
  %233 = ptrtoint ptr %dp2_retimer_set.i.i.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %dp2_retimer_set.i.i.i, align 1
  %dp2_ext_hdmi_slv_addr.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 62
  %235 = ptrtoint ptr %dp2_ext_hdmi_slv_addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %234, ptr %dp2_ext_hdmi_slv_addr.i.i.i, align 2
  %HdmiRegNum178.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 39, i32 1
  %236 = ptrtoint ptr %HdmiRegNum178.i.i.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %HdmiRegNum178.i.i.i, align 1
  %dp2_ext_hdmi_reg_num.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 63
  %238 = ptrtoint ptr %dp2_ext_hdmi_reg_num.i.i.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 %237, ptr %dp2_ext_hdmi_reg_num.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %237)
  %cmp182469.not.i.i.i = icmp eq i8 %237, 0
  br i1 %cmp182469.not.i.i.i, label %for.end175.i.i.i.for.end200.i.i.i_crit_edge, label %for.end175.i.i.i.for.body184.i.i.i_crit_edge

for.end175.i.i.i.for.body184.i.i.i_crit_edge:     ; preds = %for.end175.i.i.i
  br label %for.body184.i.i.i

for.end175.i.i.i.for.end200.i.i.i_crit_edge:      ; preds = %for.end175.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end200.i.i.i

for.body184.i.i.i:                                ; preds = %for.body184.i.i.i.for.body184.i.i.i_crit_edge, %for.end175.i.i.i.for.body184.i.i.i_crit_edge
  %i.6470.i.i.i = phi i32 [ %inc199.i.i.i, %for.body184.i.i.i.for.body184.i.i.i_crit_edge ], [ 0, %for.end175.i.i.i.for.body184.i.i.i_crit_edge ]
  %arrayidx187.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 39, i32 3, i32 %i.6470.i.i.i
  %239 = ptrtoint ptr %arrayidx187.i.i.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %arrayidx187.i.i.i, align 1
  %arrayidx189.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 64, i32 %i.6470.i.i.i
  %241 = ptrtoint ptr %arrayidx189.i.i.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %240, ptr %arrayidx189.i.i.i, align 2
  %ucI2cRegVal194.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 39, i32 3, i32 %i.6470.i.i.i, i32 1
  %242 = ptrtoint ptr %ucI2cRegVal194.i.i.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %ucI2cRegVal194.i.i.i, align 1
  %i2c_reg_val197.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 64, i32 %i.6470.i.i.i, i32 1
  %244 = ptrtoint ptr %i2c_reg_val197.i.i.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 %243, ptr %i2c_reg_val197.i.i.i, align 1
  %inc199.i.i.i = add nuw nsw i32 %i.6470.i.i.i, 1
  %245 = ptrtoint ptr %dp2_ext_hdmi_reg_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %dp2_ext_hdmi_reg_num.i.i.i, align 1
  %conv181.i.i.i = zext i8 %246 to i32
  %cmp182.i.i.i = icmp ult i32 %inc199.i.i.i, %conv181.i.i.i
  br i1 %cmp182.i.i.i, label %for.body184.i.i.i.for.body184.i.i.i_crit_edge, label %for.body184.i.i.i.for.end200.i.i.i_crit_edge

for.body184.i.i.i.for.end200.i.i.i_crit_edge:     ; preds = %for.body184.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end200.i.i.i

for.body184.i.i.i.for.body184.i.i.i_crit_edge:    ; preds = %for.body184.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body184.i.i.i

for.end200.i.i.i:                                 ; preds = %for.body184.i.i.i.for.end200.i.i.i_crit_edge, %for.end175.i.i.i.for.end200.i.i.i_crit_edge
  %Hdmi6GRegNum202.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 39, i32 2
  %247 = ptrtoint ptr %Hdmi6GRegNum202.i.i.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %Hdmi6GRegNum202.i.i.i, align 1
  %dp2_ext_hdmi_6g_reg_num.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 65
  %249 = ptrtoint ptr %dp2_ext_hdmi_6g_reg_num.i.i.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %248, ptr %dp2_ext_hdmi_6g_reg_num.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %248)
  %cmp206472.not.i.i.i = icmp eq i8 %248, 0
  br i1 %cmp206472.not.i.i.i, label %for.end200.i.i.i.for.end224.i.i.i_crit_edge, label %for.end200.i.i.i.for.body208.i.i.i_crit_edge

for.end200.i.i.i.for.body208.i.i.i_crit_edge:     ; preds = %for.end200.i.i.i
  br label %for.body208.i.i.i

for.end200.i.i.i.for.end224.i.i.i_crit_edge:      ; preds = %for.end200.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end224.i.i.i

for.body208.i.i.i:                                ; preds = %for.body208.i.i.i.for.body208.i.i.i_crit_edge, %for.end200.i.i.i.for.body208.i.i.i_crit_edge
  %i.7473.i.i.i = phi i32 [ %inc223.i.i.i, %for.body208.i.i.i.for.body208.i.i.i_crit_edge ], [ 0, %for.end200.i.i.i.for.body208.i.i.i_crit_edge ]
  %arrayidx211.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 39, i32 4, i32 %i.7473.i.i.i
  %250 = ptrtoint ptr %arrayidx211.i.i.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %arrayidx211.i.i.i, align 1
  %arrayidx213.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 66, i32 %i.7473.i.i.i
  %252 = ptrtoint ptr %arrayidx213.i.i.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 %251, ptr %arrayidx213.i.i.i, align 1
  %ucI2cRegVal218.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 39, i32 4, i32 %i.7473.i.i.i, i32 1
  %253 = ptrtoint ptr %ucI2cRegVal218.i.i.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %ucI2cRegVal218.i.i.i, align 1
  %i2c_reg_val221.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 66, i32 %i.7473.i.i.i, i32 1
  %255 = ptrtoint ptr %i2c_reg_val221.i.i.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 %254, ptr %i2c_reg_val221.i.i.i, align 2
  %inc223.i.i.i = add nuw nsw i32 %i.7473.i.i.i, 1
  %256 = ptrtoint ptr %dp2_ext_hdmi_6g_reg_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %dp2_ext_hdmi_6g_reg_num.i.i.i, align 2
  %conv205.i.i.i = zext i8 %257 to i32
  %cmp206.i.i.i = icmp ult i32 %inc223.i.i.i, %conv205.i.i.i
  br i1 %cmp206.i.i.i, label %for.body208.i.i.i.for.body208.i.i.i_crit_edge, label %for.body208.i.i.i.for.end224.i.i.i_crit_edge

for.body208.i.i.i.for.end224.i.i.i_crit_edge:     ; preds = %for.body208.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end224.i.i.i

for.body208.i.i.i.for.body208.i.i.i_crit_edge:    ; preds = %for.body208.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body208.i.i.i

for.end224.i.i.i:                                 ; preds = %for.body208.i.i.i.for.end224.i.i.i_crit_edge, %for.end200.i.i.i.for.end224.i.i.i_crit_edge
  %dp3_retimer_set.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 40
  %258 = ptrtoint ptr %dp3_retimer_set.i.i.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %dp3_retimer_set.i.i.i, align 1
  %dp3_ext_hdmi_slv_addr.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 67
  %260 = ptrtoint ptr %dp3_ext_hdmi_slv_addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %259, ptr %dp3_ext_hdmi_slv_addr.i.i.i, align 1
  %HdmiRegNum227.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 40, i32 1
  %261 = ptrtoint ptr %HdmiRegNum227.i.i.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %HdmiRegNum227.i.i.i, align 1
  %dp3_ext_hdmi_reg_num.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 68
  %263 = ptrtoint ptr %dp3_ext_hdmi_reg_num.i.i.i to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 %262, ptr %dp3_ext_hdmi_reg_num.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %262)
  %cmp231475.not.i.i.i = icmp eq i8 %262, 0
  br i1 %cmp231475.not.i.i.i, label %for.end224.i.i.i.for.end249.i.i.i_crit_edge, label %for.end224.i.i.i.for.body233.i.i.i_crit_edge

for.end224.i.i.i.for.body233.i.i.i_crit_edge:     ; preds = %for.end224.i.i.i
  br label %for.body233.i.i.i

for.end224.i.i.i.for.end249.i.i.i_crit_edge:      ; preds = %for.end224.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end249.i.i.i

for.body233.i.i.i:                                ; preds = %for.body233.i.i.i.for.body233.i.i.i_crit_edge, %for.end224.i.i.i.for.body233.i.i.i_crit_edge
  %i.8476.i.i.i = phi i32 [ %inc248.i.i.i, %for.body233.i.i.i.for.body233.i.i.i_crit_edge ], [ 0, %for.end224.i.i.i.for.body233.i.i.i_crit_edge ]
  %arrayidx236.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 40, i32 3, i32 %i.8476.i.i.i
  %264 = ptrtoint ptr %arrayidx236.i.i.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %arrayidx236.i.i.i, align 1
  %arrayidx238.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 69, i32 %i.8476.i.i.i
  %266 = ptrtoint ptr %arrayidx238.i.i.i to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 %265, ptr %arrayidx238.i.i.i, align 1
  %ucI2cRegVal243.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 40, i32 3, i32 %i.8476.i.i.i, i32 1
  %267 = ptrtoint ptr %ucI2cRegVal243.i.i.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %ucI2cRegVal243.i.i.i, align 1
  %i2c_reg_val246.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 69, i32 %i.8476.i.i.i, i32 1
  %269 = ptrtoint ptr %i2c_reg_val246.i.i.i to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 %268, ptr %i2c_reg_val246.i.i.i, align 2
  %inc248.i.i.i = add nuw nsw i32 %i.8476.i.i.i, 1
  %270 = ptrtoint ptr %dp3_ext_hdmi_reg_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %dp3_ext_hdmi_reg_num.i.i.i, align 2
  %conv230.i.i.i = zext i8 %271 to i32
  %cmp231.i.i.i = icmp ult i32 %inc248.i.i.i, %conv230.i.i.i
  br i1 %cmp231.i.i.i, label %for.body233.i.i.i.for.body233.i.i.i_crit_edge, label %for.body233.i.i.i.for.end249.i.i.i_crit_edge

for.body233.i.i.i.for.end249.i.i.i_crit_edge:     ; preds = %for.body233.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end249.i.i.i

for.body233.i.i.i.for.body233.i.i.i_crit_edge:    ; preds = %for.body233.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body233.i.i.i

for.end249.i.i.i:                                 ; preds = %for.body233.i.i.i.for.end249.i.i.i_crit_edge, %for.end224.i.i.i.for.end249.i.i.i_crit_edge
  %Hdmi6GRegNum251.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 40, i32 2
  %272 = ptrtoint ptr %Hdmi6GRegNum251.i.i.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %Hdmi6GRegNum251.i.i.i, align 1
  %dp3_ext_hdmi_6g_reg_num.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 70
  %274 = ptrtoint ptr %dp3_ext_hdmi_6g_reg_num.i.i.i to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 %273, ptr %dp3_ext_hdmi_6g_reg_num.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %273)
  %cmp255478.not.i.i.i = icmp eq i8 %273, 0
  br i1 %cmp255478.not.i.i.i, label %for.end249.i.i.i.for.body26.preheader.i.i_crit_edge, label %for.end249.i.i.i.for.body257.i.i.i_crit_edge

for.end249.i.i.i.for.body257.i.i.i_crit_edge:     ; preds = %for.end249.i.i.i
  br label %for.body257.i.i.i

for.end249.i.i.i.for.body26.preheader.i.i_crit_edge: ; preds = %for.end249.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body26.preheader.i.i

for.body257.i.i.i:                                ; preds = %for.body257.i.i.i.for.body257.i.i.i_crit_edge, %for.end249.i.i.i.for.body257.i.i.i_crit_edge
  %i.9479.i.i.i = phi i32 [ %inc272.i.i.i, %for.body257.i.i.i.for.body257.i.i.i_crit_edge ], [ 0, %for.end249.i.i.i.for.body257.i.i.i_crit_edge ]
  %arrayidx260.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 40, i32 4, i32 %i.9479.i.i.i
  %275 = ptrtoint ptr %arrayidx260.i.i.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %arrayidx260.i.i.i, align 1
  %arrayidx262.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 71, i32 %i.9479.i.i.i
  %277 = ptrtoint ptr %arrayidx262.i.i.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %276, ptr %arrayidx262.i.i.i, align 2
  %ucI2cRegVal267.i.i.i = getelementptr %struct.atom_integrated_system_info_v1_11, ptr %call.i.i.i, i32 0, i32 40, i32 4, i32 %i.9479.i.i.i, i32 1
  %278 = ptrtoint ptr %ucI2cRegVal267.i.i.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %ucI2cRegVal267.i.i.i, align 1
  %i2c_reg_val270.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 71, i32 %i.9479.i.i.i, i32 1
  %280 = ptrtoint ptr %i2c_reg_val270.i.i.i to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %279, ptr %i2c_reg_val270.i.i.i, align 1
  %inc272.i.i.i = add nuw nsw i32 %i.9479.i.i.i, 1
  %281 = ptrtoint ptr %dp3_ext_hdmi_6g_reg_num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %dp3_ext_hdmi_6g_reg_num.i.i.i, align 1
  %conv254.i.i.i = zext i8 %282 to i32
  %cmp255.i.i.i = icmp ult i32 %inc272.i.i.i, %conv254.i.i.i
  br i1 %cmp255.i.i.i, label %for.body257.i.i.i.for.body257.i.i.i_crit_edge, label %for.body257.i.i.i.for.body26.preheader.i.i_crit_edge

for.body257.i.i.i.for.body26.preheader.i.i_crit_edge: ; preds = %for.body257.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body26.preheader.i.i

for.body257.i.i.i.for.body257.i.i.i_crit_edge:    ; preds = %for.body257.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body257.i.i.i

sw.bb8.i.i:                                       ; preds = %get_atom_data_table_revision.exit.i.i43
  %283 = zext i32 %and6.i.i.i42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %283, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %and6.i.i.i42, label %sw.bb8.i.i.if.end27.i45_crit_edge [
    i32 1, label %sw.bb10.i.i
    i32 2, label %sw.bb12.i.i
  ]

sw.bb8.i.i.if.end27.i45_crit_edge:                ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i45

sw.bb10.i.i:                                      ; preds = %sw.bb8.i.i
  %284 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %master_data_tbl.i, align 8
  %integratedsysteminfo.i81.i.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %285, i32 0, i32 1, i32 30
  %286 = ptrtoint ptr %integratedsysteminfo.i81.i.i to i32
  call void @__asan_loadN_noabort(i32 %286, i32 2)
  %287 = load i16, ptr %integratedsysteminfo.i81.i.i, align 1
  %conv.i82.i.i = zext i16 %287 to i32
  %call.i83.i.i = tail call ptr @bios_get_image(ptr noundef nonnull %call7.i.i, i32 noundef %conv.i82.i.i, i32 noundef 1088) #7
  %cmp.i84.i.i = icmp eq ptr %call.i83.i.i, null
  br i1 %cmp.i84.i.i, label %sw.bb10.i.i.if.end27.i45_crit_edge, label %if.end.i114.i.i

sw.bb10.i.i.if.end27.i45_crit_edge:               ; preds = %sw.bb10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i45

if.end.i114.i.i:                                  ; preds = %sw.bb10.i.i
  %gpucapinfo.i85.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 2
  %288 = ptrtoint ptr %gpucapinfo.i85.i.i to i32
  call void @__asan_loadN_noabort(i32 %288, i32 4)
  %289 = load i32, ptr %gpucapinfo.i85.i.i, align 1
  %290 = tail call i32 @llvm.bswap.i32(i32 %289) #7
  %gpu_cap_info.i86.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 10
  %291 = ptrtoint ptr %gpu_cap_info.i86.i.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %290, ptr %gpu_cap_info.i86.i.i, align 8
  %system_config.i87.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 3
  %292 = ptrtoint ptr %system_config.i87.i.i to i32
  call void @__asan_loadN_noabort(i32 %292, i32 4)
  %293 = load i32, ptr %system_config.i87.i.i, align 1
  %294 = tail call i32 @llvm.bswap.i32(i32 %293) #7
  %system_config2.i88.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 12
  %295 = ptrtoint ptr %system_config2.i88.i.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %294, ptr %system_config2.i88.i.i, align 8
  %cpucapinfo.i89.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 4
  %296 = ptrtoint ptr %cpucapinfo.i89.i.i to i32
  call void @__asan_loadN_noabort(i32 %296, i32 4)
  %297 = load i32, ptr %cpucapinfo.i89.i.i, align 1
  %298 = tail call i32 @llvm.bswap.i32(i32 %297) #7
  %cpu_cap_info.i90.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 13
  %299 = ptrtoint ptr %cpu_cap_info.i90.i.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %298, ptr %cpu_cap_info.i90.i.i, align 4
  %memorytype.i91.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 8
  %300 = ptrtoint ptr %memorytype.i91.i.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %memorytype.i91.i.i, align 1
  %memory_type.i92.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 3
  %302 = ptrtoint ptr %memory_type.i92.i.i to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 %301, ptr %memory_type.i92.i.i, align 8
  %umachannelnumber.i93.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 9
  %303 = ptrtoint ptr %umachannelnumber.i93.i.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %umachannelnumber.i93.i.i, align 1
  %ma_channel_number.i94.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 4
  %305 = ptrtoint ptr %ma_channel_number.i94.i.i to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 %304, ptr %ma_channel_number.i94.i.i, align 1
  %reserved1.i95.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 12
  %306 = ptrtoint ptr %reserved1.i95.i.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %reserved1.i95.i.i, align 1
  %conv3.i96.i.i = zext i8 %307 to i32
  %308 = shl nuw nsw i32 %conv3.i96.i.i, 8
  %dp_ss_control.i97.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 72
  %309 = ptrtoint ptr %dp_ss_control.i97.i.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %308, ptr %dp_ss_control.i97.i.i, align 8
  %arrayidx.i98.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 17, i32 1, i32 0
  %310 = ptrtoint ptr %arrayidx.i98.i.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %arrayidx.i98.i.i, align 1
  %arrayidx7.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 0
  %312 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 %311, ptr %arrayidx7.i.i.i, align 8
  %arrayidx.1.i99.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 17, i32 1, i32 1
  %313 = ptrtoint ptr %arrayidx.1.i99.i.i to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %arrayidx.1.i99.i.i, align 1
  %arrayidx7.1.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 1
  %315 = ptrtoint ptr %arrayidx7.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 %314, ptr %arrayidx7.1.i.i.i, align 1
  %arrayidx.2.i100.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 17, i32 1, i32 2
  %316 = ptrtoint ptr %arrayidx.2.i100.i.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %arrayidx.2.i100.i.i, align 1
  %arrayidx7.2.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 2
  %318 = ptrtoint ptr %arrayidx7.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 %317, ptr %arrayidx7.2.i.i.i, align 2
  %arrayidx.3.i101.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 17, i32 1, i32 3
  %319 = ptrtoint ptr %arrayidx.3.i101.i.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %arrayidx.3.i101.i.i, align 1
  %arrayidx7.3.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 3
  %321 = ptrtoint ptr %arrayidx7.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 %320, ptr %arrayidx7.3.i.i.i, align 1
  %arrayidx.4.i102.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 17, i32 1, i32 4
  %322 = ptrtoint ptr %arrayidx.4.i102.i.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %arrayidx.4.i102.i.i, align 1
  %arrayidx7.4.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 4
  %324 = ptrtoint ptr %arrayidx7.4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 %323, ptr %arrayidx7.4.i.i.i, align 4
  %arrayidx.5.i103.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 17, i32 1, i32 5
  %325 = ptrtoint ptr %arrayidx.5.i103.i.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %arrayidx.5.i103.i.i, align 1
  %arrayidx7.5.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 5
  %327 = ptrtoint ptr %arrayidx7.5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 %326, ptr %arrayidx7.5.i.i.i, align 1
  %arrayidx.6.i104.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 17, i32 1, i32 6
  %328 = ptrtoint ptr %arrayidx.6.i104.i.i to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %arrayidx.6.i104.i.i, align 1
  %arrayidx7.6.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 6
  %330 = ptrtoint ptr %arrayidx7.6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 %329, ptr %arrayidx7.6.i.i.i, align 2
  %arrayidx.7.i105.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 17, i32 1, i32 7
  %331 = ptrtoint ptr %arrayidx.7.i105.i.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %arrayidx.7.i105.i.i, align 1
  %arrayidx7.7.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 7
  %333 = ptrtoint ptr %arrayidx7.7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 %332, ptr %arrayidx7.7.i.i.i, align 1
  %arrayidx.8.i106.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 17, i32 1, i32 8
  %334 = ptrtoint ptr %arrayidx.8.i106.i.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %arrayidx.8.i106.i.i, align 1
  %arrayidx7.8.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 8
  %336 = ptrtoint ptr %arrayidx7.8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 %335, ptr %arrayidx7.8.i.i.i, align 8
  %arrayidx.9.i107.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 17, i32 1, i32 9
  %337 = ptrtoint ptr %arrayidx.9.i107.i.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %arrayidx.9.i107.i.i, align 1
  %arrayidx7.9.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 9
  %339 = ptrtoint ptr %arrayidx7.9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 %338, ptr %arrayidx7.9.i.i.i, align 1
  %arrayidx.10.i108.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 17, i32 1, i32 10
  %340 = ptrtoint ptr %arrayidx.10.i108.i.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %arrayidx.10.i108.i.i, align 1
  %arrayidx7.10.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 10
  %342 = ptrtoint ptr %arrayidx7.10.i.i.i to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 %341, ptr %arrayidx7.10.i.i.i, align 2
  %arrayidx.11.i109.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 17, i32 1, i32 11
  %343 = ptrtoint ptr %arrayidx.11.i109.i.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %arrayidx.11.i109.i.i, align 1
  %arrayidx7.11.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 11
  %345 = ptrtoint ptr %arrayidx7.11.i.i.i to i32
  call void @__asan_store1_noabort(i32 %345)
  store i8 %344, ptr %arrayidx7.11.i.i.i, align 1
  %arrayidx.12.i110.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 17, i32 1, i32 12
  %346 = ptrtoint ptr %arrayidx.12.i110.i.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %arrayidx.12.i110.i.i, align 1
  %arrayidx7.12.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 12
  %348 = ptrtoint ptr %arrayidx7.12.i.i.i to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 %347, ptr %arrayidx7.12.i.i.i, align 4
  %arrayidx.13.i111.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 17, i32 1, i32 13
  %349 = ptrtoint ptr %arrayidx.13.i111.i.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %arrayidx.13.i111.i.i, align 1
  %arrayidx7.13.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 13
  %351 = ptrtoint ptr %arrayidx7.13.i.i.i to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 %350, ptr %arrayidx7.13.i.i.i, align 1
  %arrayidx.14.i112.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 17, i32 1, i32 14
  %352 = ptrtoint ptr %arrayidx.14.i112.i.i to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %arrayidx.14.i112.i.i, align 1
  %arrayidx7.14.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 14
  %354 = ptrtoint ptr %arrayidx7.14.i.i.i to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 %353, ptr %arrayidx7.14.i.i.i, align 2
  %arrayidx.15.i113.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 17, i32 1, i32 15
  %355 = ptrtoint ptr %arrayidx.15.i113.i.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %arrayidx.15.i113.i.i, align 1
  %arrayidx7.15.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 15
  %357 = ptrtoint ptr %arrayidx7.15.i.i.i to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 %356, ptr %arrayidx7.15.i.i.i, align 1
  %ext_disp_conn_info12.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1
  br label %for.body11.i.i.i

for.body11.i.i.i:                                 ; preds = %for.body11.i.i.i.for.body11.i.i.i_crit_edge, %if.end.i114.i.i
  %i.1516.i.i.i = phi i32 [ 0, %if.end.i114.i.i ], [ %inc71.i.i.i, %for.body11.i.i.i.for.body11.i.i.i_crit_edge ]
  %arrayidx13.i.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info12.i.i.i, i32 0, i32 %i.1516.i.i.i
  %device_connector_id.i115.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info12.i.i.i, i32 0, i32 %i.1516.i.i.i, i32 2
  %arrayidx16.i.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 17, i32 2, i32 %i.1516.i.i.i
  %connectorobjid.i116.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 17, i32 2, i32 %i.1516.i.i.i, i32 2
  %358 = ptrtoint ptr %connectorobjid.i116.i.i to i32
  call void @__asan_loadN_noabort(i32 %358, i32 2)
  %359 = load i16, ptr %connectorobjid.i116.i.i, align 1
  %360 = tail call i16 @llvm.bswap.i16(i16 %359) #7
  %conv17.i.i.i = zext i16 %360 to i32
  %call18.i.i.i = tail call i32 @object_id_from_bios_object_id(i32 noundef %conv17.i.i.i) #7
  %361 = ptrtoint ptr %device_connector_id.i115.i.i to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 %call18.i.i.i, ptr %device_connector_id.i115.i.i, align 8
  %ext_encoder_obj_id.i117.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info12.i.i.i, i32 0, i32 %i.1516.i.i.i, i32 5
  %ext_encoder_objid.i118.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 17, i32 2, i32 %i.1516.i.i.i, i32 5
  %362 = ptrtoint ptr %ext_encoder_objid.i118.i.i to i32
  call void @__asan_loadN_noabort(i32 %362, i32 2)
  %363 = load i16, ptr %ext_encoder_objid.i118.i.i, align 1
  %364 = tail call i16 @llvm.bswap.i16(i16 %363) #7
  %conv26.i.i.i = zext i16 %364 to i32
  %call27.i.i.i = tail call i32 @object_id_from_bios_object_id(i32 noundef %conv26.i.i.i) #7
  %365 = ptrtoint ptr %ext_encoder_obj_id.i117.i.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 %call27.i.i.i, ptr %ext_encoder_obj_id.i117.i.i, align 8
  %366 = ptrtoint ptr %arrayidx16.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %366, i32 2)
  %367 = load i16, ptr %arrayidx16.i.i.i, align 1
  %368 = tail call i16 @llvm.bswap.i16(i16 %367) #7
  %conv32.i.i.i = zext i16 %368 to i32
  %369 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 %conv32.i.i.i, ptr %arrayidx13.i.i.i, align 8
  %device_acpi_enum.i119.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 17, i32 2, i32 %i.1516.i.i.i, i32 1
  %370 = ptrtoint ptr %device_acpi_enum.i119.i.i to i32
  call void @__asan_loadN_noabort(i32 %370, i32 2)
  %371 = load i16, ptr %device_acpi_enum.i119.i.i, align 1
  %372 = tail call i16 @llvm.bswap.i16(i16 %371) #7
  %conv40.i.i.i = zext i16 %372 to i32
  %device_acpi_enum44.i.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info12.i.i.i, i32 0, i32 %i.1516.i.i.i, i32 1
  %373 = ptrtoint ptr %device_acpi_enum44.i.i.i to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 %conv40.i.i.i, ptr %device_acpi_enum44.i.i.i, align 4
  %auxddclut_index.i120.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 17, i32 2, i32 %i.1516.i.i.i, i32 3
  %374 = ptrtoint ptr %auxddclut_index.i120.i.i to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %auxddclut_index.i120.i.i, align 1
  %ext_aux_ddc_lut_index.i121.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info12.i.i.i, i32 0, i32 %i.1516.i.i.i, i32 3
  %376 = ptrtoint ptr %ext_aux_ddc_lut_index.i121.i.i to i32
  call void @__asan_store1_noabort(i32 %376)
  store i8 %375, ptr %ext_aux_ddc_lut_index.i121.i.i, align 4
  %hpdlut_index.i122.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 17, i32 2, i32 %i.1516.i.i.i, i32 4
  %377 = ptrtoint ptr %hpdlut_index.i122.i.i to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %hpdlut_index.i122.i.i, align 1
  %ext_hpd_pin_lut_index.i123.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info12.i.i.i, i32 0, i32 %i.1516.i.i.i, i32 4
  %379 = ptrtoint ptr %ext_hpd_pin_lut_index.i123.i.i to i32
  call void @__asan_store1_noabort(i32 %379)
  store i8 %378, ptr %ext_hpd_pin_lut_index.i123.i.i, align 1
  %channelmapping.i124.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 17, i32 2, i32 %i.1516.i.i.i, i32 6
  %380 = ptrtoint ptr %channelmapping.i124.i.i to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %channelmapping.i124.i.i, align 1
  %channel_mapping.i125.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info12.i.i.i, i32 0, i32 %i.1516.i.i.i, i32 6
  %382 = ptrtoint ptr %channel_mapping.i125.i.i to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 %381, ptr %channel_mapping.i125.i.i, align 4
  %caps.i126.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 17, i32 2, i32 %i.1516.i.i.i, i32 8
  %383 = ptrtoint ptr %caps.i126.i.i to i32
  call void @__asan_loadN_noabort(i32 %383, i32 2)
  %384 = load i16, ptr %caps.i126.i.i, align 1
  %385 = tail call i16 @llvm.bswap.i16(i16 %384) #7
  %caps69.i.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info12.i.i.i, i32 0, i32 %i.1516.i.i.i, i32 7
  %386 = ptrtoint ptr %caps69.i.i.i to i32
  call void @__asan_store2_noabort(i32 %386)
  store i16 %385, ptr %caps69.i.i.i, align 2
  %inc71.i.i.i = add nuw nsw i32 %i.1516.i.i.i, 1
  %exitcond.not.i127.i.i = icmp eq i32 %inc71.i.i.i, 7
  br i1 %exitcond.not.i127.i.i, label %for.end72.i.i.i, label %for.body11.i.i.i.for.body11.i.i.i_crit_edge

for.body11.i.i.i.for.body11.i.i.i_crit_edge:      ; preds = %for.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11.i.i.i

for.end72.i.i.i:                                  ; preds = %for.body11.i.i.i
  %checksum.i128.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 17, i32 3
  %387 = ptrtoint ptr %checksum.i128.i.i to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %checksum.i128.i.i, align 1
  %checksum75.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %389 = ptrtoint ptr %checksum75.i.i.i to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 %388, ptr %checksum75.i.i.i, align 8
  %dp0_retimer_set.i129.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 29
  %390 = ptrtoint ptr %dp0_retimer_set.i129.i.i to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %dp0_retimer_set.i129.i.i, align 1
  %dp0_ext_hdmi_slv_addr.i130.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 52
  %392 = ptrtoint ptr %dp0_ext_hdmi_slv_addr.i130.i.i to i32
  call void @__asan_store1_noabort(i32 %392)
  store i8 %391, ptr %dp0_ext_hdmi_slv_addr.i130.i.i, align 4
  %HdmiRegNum.i131.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 29, i32 1
  %393 = ptrtoint ptr %HdmiRegNum.i131.i.i to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %HdmiRegNum.i131.i.i, align 1
  %dp0_ext_hdmi_reg_num.i132.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 53
  %395 = ptrtoint ptr %dp0_ext_hdmi_reg_num.i132.i.i to i32
  call void @__asan_store1_noabort(i32 %395)
  store i8 %394, ptr %dp0_ext_hdmi_reg_num.i132.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %394)
  %cmp80518.not.i.i.i = icmp eq i8 %394, 0
  br i1 %cmp80518.not.i.i.i, label %for.end72.i.i.i.for.end93.i.i.i_crit_edge, label %for.end72.i.i.i.for.body82.i.i.i_crit_edge

for.end72.i.i.i.for.body82.i.i.i_crit_edge:       ; preds = %for.end72.i.i.i
  br label %for.body82.i.i.i

for.end72.i.i.i.for.end93.i.i.i_crit_edge:        ; preds = %for.end72.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end93.i.i.i

for.body82.i.i.i:                                 ; preds = %for.body82.i.i.i.for.body82.i.i.i_crit_edge, %for.end72.i.i.i.for.body82.i.i.i_crit_edge
  %i.2519.i.i.i = phi i32 [ %inc92.i.i.i, %for.body82.i.i.i.for.body82.i.i.i_crit_edge ], [ 0, %for.end72.i.i.i.for.body82.i.i.i_crit_edge ]
  %arrayidx84.i.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 29, i32 3, i32 %i.2519.i.i.i
  %396 = ptrtoint ptr %arrayidx84.i.i.i to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %arrayidx84.i.i.i, align 1
  %arrayidx85.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 54, i32 %i.2519.i.i.i
  %398 = ptrtoint ptr %arrayidx85.i.i.i to i32
  call void @__asan_store1_noabort(i32 %398)
  store i8 %397, ptr %arrayidx85.i.i.i, align 2
  %ucI2cRegVal.i133.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 29, i32 3, i32 %i.2519.i.i.i, i32 1
  %399 = ptrtoint ptr %ucI2cRegVal.i133.i.i to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %ucI2cRegVal.i133.i.i, align 1
  %i2c_reg_val.i134.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 54, i32 %i.2519.i.i.i, i32 1
  %401 = ptrtoint ptr %i2c_reg_val.i134.i.i to i32
  call void @__asan_store1_noabort(i32 %401)
  store i8 %400, ptr %i2c_reg_val.i134.i.i, align 1
  %inc92.i.i.i = add nuw nsw i32 %i.2519.i.i.i, 1
  %402 = ptrtoint ptr %dp0_ext_hdmi_reg_num.i132.i.i to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %dp0_ext_hdmi_reg_num.i132.i.i, align 1
  %conv79.i.i.i = zext i8 %403 to i32
  %cmp80.i.i.i = icmp ult i32 %inc92.i.i.i, %conv79.i.i.i
  br i1 %cmp80.i.i.i, label %for.body82.i.i.i.for.body82.i.i.i_crit_edge, label %for.body82.i.i.i.for.end93.i.i.i_crit_edge

for.body82.i.i.i.for.end93.i.i.i_crit_edge:       ; preds = %for.body82.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end93.i.i.i

for.body82.i.i.i.for.body82.i.i.i_crit_edge:      ; preds = %for.body82.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body82.i.i.i

for.end93.i.i.i:                                  ; preds = %for.body82.i.i.i.for.end93.i.i.i_crit_edge, %for.end72.i.i.i.for.end93.i.i.i_crit_edge
  %Hdmi6GRegNum.i135.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 29, i32 2
  %404 = ptrtoint ptr %Hdmi6GRegNum.i135.i.i to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %Hdmi6GRegNum.i135.i.i, align 1
  %dp0_ext_hdmi_6g_reg_num.i136.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 55
  %406 = ptrtoint ptr %dp0_ext_hdmi_6g_reg_num.i136.i.i to i32
  call void @__asan_store1_noabort(i32 %406)
  store i8 %405, ptr %dp0_ext_hdmi_6g_reg_num.i136.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %405)
  %cmp98521.not.i.i.i = icmp eq i8 %405, 0
  br i1 %cmp98521.not.i.i.i, label %for.end93.i.i.i.for.end115.i.i.i_crit_edge, label %for.end93.i.i.i.for.body100.i.i.i_crit_edge

for.end93.i.i.i.for.body100.i.i.i_crit_edge:      ; preds = %for.end93.i.i.i
  br label %for.body100.i.i.i

for.end93.i.i.i.for.end115.i.i.i_crit_edge:       ; preds = %for.end93.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end115.i.i.i

for.body100.i.i.i:                                ; preds = %for.body100.i.i.i.for.body100.i.i.i_crit_edge, %for.end93.i.i.i.for.body100.i.i.i_crit_edge
  %i.3522.i.i.i = phi i32 [ %inc114.i.i.i, %for.body100.i.i.i.for.body100.i.i.i_crit_edge ], [ 0, %for.end93.i.i.i.for.body100.i.i.i_crit_edge ]
  %arrayidx102.i.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 29, i32 4, i32 %i.3522.i.i.i
  %407 = ptrtoint ptr %arrayidx102.i.i.i to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %arrayidx102.i.i.i, align 1
  %arrayidx104.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 56, i32 %i.3522.i.i.i
  %409 = ptrtoint ptr %arrayidx104.i.i.i to i32
  call void @__asan_store1_noabort(i32 %409)
  store i8 %408, ptr %arrayidx104.i.i.i, align 1
  %ucI2cRegVal109.i.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 29, i32 4, i32 %i.3522.i.i.i, i32 1
  %410 = ptrtoint ptr %ucI2cRegVal109.i.i.i to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %ucI2cRegVal109.i.i.i, align 1
  %i2c_reg_val112.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 56, i32 %i.3522.i.i.i, i32 1
  %412 = ptrtoint ptr %i2c_reg_val112.i.i.i to i32
  call void @__asan_store1_noabort(i32 %412)
  store i8 %411, ptr %i2c_reg_val112.i.i.i, align 2
  %inc114.i.i.i = add nuw nsw i32 %i.3522.i.i.i, 1
  %413 = ptrtoint ptr %dp0_ext_hdmi_6g_reg_num.i136.i.i to i32
  call void @__asan_load1_noabort(i32 %413)
  %414 = load i8, ptr %dp0_ext_hdmi_6g_reg_num.i136.i.i, align 8
  %conv97.i.i.i = zext i8 %414 to i32
  %cmp98.i.i.i = icmp ult i32 %inc114.i.i.i, %conv97.i.i.i
  br i1 %cmp98.i.i.i, label %for.body100.i.i.i.for.body100.i.i.i_crit_edge, label %for.body100.i.i.i.for.end115.i.i.i_crit_edge

for.body100.i.i.i.for.end115.i.i.i_crit_edge:     ; preds = %for.body100.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end115.i.i.i

for.body100.i.i.i.for.body100.i.i.i_crit_edge:    ; preds = %for.body100.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body100.i.i.i

for.end115.i.i.i:                                 ; preds = %for.body100.i.i.i.for.end115.i.i.i_crit_edge, %for.end93.i.i.i.for.end115.i.i.i_crit_edge
  %dp1_retimer_set.i137.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 30
  %415 = ptrtoint ptr %dp1_retimer_set.i137.i.i to i32
  call void @__asan_load1_noabort(i32 %415)
  %416 = load i8, ptr %dp1_retimer_set.i137.i.i, align 1
  %dp1_ext_hdmi_slv_addr.i138.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 57
  %417 = ptrtoint ptr %dp1_ext_hdmi_slv_addr.i138.i.i to i32
  call void @__asan_store1_noabort(i32 %417)
  store i8 %416, ptr %dp1_ext_hdmi_slv_addr.i138.i.i, align 1
  %HdmiRegNum118.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 30, i32 1
  %418 = ptrtoint ptr %HdmiRegNum118.i.i.i to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %HdmiRegNum118.i.i.i, align 1
  %dp1_ext_hdmi_reg_num.i139.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 58
  %420 = ptrtoint ptr %dp1_ext_hdmi_reg_num.i139.i.i to i32
  call void @__asan_store1_noabort(i32 %420)
  store i8 %419, ptr %dp1_ext_hdmi_reg_num.i139.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %419)
  %cmp122524.not.i.i.i = icmp eq i8 %419, 0
  br i1 %cmp122524.not.i.i.i, label %for.end115.i.i.i.for.end140.i.i.i_crit_edge, label %for.end115.i.i.i.for.body124.i.i.i_crit_edge

for.end115.i.i.i.for.body124.i.i.i_crit_edge:     ; preds = %for.end115.i.i.i
  br label %for.body124.i.i.i

for.end115.i.i.i.for.end140.i.i.i_crit_edge:      ; preds = %for.end115.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end140.i.i.i

for.body124.i.i.i:                                ; preds = %for.body124.i.i.i.for.body124.i.i.i_crit_edge, %for.end115.i.i.i.for.body124.i.i.i_crit_edge
  %i.4525.i.i.i = phi i32 [ %inc139.i.i.i, %for.body124.i.i.i.for.body124.i.i.i_crit_edge ], [ 0, %for.end115.i.i.i.for.body124.i.i.i_crit_edge ]
  %arrayidx127.i.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 30, i32 3, i32 %i.4525.i.i.i
  %421 = ptrtoint ptr %arrayidx127.i.i.i to i32
  call void @__asan_load1_noabort(i32 %421)
  %422 = load i8, ptr %arrayidx127.i.i.i, align 1
  %arrayidx129.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 59, i32 %i.4525.i.i.i
  %423 = ptrtoint ptr %arrayidx129.i.i.i to i32
  call void @__asan_store1_noabort(i32 %423)
  store i8 %422, ptr %arrayidx129.i.i.i, align 1
  %ucI2cRegVal134.i.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 30, i32 3, i32 %i.4525.i.i.i, i32 1
  %424 = ptrtoint ptr %ucI2cRegVal134.i.i.i to i32
  call void @__asan_load1_noabort(i32 %424)
  %425 = load i8, ptr %ucI2cRegVal134.i.i.i, align 1
  %i2c_reg_val137.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 59, i32 %i.4525.i.i.i, i32 1
  %426 = ptrtoint ptr %i2c_reg_val137.i.i.i to i32
  call void @__asan_store1_noabort(i32 %426)
  store i8 %425, ptr %i2c_reg_val137.i.i.i, align 2
  %inc139.i.i.i = add nuw nsw i32 %i.4525.i.i.i, 1
  %427 = ptrtoint ptr %dp1_ext_hdmi_reg_num.i139.i.i to i32
  call void @__asan_load1_noabort(i32 %427)
  %428 = load i8, ptr %dp1_ext_hdmi_reg_num.i139.i.i, align 8
  %conv121.i.i.i = zext i8 %428 to i32
  %cmp122.i.i.i = icmp ult i32 %inc139.i.i.i, %conv121.i.i.i
  br i1 %cmp122.i.i.i, label %for.body124.i.i.i.for.body124.i.i.i_crit_edge, label %for.body124.i.i.i.for.end140.i.i.i_crit_edge

for.body124.i.i.i.for.end140.i.i.i_crit_edge:     ; preds = %for.body124.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end140.i.i.i

for.body124.i.i.i.for.body124.i.i.i_crit_edge:    ; preds = %for.body124.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body124.i.i.i

for.end140.i.i.i:                                 ; preds = %for.body124.i.i.i.for.end140.i.i.i_crit_edge, %for.end115.i.i.i.for.end140.i.i.i_crit_edge
  %Hdmi6GRegNum142.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 30, i32 2
  %429 = ptrtoint ptr %Hdmi6GRegNum142.i.i.i to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %Hdmi6GRegNum142.i.i.i, align 1
  %dp1_ext_hdmi_6g_reg_num.i140.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 60
  %431 = ptrtoint ptr %dp1_ext_hdmi_6g_reg_num.i140.i.i to i32
  call void @__asan_store1_noabort(i32 %431)
  store i8 %430, ptr %dp1_ext_hdmi_6g_reg_num.i140.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %430)
  %cmp146527.not.i.i.i = icmp eq i8 %430, 0
  br i1 %cmp146527.not.i.i.i, label %for.end140.i.i.i.for.end164.i.i.i_crit_edge, label %for.end140.i.i.i.for.body148.i.i.i_crit_edge

for.end140.i.i.i.for.body148.i.i.i_crit_edge:     ; preds = %for.end140.i.i.i
  br label %for.body148.i.i.i

for.end140.i.i.i.for.end164.i.i.i_crit_edge:      ; preds = %for.end140.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end164.i.i.i

for.body148.i.i.i:                                ; preds = %for.body148.i.i.i.for.body148.i.i.i_crit_edge, %for.end140.i.i.i.for.body148.i.i.i_crit_edge
  %i.5528.i.i.i = phi i32 [ %inc163.i.i.i, %for.body148.i.i.i.for.body148.i.i.i_crit_edge ], [ 0, %for.end140.i.i.i.for.body148.i.i.i_crit_edge ]
  %arrayidx151.i.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 30, i32 4, i32 %i.5528.i.i.i
  %432 = ptrtoint ptr %arrayidx151.i.i.i to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %arrayidx151.i.i.i, align 1
  %arrayidx153.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 61, i32 %i.5528.i.i.i
  %434 = ptrtoint ptr %arrayidx153.i.i.i to i32
  call void @__asan_store1_noabort(i32 %434)
  store i8 %433, ptr %arrayidx153.i.i.i, align 2
  %ucI2cRegVal158.i.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 30, i32 4, i32 %i.5528.i.i.i, i32 1
  %435 = ptrtoint ptr %ucI2cRegVal158.i.i.i to i32
  call void @__asan_load1_noabort(i32 %435)
  %436 = load i8, ptr %ucI2cRegVal158.i.i.i, align 1
  %i2c_reg_val161.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 61, i32 %i.5528.i.i.i, i32 1
  %437 = ptrtoint ptr %i2c_reg_val161.i.i.i to i32
  call void @__asan_store1_noabort(i32 %437)
  store i8 %436, ptr %i2c_reg_val161.i.i.i, align 1
  %inc163.i.i.i = add nuw nsw i32 %i.5528.i.i.i, 1
  %438 = ptrtoint ptr %dp1_ext_hdmi_6g_reg_num.i140.i.i to i32
  call void @__asan_load1_noabort(i32 %438)
  %439 = load i8, ptr %dp1_ext_hdmi_6g_reg_num.i140.i.i, align 1
  %conv145.i.i.i = zext i8 %439 to i32
  %cmp146.i.i.i = icmp ult i32 %inc163.i.i.i, %conv145.i.i.i
  br i1 %cmp146.i.i.i, label %for.body148.i.i.i.for.body148.i.i.i_crit_edge, label %for.body148.i.i.i.for.end164.i.i.i_crit_edge

for.body148.i.i.i.for.end164.i.i.i_crit_edge:     ; preds = %for.body148.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end164.i.i.i

for.body148.i.i.i.for.body148.i.i.i_crit_edge:    ; preds = %for.body148.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body148.i.i.i

for.end164.i.i.i:                                 ; preds = %for.body148.i.i.i.for.end164.i.i.i_crit_edge, %for.end140.i.i.i.for.end164.i.i.i_crit_edge
  %dp2_retimer_set.i141.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 31
  %440 = ptrtoint ptr %dp2_retimer_set.i141.i.i to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %dp2_retimer_set.i141.i.i, align 1
  %dp2_ext_hdmi_slv_addr.i142.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 62
  %442 = ptrtoint ptr %dp2_ext_hdmi_slv_addr.i142.i.i to i32
  call void @__asan_store1_noabort(i32 %442)
  store i8 %441, ptr %dp2_ext_hdmi_slv_addr.i142.i.i, align 2
  %HdmiRegNum167.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 31, i32 1
  %443 = ptrtoint ptr %HdmiRegNum167.i.i.i to i32
  call void @__asan_load1_noabort(i32 %443)
  %444 = load i8, ptr %HdmiRegNum167.i.i.i, align 1
  %dp2_ext_hdmi_reg_num.i143.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 63
  %445 = ptrtoint ptr %dp2_ext_hdmi_reg_num.i143.i.i to i32
  call void @__asan_store1_noabort(i32 %445)
  store i8 %444, ptr %dp2_ext_hdmi_reg_num.i143.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %444)
  %cmp171530.not.i.i.i = icmp eq i8 %444, 0
  br i1 %cmp171530.not.i.i.i, label %for.end164.i.i.i.for.end189.i.i.i_crit_edge, label %for.end164.i.i.i.for.body173.i.i.i_crit_edge

for.end164.i.i.i.for.body173.i.i.i_crit_edge:     ; preds = %for.end164.i.i.i
  br label %for.body173.i.i.i

for.end164.i.i.i.for.end189.i.i.i_crit_edge:      ; preds = %for.end164.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end189.i.i.i

for.body173.i.i.i:                                ; preds = %for.body173.i.i.i.for.body173.i.i.i_crit_edge, %for.end164.i.i.i.for.body173.i.i.i_crit_edge
  %i.6531.i.i.i = phi i32 [ %inc188.i.i.i, %for.body173.i.i.i.for.body173.i.i.i_crit_edge ], [ 0, %for.end164.i.i.i.for.body173.i.i.i_crit_edge ]
  %arrayidx176.i.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 31, i32 3, i32 %i.6531.i.i.i
  %446 = ptrtoint ptr %arrayidx176.i.i.i to i32
  call void @__asan_load1_noabort(i32 %446)
  %447 = load i8, ptr %arrayidx176.i.i.i, align 1
  %arrayidx178.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 64, i32 %i.6531.i.i.i
  %448 = ptrtoint ptr %arrayidx178.i.i.i to i32
  call void @__asan_store1_noabort(i32 %448)
  store i8 %447, ptr %arrayidx178.i.i.i, align 2
  %ucI2cRegVal183.i.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 31, i32 3, i32 %i.6531.i.i.i, i32 1
  %449 = ptrtoint ptr %ucI2cRegVal183.i.i.i to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %ucI2cRegVal183.i.i.i, align 1
  %i2c_reg_val186.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 64, i32 %i.6531.i.i.i, i32 1
  %451 = ptrtoint ptr %i2c_reg_val186.i.i.i to i32
  call void @__asan_store1_noabort(i32 %451)
  store i8 %450, ptr %i2c_reg_val186.i.i.i, align 1
  %inc188.i.i.i = add nuw nsw i32 %i.6531.i.i.i, 1
  %452 = ptrtoint ptr %dp2_ext_hdmi_reg_num.i143.i.i to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %dp2_ext_hdmi_reg_num.i143.i.i, align 1
  %conv170.i.i.i = zext i8 %453 to i32
  %cmp171.i.i.i = icmp ult i32 %inc188.i.i.i, %conv170.i.i.i
  br i1 %cmp171.i.i.i, label %for.body173.i.i.i.for.body173.i.i.i_crit_edge, label %for.body173.i.i.i.for.end189.i.i.i_crit_edge

for.body173.i.i.i.for.end189.i.i.i_crit_edge:     ; preds = %for.body173.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end189.i.i.i

for.body173.i.i.i.for.body173.i.i.i_crit_edge:    ; preds = %for.body173.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body173.i.i.i

for.end189.i.i.i:                                 ; preds = %for.body173.i.i.i.for.end189.i.i.i_crit_edge, %for.end164.i.i.i.for.end189.i.i.i_crit_edge
  %Hdmi6GRegNum191.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 31, i32 2
  %454 = ptrtoint ptr %Hdmi6GRegNum191.i.i.i to i32
  call void @__asan_load1_noabort(i32 %454)
  %455 = load i8, ptr %Hdmi6GRegNum191.i.i.i, align 1
  %dp2_ext_hdmi_6g_reg_num.i144.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 65
  %456 = ptrtoint ptr %dp2_ext_hdmi_6g_reg_num.i144.i.i to i32
  call void @__asan_store1_noabort(i32 %456)
  store i8 %455, ptr %dp2_ext_hdmi_6g_reg_num.i144.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %455)
  %cmp195533.not.i.i.i = icmp eq i8 %455, 0
  br i1 %cmp195533.not.i.i.i, label %for.end189.i.i.i.for.end213.i.i.i_crit_edge, label %for.end189.i.i.i.for.body197.i.i.i_crit_edge

for.end189.i.i.i.for.body197.i.i.i_crit_edge:     ; preds = %for.end189.i.i.i
  br label %for.body197.i.i.i

for.end189.i.i.i.for.end213.i.i.i_crit_edge:      ; preds = %for.end189.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end213.i.i.i

for.body197.i.i.i:                                ; preds = %for.body197.i.i.i.for.body197.i.i.i_crit_edge, %for.end189.i.i.i.for.body197.i.i.i_crit_edge
  %i.7534.i.i.i = phi i32 [ %inc212.i.i.i, %for.body197.i.i.i.for.body197.i.i.i_crit_edge ], [ 0, %for.end189.i.i.i.for.body197.i.i.i_crit_edge ]
  %arrayidx200.i.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 31, i32 4, i32 %i.7534.i.i.i
  %457 = ptrtoint ptr %arrayidx200.i.i.i to i32
  call void @__asan_load1_noabort(i32 %457)
  %458 = load i8, ptr %arrayidx200.i.i.i, align 1
  %arrayidx202.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 66, i32 %i.7534.i.i.i
  %459 = ptrtoint ptr %arrayidx202.i.i.i to i32
  call void @__asan_store1_noabort(i32 %459)
  store i8 %458, ptr %arrayidx202.i.i.i, align 1
  %ucI2cRegVal207.i.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 31, i32 4, i32 %i.7534.i.i.i, i32 1
  %460 = ptrtoint ptr %ucI2cRegVal207.i.i.i to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %ucI2cRegVal207.i.i.i, align 1
  %i2c_reg_val210.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 66, i32 %i.7534.i.i.i, i32 1
  %462 = ptrtoint ptr %i2c_reg_val210.i.i.i to i32
  call void @__asan_store1_noabort(i32 %462)
  store i8 %461, ptr %i2c_reg_val210.i.i.i, align 2
  %inc212.i.i.i = add nuw nsw i32 %i.7534.i.i.i, 1
  %463 = ptrtoint ptr %dp2_ext_hdmi_6g_reg_num.i144.i.i to i32
  call void @__asan_load1_noabort(i32 %463)
  %464 = load i8, ptr %dp2_ext_hdmi_6g_reg_num.i144.i.i, align 2
  %conv194.i.i.i = zext i8 %464 to i32
  %cmp195.i.i.i = icmp ult i32 %inc212.i.i.i, %conv194.i.i.i
  br i1 %cmp195.i.i.i, label %for.body197.i.i.i.for.body197.i.i.i_crit_edge, label %for.body197.i.i.i.for.end213.i.i.i_crit_edge

for.body197.i.i.i.for.end213.i.i.i_crit_edge:     ; preds = %for.body197.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end213.i.i.i

for.body197.i.i.i.for.body197.i.i.i_crit_edge:    ; preds = %for.body197.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body197.i.i.i

for.end213.i.i.i:                                 ; preds = %for.body197.i.i.i.for.end213.i.i.i_crit_edge, %for.end189.i.i.i.for.end213.i.i.i_crit_edge
  %dp3_retimer_set.i145.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 32
  %465 = ptrtoint ptr %dp3_retimer_set.i145.i.i to i32
  call void @__asan_load1_noabort(i32 %465)
  %466 = load i8, ptr %dp3_retimer_set.i145.i.i, align 1
  %dp3_ext_hdmi_slv_addr.i146.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 67
  %467 = ptrtoint ptr %dp3_ext_hdmi_slv_addr.i146.i.i to i32
  call void @__asan_store1_noabort(i32 %467)
  store i8 %466, ptr %dp3_ext_hdmi_slv_addr.i146.i.i, align 1
  %HdmiRegNum216.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 32, i32 1
  %468 = ptrtoint ptr %HdmiRegNum216.i.i.i to i32
  call void @__asan_load1_noabort(i32 %468)
  %469 = load i8, ptr %HdmiRegNum216.i.i.i, align 1
  %dp3_ext_hdmi_reg_num.i147.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 68
  %470 = ptrtoint ptr %dp3_ext_hdmi_reg_num.i147.i.i to i32
  call void @__asan_store1_noabort(i32 %470)
  store i8 %469, ptr %dp3_ext_hdmi_reg_num.i147.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %469)
  %cmp220536.not.i.i.i = icmp eq i8 %469, 0
  br i1 %cmp220536.not.i.i.i, label %for.end213.i.i.i.for.end238.i.i.i_crit_edge, label %for.end213.i.i.i.for.body222.i.i.i_crit_edge

for.end213.i.i.i.for.body222.i.i.i_crit_edge:     ; preds = %for.end213.i.i.i
  br label %for.body222.i.i.i

for.end213.i.i.i.for.end238.i.i.i_crit_edge:      ; preds = %for.end213.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end238.i.i.i

for.body222.i.i.i:                                ; preds = %for.body222.i.i.i.for.body222.i.i.i_crit_edge, %for.end213.i.i.i.for.body222.i.i.i_crit_edge
  %i.8537.i.i.i = phi i32 [ %inc237.i.i.i, %for.body222.i.i.i.for.body222.i.i.i_crit_edge ], [ 0, %for.end213.i.i.i.for.body222.i.i.i_crit_edge ]
  %arrayidx225.i.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 32, i32 3, i32 %i.8537.i.i.i
  %471 = ptrtoint ptr %arrayidx225.i.i.i to i32
  call void @__asan_load1_noabort(i32 %471)
  %472 = load i8, ptr %arrayidx225.i.i.i, align 1
  %arrayidx227.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 69, i32 %i.8537.i.i.i
  %473 = ptrtoint ptr %arrayidx227.i.i.i to i32
  call void @__asan_store1_noabort(i32 %473)
  store i8 %472, ptr %arrayidx227.i.i.i, align 1
  %ucI2cRegVal232.i.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 32, i32 3, i32 %i.8537.i.i.i, i32 1
  %474 = ptrtoint ptr %ucI2cRegVal232.i.i.i to i32
  call void @__asan_load1_noabort(i32 %474)
  %475 = load i8, ptr %ucI2cRegVal232.i.i.i, align 1
  %i2c_reg_val235.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 69, i32 %i.8537.i.i.i, i32 1
  %476 = ptrtoint ptr %i2c_reg_val235.i.i.i to i32
  call void @__asan_store1_noabort(i32 %476)
  store i8 %475, ptr %i2c_reg_val235.i.i.i, align 2
  %inc237.i.i.i = add nuw nsw i32 %i.8537.i.i.i, 1
  %477 = ptrtoint ptr %dp3_ext_hdmi_reg_num.i147.i.i to i32
  call void @__asan_load1_noabort(i32 %477)
  %478 = load i8, ptr %dp3_ext_hdmi_reg_num.i147.i.i, align 2
  %conv219.i.i.i = zext i8 %478 to i32
  %cmp220.i.i.i = icmp ult i32 %inc237.i.i.i, %conv219.i.i.i
  br i1 %cmp220.i.i.i, label %for.body222.i.i.i.for.body222.i.i.i_crit_edge, label %for.body222.i.i.i.for.end238.i.i.i_crit_edge

for.body222.i.i.i.for.end238.i.i.i_crit_edge:     ; preds = %for.body222.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end238.i.i.i

for.body222.i.i.i.for.body222.i.i.i_crit_edge:    ; preds = %for.body222.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body222.i.i.i

for.end238.i.i.i:                                 ; preds = %for.body222.i.i.i.for.end238.i.i.i_crit_edge, %for.end213.i.i.i.for.end238.i.i.i_crit_edge
  %Hdmi6GRegNum240.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 32, i32 2
  %479 = ptrtoint ptr %Hdmi6GRegNum240.i.i.i to i32
  call void @__asan_load1_noabort(i32 %479)
  %480 = load i8, ptr %Hdmi6GRegNum240.i.i.i, align 1
  %dp3_ext_hdmi_6g_reg_num.i148.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 70
  %481 = ptrtoint ptr %dp3_ext_hdmi_6g_reg_num.i148.i.i to i32
  call void @__asan_store1_noabort(i32 %481)
  store i8 %480, ptr %dp3_ext_hdmi_6g_reg_num.i148.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %480)
  %cmp244539.not.i.i.i = icmp eq i8 %480, 0
  br i1 %cmp244539.not.i.i.i, label %for.end238.i.i.i.for.end262.i.i.i_crit_edge, label %for.end238.i.i.i.for.body246.i.i.i_crit_edge

for.end238.i.i.i.for.body246.i.i.i_crit_edge:     ; preds = %for.end238.i.i.i
  br label %for.body246.i.i.i

for.end238.i.i.i.for.end262.i.i.i_crit_edge:      ; preds = %for.end238.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end262.i.i.i

for.body246.i.i.i:                                ; preds = %for.body246.i.i.i.for.body246.i.i.i_crit_edge, %for.end238.i.i.i.for.body246.i.i.i_crit_edge
  %i.9540.i.i.i = phi i32 [ %inc261.i.i.i, %for.body246.i.i.i.for.body246.i.i.i_crit_edge ], [ 0, %for.end238.i.i.i.for.body246.i.i.i_crit_edge ]
  %arrayidx249.i.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 32, i32 4, i32 %i.9540.i.i.i
  %482 = ptrtoint ptr %arrayidx249.i.i.i to i32
  call void @__asan_load1_noabort(i32 %482)
  %483 = load i8, ptr %arrayidx249.i.i.i, align 1
  %arrayidx251.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 71, i32 %i.9540.i.i.i
  %484 = ptrtoint ptr %arrayidx251.i.i.i to i32
  call void @__asan_store1_noabort(i32 %484)
  store i8 %483, ptr %arrayidx251.i.i.i, align 2
  %ucI2cRegVal256.i.i.i = getelementptr %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 32, i32 4, i32 %i.9540.i.i.i, i32 1
  %485 = ptrtoint ptr %ucI2cRegVal256.i.i.i to i32
  call void @__asan_load1_noabort(i32 %485)
  %486 = load i8, ptr %ucI2cRegVal256.i.i.i, align 1
  %i2c_reg_val259.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 71, i32 %i.9540.i.i.i, i32 1
  %487 = ptrtoint ptr %i2c_reg_val259.i.i.i to i32
  call void @__asan_store1_noabort(i32 %487)
  store i8 %486, ptr %i2c_reg_val259.i.i.i, align 1
  %inc261.i.i.i = add nuw nsw i32 %i.9540.i.i.i, 1
  %488 = ptrtoint ptr %dp3_ext_hdmi_6g_reg_num.i148.i.i to i32
  call void @__asan_load1_noabort(i32 %488)
  %489 = load i8, ptr %dp3_ext_hdmi_6g_reg_num.i148.i.i, align 1
  %conv243.i.i.i = zext i8 %489 to i32
  %cmp244.i.i.i = icmp ult i32 %inc261.i.i.i, %conv243.i.i.i
  br i1 %cmp244.i.i.i, label %for.body246.i.i.i.for.body246.i.i.i_crit_edge, label %for.body246.i.i.i.for.end262.i.i.i_crit_edge

for.body246.i.i.i.for.end262.i.i.i_crit_edge:     ; preds = %for.body246.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end262.i.i.i

for.body246.i.i.i.for.body246.i.i.i_crit_edge:    ; preds = %for.body246.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body246.i.i.i

for.end262.i.i.i:                                 ; preds = %for.body246.i.i.i.for.end262.i.i.i_crit_edge, %for.end238.i.i.i.for.end262.i.i.i_crit_edge
  %edp1_info.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 14
  %490 = ptrtoint ptr %edp1_info.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %490, i32 2)
  %491 = load i16, ptr %edp1_info.i.i.i, align 1
  %492 = tail call i16 @llvm.bswap.i16(i16 %491) #7
  %edp1_info263.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 73
  %493 = ptrtoint ptr %edp1_info263.i.i.i to i32
  call void @__asan_store2_noabort(i32 %493)
  store i16 %492, ptr %edp1_info263.i.i.i, align 4
  %edp_ss_percentage.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 14, i32 1
  %494 = ptrtoint ptr %edp_ss_percentage.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %494, i32 2)
  %495 = load i16, ptr %edp_ss_percentage.i.i.i, align 1
  %496 = tail call i16 @llvm.bswap.i16(i16 %495) #7
  %edp_ss_percentage267.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 73, i32 1
  %497 = ptrtoint ptr %edp_ss_percentage267.i.i.i to i32
  call void @__asan_store2_noabort(i32 %497)
  store i16 %496, ptr %edp_ss_percentage267.i.i.i, align 2
  %edp_ss_rate_10hz.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 14, i32 2
  %498 = ptrtoint ptr %edp_ss_rate_10hz.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %498, i32 2)
  %499 = load i16, ptr %edp_ss_rate_10hz.i.i.i, align 1
  %500 = tail call i16 @llvm.bswap.i16(i16 %499) #7
  %edp_ss_rate_10hz270.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 73, i32 2
  %501 = ptrtoint ptr %edp_ss_rate_10hz270.i.i.i to i32
  call void @__asan_store2_noabort(i32 %501)
  store i16 %500, ptr %edp_ss_rate_10hz270.i.i.i, align 8
  %edp_pwr_on_off_delay.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 14, i32 5
  %502 = ptrtoint ptr %edp_pwr_on_off_delay.i.i.i to i32
  call void @__asan_load1_noabort(i32 %502)
  %503 = load i8, ptr %edp_pwr_on_off_delay.i.i.i, align 1
  %edp_pwr_on_off_delay273.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 73, i32 3
  %504 = ptrtoint ptr %edp_pwr_on_off_delay273.i.i.i to i32
  call void @__asan_store1_noabort(i32 %504)
  store i8 %503, ptr %edp_pwr_on_off_delay273.i.i.i, align 2
  %edp_pwr_on_vary_bl_to_blon.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 14, i32 6
  %505 = ptrtoint ptr %edp_pwr_on_vary_bl_to_blon.i.i.i to i32
  call void @__asan_load1_noabort(i32 %505)
  %506 = load i8, ptr %edp_pwr_on_vary_bl_to_blon.i.i.i, align 1
  %edp_pwr_on_vary_bl_to_blon276.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 73, i32 4
  %507 = ptrtoint ptr %edp_pwr_on_vary_bl_to_blon276.i.i.i to i32
  call void @__asan_store1_noabort(i32 %507)
  store i8 %506, ptr %edp_pwr_on_vary_bl_to_blon276.i.i.i, align 1
  %edp_pwr_down_bloff_to_vary_bloff.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 14, i32 7
  %508 = ptrtoint ptr %edp_pwr_down_bloff_to_vary_bloff.i.i.i to i32
  call void @__asan_load1_noabort(i32 %508)
  %509 = load i8, ptr %edp_pwr_down_bloff_to_vary_bloff.i.i.i, align 1
  %edp_pwr_down_bloff_to_vary_bloff279.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 73, i32 5
  %510 = ptrtoint ptr %edp_pwr_down_bloff_to_vary_bloff279.i.i.i to i32
  call void @__asan_store1_noabort(i32 %510)
  store i8 %509, ptr %edp_pwr_down_bloff_to_vary_bloff279.i.i.i, align 4
  %edp_panel_bpc.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 14, i32 8
  %511 = ptrtoint ptr %edp_panel_bpc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %511)
  %512 = load i8, ptr %edp_panel_bpc.i.i.i, align 1
  %edp_panel_bpc282.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 73, i32 6
  %513 = ptrtoint ptr %edp_panel_bpc282.i.i.i to i32
  call void @__asan_store1_noabort(i32 %513)
  store i8 %512, ptr %edp_panel_bpc282.i.i.i, align 1
  %edp_bootup_bl_level.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 14, i32 9
  %514 = ptrtoint ptr %edp_bootup_bl_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %514)
  %515 = load i8, ptr %edp_bootup_bl_level.i.i.i, align 1
  %edp_bootup_bl_level285.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 73, i32 7
  %516 = ptrtoint ptr %edp_bootup_bl_level285.i.i.i to i32
  call void @__asan_store1_noabort(i32 %516)
  store i8 %515, ptr %edp_bootup_bl_level285.i.i.i, align 2
  %edp2_info.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 15
  %517 = ptrtoint ptr %edp2_info.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %517, i32 2)
  %518 = load i16, ptr %edp2_info.i.i.i, align 1
  %519 = tail call i16 @llvm.bswap.i16(i16 %518) #7
  %edp2_info287.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 74
  %520 = ptrtoint ptr %edp2_info287.i.i.i to i32
  call void @__asan_store2_noabort(i32 %520)
  store i16 %519, ptr %edp2_info287.i.i.i, align 8
  %edp_ss_percentage290.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 15, i32 1
  %521 = ptrtoint ptr %edp_ss_percentage290.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %521, i32 2)
  %522 = load i16, ptr %edp_ss_percentage290.i.i.i, align 1
  %523 = tail call i16 @llvm.bswap.i16(i16 %522) #7
  %edp_ss_percentage292.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 74, i32 1
  %524 = ptrtoint ptr %edp_ss_percentage292.i.i.i to i32
  call void @__asan_store2_noabort(i32 %524)
  store i16 %523, ptr %edp_ss_percentage292.i.i.i, align 2
  %edp_ss_rate_10hz294.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 15, i32 2
  %525 = ptrtoint ptr %edp_ss_rate_10hz294.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %525, i32 2)
  %526 = load i16, ptr %edp_ss_rate_10hz294.i.i.i, align 1
  %527 = tail call i16 @llvm.bswap.i16(i16 %526) #7
  %edp_ss_rate_10hz296.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 74, i32 2
  %528 = ptrtoint ptr %edp_ss_rate_10hz296.i.i.i to i32
  call void @__asan_store2_noabort(i32 %528)
  store i16 %527, ptr %edp_ss_rate_10hz296.i.i.i, align 4
  %edp_pwr_on_off_delay298.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 15, i32 5
  %529 = ptrtoint ptr %edp_pwr_on_off_delay298.i.i.i to i32
  call void @__asan_load1_noabort(i32 %529)
  %530 = load i8, ptr %edp_pwr_on_off_delay298.i.i.i, align 1
  %edp_pwr_on_off_delay300.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 74, i32 3
  %531 = ptrtoint ptr %edp_pwr_on_off_delay300.i.i.i to i32
  call void @__asan_store1_noabort(i32 %531)
  store i8 %530, ptr %edp_pwr_on_off_delay300.i.i.i, align 2
  %edp_pwr_on_vary_bl_to_blon302.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 15, i32 6
  %532 = ptrtoint ptr %edp_pwr_on_vary_bl_to_blon302.i.i.i to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %edp_pwr_on_vary_bl_to_blon302.i.i.i, align 1
  %edp_pwr_on_vary_bl_to_blon304.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 74, i32 4
  %534 = ptrtoint ptr %edp_pwr_on_vary_bl_to_blon304.i.i.i to i32
  call void @__asan_store1_noabort(i32 %534)
  store i8 %533, ptr %edp_pwr_on_vary_bl_to_blon304.i.i.i, align 1
  %edp_pwr_down_bloff_to_vary_bloff306.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 15, i32 7
  %535 = ptrtoint ptr %edp_pwr_down_bloff_to_vary_bloff306.i.i.i to i32
  call void @__asan_load1_noabort(i32 %535)
  %536 = load i8, ptr %edp_pwr_down_bloff_to_vary_bloff306.i.i.i, align 1
  %edp_pwr_down_bloff_to_vary_bloff308.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 74, i32 5
  %537 = ptrtoint ptr %edp_pwr_down_bloff_to_vary_bloff308.i.i.i to i32
  call void @__asan_store1_noabort(i32 %537)
  store i8 %536, ptr %edp_pwr_down_bloff_to_vary_bloff308.i.i.i, align 8
  %edp_panel_bpc310.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 15, i32 8
  %538 = ptrtoint ptr %edp_panel_bpc310.i.i.i to i32
  call void @__asan_load1_noabort(i32 %538)
  %539 = load i8, ptr %edp_panel_bpc310.i.i.i, align 1
  %edp_panel_bpc312.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 74, i32 6
  %540 = ptrtoint ptr %edp_panel_bpc312.i.i.i to i32
  call void @__asan_store1_noabort(i32 %540)
  store i8 %539, ptr %edp_panel_bpc312.i.i.i, align 1
  %edp_bootup_bl_level314.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_1, ptr %call.i83.i.i, i32 0, i32 15, i32 9
  br label %for.body26.preheader.sink.split.i.i

sw.bb12.i.i:                                      ; preds = %sw.bb8.i.i
  %541 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %master_data_tbl.i, align 8
  %integratedsysteminfo.i151.i.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %542, i32 0, i32 1, i32 30
  %543 = ptrtoint ptr %integratedsysteminfo.i151.i.i to i32
  call void @__asan_loadN_noabort(i32 %543, i32 2)
  %544 = load i16, ptr %integratedsysteminfo.i151.i.i, align 1
  %conv.i152.i.i = zext i16 %544 to i32
  %call.i153.i.i = tail call ptr @bios_get_image(ptr noundef nonnull %call7.i.i, i32 noundef %conv.i152.i.i, i32 noundef 1024) #7
  %cmp.i154.i.i = icmp eq ptr %call.i153.i.i, null
  br i1 %cmp.i154.i.i, label %sw.bb12.i.i.if.end27.i45_crit_edge, label %if.end.i201.i.i

sw.bb12.i.i.if.end27.i45_crit_edge:               ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i45

if.end.i201.i.i:                                  ; preds = %sw.bb12.i.i
  %gpucapinfo.i155.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 2
  %545 = ptrtoint ptr %gpucapinfo.i155.i.i to i32
  call void @__asan_loadN_noabort(i32 %545, i32 4)
  %546 = load i32, ptr %gpucapinfo.i155.i.i, align 1
  %547 = tail call i32 @llvm.bswap.i32(i32 %546) #7
  %gpu_cap_info.i156.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 10
  %548 = ptrtoint ptr %gpu_cap_info.i156.i.i to i32
  call void @__asan_store4_noabort(i32 %548)
  store i32 %547, ptr %gpu_cap_info.i156.i.i, align 8
  %system_config.i157.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 3
  %549 = ptrtoint ptr %system_config.i157.i.i to i32
  call void @__asan_loadN_noabort(i32 %549, i32 4)
  %550 = load i32, ptr %system_config.i157.i.i, align 1
  %551 = tail call i32 @llvm.bswap.i32(i32 %550) #7
  %system_config2.i158.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 12
  %552 = ptrtoint ptr %system_config2.i158.i.i to i32
  call void @__asan_store4_noabort(i32 %552)
  store i32 %551, ptr %system_config2.i158.i.i, align 8
  %cpucapinfo.i159.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 4
  %553 = ptrtoint ptr %cpucapinfo.i159.i.i to i32
  call void @__asan_loadN_noabort(i32 %553, i32 4)
  %554 = load i32, ptr %cpucapinfo.i159.i.i, align 1
  %555 = tail call i32 @llvm.bswap.i32(i32 %554) #7
  %cpu_cap_info.i160.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 13
  %556 = ptrtoint ptr %cpu_cap_info.i160.i.i to i32
  call void @__asan_store4_noabort(i32 %556)
  store i32 %555, ptr %cpu_cap_info.i160.i.i, align 4
  %memorytype.i161.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 8
  %557 = ptrtoint ptr %memorytype.i161.i.i to i32
  call void @__asan_load1_noabort(i32 %557)
  %558 = load i8, ptr %memorytype.i161.i.i, align 1
  %memory_type.i162.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 3
  %559 = ptrtoint ptr %memory_type.i162.i.i to i32
  call void @__asan_store1_noabort(i32 %559)
  store i8 %558, ptr %memory_type.i162.i.i, align 8
  %umachannelnumber.i163.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 9
  %560 = ptrtoint ptr %umachannelnumber.i163.i.i to i32
  call void @__asan_load1_noabort(i32 %560)
  %561 = load i8, ptr %umachannelnumber.i163.i.i, align 1
  %ma_channel_number.i164.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 4
  %562 = ptrtoint ptr %ma_channel_number.i164.i.i to i32
  call void @__asan_store1_noabort(i32 %562)
  store i8 %561, ptr %ma_channel_number.i164.i.i, align 1
  %reserved1.i165.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 12
  %563 = ptrtoint ptr %reserved1.i165.i.i to i32
  call void @__asan_load1_noabort(i32 %563)
  %564 = load i8, ptr %reserved1.i165.i.i, align 1
  %conv3.i166.i.i = zext i8 %564 to i32
  %565 = shl nuw nsw i32 %conv3.i166.i.i, 8
  %dp_ss_control.i167.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 72
  %566 = ptrtoint ptr %dp_ss_control.i167.i.i to i32
  call void @__asan_store4_noabort(i32 %566)
  store i32 %565, ptr %dp_ss_control.i167.i.i, align 8
  %arrayidx.i168.i.i = getelementptr %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 17, i32 1, i32 0
  %567 = ptrtoint ptr %arrayidx.i168.i.i to i32
  call void @__asan_load1_noabort(i32 %567)
  %568 = load i8, ptr %arrayidx.i168.i.i, align 1
  %arrayidx7.i169.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 0
  %569 = ptrtoint ptr %arrayidx7.i169.i.i to i32
  call void @__asan_store1_noabort(i32 %569)
  store i8 %568, ptr %arrayidx7.i169.i.i, align 8
  %arrayidx.1.i170.i.i = getelementptr %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 17, i32 1, i32 1
  %570 = ptrtoint ptr %arrayidx.1.i170.i.i to i32
  call void @__asan_load1_noabort(i32 %570)
  %571 = load i8, ptr %arrayidx.1.i170.i.i, align 1
  %arrayidx7.1.i171.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 1
  %572 = ptrtoint ptr %arrayidx7.1.i171.i.i to i32
  call void @__asan_store1_noabort(i32 %572)
  store i8 %571, ptr %arrayidx7.1.i171.i.i, align 1
  %arrayidx.2.i172.i.i = getelementptr %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 17, i32 1, i32 2
  %573 = ptrtoint ptr %arrayidx.2.i172.i.i to i32
  call void @__asan_load1_noabort(i32 %573)
  %574 = load i8, ptr %arrayidx.2.i172.i.i, align 1
  %arrayidx7.2.i173.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 2
  %575 = ptrtoint ptr %arrayidx7.2.i173.i.i to i32
  call void @__asan_store1_noabort(i32 %575)
  store i8 %574, ptr %arrayidx7.2.i173.i.i, align 2
  %arrayidx.3.i174.i.i = getelementptr %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 17, i32 1, i32 3
  %576 = ptrtoint ptr %arrayidx.3.i174.i.i to i32
  call void @__asan_load1_noabort(i32 %576)
  %577 = load i8, ptr %arrayidx.3.i174.i.i, align 1
  %arrayidx7.3.i175.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 3
  %578 = ptrtoint ptr %arrayidx7.3.i175.i.i to i32
  call void @__asan_store1_noabort(i32 %578)
  store i8 %577, ptr %arrayidx7.3.i175.i.i, align 1
  %arrayidx.4.i176.i.i = getelementptr %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 17, i32 1, i32 4
  %579 = ptrtoint ptr %arrayidx.4.i176.i.i to i32
  call void @__asan_load1_noabort(i32 %579)
  %580 = load i8, ptr %arrayidx.4.i176.i.i, align 1
  %arrayidx7.4.i177.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 4
  %581 = ptrtoint ptr %arrayidx7.4.i177.i.i to i32
  call void @__asan_store1_noabort(i32 %581)
  store i8 %580, ptr %arrayidx7.4.i177.i.i, align 4
  %arrayidx.5.i178.i.i = getelementptr %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 17, i32 1, i32 5
  %582 = ptrtoint ptr %arrayidx.5.i178.i.i to i32
  call void @__asan_load1_noabort(i32 %582)
  %583 = load i8, ptr %arrayidx.5.i178.i.i, align 1
  %arrayidx7.5.i179.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 5
  %584 = ptrtoint ptr %arrayidx7.5.i179.i.i to i32
  call void @__asan_store1_noabort(i32 %584)
  store i8 %583, ptr %arrayidx7.5.i179.i.i, align 1
  %arrayidx.6.i180.i.i = getelementptr %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 17, i32 1, i32 6
  %585 = ptrtoint ptr %arrayidx.6.i180.i.i to i32
  call void @__asan_load1_noabort(i32 %585)
  %586 = load i8, ptr %arrayidx.6.i180.i.i, align 1
  %arrayidx7.6.i181.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 6
  %587 = ptrtoint ptr %arrayidx7.6.i181.i.i to i32
  call void @__asan_store1_noabort(i32 %587)
  store i8 %586, ptr %arrayidx7.6.i181.i.i, align 2
  %arrayidx.7.i182.i.i = getelementptr %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 17, i32 1, i32 7
  %588 = ptrtoint ptr %arrayidx.7.i182.i.i to i32
  call void @__asan_load1_noabort(i32 %588)
  %589 = load i8, ptr %arrayidx.7.i182.i.i, align 1
  %arrayidx7.7.i183.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 7
  %590 = ptrtoint ptr %arrayidx7.7.i183.i.i to i32
  call void @__asan_store1_noabort(i32 %590)
  store i8 %589, ptr %arrayidx7.7.i183.i.i, align 1
  %arrayidx.8.i184.i.i = getelementptr %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 17, i32 1, i32 8
  %591 = ptrtoint ptr %arrayidx.8.i184.i.i to i32
  call void @__asan_load1_noabort(i32 %591)
  %592 = load i8, ptr %arrayidx.8.i184.i.i, align 1
  %arrayidx7.8.i185.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 8
  %593 = ptrtoint ptr %arrayidx7.8.i185.i.i to i32
  call void @__asan_store1_noabort(i32 %593)
  store i8 %592, ptr %arrayidx7.8.i185.i.i, align 8
  %arrayidx.9.i186.i.i = getelementptr %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 17, i32 1, i32 9
  %594 = ptrtoint ptr %arrayidx.9.i186.i.i to i32
  call void @__asan_load1_noabort(i32 %594)
  %595 = load i8, ptr %arrayidx.9.i186.i.i, align 1
  %arrayidx7.9.i187.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 9
  %596 = ptrtoint ptr %arrayidx7.9.i187.i.i to i32
  call void @__asan_store1_noabort(i32 %596)
  store i8 %595, ptr %arrayidx7.9.i187.i.i, align 1
  %arrayidx.10.i188.i.i = getelementptr %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 17, i32 1, i32 10
  %597 = ptrtoint ptr %arrayidx.10.i188.i.i to i32
  call void @__asan_load1_noabort(i32 %597)
  %598 = load i8, ptr %arrayidx.10.i188.i.i, align 1
  %arrayidx7.10.i189.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 10
  %599 = ptrtoint ptr %arrayidx7.10.i189.i.i to i32
  call void @__asan_store1_noabort(i32 %599)
  store i8 %598, ptr %arrayidx7.10.i189.i.i, align 2
  %arrayidx.11.i190.i.i = getelementptr %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 17, i32 1, i32 11
  %600 = ptrtoint ptr %arrayidx.11.i190.i.i to i32
  call void @__asan_load1_noabort(i32 %600)
  %601 = load i8, ptr %arrayidx.11.i190.i.i, align 1
  %arrayidx7.11.i191.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 11
  %602 = ptrtoint ptr %arrayidx7.11.i191.i.i to i32
  call void @__asan_store1_noabort(i32 %602)
  store i8 %601, ptr %arrayidx7.11.i191.i.i, align 1
  %arrayidx.12.i192.i.i = getelementptr %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 17, i32 1, i32 12
  %603 = ptrtoint ptr %arrayidx.12.i192.i.i to i32
  call void @__asan_load1_noabort(i32 %603)
  %604 = load i8, ptr %arrayidx.12.i192.i.i, align 1
  %arrayidx7.12.i193.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 12
  %605 = ptrtoint ptr %arrayidx7.12.i193.i.i to i32
  call void @__asan_store1_noabort(i32 %605)
  store i8 %604, ptr %arrayidx7.12.i193.i.i, align 4
  %arrayidx.13.i194.i.i = getelementptr %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 17, i32 1, i32 13
  %606 = ptrtoint ptr %arrayidx.13.i194.i.i to i32
  call void @__asan_load1_noabort(i32 %606)
  %607 = load i8, ptr %arrayidx.13.i194.i.i, align 1
  %arrayidx7.13.i195.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 13
  %608 = ptrtoint ptr %arrayidx7.13.i195.i.i to i32
  call void @__asan_store1_noabort(i32 %608)
  store i8 %607, ptr %arrayidx7.13.i195.i.i, align 1
  %arrayidx.14.i196.i.i = getelementptr %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 17, i32 1, i32 14
  %609 = ptrtoint ptr %arrayidx.14.i196.i.i to i32
  call void @__asan_load1_noabort(i32 %609)
  %610 = load i8, ptr %arrayidx.14.i196.i.i, align 1
  %arrayidx7.14.i197.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 14
  %611 = ptrtoint ptr %arrayidx7.14.i197.i.i to i32
  call void @__asan_store1_noabort(i32 %611)
  store i8 %610, ptr %arrayidx7.14.i197.i.i, align 2
  %arrayidx.15.i198.i.i = getelementptr %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 17, i32 1, i32 15
  %612 = ptrtoint ptr %arrayidx.15.i198.i.i to i32
  call void @__asan_load1_noabort(i32 %612)
  %613 = load i8, ptr %arrayidx.15.i198.i.i, align 1
  %arrayidx7.15.i199.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 15
  %614 = ptrtoint ptr %arrayidx7.15.i199.i.i to i32
  call void @__asan_store1_noabort(i32 %614)
  store i8 %613, ptr %arrayidx7.15.i199.i.i, align 1
  %ext_disp_conn_info12.i200.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1
  br label %for.body11.i226.i.i

for.body11.i226.i.i:                              ; preds = %for.body11.i226.i.i.for.body11.i226.i.i_crit_edge, %if.end.i201.i.i
  %i.1220.i.i.i = phi i32 [ 0, %if.end.i201.i.i ], [ %inc71.i224.i.i, %for.body11.i226.i.i.for.body11.i226.i.i_crit_edge ]
  %arrayidx13.i202.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info12.i200.i.i, i32 0, i32 %i.1220.i.i.i
  %device_connector_id.i203.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info12.i200.i.i, i32 0, i32 %i.1220.i.i.i, i32 2
  %arrayidx16.i204.i.i = getelementptr %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 17, i32 2, i32 %i.1220.i.i.i
  %connectorobjid.i205.i.i = getelementptr %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 17, i32 2, i32 %i.1220.i.i.i, i32 2
  %615 = ptrtoint ptr %connectorobjid.i205.i.i to i32
  call void @__asan_loadN_noabort(i32 %615, i32 2)
  %616 = load i16, ptr %connectorobjid.i205.i.i, align 1
  %617 = tail call i16 @llvm.bswap.i16(i16 %616) #7
  %conv17.i206.i.i = zext i16 %617 to i32
  %call18.i207.i.i = tail call i32 @object_id_from_bios_object_id(i32 noundef %conv17.i206.i.i) #7
  %618 = ptrtoint ptr %device_connector_id.i203.i.i to i32
  call void @__asan_store4_noabort(i32 %618)
  store i32 %call18.i207.i.i, ptr %device_connector_id.i203.i.i, align 8
  %ext_encoder_obj_id.i208.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info12.i200.i.i, i32 0, i32 %i.1220.i.i.i, i32 5
  %ext_encoder_objid.i209.i.i = getelementptr %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 17, i32 2, i32 %i.1220.i.i.i, i32 5
  %619 = ptrtoint ptr %ext_encoder_objid.i209.i.i to i32
  call void @__asan_loadN_noabort(i32 %619, i32 2)
  %620 = load i16, ptr %ext_encoder_objid.i209.i.i, align 1
  %621 = tail call i16 @llvm.bswap.i16(i16 %620) #7
  %conv26.i210.i.i = zext i16 %621 to i32
  %call27.i211.i.i = tail call i32 @object_id_from_bios_object_id(i32 noundef %conv26.i210.i.i) #7
  %622 = ptrtoint ptr %ext_encoder_obj_id.i208.i.i to i32
  call void @__asan_store4_noabort(i32 %622)
  store i32 %call27.i211.i.i, ptr %ext_encoder_obj_id.i208.i.i, align 8
  %623 = ptrtoint ptr %arrayidx16.i204.i.i to i32
  call void @__asan_loadN_noabort(i32 %623, i32 2)
  %624 = load i16, ptr %arrayidx16.i204.i.i, align 1
  %625 = tail call i16 @llvm.bswap.i16(i16 %624) #7
  %conv32.i212.i.i = zext i16 %625 to i32
  %626 = ptrtoint ptr %arrayidx13.i202.i.i to i32
  call void @__asan_store4_noabort(i32 %626)
  store i32 %conv32.i212.i.i, ptr %arrayidx13.i202.i.i, align 8
  %device_acpi_enum.i213.i.i = getelementptr %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 17, i32 2, i32 %i.1220.i.i.i, i32 1
  %627 = ptrtoint ptr %device_acpi_enum.i213.i.i to i32
  call void @__asan_loadN_noabort(i32 %627, i32 2)
  %628 = load i16, ptr %device_acpi_enum.i213.i.i, align 1
  %629 = tail call i16 @llvm.bswap.i16(i16 %628) #7
  %conv40.i214.i.i = zext i16 %629 to i32
  %device_acpi_enum44.i215.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info12.i200.i.i, i32 0, i32 %i.1220.i.i.i, i32 1
  %630 = ptrtoint ptr %device_acpi_enum44.i215.i.i to i32
  call void @__asan_store4_noabort(i32 %630)
  store i32 %conv40.i214.i.i, ptr %device_acpi_enum44.i215.i.i, align 4
  %auxddclut_index.i216.i.i = getelementptr %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 17, i32 2, i32 %i.1220.i.i.i, i32 3
  %631 = ptrtoint ptr %auxddclut_index.i216.i.i to i32
  call void @__asan_load1_noabort(i32 %631)
  %632 = load i8, ptr %auxddclut_index.i216.i.i, align 1
  %ext_aux_ddc_lut_index.i217.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info12.i200.i.i, i32 0, i32 %i.1220.i.i.i, i32 3
  %633 = ptrtoint ptr %ext_aux_ddc_lut_index.i217.i.i to i32
  call void @__asan_store1_noabort(i32 %633)
  store i8 %632, ptr %ext_aux_ddc_lut_index.i217.i.i, align 4
  %hpdlut_index.i218.i.i = getelementptr %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 17, i32 2, i32 %i.1220.i.i.i, i32 4
  %634 = ptrtoint ptr %hpdlut_index.i218.i.i to i32
  call void @__asan_load1_noabort(i32 %634)
  %635 = load i8, ptr %hpdlut_index.i218.i.i, align 1
  %ext_hpd_pin_lut_index.i219.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info12.i200.i.i, i32 0, i32 %i.1220.i.i.i, i32 4
  %636 = ptrtoint ptr %ext_hpd_pin_lut_index.i219.i.i to i32
  call void @__asan_store1_noabort(i32 %636)
  store i8 %635, ptr %ext_hpd_pin_lut_index.i219.i.i, align 1
  %channelmapping.i220.i.i = getelementptr %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 17, i32 2, i32 %i.1220.i.i.i, i32 6
  %637 = ptrtoint ptr %channelmapping.i220.i.i to i32
  call void @__asan_load1_noabort(i32 %637)
  %638 = load i8, ptr %channelmapping.i220.i.i, align 1
  %channel_mapping.i221.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info12.i200.i.i, i32 0, i32 %i.1220.i.i.i, i32 6
  %639 = ptrtoint ptr %channel_mapping.i221.i.i to i32
  call void @__asan_store1_noabort(i32 %639)
  store i8 %638, ptr %channel_mapping.i221.i.i, align 4
  %caps.i222.i.i = getelementptr %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 17, i32 2, i32 %i.1220.i.i.i, i32 8
  %640 = ptrtoint ptr %caps.i222.i.i to i32
  call void @__asan_loadN_noabort(i32 %640, i32 2)
  %641 = load i16, ptr %caps.i222.i.i, align 1
  %642 = tail call i16 @llvm.bswap.i16(i16 %641) #7
  %caps69.i223.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info12.i200.i.i, i32 0, i32 %i.1220.i.i.i, i32 7
  %643 = ptrtoint ptr %caps69.i223.i.i to i32
  call void @__asan_store2_noabort(i32 %643)
  store i16 %642, ptr %caps69.i223.i.i, align 2
  %inc71.i224.i.i = add nuw nsw i32 %i.1220.i.i.i, 1
  %exitcond.not.i225.i.i = icmp eq i32 %inc71.i224.i.i, 7
  br i1 %exitcond.not.i225.i.i, label %for.end72.i238.i.i, label %for.body11.i226.i.i.for.body11.i226.i.i_crit_edge

for.body11.i226.i.i.for.body11.i226.i.i_crit_edge: ; preds = %for.body11.i226.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11.i226.i.i

for.end72.i238.i.i:                               ; preds = %for.body11.i226.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %checksum.i227.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 17, i32 3
  %644 = ptrtoint ptr %checksum.i227.i.i to i32
  call void @__asan_load1_noabort(i32 %644)
  %645 = load i8, ptr %checksum.i227.i.i, align 1
  %checksum75.i228.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %646 = ptrtoint ptr %checksum75.i228.i.i to i32
  call void @__asan_store1_noabort(i32 %646)
  store i8 %645, ptr %checksum75.i228.i.i, align 8
  %fixdpvoltageswing.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 17, i32 7
  %647 = ptrtoint ptr %fixdpvoltageswing.i.i.i to i32
  call void @__asan_load1_noabort(i32 %647)
  %648 = load i8, ptr %fixdpvoltageswing.i.i.i, align 1
  %fixdpvoltageswing78.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 3
  %649 = ptrtoint ptr %fixdpvoltageswing78.i.i.i to i32
  call void @__asan_store1_noabort(i32 %649)
  store i8 %648, ptr %fixdpvoltageswing78.i.i.i, align 1
  %edp1_info.i229.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 14
  %650 = ptrtoint ptr %edp1_info.i229.i.i to i32
  call void @__asan_loadN_noabort(i32 %650, i32 2)
  %651 = load i16, ptr %edp1_info.i229.i.i, align 1
  %652 = tail call i16 @llvm.bswap.i16(i16 %651) #7
  %edp1_info79.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 73
  %653 = ptrtoint ptr %edp1_info79.i.i.i to i32
  call void @__asan_store2_noabort(i32 %653)
  store i16 %652, ptr %edp1_info79.i.i.i, align 4
  %edp_ss_percentage.i230.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 14, i32 1
  %654 = ptrtoint ptr %edp_ss_percentage.i230.i.i to i32
  call void @__asan_loadN_noabort(i32 %654, i32 2)
  %655 = load i16, ptr %edp_ss_percentage.i230.i.i, align 1
  %656 = tail call i16 @llvm.bswap.i16(i16 %655) #7
  %edp_ss_percentage83.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 73, i32 1
  %657 = ptrtoint ptr %edp_ss_percentage83.i.i.i to i32
  call void @__asan_store2_noabort(i32 %657)
  store i16 %656, ptr %edp_ss_percentage83.i.i.i, align 2
  %edp_ss_rate_10hz.i231.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 14, i32 2
  %658 = ptrtoint ptr %edp_ss_rate_10hz.i231.i.i to i32
  call void @__asan_loadN_noabort(i32 %658, i32 2)
  %659 = load i16, ptr %edp_ss_rate_10hz.i231.i.i, align 1
  %660 = tail call i16 @llvm.bswap.i16(i16 %659) #7
  %edp_ss_rate_10hz86.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 73, i32 2
  %661 = ptrtoint ptr %edp_ss_rate_10hz86.i.i.i to i32
  call void @__asan_store2_noabort(i32 %661)
  store i16 %660, ptr %edp_ss_rate_10hz86.i.i.i, align 8
  %edp_pwr_on_off_delay.i232.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 14, i32 5
  %662 = ptrtoint ptr %edp_pwr_on_off_delay.i232.i.i to i32
  call void @__asan_load1_noabort(i32 %662)
  %663 = load i8, ptr %edp_pwr_on_off_delay.i232.i.i, align 1
  %edp_pwr_on_off_delay89.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 73, i32 3
  %664 = ptrtoint ptr %edp_pwr_on_off_delay89.i.i.i to i32
  call void @__asan_store1_noabort(i32 %664)
  store i8 %663, ptr %edp_pwr_on_off_delay89.i.i.i, align 2
  %edp_pwr_on_vary_bl_to_blon.i233.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 14, i32 6
  %665 = ptrtoint ptr %edp_pwr_on_vary_bl_to_blon.i233.i.i to i32
  call void @__asan_load1_noabort(i32 %665)
  %666 = load i8, ptr %edp_pwr_on_vary_bl_to_blon.i233.i.i, align 1
  %edp_pwr_on_vary_bl_to_blon92.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 73, i32 4
  %667 = ptrtoint ptr %edp_pwr_on_vary_bl_to_blon92.i.i.i to i32
  call void @__asan_store1_noabort(i32 %667)
  store i8 %666, ptr %edp_pwr_on_vary_bl_to_blon92.i.i.i, align 1
  %edp_pwr_down_bloff_to_vary_bloff.i234.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 14, i32 7
  %668 = ptrtoint ptr %edp_pwr_down_bloff_to_vary_bloff.i234.i.i to i32
  call void @__asan_load1_noabort(i32 %668)
  %669 = load i8, ptr %edp_pwr_down_bloff_to_vary_bloff.i234.i.i, align 1
  %edp_pwr_down_bloff_to_vary_bloff95.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 73, i32 5
  %670 = ptrtoint ptr %edp_pwr_down_bloff_to_vary_bloff95.i.i.i to i32
  call void @__asan_store1_noabort(i32 %670)
  store i8 %669, ptr %edp_pwr_down_bloff_to_vary_bloff95.i.i.i, align 4
  %edp_panel_bpc.i235.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 14, i32 8
  %671 = ptrtoint ptr %edp_panel_bpc.i235.i.i to i32
  call void @__asan_load1_noabort(i32 %671)
  %672 = load i8, ptr %edp_panel_bpc.i235.i.i, align 1
  %edp_panel_bpc98.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 73, i32 6
  %673 = ptrtoint ptr %edp_panel_bpc98.i.i.i to i32
  call void @__asan_store1_noabort(i32 %673)
  store i8 %672, ptr %edp_panel_bpc98.i.i.i, align 1
  %edp2_info.i236.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 15
  %674 = ptrtoint ptr %edp2_info.i236.i.i to i32
  call void @__asan_loadN_noabort(i32 %674, i32 2)
  %675 = load i16, ptr %edp2_info.i236.i.i, align 1
  %676 = tail call i16 @llvm.bswap.i16(i16 %675) #7
  %edp2_info100.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 74
  %677 = ptrtoint ptr %edp2_info100.i.i.i to i32
  call void @__asan_store2_noabort(i32 %677)
  store i16 %676, ptr %edp2_info100.i.i.i, align 8
  %conv102.i.i.i = trunc i16 %676 to i8
  %edp_bootup_bl_level.i237.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 73, i32 7
  %678 = ptrtoint ptr %edp_bootup_bl_level.i237.i.i to i32
  call void @__asan_store1_noabort(i32 %678)
  store i8 %conv102.i.i.i, ptr %edp_bootup_bl_level.i237.i.i, align 2
  %edp_ss_percentage105.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 15, i32 1
  %679 = ptrtoint ptr %edp_ss_percentage105.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %679, i32 2)
  %680 = load i16, ptr %edp_ss_percentage105.i.i.i, align 1
  %681 = tail call i16 @llvm.bswap.i16(i16 %680) #7
  %edp_ss_percentage107.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 74, i32 1
  %682 = ptrtoint ptr %edp_ss_percentage107.i.i.i to i32
  call void @__asan_store2_noabort(i32 %682)
  store i16 %681, ptr %edp_ss_percentage107.i.i.i, align 2
  %edp_ss_rate_10hz109.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 15, i32 2
  %683 = ptrtoint ptr %edp_ss_rate_10hz109.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %683, i32 2)
  %684 = load i16, ptr %edp_ss_rate_10hz109.i.i.i, align 1
  %685 = tail call i16 @llvm.bswap.i16(i16 %684) #7
  %edp_ss_rate_10hz111.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 74, i32 2
  %686 = ptrtoint ptr %edp_ss_rate_10hz111.i.i.i to i32
  call void @__asan_store2_noabort(i32 %686)
  store i16 %685, ptr %edp_ss_rate_10hz111.i.i.i, align 4
  %edp_pwr_on_off_delay113.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 15, i32 5
  %687 = ptrtoint ptr %edp_pwr_on_off_delay113.i.i.i to i32
  call void @__asan_load1_noabort(i32 %687)
  %688 = load i8, ptr %edp_pwr_on_off_delay113.i.i.i, align 1
  %edp_pwr_on_off_delay115.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 74, i32 3
  %689 = ptrtoint ptr %edp_pwr_on_off_delay115.i.i.i to i32
  call void @__asan_store1_noabort(i32 %689)
  store i8 %688, ptr %edp_pwr_on_off_delay115.i.i.i, align 2
  %edp_pwr_on_vary_bl_to_blon117.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 15, i32 6
  %690 = ptrtoint ptr %edp_pwr_on_vary_bl_to_blon117.i.i.i to i32
  call void @__asan_load1_noabort(i32 %690)
  %691 = load i8, ptr %edp_pwr_on_vary_bl_to_blon117.i.i.i, align 1
  %edp_pwr_on_vary_bl_to_blon119.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 74, i32 4
  %692 = ptrtoint ptr %edp_pwr_on_vary_bl_to_blon119.i.i.i to i32
  call void @__asan_store1_noabort(i32 %692)
  store i8 %691, ptr %edp_pwr_on_vary_bl_to_blon119.i.i.i, align 1
  %edp_pwr_down_bloff_to_vary_bloff121.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 15, i32 7
  %693 = ptrtoint ptr %edp_pwr_down_bloff_to_vary_bloff121.i.i.i to i32
  call void @__asan_load1_noabort(i32 %693)
  %694 = load i8, ptr %edp_pwr_down_bloff_to_vary_bloff121.i.i.i, align 1
  %edp_pwr_down_bloff_to_vary_bloff123.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 74, i32 5
  %695 = ptrtoint ptr %edp_pwr_down_bloff_to_vary_bloff123.i.i.i to i32
  call void @__asan_store1_noabort(i32 %695)
  store i8 %694, ptr %edp_pwr_down_bloff_to_vary_bloff123.i.i.i, align 8
  %edp_panel_bpc125.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 15, i32 8
  %696 = ptrtoint ptr %edp_panel_bpc125.i.i.i to i32
  call void @__asan_load1_noabort(i32 %696)
  %697 = load i8, ptr %edp_panel_bpc125.i.i.i, align 1
  %edp_panel_bpc127.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 74, i32 6
  %698 = ptrtoint ptr %edp_panel_bpc127.i.i.i to i32
  call void @__asan_store1_noabort(i32 %698)
  store i8 %697, ptr %edp_panel_bpc127.i.i.i, align 1
  %edp_bootup_bl_level129.i.i.i = getelementptr inbounds %struct.atom_integrated_system_info_v2_2, ptr %call.i153.i.i, i32 0, i32 15, i32 9
  br label %for.body26.preheader.sink.split.i.i

for.body26.preheader.sink.split.i.i:              ; preds = %for.end72.i238.i.i, %for.end262.i.i.i
  %edp_bootup_bl_level314.i.sink.i.i = phi ptr [ %edp_bootup_bl_level314.i.i.i, %for.end262.i.i.i ], [ %edp_bootup_bl_level129.i.i.i, %for.end72.i238.i.i ]
  %699 = ptrtoint ptr %edp_bootup_bl_level314.i.sink.i.i to i32
  call void @__asan_load1_noabort(i32 %699)
  %700 = load i8, ptr %edp_bootup_bl_level314.i.sink.i.i, align 1
  %edp_bootup_bl_level316.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 74, i32 7
  %701 = ptrtoint ptr %edp_bootup_bl_level316.i.i.i to i32
  call void @__asan_store1_noabort(i32 %701)
  store i8 %700, ptr %edp_bootup_bl_level316.i.i.i, align 2
  br label %for.body26.preheader.i.i

for.body26.preheader.i.i:                         ; preds = %for.body26.preheader.sink.split.i.i, %for.body257.i.i.i.for.body26.preheader.i.i_crit_edge, %for.end249.i.i.i.for.body26.preheader.i.i_crit_edge
  %max_supported_clk.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %702 = ptrtoint ptr %max_supported_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load i32, ptr %max_supported_clk.i.i, align 4
  %max_supported_clk29.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 0, i32 1
  %704 = ptrtoint ptr %max_supported_clk29.i.i to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load i32, ptr %max_supported_clk29.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %703, i32 %705)
  %cmp30.i.i = icmp ult i32 %703, %705
  br i1 %cmp30.i.i, label %do.body.i.i, label %for.body26.preheader.i.i.for.body26.preheader.1.i.i_crit_edge

for.body26.preheader.i.i.for.body26.preheader.1.i.i_crit_edge: ; preds = %for.body26.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body26.preheader.1.i.i

do.body.i.i:                                      ; preds = %for.body26.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 1
  %706 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %706)
  %__tmp.sroa.0.0.copyload.i.i = load i32, ptr %call7.i.i.i, align 8
  %707 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %707)
  %708 = load i64, ptr %arrayidx.i.i, align 8
  store i64 %708, ptr %call7.i.i.i, align 8
  store i32 %__tmp.sroa.0.0.copyload.i.i, ptr %arrayidx.i.i, align 8
  %709 = ptrtoint ptr %max_supported_clk.i.i to i32
  call void @__asan_store4_noabort(i32 %709)
  store i32 %705, ptr %max_supported_clk.i.i, align 4
  br label %for.body26.preheader.1.i.i

for.body26.preheader.1.i.i:                       ; preds = %do.body.i.i, %for.body26.preheader.i.i.for.body26.preheader.1.i.i_crit_edge
  %max_supported_clk.1.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %710 = ptrtoint ptr %max_supported_clk.1.i.i to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load i32, ptr %max_supported_clk.1.i.i, align 4
  %712 = ptrtoint ptr %max_supported_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load i32, ptr %max_supported_clk.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %711, i32 %713)
  %cmp30.1.i.i = icmp ult i32 %711, %713
  br i1 %cmp30.1.i.i, label %do.body.1.i.i, label %for.body26.preheader.1.i.i.for.inc.1.i.i_crit_edge

for.body26.preheader.1.i.i.for.inc.1.i.i_crit_edge: ; preds = %for.body26.preheader.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i.i

do.body.1.i.i:                                    ; preds = %for.body26.preheader.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx28.1.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 1
  %arrayidx.1.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 2
  %714 = ptrtoint ptr %arrayidx28.1.i.i to i32
  call void @__asan_load4_noabort(i32 %714)
  %__tmp.sroa.0.0.copyload.1.i.i = load i32, ptr %arrayidx28.1.i.i, align 8
  %715 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load8_noabort(i32 %715)
  %716 = load i64, ptr %arrayidx.1.i.i, align 8
  store i64 %716, ptr %arrayidx28.1.i.i, align 8
  store i32 %__tmp.sroa.0.0.copyload.1.i.i, ptr %arrayidx.1.i.i, align 8
  %717 = ptrtoint ptr %max_supported_clk.1.i.i to i32
  call void @__asan_store4_noabort(i32 %717)
  store i32 %713, ptr %max_supported_clk.1.i.i, align 4
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %do.body.1.i.i, %for.body26.preheader.1.i.i.for.inc.1.i.i_crit_edge
  %718 = ptrtoint ptr %max_supported_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load i32, ptr %max_supported_clk.i.i, align 4
  %720 = ptrtoint ptr %max_supported_clk29.i.i to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load i32, ptr %max_supported_clk29.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %719, i32 %721)
  %cmp30.1.1.i.i = icmp ult i32 %719, %721
  br i1 %cmp30.1.1.i.i, label %do.body.1.1.i.i, label %for.inc.1.i.i.for.body26.preheader.2.i.i_crit_edge

for.inc.1.i.i.for.body26.preheader.2.i.i_crit_edge: ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body26.preheader.2.i.i

do.body.1.1.i.i:                                  ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.1.1.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 1
  %722 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %722)
  %__tmp.sroa.0.0.copyload.1.1.i.i = load i32, ptr %call7.i.i.i, align 8
  %723 = ptrtoint ptr %arrayidx.1.1.i.i to i32
  call void @__asan_load8_noabort(i32 %723)
  %724 = load i64, ptr %arrayidx.1.1.i.i, align 8
  store i64 %724, ptr %call7.i.i.i, align 8
  store i32 %__tmp.sroa.0.0.copyload.1.1.i.i, ptr %arrayidx.1.1.i.i, align 8
  %725 = ptrtoint ptr %max_supported_clk.i.i to i32
  call void @__asan_store4_noabort(i32 %725)
  store i32 %721, ptr %max_supported_clk.i.i, align 4
  br label %for.body26.preheader.2.i.i

for.body26.preheader.2.i.i:                       ; preds = %do.body.1.1.i.i, %for.inc.1.i.i.for.body26.preheader.2.i.i_crit_edge
  %max_supported_clk.2.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %726 = ptrtoint ptr %max_supported_clk.2.i.i to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load i32, ptr %max_supported_clk.2.i.i, align 4
  %728 = ptrtoint ptr %max_supported_clk.1.i.i to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load i32, ptr %max_supported_clk.1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %727, i32 %729)
  %cmp30.2.i.i = icmp ult i32 %727, %729
  br i1 %cmp30.2.i.i, label %do.body.2.i.i, label %for.body26.preheader.2.i.i.for.inc.2.i.i_crit_edge

for.body26.preheader.2.i.i.for.inc.2.i.i_crit_edge: ; preds = %for.body26.preheader.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i.i

do.body.2.i.i:                                    ; preds = %for.body26.preheader.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx28.2.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 2
  %arrayidx.2.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 3
  %730 = ptrtoint ptr %arrayidx28.2.i.i to i32
  call void @__asan_load4_noabort(i32 %730)
  %__tmp.sroa.0.0.copyload.2.i.i = load i32, ptr %arrayidx28.2.i.i, align 8
  %731 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load8_noabort(i32 %731)
  %732 = load i64, ptr %arrayidx.2.i.i, align 8
  store i64 %732, ptr %arrayidx28.2.i.i, align 8
  store i32 %__tmp.sroa.0.0.copyload.2.i.i, ptr %arrayidx.2.i.i, align 8
  %733 = ptrtoint ptr %max_supported_clk.2.i.i to i32
  call void @__asan_store4_noabort(i32 %733)
  store i32 %729, ptr %max_supported_clk.2.i.i, align 4
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %do.body.2.i.i, %for.body26.preheader.2.i.i.for.inc.2.i.i_crit_edge
  %734 = ptrtoint ptr %max_supported_clk.1.i.i to i32
  call void @__asan_load4_noabort(i32 %734)
  %735 = load i32, ptr %max_supported_clk.1.i.i, align 4
  %736 = ptrtoint ptr %max_supported_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load i32, ptr %max_supported_clk.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %735, i32 %737)
  %cmp30.2.1.i.i = icmp ult i32 %735, %737
  br i1 %cmp30.2.1.i.i, label %do.body.2.1.i.i, label %for.inc.2.i.i.for.inc.2.1.i.i_crit_edge

for.inc.2.i.i.for.inc.2.1.i.i_crit_edge:          ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.1.i.i

do.body.2.1.i.i:                                  ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx28.2.1.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 1
  %arrayidx.2.1.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 2
  %738 = ptrtoint ptr %arrayidx28.2.1.i.i to i32
  call void @__asan_load4_noabort(i32 %738)
  %__tmp.sroa.0.0.copyload.2.1.i.i = load i32, ptr %arrayidx28.2.1.i.i, align 8
  %739 = ptrtoint ptr %arrayidx.2.1.i.i to i32
  call void @__asan_load8_noabort(i32 %739)
  %740 = load i64, ptr %arrayidx.2.1.i.i, align 8
  store i64 %740, ptr %arrayidx28.2.1.i.i, align 8
  store i32 %__tmp.sroa.0.0.copyload.2.1.i.i, ptr %arrayidx.2.1.i.i, align 8
  %741 = ptrtoint ptr %max_supported_clk.1.i.i to i32
  call void @__asan_store4_noabort(i32 %741)
  store i32 %737, ptr %max_supported_clk.1.i.i, align 4
  br label %for.inc.2.1.i.i

for.inc.2.1.i.i:                                  ; preds = %do.body.2.1.i.i, %for.inc.2.i.i.for.inc.2.1.i.i_crit_edge
  %742 = ptrtoint ptr %max_supported_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load i32, ptr %max_supported_clk.i.i, align 4
  %744 = ptrtoint ptr %max_supported_clk29.i.i to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load i32, ptr %max_supported_clk29.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %743, i32 %745)
  %cmp30.2.2.i.i = icmp ult i32 %743, %745
  br i1 %cmp30.2.2.i.i, label %do.body.2.2.i.i, label %for.inc.2.1.i.i.bios_parser_create_integrated_info.exit_crit_edge

for.inc.2.1.i.i.bios_parser_create_integrated_info.exit_crit_edge: ; preds = %for.inc.2.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bios_parser_create_integrated_info.exit

do.body.2.2.i.i:                                  ; preds = %for.inc.2.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.2.2.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 1
  %746 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %746)
  %__tmp.sroa.0.0.copyload.2.2.i.i = load i32, ptr %call7.i.i.i, align 8
  %747 = ptrtoint ptr %arrayidx.2.2.i.i to i32
  call void @__asan_load8_noabort(i32 %747)
  %748 = load i64, ptr %arrayidx.2.2.i.i, align 8
  store i64 %748, ptr %call7.i.i.i, align 8
  store i32 %__tmp.sroa.0.0.copyload.2.2.i.i, ptr %arrayidx.2.2.i.i, align 8
  %749 = ptrtoint ptr %max_supported_clk.i.i to i32
  call void @__asan_store4_noabort(i32 %749)
  store i32 %745, ptr %max_supported_clk.i.i, align 4
  br label %bios_parser_create_integrated_info.exit

if.end27.i45:                                     ; preds = %sw.bb12.i.i.if.end27.i45_crit_edge, %sw.bb10.i.i.if.end27.i45_crit_edge, %sw.bb8.i.i.if.end27.i45_crit_edge, %sw.bb6.i.i.if.end27.i45_crit_edge, %sw.bb.i.i44.if.end27.i45_crit_edge, %get_atom_data_table_revision.exit.i.i43.if.end27.i45_crit_edge, %if.then.i.i.if.end27.i45_crit_edge, %land.lhs.true.i.i.if.end27.i45_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %bios_parser_create_integrated_info.exit

bios_parser_create_integrated_info.exit:          ; preds = %if.end27.i45, %do.body.2.2.i.i, %for.inc.2.1.i.i.bios_parser_create_integrated_info.exit_crit_edge, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ null, %if.end27.i45 ], [ %call7.i.i.i, %for.inc.2.1.i.i.bios_parser_create_integrated_info.exit_crit_edge ], [ %call7.i.i.i, %do.body.2.2.i.i ]
  %integrated_info.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 6
  %750 = ptrtoint ptr %integrated_info.i to i32
  call void @__asan_store4_noabort(i32 %750)
  store ptr %retval.0.i, ptr %integrated_info.i, align 8
  %fw_info.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7
  %751 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load ptr, ptr %master_data_tbl.i, align 8
  %firmwareinfo.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %752, i32 0, i32 1, i32 4
  %753 = ptrtoint ptr %firmwareinfo.i to i32
  call void @__asan_loadN_noabort(i32 %753, i32 2)
  %754 = load i16, ptr %firmwareinfo.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %754)
  %tobool1.not.i18 = icmp eq i16 %754, 0
  br i1 %tobool1.not.i18, label %bios_parser_create_integrated_info.exit.bios_parser_get_firmware_info.exit_crit_edge, label %if.then.i23

bios_parser_create_integrated_info.exit.bios_parser_get_firmware_info.exit_crit_edge: ; preds = %bios_parser_create_integrated_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %bios_parser_get_firmware_info.exit

if.then.i23:                                      ; preds = %bios_parser_create_integrated_info.exit
  %conv.i20 = zext i16 %754 to i32
  %call.i21 = tail call ptr @bios_get_image(ptr noundef %call7.i.i, i32 noundef %conv.i20, i32 noundef 4) #7
  %tobool1.not.i.i22 = icmp eq ptr %call.i21, null
  br i1 %tobool1.not.i.i22, label %if.then.i23.bios_parser_get_firmware_info.exit_crit_edge, label %get_atom_data_table_revision.exit.i26

if.then.i23.bios_parser_get_firmware_info.exit_crit_edge: ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %bios_parser_get_firmware_info.exit

get_atom_data_table_revision.exit.i26:            ; preds = %if.then.i23
  %format_revision.i.i24 = getelementptr inbounds %struct.atom_common_table_header, ptr %call.i21, i32 0, i32 1
  %755 = ptrtoint ptr %format_revision.i.i24 to i32
  call void @__asan_load1_noabort(i32 %755)
  %756 = load i8, ptr %format_revision.i.i24, align 1
  %757 = and i8 %756, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %757)
  %cond.i25 = icmp eq i8 %757, 3
  br i1 %cond.i25, label %sw.bb.i29, label %get_atom_data_table_revision.exit.i26.bios_parser_get_firmware_info.exit_crit_edge

get_atom_data_table_revision.exit.i26.bios_parser_get_firmware_info.exit_crit_edge: ; preds = %get_atom_data_table_revision.exit.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %bios_parser_get_firmware_info.exit

sw.bb.i29:                                        ; preds = %get_atom_data_table_revision.exit.i26
  %content_revision.i.i27 = getelementptr inbounds %struct.atom_common_table_header, ptr %call.i21, i32 0, i32 2
  %758 = ptrtoint ptr %content_revision.i.i27 to i32
  call void @__asan_load1_noabort(i32 %758)
  %759 = load i8, ptr %content_revision.i.i27, align 1
  %760 = and i8 %759, 63
  %and6.i.i28 = zext i8 %760 to i32
  %761 = zext i32 %and6.i.i28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %761, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %and6.i.i28, label %sw.bb.i29.bios_parser_get_firmware_info.exit_crit_edge [
    i32 1, label %if.end.i.i32
    i32 2, label %sw.bb.i29.if.end.i33.i_crit_edge
    i32 3, label %sw.bb.i29.if.end.i33.i_crit_edge47
    i32 4, label %if.end.i52.i
  ]

sw.bb.i29.if.end.i33.i_crit_edge47:               ; preds = %sw.bb.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i33.i

sw.bb.i29.if.end.i33.i_crit_edge:                 ; preds = %sw.bb.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i33.i

sw.bb.i29.bios_parser_get_firmware_info.exit_crit_edge: ; preds = %sw.bb.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %bios_parser_get_firmware_info.exit

if.end.i.i32:                                     ; preds = %sw.bb.i29
  %762 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load ptr, ptr %master_data_tbl.i, align 8
  %firmwareinfo.i.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %763, i32 0, i32 1, i32 4
  %764 = ptrtoint ptr %firmwareinfo.i.i to i32
  call void @__asan_loadN_noabort(i32 %764, i32 2)
  %765 = load i16, ptr %firmwareinfo.i.i, align 1
  %conv.i.i30 = zext i16 %765 to i32
  %call.i.i31 = tail call ptr @bios_get_image(ptr noundef %call7.i.i, i32 noundef %conv.i.i30, i32 noundef 72) #7
  %766 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load ptr, ptr %master_data_tbl.i, align 8
  %dce_info4.i.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %767, i32 0, i32 1, i32 27
  %768 = ptrtoint ptr %dce_info4.i.i to i32
  call void @__asan_loadN_noabort(i32 %768, i32 2)
  %769 = load i16, ptr %dce_info4.i.i, align 1
  %conv5.i.i = zext i16 %769 to i32
  %call6.i.i = tail call ptr @bios_get_image(ptr noundef %call7.i.i, i32 noundef %conv5.i.i, i32 noundef 56) #7
  %tobool7.not.i.i = icmp eq ptr %call.i.i31, null
  %tobool8.not.i.i = icmp eq ptr %call6.i.i, null
  %or.cond.i.i = select i1 %tobool7.not.i.i, i1 true, i1 %tobool8.not.i.i
  br i1 %or.cond.i.i, label %if.end.i.i32.bios_parser_get_firmware_info.exit_crit_edge, label %if.end10.i.i

if.end.i.i32.bios_parser_get_firmware_info.exit_crit_edge: ; preds = %if.end.i.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %bios_parser_get_firmware_info.exit

if.end10.i.i:                                     ; preds = %if.end.i.i32
  %770 = call ptr @memset(ptr %fw_info.i, i32 0, i32 64)
  %bootup_mclk_in10khz.i.i = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %call.i.i31, i32 0, i32 3
  %771 = ptrtoint ptr %bootup_mclk_in10khz.i.i to i32
  call void @__asan_loadN_noabort(i32 %771, i32 4)
  %772 = load i32, ptr %bootup_mclk_in10khz.i.i, align 1
  %mul.i.i = mul i32 %772, 10
  %default_memory_clk.i.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 7
  %773 = ptrtoint ptr %default_memory_clk.i.i to i32
  call void @__asan_store4_noabort(i32 %773)
  store i32 %mul.i.i, ptr %default_memory_clk.i.i, align 8
  %bootup_sclk_in10khz.i.i = getelementptr inbounds %struct.atom_firmware_info_v3_1, ptr %call.i.i31, i32 0, i32 2
  %774 = ptrtoint ptr %bootup_sclk_in10khz.i.i to i32
  call void @__asan_loadN_noabort(i32 %774, i32 4)
  %775 = load i32, ptr %bootup_sclk_in10khz.i.i, align 1
  %mul11.i.i = mul i32 %775, 10
  %default_engine_clk.i.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 8
  %776 = ptrtoint ptr %default_engine_clk.i.i to i32
  call void @__asan_store4_noabort(i32 %776)
  store i32 %mul11.i.i, ptr %default_engine_clk.i.i, align 4
  %dce_refclk_10khz.i.i = getelementptr inbounds %struct.atom_display_controller_info_v4_1, ptr %call6.i.i, i32 0, i32 3
  %777 = ptrtoint ptr %dce_refclk_10khz.i.i to i32
  call void @__asan_loadN_noabort(i32 %777, i32 2)
  %778 = load i16, ptr %dce_refclk_10khz.i.i, align 1
  %conv12.i.i = zext i16 %778 to i32
  %mul13.i.i = mul nuw nsw i32 %conv12.i.i, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %778)
  %cmp.i.i33 = icmp eq i16 %778, 0
  %spec.select.i.i = select i1 %cmp.i.i33, i32 27000, i32 %mul13.i.i
  %779 = ptrtoint ptr %fw_info.i to i32
  call void @__asan_store4_noabort(i32 %779)
  store i32 %spec.select.i.i, ptr %fw_info.i, align 4
  %dpphy_refclk_10khz.i.i = getelementptr inbounds %struct.atom_display_controller_info_v4_1, ptr %call6.i.i, i32 0, i32 17
  %780 = ptrtoint ptr %dpphy_refclk_10khz.i.i to i32
  call void @__asan_loadN_noabort(i32 %780, i32 2)
  %781 = load i16, ptr %dpphy_refclk_10khz.i.i, align 1
  %conv21.i.i = zext i16 %781 to i32
  %mul22.i.i = mul nuw nsw i32 %conv21.i.i, 10
  %dp_phy_ref_clk.i.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 9
  %782 = ptrtoint ptr %dp_phy_ref_clk.i.i to i32
  call void @__asan_store4_noabort(i32 %782)
  store i32 %mul22.i.i, ptr %dp_phy_ref_clk.i.i, align 8
  %i2c_engine_refclk_10khz.i.i = getelementptr inbounds %struct.atom_display_controller_info_v4_1, ptr %call6.i.i, i32 0, i32 4
  %783 = ptrtoint ptr %i2c_engine_refclk_10khz.i.i to i32
  call void @__asan_loadN_noabort(i32 %783, i32 2)
  %784 = load i16, ptr %i2c_engine_refclk_10khz.i.i, align 1
  %conv23.i.i = zext i16 %784 to i32
  %mul24.i.i = mul nuw nsw i32 %conv23.i.i, 10
  %i2c_engine_ref_clk.i.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 10
  %785 = ptrtoint ptr %i2c_engine_ref_clk.i.i to i32
  call void @__asan_store4_noabort(i32 %785)
  store i32 %mul24.i.i, ptr %i2c_engine_ref_clk.i.i, align 4
  %get_smu_clock_info.i.i = getelementptr inbounds %struct.bios_parser, ptr %call7.i.i, i32 0, i32 6, i32 18
  %786 = ptrtoint ptr %get_smu_clock_info.i.i to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load ptr, ptr %get_smu_clock_info.i.i, align 4
  %cmp25.not.i.i = icmp eq ptr %787, null
  br i1 %cmp25.not.i.i, label %if.end10.i.i.if.end32.i.i_crit_edge, label %if.then27.i.i

if.end10.i.i.if.end32.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i.i

if.then27.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i.i = tail call i32 %787(ptr noundef %call7.i.i, i8 noundef zeroext 0) #7
  %mul31.i.i = mul i32 %call30.i.i, 10
  %smu_gpu_pll_output_freq.i.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 4
  %788 = ptrtoint ptr %smu_gpu_pll_output_freq.i.i to i32
  call void @__asan_store4_noabort(i32 %788)
  store i32 %mul31.i.i, ptr %smu_gpu_pll_output_freq.i.i, align 8
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.then27.i.i, %if.end10.i.i.if.end32.i.i_crit_edge
  %oem_i2c_present.i.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 11
  %789 = ptrtoint ptr %oem_i2c_present.i.i to i32
  call void @__asan_store1_noabort(i32 %789)
  store i8 0, ptr %oem_i2c_present.i.i, align 8
  br label %bios_parser_get_firmware_info.exit

if.end.i33.i:                                     ; preds = %sw.bb.i29.if.end.i33.i_crit_edge, %sw.bb.i29.if.end.i33.i_crit_edge47
  %790 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load ptr, ptr %master_data_tbl.i, align 8
  %firmwareinfo.i24.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %791, i32 0, i32 1, i32 4
  %792 = ptrtoint ptr %firmwareinfo.i24.i to i32
  call void @__asan_loadN_noabort(i32 %792, i32 2)
  %793 = load i16, ptr %firmwareinfo.i24.i, align 1
  %conv.i25.i = zext i16 %793 to i32
  %call.i26.i = tail call ptr @bios_get_image(ptr noundef %call7.i.i, i32 noundef %conv.i25.i, i32 noundef 72) #7
  %794 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load ptr, ptr %master_data_tbl.i, align 8
  %dce_info4.i27.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %795, i32 0, i32 1, i32 27
  %796 = ptrtoint ptr %dce_info4.i27.i to i32
  call void @__asan_loadN_noabort(i32 %796, i32 2)
  %797 = load i16, ptr %dce_info4.i27.i, align 1
  %conv5.i28.i = zext i16 %797 to i32
  %call6.i29.i = tail call ptr @bios_get_image(ptr noundef %call7.i.i, i32 noundef %conv5.i28.i, i32 noundef 56) #7
  %tobool7.not.i30.i = icmp eq ptr %call.i26.i, null
  %tobool8.not.i31.i = icmp eq ptr %call6.i29.i, null
  %or.cond.i32.i = select i1 %tobool7.not.i30.i, i1 true, i1 %tobool8.not.i31.i
  br i1 %or.cond.i32.i, label %if.end.i33.i.bios_parser_get_firmware_info.exit_crit_edge, label %if.end10.i34.i

if.end.i33.i.bios_parser_get_firmware_info.exit_crit_edge: ; preds = %if.end.i33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bios_parser_get_firmware_info.exit

if.end10.i34.i:                                   ; preds = %if.end.i33.i
  %798 = call ptr @memset(ptr %fw_info.i, i32 0, i32 64)
  %799 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %799)
  %800 = load ptr, ptr %master_data_tbl.i, align 8
  %smu_info.i.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %800, i32 0, i32 1, i32 8
  %801 = ptrtoint ptr %smu_info.i.i to i32
  call void @__asan_loadN_noabort(i32 %801, i32 2)
  %802 = load i16, ptr %smu_info.i.i, align 1
  %conv14.i.i = zext i16 %802 to i32
  %call15.i.i = tail call ptr @bios_get_image(ptr noundef %call7.i.i, i32 noundef %conv14.i.i, i32 noundef 4) #7
  %tobool1.not.i.i.i = icmp eq ptr %call15.i.i, null
  br i1 %tobool1.not.i.i.i, label %if.end10.i34.i.if.end44.i.i_crit_edge, label %get_atom_data_table_revision.exit.i.i

if.end10.i34.i.if.end44.i.i_crit_edge:            ; preds = %if.end10.i34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i.i

get_atom_data_table_revision.exit.i.i:            ; preds = %if.end10.i34.i
  %content_revision.i.i.i = getelementptr inbounds %struct.atom_common_table_header, ptr %call15.i.i, i32 0, i32 2
  %803 = ptrtoint ptr %content_revision.i.i.i to i32
  call void @__asan_load1_noabort(i32 %803)
  %804 = load i8, ptr %content_revision.i.i.i, align 1
  %805 = and i8 %804, 63
  %and6.i.i.i = zext i8 %805 to i32
  %806 = zext i32 %and6.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %806, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %and6.i.i.i, label %get_atom_data_table_revision.exit.i.i.if.end44.i.i_crit_edge [
    i32 2, label %if.then17.i.i
    i32 3, label %if.then30.i.i
  ]

get_atom_data_table_revision.exit.i.i.if.end44.i.i_crit_edge: ; preds = %get_atom_data_table_revision.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i.i

if.then17.i.i:                                    ; preds = %get_atom_data_table_revision.exit.i.i
  %807 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %807)
  %808 = load ptr, ptr %master_data_tbl.i, align 8
  %smu_info21.i.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %808, i32 0, i32 1, i32 8
  %809 = ptrtoint ptr %smu_info21.i.i to i32
  call void @__asan_loadN_noabort(i32 %809, i32 2)
  %810 = load i16, ptr %smu_info21.i.i, align 1
  %conv22.i.i = zext i16 %810 to i32
  %call23.i.i = tail call ptr @bios_get_image(ptr noundef %call7.i.i, i32 noundef %conv22.i.i, i32 noundef 84) #7
  %tobool24.not.i.i = icmp eq ptr %call23.i.i, null
  br i1 %tobool24.not.i.i, label %if.then17.i.i.bios_parser_get_firmware_info.exit_crit_edge, label %if.end26.i.i

if.then17.i.i.bios_parser_get_firmware_info.exit_crit_edge: ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bios_parser_get_firmware_info.exit

if.end26.i.i:                                     ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %bootup_dcefclk_10khz.i.i = getelementptr inbounds %struct.atom_smu_info_v3_2, ptr %call23.i.i, i32 0, i32 27
  br label %if.end44.sink.split.i.i

if.then30.i.i:                                    ; preds = %get_atom_data_table_revision.exit.i.i
  %811 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %811)
  %812 = load ptr, ptr %master_data_tbl.i, align 8
  %smu_info34.i.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %812, i32 0, i32 1, i32 8
  %813 = ptrtoint ptr %smu_info34.i.i to i32
  call void @__asan_loadN_noabort(i32 %813, i32 2)
  %814 = load i16, ptr %smu_info34.i.i, align 1
  %conv35.i.i = zext i16 %814 to i32
  %call36.i.i = tail call ptr @bios_get_image(ptr noundef %call7.i.i, i32 noundef %conv35.i.i, i32 noundef 92) #7
  %tobool37.not.i.i = icmp eq ptr %call36.i.i, null
  br i1 %tobool37.not.i.i, label %if.then30.i.i.bios_parser_get_firmware_info.exit_crit_edge, label %if.end39.i.i

if.then30.i.i.bios_parser_get_firmware_info.exit_crit_edge: ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bios_parser_get_firmware_info.exit

if.end39.i.i:                                     ; preds = %if.then30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %bootup_dcefclk_10khz40.i.i = getelementptr inbounds %struct.atom_smu_info_v3_3, ptr %call36.i.i, i32 0, i32 27
  br label %if.end44.sink.split.i.i

if.end44.sink.split.i.i:                          ; preds = %if.end39.i.i, %if.end26.i.i
  %bootup_dcefclk_10khz40.sink.i.i = phi ptr [ %bootup_dcefclk_10khz40.i.i, %if.end39.i.i ], [ %bootup_dcefclk_10khz.i.i, %if.end26.i.i ]
  %815 = ptrtoint ptr %bootup_dcefclk_10khz40.sink.i.i to i32
  call void @__asan_loadN_noabort(i32 %815, i32 4)
  %816 = load i32, ptr %bootup_dcefclk_10khz40.sink.i.i, align 1
  %mul41.i.i = mul i32 %816, 10
  %default_engine_clk42.i.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 8
  %817 = ptrtoint ptr %default_engine_clk42.i.i to i32
  call void @__asan_store4_noabort(i32 %817)
  store i32 %mul41.i.i, ptr %default_engine_clk42.i.i, align 4
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %if.end44.sink.split.i.i, %get_atom_data_table_revision.exit.i.i.if.end44.i.i_crit_edge, %if.end10.i34.i.if.end44.i.i_crit_edge
  %revision.sroa.5.0152.i.i = phi i32 [ %and6.i.i.i, %get_atom_data_table_revision.exit.i.i.if.end44.i.i_crit_edge ], [ 0, %if.end10.i34.i.if.end44.i.i_crit_edge ], [ %and6.i.i.i, %if.end44.sink.split.i.i ]
  %bootup_mclk_in10khz.i35.i = getelementptr inbounds %struct.atom_firmware_info_v3_2, ptr %call.i26.i, i32 0, i32 3
  %818 = ptrtoint ptr %bootup_mclk_in10khz.i35.i to i32
  call void @__asan_loadN_noabort(i32 %818, i32 4)
  %819 = load i32, ptr %bootup_mclk_in10khz.i35.i, align 1
  %mul45.i.i = mul i32 %819, 10
  %default_memory_clk.i36.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 7
  %820 = ptrtoint ptr %default_memory_clk.i36.i to i32
  call void @__asan_store4_noabort(i32 %820)
  store i32 %mul45.i.i, ptr %default_memory_clk.i36.i, align 8
  %dce_refclk_10khz.i37.i = getelementptr inbounds %struct.atom_display_controller_info_v4_1, ptr %call6.i29.i, i32 0, i32 3
  %821 = ptrtoint ptr %dce_refclk_10khz.i37.i to i32
  call void @__asan_loadN_noabort(i32 %821, i32 2)
  %822 = load i16, ptr %dce_refclk_10khz.i37.i, align 1
  %conv46.i.i = zext i16 %822 to i32
  %mul47.i.i = mul nuw nsw i32 %conv46.i.i, 10
  %823 = ptrtoint ptr %fw_info.i to i32
  call void @__asan_store4_noabort(i32 %823)
  store i32 %mul47.i.i, ptr %fw_info.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %822)
  %cmp50.i.i = icmp eq i16 %822, 0
  br i1 %cmp50.i.i, label %if.then52.i.i, label %if.end44.i.i.if.end68.i.i_crit_edge

if.end44.i.i.if.end68.i.i_crit_edge:              ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68.i.i

if.then52.i.i:                                    ; preds = %if.end44.i.i
  %trunc.i.i = trunc i32 %revision.sroa.5.0152.i.i to i8
  %824 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %824, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %trunc.i.i, label %if.then52.i.i.if.end68.i.i_crit_edge [
    i8 2, label %if.then52.i.i.if.end68.sink.split.i.i_crit_edge
    i8 3, label %if.then63.i.i
  ]

if.then52.i.i.if.end68.sink.split.i.i_crit_edge:  ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68.sink.split.i.i

if.then52.i.i.if.end68.i.i_crit_edge:             ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68.i.i

if.then63.i.i:                                    ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68.sink.split.i.i

if.end68.sink.split.i.i:                          ; preds = %if.then63.i.i, %if.then52.i.i.if.end68.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 100000, %if.then63.i.i ], [ 27000, %if.then52.i.i.if.end68.sink.split.i.i_crit_edge ]
  %revision.sroa.5.0153.ph.i.i = phi i32 [ 3, %if.then63.i.i ], [ 2, %if.then52.i.i.if.end68.sink.split.i.i_crit_edge ]
  %825 = ptrtoint ptr %fw_info.i to i32
  call void @__asan_store4_noabort(i32 %825)
  store i32 %.sink.i.i, ptr %fw_info.i, align 4
  br label %if.end68.i.i

if.end68.i.i:                                     ; preds = %if.end68.sink.split.i.i, %if.then52.i.i.if.end68.i.i_crit_edge, %if.end44.i.i.if.end68.i.i_crit_edge
  %revision.sroa.5.0153.i.i = phi i32 [ %revision.sroa.5.0152.i.i, %if.then52.i.i.if.end68.i.i_crit_edge ], [ %revision.sroa.5.0152.i.i, %if.end44.i.i.if.end68.i.i_crit_edge ], [ %revision.sroa.5.0153.ph.i.i, %if.end68.sink.split.i.i ]
  %dpphy_refclk_10khz.i38.i = getelementptr inbounds %struct.atom_display_controller_info_v4_1, ptr %call6.i29.i, i32 0, i32 17
  %826 = ptrtoint ptr %dpphy_refclk_10khz.i38.i to i32
  call void @__asan_loadN_noabort(i32 %826, i32 2)
  %827 = load i16, ptr %dpphy_refclk_10khz.i38.i, align 1
  %conv69.i.i = zext i16 %827 to i32
  %mul70.i.i = mul nuw nsw i32 %conv69.i.i, 10
  %dp_phy_ref_clk.i39.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 9
  %828 = ptrtoint ptr %dp_phy_ref_clk.i39.i to i32
  call void @__asan_store4_noabort(i32 %828)
  store i32 %mul70.i.i, ptr %dp_phy_ref_clk.i39.i, align 8
  %i2c_engine_refclk_10khz.i40.i = getelementptr inbounds %struct.atom_display_controller_info_v4_1, ptr %call6.i29.i, i32 0, i32 4
  %829 = ptrtoint ptr %i2c_engine_refclk_10khz.i40.i to i32
  call void @__asan_loadN_noabort(i32 %829, i32 2)
  %830 = load i16, ptr %i2c_engine_refclk_10khz.i40.i, align 1
  %conv71.i.i = zext i16 %830 to i32
  %mul72.i.i = mul nuw nsw i32 %conv71.i.i, 10
  %i2c_engine_ref_clk.i41.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 10
  %831 = ptrtoint ptr %i2c_engine_ref_clk.i41.i to i32
  call void @__asan_store4_noabort(i32 %831)
  store i32 %mul72.i.i, ptr %i2c_engine_ref_clk.i41.i, align 4
  %get_smu_clock_info.i42.i = getelementptr inbounds %struct.bios_parser, ptr %call7.i.i, i32 0, i32 6, i32 18
  %832 = ptrtoint ptr %get_smu_clock_info.i42.i to i32
  call void @__asan_load4_noabort(i32 %832)
  %833 = load ptr, ptr %get_smu_clock_info.i42.i, align 4
  %cmp73.not.i.i = icmp eq ptr %833, null
  br i1 %cmp73.not.i.i, label %if.end68.i.i.if.end96.i.i_crit_edge, label %if.then75.i.i

if.end68.i.i.if.end96.i.i_crit_edge:              ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96.i.i

if.then75.i.i:                                    ; preds = %if.end68.i.i
  %834 = zext i32 %revision.sroa.5.0153.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %834, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %revision.sroa.5.0153.i.i, label %if.then75.i.i.if.end96.i.i_crit_edge [
    i32 2, label %if.then75.i.i.if.end96.sink.split.i.i_crit_edge
    i32 3, label %if.then88.i.i
  ]

if.then75.i.i.if.end96.sink.split.i.i_crit_edge:  ; preds = %if.then75.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96.sink.split.i.i

if.then75.i.i.if.end96.i.i_crit_edge:             ; preds = %if.then75.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96.i.i

if.then88.i.i:                                    ; preds = %if.then75.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96.sink.split.i.i

if.end96.sink.split.i.i:                          ; preds = %if.then88.i.i, %if.then75.i.i.if.end96.sink.split.i.i_crit_edge
  %.sink154.i.i = phi i8 [ 5, %if.then88.i.i ], [ 0, %if.then75.i.i.if.end96.sink.split.i.i_crit_edge ]
  %call82.i.i = tail call i32 %833(ptr noundef %call7.i.i, i8 noundef zeroext %.sink154.i.i) #7
  %mul83.i.i = mul i32 %call82.i.i, 10
  %smu_gpu_pll_output_freq.i43.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 4
  %835 = ptrtoint ptr %smu_gpu_pll_output_freq.i43.i to i32
  call void @__asan_store4_noabort(i32 %835)
  store i32 %mul83.i.i, ptr %smu_gpu_pll_output_freq.i43.i, align 8
  br label %if.end96.i.i

if.end96.i.i:                                     ; preds = %if.end96.sink.split.i.i, %if.then75.i.i.if.end96.i.i_crit_edge, %if.end68.i.i.if.end96.i.i_crit_edge
  %board_i2c_feature_id.i.i = getelementptr inbounds %struct.atom_firmware_info_v3_2, ptr %call.i26.i, i32 0, i32 16
  %836 = ptrtoint ptr %board_i2c_feature_id.i.i to i32
  call void @__asan_load1_noabort(i32 %836)
  %837 = load i8, ptr %board_i2c_feature_id.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %837)
  %cmp98.i.i = icmp eq i8 %837, 2
  %oem_i2c_present.i44.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 11
  br i1 %cmp98.i.i, label %if.then100.i.i, label %if.else101.i.i

if.then100.i.i:                                   ; preds = %if.end96.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %838 = ptrtoint ptr %oem_i2c_present.i44.i to i32
  call void @__asan_store1_noabort(i32 %838)
  store i8 1, ptr %oem_i2c_present.i44.i, align 8
  %board_i2c_feature_gpio_id.i.i = getelementptr inbounds %struct.atom_firmware_info_v3_2, ptr %call.i26.i, i32 0, i32 17
  %839 = ptrtoint ptr %board_i2c_feature_gpio_id.i.i to i32
  call void @__asan_load1_noabort(i32 %839)
  %840 = load i8, ptr %board_i2c_feature_gpio_id.i.i, align 1
  %oem_i2c_obj_id.i.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 12
  %841 = ptrtoint ptr %oem_i2c_obj_id.i.i to i32
  call void @__asan_store1_noabort(i32 %841)
  store i8 %840, ptr %oem_i2c_obj_id.i.i, align 1
  br label %bios_parser_get_firmware_info.exit

if.else101.i.i:                                   ; preds = %if.end96.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %842 = ptrtoint ptr %oem_i2c_present.i44.i to i32
  call void @__asan_store1_noabort(i32 %842)
  store i8 0, ptr %oem_i2c_present.i44.i, align 8
  br label %bios_parser_get_firmware_info.exit

if.end.i52.i:                                     ; preds = %sw.bb.i29
  %843 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load ptr, ptr %master_data_tbl.i, align 8
  %firmwareinfo.i48.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %844, i32 0, i32 1, i32 4
  %845 = ptrtoint ptr %firmwareinfo.i48.i to i32
  call void @__asan_loadN_noabort(i32 %845, i32 2)
  %846 = load i16, ptr %firmwareinfo.i48.i, align 1
  %conv.i49.i = zext i16 %846 to i32
  %call.i50.i = tail call ptr @bios_get_image(ptr noundef %call7.i.i, i32 noundef %conv.i49.i, i32 noundef 108) #7
  %tobool1.not.i51.i = icmp eq ptr %call.i50.i, null
  br i1 %tobool1.not.i51.i, label %if.end.i52.i.bios_parser_get_firmware_info.exit_crit_edge, label %if.end3.i54.i

if.end.i52.i.bios_parser_get_firmware_info.exit_crit_edge: ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bios_parser_get_firmware_info.exit

if.end3.i54.i:                                    ; preds = %if.end.i52.i
  %847 = call ptr @memset(ptr %fw_info.i, i32 0, i32 64)
  %848 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %848)
  %849 = load ptr, ptr %master_data_tbl.i, align 8
  %dce_info.i.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %849, i32 0, i32 1, i32 27
  %850 = ptrtoint ptr %dce_info.i.i to i32
  call void @__asan_loadN_noabort(i32 %850, i32 2)
  %851 = load i16, ptr %dce_info.i.i, align 1
  %conv7.i.i = zext i16 %851 to i32
  %call8.i.i = tail call ptr @bios_get_image(ptr noundef %call7.i.i, i32 noundef %conv7.i.i, i32 noundef 4) #7
  %tobool1.not.i.i53.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool1.not.i.i53.i, label %if.end3.i54.i.land.end.i.i_crit_edge, label %get_atom_data_table_revision.exit.i55.i

if.end3.i54.i.land.end.i.i_crit_edge:             ; preds = %if.end3.i54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.i.i

get_atom_data_table_revision.exit.i55.i:          ; preds = %if.end3.i54.i
  %format_revision.i.i.i = getelementptr inbounds %struct.atom_common_table_header, ptr %call8.i.i, i32 0, i32 1
  %852 = ptrtoint ptr %format_revision.i.i.i to i32
  call void @__asan_load1_noabort(i32 %852)
  %853 = load i8, ptr %format_revision.i.i.i, align 1
  %854 = and i8 %853, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %854)
  %cond.i.i = icmp eq i8 %854, 4
  br i1 %cond.i.i, label %sw.bb.i.i, label %get_atom_data_table_revision.exit.i55.i.land.end.i.i_crit_edge

get_atom_data_table_revision.exit.i55.i.land.end.i.i_crit_edge: ; preds = %get_atom_data_table_revision.exit.i55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.i.i

sw.bb.i.i:                                        ; preds = %get_atom_data_table_revision.exit.i55.i
  %content_revision.i.i56.i = getelementptr inbounds %struct.atom_common_table_header, ptr %call8.i.i, i32 0, i32 2
  %855 = ptrtoint ptr %content_revision.i.i56.i to i32
  call void @__asan_load1_noabort(i32 %855)
  %856 = load i8, ptr %content_revision.i.i56.i, align 1
  %857 = and i8 %856, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %857)
  %cond106.i.i = icmp eq i8 %857, 4
  %858 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %858)
  %859 = load ptr, ptr %master_data_tbl.i, align 8
  %dce_info13.i.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %859, i32 0, i32 1, i32 27
  %860 = ptrtoint ptr %dce_info13.i.i to i32
  call void @__asan_loadN_noabort(i32 %860, i32 2)
  %861 = load i16, ptr %dce_info13.i.i, align 1
  %conv14.i57.i = zext i16 %861 to i32
  br i1 %cond106.i.i, label %sw.bb9.i.i, label %sw.default.i.i

sw.bb9.i.i:                                       ; preds = %sw.bb.i.i
  %call15.i58.i = tail call ptr @bios_get_image(ptr noundef %call7.i.i, i32 noundef %conv14.i57.i, i32 noundef 84) #7
  %tobool16.not.i.i = icmp eq ptr %call15.i58.i, null
  br i1 %tobool16.not.i.i, label %sw.bb9.i.i.bios_parser_get_firmware_info.exit_crit_edge, label %if.end18.i.i

sw.bb9.i.i.bios_parser_get_firmware_info.exit_crit_edge: ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bios_parser_get_firmware_info.exit

if.end18.i.i:                                     ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dce_refclk_10khz.i59.i = getelementptr inbounds %struct.atom_display_controller_info_v4_4, ptr %call15.i58.i, i32 0, i32 3
  %862 = ptrtoint ptr %dce_refclk_10khz.i59.i to i32
  call void @__asan_loadN_noabort(i32 %862, i32 2)
  %863 = load i16, ptr %dce_refclk_10khz.i59.i, align 1
  %conv19.i.i = zext i16 %863 to i32
  %mul.i60.i = mul nuw nsw i32 %conv19.i.i, 10
  %864 = ptrtoint ptr %fw_info.i to i32
  call void @__asan_store4_noabort(i32 %864)
  store i32 %mul.i60.i, ptr %fw_info.i, align 4
  %dpphy_refclk_10khz.i61.i = getelementptr inbounds %struct.atom_display_controller_info_v4_4, ptr %call15.i58.i, i32 0, i32 19
  %865 = ptrtoint ptr %dpphy_refclk_10khz.i61.i to i32
  call void @__asan_loadN_noabort(i32 %865, i32 2)
  %866 = load i16, ptr %dpphy_refclk_10khz.i61.i, align 1
  %conv20.i.i = zext i16 %866 to i32
  %mul21.i.i = mul nuw nsw i32 %conv20.i.i, 10
  %dp_phy_ref_clk.i62.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 9
  %867 = ptrtoint ptr %dp_phy_ref_clk.i62.i to i32
  call void @__asan_store4_noabort(i32 %867)
  store i32 %mul21.i.i, ptr %dp_phy_ref_clk.i62.i, align 8
  %i2c_engine_refclk_10khz.i63.i = getelementptr inbounds %struct.atom_display_controller_info_v4_4, ptr %call15.i58.i, i32 0, i32 4
  %868 = ptrtoint ptr %i2c_engine_refclk_10khz.i63.i to i32
  call void @__asan_loadN_noabort(i32 %868, i32 2)
  %869 = load i16, ptr %i2c_engine_refclk_10khz.i63.i, align 1
  %conv22.i64.i = zext i16 %869 to i32
  %mul23.i.i = mul nuw nsw i32 %conv22.i64.i, 10
  %i2c_engine_ref_clk.i65.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 10
  %870 = ptrtoint ptr %i2c_engine_ref_clk.i65.i to i32
  call void @__asan_store4_noabort(i32 %870)
  store i32 %mul23.i.i, ptr %i2c_engine_ref_clk.i65.i, align 4
  %dispclk_pll_vco_freq.i.i = getelementptr inbounds %struct.atom_display_controller_info_v4_4, ptr %call15.i58.i, i32 0, i32 29
  %871 = ptrtoint ptr %dispclk_pll_vco_freq.i.i to i32
  call void @__asan_loadN_noabort(i32 %871, i32 4)
  %872 = load i32, ptr %dispclk_pll_vco_freq.i.i, align 1
  %mul24.i66.i = mul i32 %872, 10
  %smu_gpu_pll_output_freq.i67.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 4
  %873 = ptrtoint ptr %smu_gpu_pll_output_freq.i67.i to i32
  call void @__asan_store4_noabort(i32 %873)
  store i32 %mul24.i66.i, ptr %smu_gpu_pll_output_freq.i67.i, align 8
  br label %sw.epilog90.i.i

sw.default.i.i:                                   ; preds = %sw.bb.i.i
  %call30.i68.i = tail call ptr @bios_get_image(ptr noundef %call7.i.i, i32 noundef %conv14.i57.i, i32 noundef 56) #7
  %tobool31.not.i.i = icmp eq ptr %call30.i68.i, null
  br i1 %tobool31.not.i.i, label %sw.default.i.i.bios_parser_get_firmware_info.exit_crit_edge, label %if.end33.i.i

sw.default.i.i.bios_parser_get_firmware_info.exit_crit_edge: ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bios_parser_get_firmware_info.exit

if.end33.i.i:                                     ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dce_refclk_10khz34.i.i = getelementptr inbounds %struct.atom_display_controller_info_v4_1, ptr %call30.i68.i, i32 0, i32 3
  %874 = ptrtoint ptr %dce_refclk_10khz34.i.i to i32
  call void @__asan_loadN_noabort(i32 %874, i32 2)
  %875 = load i16, ptr %dce_refclk_10khz34.i.i, align 1
  %conv35.i69.i = zext i16 %875 to i32
  %mul36.i.i = mul nuw nsw i32 %conv35.i69.i, 10
  %876 = ptrtoint ptr %fw_info.i to i32
  call void @__asan_store4_noabort(i32 %876)
  store i32 %mul36.i.i, ptr %fw_info.i, align 4
  %dpphy_refclk_10khz39.i.i = getelementptr inbounds %struct.atom_display_controller_info_v4_1, ptr %call30.i68.i, i32 0, i32 17
  %877 = ptrtoint ptr %dpphy_refclk_10khz39.i.i to i32
  call void @__asan_loadN_noabort(i32 %877, i32 2)
  %878 = load i16, ptr %dpphy_refclk_10khz39.i.i, align 1
  %conv40.i.i = zext i16 %878 to i32
  %mul41.i70.i = mul nuw nsw i32 %conv40.i.i, 10
  %dp_phy_ref_clk42.i.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 9
  %879 = ptrtoint ptr %dp_phy_ref_clk42.i.i to i32
  call void @__asan_store4_noabort(i32 %879)
  store i32 %mul41.i70.i, ptr %dp_phy_ref_clk42.i.i, align 8
  %i2c_engine_refclk_10khz43.i.i = getelementptr inbounds %struct.atom_display_controller_info_v4_1, ptr %call30.i68.i, i32 0, i32 4
  %880 = ptrtoint ptr %i2c_engine_refclk_10khz43.i.i to i32
  call void @__asan_loadN_noabort(i32 %880, i32 2)
  %881 = load i16, ptr %i2c_engine_refclk_10khz43.i.i, align 1
  %conv44.i.i = zext i16 %881 to i32
  %mul45.i71.i = mul nuw nsw i32 %conv44.i.i, 10
  %i2c_engine_ref_clk46.i.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 10
  %882 = ptrtoint ptr %i2c_engine_ref_clk46.i.i to i32
  call void @__asan_store4_noabort(i32 %882)
  store i32 %mul45.i71.i, ptr %i2c_engine_ref_clk46.i.i, align 4
  br label %sw.epilog90.i.i

land.end.i.i:                                     ; preds = %get_atom_data_table_revision.exit.i55.i.land.end.i.i_crit_edge, %if.end3.i54.i.land.end.i.i_crit_edge
  %.b141.i.i = load i1, ptr @get_firmware_info_v3_4.__already_done, align 1
  br i1 %.b141.i.i, label %land.end.i.i.if.then86.i.i_crit_edge, label %if.then54.i.i, !prof !35

land.end.i.i.if.then86.i.i_crit_edge:             ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then86.i.i

if.then54.i.i:                                    ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @get_firmware_info_v3_4.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1645, i32 noundef 9, ptr noundef null) #7
  br label %if.then86.i.i

if.then86.i.i:                                    ; preds = %if.then54.i.i, %land.end.i.i.if.then86.i.i_crit_edge
  tail call void @kgdb_breakpoint() #7
  br label %sw.epilog90.i.i

sw.epilog90.i.i:                                  ; preds = %if.then86.i.i, %if.end33.i.i, %if.end18.i.i
  %883 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %883)
  %884 = load ptr, ptr %master_data_tbl.i, align 8
  %smu_info.i72.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %884, i32 0, i32 1, i32 8
  %885 = ptrtoint ptr %smu_info.i72.i to i32
  call void @__asan_loadN_noabort(i32 %885, i32 2)
  %886 = load i16, ptr %smu_info.i72.i, align 1
  %conv94.i.i = zext i16 %886 to i32
  %call95.i.i = tail call ptr @bios_get_image(ptr noundef %call7.i.i, i32 noundef %conv94.i.i, i32 noundef 4) #7
  %bootup_mclk_in10khz.i73.i = getelementptr inbounds %struct.atom_firmware_info_v3_4, ptr %call.i50.i, i32 0, i32 3
  %887 = ptrtoint ptr %bootup_mclk_in10khz.i73.i to i32
  call void @__asan_loadN_noabort(i32 %887, i32 4)
  %888 = load i32, ptr %bootup_mclk_in10khz.i73.i, align 1
  %mul96.i.i = mul i32 %888, 10
  %default_memory_clk.i74.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 7
  %889 = ptrtoint ptr %default_memory_clk.i74.i to i32
  call void @__asan_store4_noabort(i32 %889)
  store i32 %mul96.i.i, ptr %default_memory_clk.i74.i, align 8
  %board_i2c_feature_id.i75.i = getelementptr inbounds %struct.atom_firmware_info_v3_4, ptr %call.i50.i, i32 0, i32 16
  %890 = ptrtoint ptr %board_i2c_feature_id.i75.i to i32
  call void @__asan_load1_noabort(i32 %890)
  %891 = load i8, ptr %board_i2c_feature_id.i75.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %891)
  %cmp.i76.i = icmp eq i8 %891, 2
  %oem_i2c_present.i77.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 11
  br i1 %cmp.i76.i, label %if.then99.i.i, label %if.else.i.i

if.then99.i.i:                                    ; preds = %sw.epilog90.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %892 = ptrtoint ptr %oem_i2c_present.i77.i to i32
  call void @__asan_store1_noabort(i32 %892)
  store i8 1, ptr %oem_i2c_present.i77.i, align 8
  %board_i2c_feature_gpio_id.i78.i = getelementptr inbounds %struct.atom_firmware_info_v3_4, ptr %call.i50.i, i32 0, i32 17
  %893 = ptrtoint ptr %board_i2c_feature_gpio_id.i78.i to i32
  call void @__asan_load1_noabort(i32 %893)
  %894 = load i8, ptr %board_i2c_feature_gpio_id.i78.i, align 1
  %oem_i2c_obj_id.i79.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 12
  %895 = ptrtoint ptr %oem_i2c_obj_id.i79.i to i32
  call void @__asan_store1_noabort(i32 %895)
  store i8 %894, ptr %oem_i2c_obj_id.i79.i, align 1
  br label %bios_parser_get_firmware_info.exit

if.else.i.i:                                      ; preds = %sw.epilog90.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %896 = ptrtoint ptr %oem_i2c_present.i77.i to i32
  call void @__asan_store1_noabort(i32 %896)
  store i8 0, ptr %oem_i2c_present.i77.i, align 8
  br label %bios_parser_get_firmware_info.exit

bios_parser_get_firmware_info.exit:               ; preds = %if.else.i.i, %if.then99.i.i, %sw.default.i.i.bios_parser_get_firmware_info.exit_crit_edge, %sw.bb9.i.i.bios_parser_get_firmware_info.exit_crit_edge, %if.end.i52.i.bios_parser_get_firmware_info.exit_crit_edge, %if.else101.i.i, %if.then100.i.i, %if.then30.i.i.bios_parser_get_firmware_info.exit_crit_edge, %if.then17.i.i.bios_parser_get_firmware_info.exit_crit_edge, %if.end.i33.i.bios_parser_get_firmware_info.exit_crit_edge, %if.end32.i.i, %if.end.i.i32.bios_parser_get_firmware_info.exit_crit_edge, %sw.bb.i29.bios_parser_get_firmware_info.exit_crit_edge, %get_atom_data_table_revision.exit.i26.bios_parser_get_firmware_info.exit_crit_edge, %if.then.i23.bios_parser_get_firmware_info.exit_crit_edge, %bios_parser_create_integrated_info.exit.bios_parser_get_firmware_info.exit_crit_edge
  %cmp118.i = phi i1 [ false, %bios_parser_create_integrated_info.exit.bios_parser_get_firmware_info.exit_crit_edge ], [ false, %if.then.i23.bios_parser_get_firmware_info.exit_crit_edge ], [ false, %get_atom_data_table_revision.exit.i26.bios_parser_get_firmware_info.exit_crit_edge ], [ false, %sw.bb.i29.bios_parser_get_firmware_info.exit_crit_edge ], [ false, %if.end.i.i32.bios_parser_get_firmware_info.exit_crit_edge ], [ true, %if.end32.i.i ], [ false, %if.end.i33.i.bios_parser_get_firmware_info.exit_crit_edge ], [ false, %if.then17.i.i.bios_parser_get_firmware_info.exit_crit_edge ], [ false, %if.then30.i.i.bios_parser_get_firmware_info.exit_crit_edge ], [ true, %if.then100.i.i ], [ true, %if.else101.i.i ], [ false, %if.end.i52.i.bios_parser_get_firmware_info.exit_crit_edge ], [ false, %sw.bb9.i.i.bios_parser_get_firmware_info.exit_crit_edge ], [ false, %sw.default.i.i.bios_parser_get_firmware_info.exit_crit_edge ], [ true, %if.then99.i.i ], [ true, %if.else.i.i ]
  %fw_info_valid.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 8
  %frombool.i = zext i1 %cmp118.i to i8
  %897 = ptrtoint ptr %fw_info_valid.i to i32
  call void @__asan_store1_noabort(i32 %897)
  store i8 %frombool.i, ptr %fw_info_valid.i, align 4
  %vram_info.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 9
  %tobool.not.i7 = icmp eq ptr %vram_info.i, null
  br i1 %tobool.not.i7, label %bios_parser_get_firmware_info.exit.cleanup_crit_edge, label %land.lhs.true.i

bios_parser_get_firmware_info.exit.cleanup_crit_edge: ; preds = %bios_parser_get_firmware_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i:                                  ; preds = %bios_parser_get_firmware_info.exit
  %898 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %898)
  %899 = load ptr, ptr %master_data_tbl.i, align 8
  %vram_info.i9 = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %899, i32 0, i32 1, i32 28
  %900 = ptrtoint ptr %vram_info.i9 to i32
  call void @__asan_loadN_noabort(i32 %900, i32 2)
  %901 = load i16, ptr %vram_info.i9, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %901)
  %tobool1.not.i10 = icmp eq i16 %901, 0
  br i1 %tobool1.not.i10, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  %conv.i11 = zext i16 %901 to i32
  %call.i12 = tail call ptr @bios_get_image(ptr noundef %call7.i.i, i32 noundef %conv.i11, i32 noundef 4) #7
  %tobool1.not.i.i = icmp eq ptr %call.i12, null
  br i1 %tobool1.not.i.i, label %if.then.i.cleanup_crit_edge, label %get_atom_data_table_revision.exit.i14

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

get_atom_data_table_revision.exit.i14:            ; preds = %if.then.i
  %format_revision.i.i13 = getelementptr inbounds %struct.atom_common_table_header, ptr %call.i12, i32 0, i32 1
  %902 = ptrtoint ptr %format_revision.i.i13 to i32
  call void @__asan_load1_noabort(i32 %902)
  %903 = load i8, ptr %format_revision.i.i13, align 1
  %904 = and i8 %903, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %904)
  %cond.i = icmp eq i8 %904, 2
  br i1 %cond.i, label %sw.bb.i, label %get_atom_data_table_revision.exit.i14.cleanup_crit_edge

get_atom_data_table_revision.exit.i14.cleanup_crit_edge: ; preds = %get_atom_data_table_revision.exit.i14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %get_atom_data_table_revision.exit.i14
  %content_revision.i.i15 = getelementptr inbounds %struct.atom_common_table_header, ptr %call.i12, i32 0, i32 2
  %905 = ptrtoint ptr %content_revision.i.i15 to i32
  call void @__asan_load1_noabort(i32 %905)
  %906 = load i8, ptr %content_revision.i.i15, align 1
  %907 = and i8 %906, 63
  %and6.i.i = zext i8 %907 to i32
  %908 = zext i32 %and6.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %908, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %and6.i.i, label %sw.bb.i.cleanup_crit_edge [
    i32 3, label %sw.bb6.i
    i32 4, label %sw.bb8.i
    i32 5, label %sw.bb10.i
  ]

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb6.i:                                         ; preds = %sw.bb.i
  %909 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %909)
  %910 = load ptr, ptr %master_data_tbl.i, align 8
  %vram_info.i.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %910, i32 0, i32 1, i32 28
  %911 = ptrtoint ptr %vram_info.i.i to i32
  call void @__asan_loadN_noabort(i32 %911, i32 2)
  %912 = load i16, ptr %vram_info.i.i, align 1
  %conv.i.i = zext i16 %912 to i32
  %call.i.i = tail call ptr @bios_get_image(ptr noundef %call7.i.i, i32 noundef %conv.i.i, i32 noundef 856) #7
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %sw.bb6.i.cleanup_crit_edge, label %if.end.i.i

sw.bb6.i.cleanup_crit_edge:                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #9
  %channel_num.i.i = getelementptr inbounds %struct.atom_vram_info_header_v2_3, ptr %call.i.i, i32 0, i32 13, i32 0, i32 8
  %913 = ptrtoint ptr %channel_num.i.i to i32
  call void @__asan_load1_noabort(i32 %913)
  %914 = load i8, ptr %channel_num.i.i, align 1
  %conv2.i.i = zext i8 %914 to i32
  %915 = ptrtoint ptr %vram_info.i to i32
  call void @__asan_store4_noabort(i32 %915)
  store i32 %conv2.i.i, ptr %vram_info.i, align 8
  %channel_width.i.i = getelementptr inbounds %struct.atom_vram_info_header_v2_3, ptr %call.i.i, i32 0, i32 13, i32 0, i32 9
  br label %cleanup.sink.split.i

sw.bb8.i:                                         ; preds = %sw.bb.i
  %916 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %916)
  %917 = load ptr, ptr %master_data_tbl.i, align 8
  %vram_info.i2.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %917, i32 0, i32 1, i32 28
  %918 = ptrtoint ptr %vram_info.i2.i to i32
  call void @__asan_loadN_noabort(i32 %918, i32 2)
  %919 = load i16, ptr %vram_info.i2.i, align 1
  %conv.i3.i = zext i16 %919 to i32
  %call.i4.i = tail call ptr @bios_get_image(ptr noundef %call7.i.i, i32 noundef %conv.i3.i, i32 noundef 984) #7
  %cmp.i5.i = icmp eq ptr %call.i4.i, null
  br i1 %cmp.i5.i, label %sw.bb8.i.cleanup_crit_edge, label %if.end.i13.i

sw.bb8.i.cleanup_crit_edge:                       ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i13.i:                                     ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #9
  %channel_num.i6.i = getelementptr inbounds %struct.atom_vram_info_header_v2_4, ptr %call.i4.i, i32 0, i32 13, i32 0, i32 8
  %920 = ptrtoint ptr %channel_num.i6.i to i32
  call void @__asan_load1_noabort(i32 %920)
  %921 = load i8, ptr %channel_num.i6.i, align 1
  %conv2.i7.i = zext i8 %921 to i32
  %922 = ptrtoint ptr %vram_info.i to i32
  call void @__asan_store4_noabort(i32 %922)
  store i32 %conv2.i7.i, ptr %vram_info.i, align 8
  %channel_width.i8.i = getelementptr inbounds %struct.atom_vram_info_header_v2_4, ptr %call.i4.i, i32 0, i32 13, i32 0, i32 9
  br label %cleanup.sink.split.i

sw.bb10.i:                                        ; preds = %sw.bb.i
  %923 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %923)
  %924 = load ptr, ptr %master_data_tbl.i, align 8
  %vram_info.i16.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %924, i32 0, i32 1, i32 28
  %925 = ptrtoint ptr %vram_info.i16.i to i32
  call void @__asan_loadN_noabort(i32 %925, i32 2)
  %926 = load i16, ptr %vram_info.i16.i, align 1
  %conv.i17.i = zext i16 %926 to i32
  %call.i18.i = tail call ptr @bios_get_image(ptr noundef %call7.i.i, i32 noundef %conv.i17.i, i32 noundef 1368) #7
  %cmp.i19.i = icmp eq ptr %call.i18.i, null
  br i1 %cmp.i19.i, label %sw.bb10.i.cleanup_crit_edge, label %if.end.i27.i

sw.bb10.i.cleanup_crit_edge:                      ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i27.i:                                     ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #9
  %channel_num.i20.i = getelementptr inbounds %struct.atom_vram_info_header_v2_5, ptr %call.i18.i, i32 0, i32 13, i32 0, i32 6
  %927 = ptrtoint ptr %channel_num.i20.i to i32
  call void @__asan_load1_noabort(i32 %927)
  %928 = load i8, ptr %channel_num.i20.i, align 1
  %conv2.i21.i = zext i8 %928 to i32
  %929 = ptrtoint ptr %vram_info.i to i32
  call void @__asan_store4_noabort(i32 %929)
  store i32 %conv2.i21.i, ptr %vram_info.i, align 8
  %channel_width.i22.i = getelementptr inbounds %struct.atom_vram_info_header_v2_5, ptr %call.i18.i, i32 0, i32 13, i32 0, i32 7
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end.i27.i, %if.end.i13.i, %if.end.i.i
  %channel_width.i22.sink.i = phi ptr [ %channel_width.i22.i, %if.end.i27.i ], [ %channel_width.i8.i, %if.end.i13.i ], [ %channel_width.i.i, %if.end.i.i ]
  %930 = ptrtoint ptr %channel_width.i22.sink.i to i32
  call void @__asan_load1_noabort(i32 %930)
  %931 = load i8, ptr %channel_width.i22.sink.i, align 1
  %conv5.i23.i = zext i8 %931 to i32
  %shl.i24.i = shl nuw i32 1, %conv5.i23.i
  %div.i25.i = sdiv i32 %shl.i24.i, 8
  %dram_channel_width_bytes.i26.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 9, i32 1
  %932 = ptrtoint ptr %dram_channel_width_bytes.i26.i to i32
  call void @__asan_store4_noabort(i32 %932)
  store i32 %div.i25.i, ptr %dram_channel_width_bytes.i26.i, align 4
  br label %cleanup

land.end.i:                                       ; preds = %if.end46.i
  %.b168.i = load i1, ptr @bios_parser2_construct.__already_done, align 1
  br i1 %.b168.i, label %land.end.i.if.then106.i_crit_edge, label %if.then74.i, !prof !35

land.end.i.if.then106.i_crit_edge:                ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then106.i

if.then74.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @bios_parser2_construct.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3008, i32 noundef 9, ptr noundef null) #7
  br label %if.then106.i

if.then106.i:                                     ; preds = %if.then74.i, %land.end.i.if.then106.i_crit_edge
  tail call void @kgdb_breakpoint() #7
  br label %if.end3

if.end3:                                          ; preds = %if.then106.i, %if.then60.i.if.end3_crit_edge, %if.end40.i.if.end3_crit_edge, %if.end34.i.if.end3_crit_edge, %if.end27.i.if.end3_crit_edge, %get_atom_data_table_revision.exit.i.if.end3_crit_edge, %if.end16.i.if.end3_crit_edge, %if.end3.i.if.end3_crit_edge, %if.end.i.if.end3_crit_edge, %if.end.if.end3_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %cleanup.sink.split.i, %sw.bb10.i.cleanup_crit_edge, %sw.bb8.i.cleanup_crit_edge, %sw.bb6.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %get_atom_data_table_revision.exit.i14.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %bios_parser_get_firmware_info.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end3 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %cleanup.sink.split.i ], [ %call7.i.i, %sw.bb10.i.cleanup_crit_edge ], [ %call7.i.i, %sw.bb8.i.cleanup_crit_edge ], [ %call7.i.i, %sw.bb6.i.cleanup_crit_edge ], [ %call7.i.i, %sw.bb.i.cleanup_crit_edge ], [ %call7.i.i, %get_atom_data_table_revision.exit.i14.cleanup_crit_edge ], [ %call7.i.i, %if.then.i.cleanup_crit_edge ], [ %call7.i.i, %land.lhs.true.i.cleanup_crit_edge ], [ %call7.i.i, %bios_parser_get_firmware_info.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bios_get_image(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_firmware_parser_init_cmd_tbl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dal_bios_parser_init_cmd_tbl_helper2(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @bios_parser_get_connectors_number(ptr nocapture noundef readonly %dcb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %number_of_path = getelementptr inbounds %struct.display_object_info_table_v1_4, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %number_of_path to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %number_of_path, align 1
  %conv = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp12.not = icmp eq i8 %4, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %inc6, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %count.013 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %encoderobjid = getelementptr %struct.display_object_info_table_v1_4, ptr %2, i32 0, i32 4, i32 %i.014, i32 2
  %5 = ptrtoint ptr %encoderobjid to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %encoderobjid, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp4.not = icmp ne i16 %6, 0
  %inc = zext i1 %cmp4.not to i32
  %spec.select = add i32 %count.013, %inc
  %inc6 = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc6, %conv
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast = trunc i32 %spec.select to i8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %count.0.lcssa = phi i8 [ 0, %entry.for.end_crit_edge ], [ %phi.cast, %for.end.loopexit ]
  ret i8 %count.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_get_connector_id(ptr nocapture noundef readonly %dcb, i8 noundef zeroext %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %number_of_path = getelementptr inbounds %struct.display_object_info_table_v1_4, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %number_of_path to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %number_of_path, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %i)
  %cmp = icmp ugt i8 %4, %i
  br i1 %cmp, label %if.then, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then:                                          ; preds = %entry
  %conv1 = zext i8 %i to i32
  %encoderobjid = getelementptr %struct.display_object_info_table_v1_4, ptr %2, i32 0, i32 4, i32 %conv1, i32 2
  %5 = ptrtoint ptr %encoderobjid to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %encoderobjid, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp4.not = icmp eq i16 %6, 0
  br i1 %cmp4.not, label %if.then.if.end21_crit_edge, label %land.lhs.true

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true:                                    ; preds = %if.then
  %arrayidx = getelementptr %struct.display_object_info_table_v1_4, ptr %2, i32 0, i32 4, i32 %conv1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp10.not = icmp eq i16 %8, 0
  br i1 %cmp10.not, label %land.lhs.true.if.end21_crit_edge, label %if.then12

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %conv9 = zext i16 %8 to i32
  %call19 = tail call i32 @object_id_from_bios_object_id(i32 noundef %conv9) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then12, %land.lhs.true.if.end21_crit_edge, %if.then.if.end21_crit_edge, %entry.if.end21_crit_edge
  %retval.sroa.0.0 = phi i32 [ %call19, %if.then12 ], [ 0, %land.lhs.true.if.end21_crit_edge ], [ 0, %if.then.if.end21_crit_edge ], [ 0, %entry.if.end21_crit_edge ]
  ret i32 %retval.sroa.0.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_get_src_obj(ptr nocapture noundef readonly %dcb, [1 x i32] %object_id.coerce, i32 noundef %index, ptr noundef writeonly %src_object_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %object_id.coerce.fca.0.extract = extractvalue [1 x i32] %object_id.coerce, 0
  %tobool.not = icmp eq ptr %src_object_id, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %bf.lshr = lshr i32 %object_id.coerce.fca.0.extract, 16
  %bf.clear = and i32 %bf.lshr, 15
  %0 = zext i32 %bf.clear to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %bf.clear, label %if.end.cleanup_crit_edge [
    i32 2, label %for.cond.preheader
    i32 3, label %for.cond34.preheader
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond34.preheader:                             ; preds = %if.end
  %1 = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %number_of_path35116 = getelementptr inbounds %struct.display_object_info_table_v1_4, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %number_of_path35116 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %number_of_path35116, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp37118.not = icmp eq i8 %5, 0
  br i1 %cmp37118.not, label %for.cond34.preheader.cleanup_crit_edge, label %for.cond34.preheader.for.body39_crit_edge

for.cond34.preheader.for.body39_crit_edge:        ; preds = %for.cond34.preheader
  br label %for.body39

for.cond34.preheader.cleanup_crit_edge:           ; preds = %for.cond34.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %6 = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %number_of_path121 = getelementptr inbounds %struct.display_object_info_table_v1_4, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %number_of_path121 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %number_of_path121, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp123.not = icmp eq i8 %10, 0
  br i1 %cmp123.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %11 = phi ptr [ %18, %for.inc.for.body_crit_edge ], [ %8, %for.cond.preheader.for.body_crit_edge ]
  %i.0124 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %encoderobjid = getelementptr %struct.display_object_info_table_v1_4, ptr %11, i32 0, i32 4, i32 %i.0124, i32 2
  %12 = ptrtoint ptr %encoderobjid to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %encoderobjid, align 1
  %conv3 = zext i16 %13 to i32
  %call = tail call i32 @object_id_from_bios_object_id(i32 noundef %conv3) #7
  %14 = and i32 %call, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %14)
  %cmp11 = icmp eq i32 %14, 131072
  %cmp17.unshifted = xor i32 %call, %object_id.coerce.fca.0.extract
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %cmp17.unshifted)
  %cmp17 = icmp ult i32 %cmp17.unshifted, 16777216
  %or.cond = select i1 %cmp11, i1 %cmp17, i1 false
  %15 = and i32 %cmp17.unshifted, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp26 = icmp eq i32 %15, 0
  %or.cond113 = select i1 %or.cond, i1 %cmp26, i1 false
  br i1 %or.cond113, label %if.then28, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then28:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = tail call i32 @object_id_from_bios_object_id(i32 noundef 4352) #7
  %16 = ptrtoint ptr %src_object_id to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call30, ptr %src_object_id, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then28, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0124, 1
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %6, align 4
  %number_of_path = getelementptr inbounds %struct.display_object_info_table_v1_4, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %number_of_path to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %number_of_path, align 1
  %conv = zext i8 %20 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body39:                                       ; preds = %for.inc79.for.body39_crit_edge, %for.cond34.preheader.for.body39_crit_edge
  %21 = phi ptr [ %32, %for.inc79.for.body39_crit_edge ], [ %3, %for.cond34.preheader.for.body39_crit_edge ]
  %i.1119 = phi i32 [ %inc80, %for.inc79.for.body39_crit_edge ], [ 0, %for.cond34.preheader.for.body39_crit_edge ]
  %arrayidx42 = getelementptr %struct.display_object_info_table_v1_4, ptr %21, i32 0, i32 4, i32 %i.1119
  %22 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %arrayidx42, align 1
  %conv43 = zext i16 %23 to i32
  %call44 = tail call i32 @object_id_from_bios_object_id(i32 noundef %conv43) #7
  %24 = and i32 %call44, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %24)
  %cmp52 = icmp eq i32 %24, 196608
  %cmp59.unshifted = xor i32 %call44, %object_id.coerce.fca.0.extract
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %cmp59.unshifted)
  %cmp59 = icmp ult i32 %cmp59.unshifted, 16777216
  %or.cond112 = select i1 %cmp52, i1 %cmp59, i1 false
  %25 = and i32 %cmp59.unshifted, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp68 = icmp eq i32 %25, 0
  %or.cond114 = select i1 %or.cond112, i1 %cmp68, i1 false
  br i1 %or.cond114, label %if.then70, label %for.body39.for.inc79_crit_edge

for.body39.for.inc79_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc79

if.then70:                                        ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %encoderobjid74 = getelementptr %struct.display_object_info_table_v1_4, ptr %27, i32 0, i32 4, i32 %i.1119, i32 2
  %28 = ptrtoint ptr %encoderobjid74 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %encoderobjid74, align 1
  %conv75 = zext i16 %29 to i32
  %call76 = tail call i32 @object_id_from_bios_object_id(i32 noundef %conv75) #7
  %30 = ptrtoint ptr %src_object_id to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call76, ptr %src_object_id, align 4
  br label %for.inc79

for.inc79:                                        ; preds = %if.then70, %for.body39.for.inc79_crit_edge
  %inc80 = add nuw nsw i32 %i.1119, 1
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %number_of_path35 = getelementptr inbounds %struct.display_object_info_table_v1_4, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %number_of_path35 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %number_of_path35, align 1
  %conv36 = zext i8 %34 to i32
  %cmp37 = icmp ult i32 %inc80, %conv36
  br i1 %cmp37, label %for.inc79.for.body39_crit_edge, label %for.inc79.cleanup_crit_edge

for.inc79.cleanup_crit_edge:                      ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc79.for.body39_crit_edge:                   ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body39

cleanup:                                          ; preds = %for.inc79.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %for.cond34.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.cond34.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ 0, %for.inc79.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_get_i2c_info(ptr noundef %dcb, [1 x i32] %id.coerce, ptr noundef writeonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id.coerce.fca.0.extract = extractvalue [1 x i32] %id.coerce, 0
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = and i32 %id.coerce.fca.0.extract, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 327680, i32 %0)
  %cmp = icmp eq i32 %0, 327680
  br i1 %cmp, label %if.end.i, label %if.end7

if.end.i:                                         ; preds = %if.end
  %bf.lshr3 = lshr i32 %id.coerce.fca.0.extract, 24
  %conv = trunc i32 %bf.lshr3 to i8
  %master_data_tbl.i = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 3
  %1 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %master_data_tbl.i, align 4
  %gpio_pin_lut.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %2, i32 0, i32 1, i32 12
  %3 = ptrtoint ptr %gpio_pin_lut.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %gpio_pin_lut.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool1.not.i = icmp eq i16 %4, 0
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %conv.i = zext i16 %4 to i32
  %call.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv.i, i32 noundef 68) #7
  %tobool7.not.i = icmp eq ptr %call.i, null
  br i1 %tobool7.not.i, label %if.end3.i.cleanup_crit_edge, label %if.end9.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9.i:                                        ; preds = %if.end3.i
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %call.i, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #7
  %conv10.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %7)
  %cmp.i = icmp ult i16 %7, 12
  br i1 %cmp.i, label %if.end9.i.cleanup_crit_edge, label %if.end13.i

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13.i:                                       ; preds = %if.end9.i
  %content_revision.i = getelementptr inbounds %struct.atom_common_table_header, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %content_revision.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %content_revision.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp16.not.i = icmp eq i8 %9, 1
  br i1 %cmp16.not.i, label %if.end19.i, label %if.end13.i.cleanup_crit_edge

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19.i:                                       ; preds = %if.end13.i
  %sub.i = add nsw i32 %conv10.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i)
  %cmp23113.not.i = icmp ult i32 %sub.i, 8
  br i1 %cmp23113.not.i, label %if.end19.i.cleanup_crit_edge, label %for.body.lr.ph.i

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end19.i
  %div110.i = lshr i32 %sub.i, 3
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div110.i, i32 1) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %table_index.0114.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %gpio_id.i = getelementptr %struct.atom_gpio_pin_lut_v2_1, ptr %call.i, i32 0, i32 1, i32 %table_index.0114.i, i32 3
  %10 = ptrtoint ptr %gpio_id.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %gpio_id.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %conv)
  %12 = icmp eq i8 %11, %conv
  br i1 %12, label %13, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %table_index.0114.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

13:                                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_hw_assist.i = getelementptr inbounds %struct.graphics_object_i2c_info, ptr %info, i32 0, i32 1
  %.lobit.i = lshr i8 %conv, 7
  %14 = ptrtoint ptr %i2c_hw_assist.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.lobit.i, ptr %i2c_hw_assist.i, align 4
  %15 = and i32 %bf.lshr3, 15
  %i2c_line.i = getelementptr inbounds %struct.graphics_object_i2c_info, ptr %info, i32 0, i32 2
  %16 = ptrtoint ptr %i2c_line.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %i2c_line.i, align 4
  %17 = lshr i32 %id.coerce.fca.0.extract, 28
  %18 = and i32 %17, 7
  %i2c_engine_id.i = getelementptr inbounds %struct.graphics_object_i2c_info, ptr %info, i32 0, i32 3
  %19 = ptrtoint ptr %i2c_engine_id.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %i2c_engine_id.i, align 4
  %i2c_slave_address.i = getelementptr inbounds %struct.graphics_object_i2c_info, ptr %info, i32 0, i32 4
  %20 = ptrtoint ptr %i2c_slave_address.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %i2c_slave_address.i, align 4
  %arrayidx72.i = getelementptr %struct.atom_gpio_pin_lut_v2_1, ptr %call.i, i32 0, i32 1, i32 %table_index.0114.i
  %21 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %arrayidx72.i, align 1
  %conv73.i = trunc i32 %22 to i16
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv73.i) #7
  %conv74.i = zext i16 %23 to i32
  %clk_a_register_index.i = getelementptr inbounds %struct.gpio_info, ptr %info, i32 0, i32 3
  %24 = ptrtoint ptr %clk_a_register_index.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv74.i, ptr %clk_a_register_index.i, align 4
  %gpio_bitshift.i = getelementptr %struct.atom_gpio_pin_lut_v2_1, ptr %call.i, i32 0, i32 1, i32 %table_index.0114.i, i32 1
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end
  %call9 = tail call fastcc ptr @get_bios_object(ptr noundef %dcb, [1 x i32] %id.coerce)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %disp_recordoffset = getelementptr inbounds %struct.atom_display_object_path_v2, ptr %call9, i32 0, i32 1
  %25 = ptrtoint ptr %disp_recordoffset to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %disp_recordoffset, align 1
  %conv13 = zext i16 %26 to i32
  %object_info_tbl_offset = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 2
  %27 = ptrtoint ptr %object_info_tbl_offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %object_info_tbl_offset, align 4
  %add = add i32 %28, %conv13
  %call14119 = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %add, i32 noundef 2) #7
  %tobool15.not120 = icmp eq ptr %call14119, null
  br i1 %tobool15.not120, label %if.end12.cleanup_crit_edge, label %if.end17.lr.ph

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17.lr.ph:                                   ; preds = %if.end12
  %master_data_tbl.i64 = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 3
  br label %if.end17

if.end17:                                         ; preds = %if.end38.if.end17_crit_edge, %if.end17.lr.ph
  %call14122 = phi ptr [ %call14119, %if.end17.lr.ph ], [ %call14, %if.end38.if.end17_crit_edge ]
  %offset.0121 = phi i32 [ %add, %if.end17.lr.ph ], [ %add41, %if.end38.if.end17_crit_edge ]
  %29 = ptrtoint ptr %call14122 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %call14122, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %cmp19 = icmp eq i8 %30, -1
  br i1 %cmp19, label %if.end17.cleanup_crit_edge, label %lor.lhs.false

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end17
  %record_size = getelementptr inbounds %struct.atom_common_record_header, ptr %call14122, i32 0, i32 1
  %31 = ptrtoint ptr %record_size to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %record_size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool21.not = icmp eq i8 %32, 0
  br i1 %tobool21.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end23

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp26 = icmp eq i8 %30, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %32)
  %cmp30 = icmp ugt i8 %32, 3
  %or.cond = select i1 %cmp26, i1 %cmp30, i1 false
  br i1 %or.cond, label %if.end.i67, label %if.end23.if.end38_crit_edge

if.end23.if.end38_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.end.i67:                                       ; preds = %if.end23
  %33 = ptrtoint ptr %master_data_tbl.i64 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %master_data_tbl.i64, align 4
  %gpio_pin_lut.i65 = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %34, i32 0, i32 1, i32 12
  %35 = ptrtoint ptr %gpio_pin_lut.i65 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %gpio_pin_lut.i65, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool1.not.i66 = icmp eq i16 %36, 0
  br i1 %tobool1.not.i66, label %if.end.i67.if.end38_crit_edge, label %if.end3.i71

if.end.i67.if.end38_crit_edge:                    ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.end3.i71:                                      ; preds = %if.end.i67
  %conv.i68 = zext i16 %36 to i32
  %call.i69 = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv.i68, i32 noundef 68) #7
  %tobool7.not.i70 = icmp eq ptr %call.i69, null
  br i1 %tobool7.not.i70, label %if.end3.i71.if.end38_crit_edge, label %if.end9.i74

if.end3.i71.if.end38_crit_edge:                   ; preds = %if.end3.i71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.end9.i74:                                      ; preds = %if.end3.i71
  %37 = ptrtoint ptr %call.i69 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %call.i69, align 1
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #7
  %conv10.i72 = zext i16 %39 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %39)
  %cmp.i73 = icmp ult i16 %39, 12
  br i1 %cmp.i73, label %if.end9.i74.if.end38_crit_edge, label %if.end13.i77

if.end9.i74.if.end38_crit_edge:                   ; preds = %if.end9.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.end13.i77:                                     ; preds = %if.end9.i74
  %content_revision.i75 = getelementptr inbounds %struct.atom_common_table_header, ptr %call.i69, i32 0, i32 2
  %40 = ptrtoint ptr %content_revision.i75 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %content_revision.i75, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %41)
  %cmp16.not.i76 = icmp eq i8 %41, 1
  br i1 %cmp16.not.i76, label %if.end19.i80, label %if.end13.i77.if.end38_crit_edge

if.end13.i77.if.end38_crit_edge:                  ; preds = %if.end13.i77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.end19.i80:                                     ; preds = %if.end13.i77
  %sub.i78 = add nsw i32 %conv10.i72, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i78)
  %cmp23113.not.i79 = icmp ult i32 %sub.i78, 8
  br i1 %cmp23113.not.i79, label %if.end19.i80.if.end38_crit_edge, label %for.body.lr.ph.i84

if.end19.i80.if.end38_crit_edge:                  ; preds = %if.end19.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

for.body.lr.ph.i84:                               ; preds = %if.end19.i80
  %div110.i81 = lshr i32 %sub.i78, 3
  %i2c_id.i82 = getelementptr inbounds %struct.atom_i2c_record, ptr %call14122, i32 0, i32 1
  %42 = ptrtoint ptr %i2c_id.i82 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %i2c_id.i82, align 1
  %umax.i83 = tail call i32 @llvm.umax.i32(i32 %div110.i81, i32 1) #7
  br label %for.body.i87

for.body.i87:                                     ; preds = %for.inc.i90.for.body.i87_crit_edge, %for.body.lr.ph.i84
  %table_index.0114.i85 = phi i32 [ 0, %for.body.lr.ph.i84 ], [ %inc.i88, %for.inc.i90.for.body.i87_crit_edge ]
  %gpio_id.i86 = getelementptr %struct.atom_gpio_pin_lut_v2_1, ptr %call.i69, i32 0, i32 1, i32 %table_index.0114.i85, i32 3
  %44 = ptrtoint ptr %gpio_id.i86 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %gpio_id.i86, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %45)
  %46 = icmp eq i8 %43, %45
  br i1 %46, label %get_gpio_i2c_info.exit108, label %for.inc.i90

for.inc.i90:                                      ; preds = %for.body.i87
  %inc.i88 = add nuw nsw i32 %table_index.0114.i85, 1
  %exitcond.not.i89 = icmp eq i32 %inc.i88, %umax.i83
  br i1 %exitcond.not.i89, label %for.inc.i90.if.end38_crit_edge, label %for.inc.i90.for.body.i87_crit_edge

for.inc.i90.for.body.i87_crit_edge:               ; preds = %for.inc.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i87

for.inc.i90.if.end38_crit_edge:                   ; preds = %for.inc.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

get_gpio_i2c_info.exit108:                        ; preds = %for.body.i87
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_id.i82.le = getelementptr inbounds %struct.atom_i2c_record, ptr %call14122, i32 0, i32 1
  %i2c_hw_assist.i91 = getelementptr inbounds %struct.graphics_object_i2c_info, ptr %info, i32 0, i32 1
  %.lobit.i92 = lshr i8 %43, 7
  %47 = ptrtoint ptr %i2c_hw_assist.i91 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %.lobit.i92, ptr %i2c_hw_assist.i91, align 4
  %48 = ptrtoint ptr %i2c_id.i82.le to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %i2c_id.i82.le, align 1
  %50 = and i8 %49, 15
  %and66.i93 = zext i8 %50 to i32
  %i2c_line.i94 = getelementptr inbounds %struct.graphics_object_i2c_info, ptr %info, i32 0, i32 2
  %51 = ptrtoint ptr %i2c_line.i94 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and66.i93, ptr %i2c_line.i94, align 4
  %52 = load i8, ptr %i2c_id.i82.le, align 1
  %53 = lshr i8 %52, 4
  %54 = and i8 %53, 7
  %55 = zext i8 %54 to i32
  %i2c_engine_id.i95 = getelementptr inbounds %struct.graphics_object_i2c_info, ptr %info, i32 0, i32 3
  %56 = ptrtoint ptr %i2c_engine_id.i95 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %i2c_engine_id.i95, align 4
  %i2c_slave_addr.i96 = getelementptr inbounds %struct.atom_i2c_record, ptr %call14122, i32 0, i32 2
  %57 = ptrtoint ptr %i2c_slave_addr.i96 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %i2c_slave_addr.i96, align 1
  %conv70.i97 = zext i8 %58 to i32
  %i2c_slave_address.i98 = getelementptr inbounds %struct.graphics_object_i2c_info, ptr %info, i32 0, i32 4
  %59 = ptrtoint ptr %i2c_slave_address.i98 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv70.i97, ptr %i2c_slave_address.i98, align 4
  %arrayidx72.i99 = getelementptr %struct.atom_gpio_pin_lut_v2_1, ptr %call.i69, i32 0, i32 1, i32 %table_index.0114.i85
  %60 = ptrtoint ptr %arrayidx72.i99 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %61 = load i32, ptr %arrayidx72.i99, align 1
  %conv73.i100 = trunc i32 %61 to i16
  %62 = tail call i16 @llvm.bswap.i16(i16 %conv73.i100) #7
  %conv74.i101 = zext i16 %62 to i32
  %clk_a_register_index.i102 = getelementptr inbounds %struct.gpio_info, ptr %info, i32 0, i32 3
  %63 = ptrtoint ptr %clk_a_register_index.i102 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv74.i101, ptr %clk_a_register_index.i102, align 4
  %gpio_bitshift.i103 = getelementptr %struct.atom_gpio_pin_lut_v2_1, ptr %call.i69, i32 0, i32 1, i32 %table_index.0114.i85, i32 1
  br label %cleanup.sink.split

if.end38:                                         ; preds = %for.inc.i90.if.end38_crit_edge, %if.end19.i80.if.end38_crit_edge, %if.end13.i77.if.end38_crit_edge, %if.end9.i74.if.end38_crit_edge, %if.end3.i71.if.end38_crit_edge, %if.end.i67.if.end38_crit_edge, %if.end23.if.end38_crit_edge
  %64 = ptrtoint ptr %record_size to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %record_size, align 1
  %conv40 = zext i8 %65 to i32
  %add41 = add i32 %offset.0121, %conv40
  %call14 = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %add41, i32 noundef 2) #7
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end38.cleanup_crit_edge, label %if.end38.if.end17_crit_edge

if.end38.if.end17_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %get_gpio_i2c_info.exit108, %13
  %gpio_bitshift.i103.sink = phi ptr [ %gpio_bitshift.i103, %get_gpio_i2c_info.exit108 ], [ %gpio_bitshift.i, %13 ]
  %66 = ptrtoint ptr %gpio_bitshift.i103.sink to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %gpio_bitshift.i103.sink, align 1
  %conv77.i104 = zext i8 %67 to i32
  %clk_a_shift.i105 = getelementptr inbounds %struct.gpio_info, ptr %info, i32 0, i32 11
  %68 = ptrtoint ptr %clk_a_shift.i105 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv77.i104, ptr %clk_a_shift.i105, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end38.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end19.i.cleanup_crit_edge, %if.end13.i.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end7.cleanup_crit_edge ], [ 4, %if.end.i.cleanup_crit_edge ], [ 4, %if.end3.i.cleanup_crit_edge ], [ 4, %if.end9.i.cleanup_crit_edge ], [ 4, %if.end13.i.cleanup_crit_edge ], [ 4, %if.end19.i.cleanup_crit_edge ], [ 2, %if.end12.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ 4, %for.inc.i.cleanup_crit_edge ], [ 2, %if.end38.cleanup_crit_edge ], [ 4, %if.end17.cleanup_crit_edge ], [ 4, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_get_hpd_info(ptr noundef %dcb, [1 x i32] %id.coerce, ptr noundef writeonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc ptr @get_bios_object(ptr noundef %dcb, [1 x i32] %id.coerce)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %disp_recordoffset.i = getelementptr inbounds %struct.atom_display_object_path_v2, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %disp_recordoffset.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %disp_recordoffset.i, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #7
  %conv.i = zext i16 %2 to i32
  %object_info_tbl_offset.i = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 2
  %3 = ptrtoint ptr %object_info_tbl_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %object_info_tbl_offset.i, align 4
  %add.i = add i32 %4, %conv.i
  %call32.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %add.i, i32 noundef 2) #7
  %tobool1.not33.i = icmp eq ptr %call32.i, null
  br i1 %tobool1.not33.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  br label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.i:                                       ; preds = %if.end8.i
  %conv20.i = zext i8 %8 to i32
  %add21.i = add i32 %offset.034.i, %conv20.i
  %call.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %add21.i, i32 noundef 2) #7
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.if.end3.i_crit_edge

for.cond.i.if.end3.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i:                                        ; preds = %for.cond.i.if.end3.i_crit_edge, %if.end.i.if.end3.i_crit_edge
  %call35.i = phi ptr [ %call.i, %for.cond.i.if.end3.i_crit_edge ], [ %call32.i, %if.end.i.if.end3.i_crit_edge ]
  %offset.034.i = phi i32 [ %add21.i, %for.cond.i.if.end3.i_crit_edge ], [ %add.i, %if.end.i.if.end3.i_crit_edge ]
  %5 = ptrtoint ptr %call35.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %call35.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp.i = icmp eq i8 %6, -1
  br i1 %cmp.i, label %if.end3.i.cleanup_crit_edge, label %lor.lhs.false.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end3.i
  %record_size.i = getelementptr inbounds %struct.atom_common_record_header, ptr %call35.i, i32 0, i32 1
  %7 = ptrtoint ptr %record_size.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %record_size.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not.i = icmp eq i8 %8, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end8.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp11.i = icmp eq i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp15.i = icmp ugt i8 %8, 3
  %or.cond.i = select i1 %cmp11.i, i1 %cmp15.i, i1 false
  br i1 %or.cond.i, label %if.then6, label %for.cond.i

if.then6:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %pin_id = getelementptr inbounds %struct.atom_hpd_int_record, ptr %call35.i, i32 0, i32 1
  %9 = ptrtoint ptr %pin_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pin_id, align 1
  %11 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %info, align 1
  %plugin_pin_state = getelementptr inbounds %struct.atom_hpd_int_record, ptr %call35.i, i32 0, i32 2
  %12 = ptrtoint ptr %plugin_pin_state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %plugin_pin_state, align 1
  %hpd_active = getelementptr inbounds %struct.graphics_object_hpd_info, ptr %info, i32 0, i32 1
  %14 = ptrtoint ptr %hpd_active to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %hpd_active, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %lor.lhs.false.i.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 4, %if.end.i.cleanup_crit_edge ], [ 4, %for.cond.i.cleanup_crit_edge ], [ 4, %if.end3.i.cleanup_crit_edge ], [ 4, %lor.lhs.false.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_get_device_tag(ptr nocapture noundef readonly %dcb, [1 x i32] %connector_object_id.coerce, i32 noundef %device_tag_index, ptr noundef writeonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc ptr @get_bios_object(ptr noundef %dcb, [1 x i32] %connector_object_id.coerce)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %do.body, label %if.end4

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.bios_parser_get_device_tag, i32 noundef 643) #7
  tail call void @kgdb_breakpoint() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %info, align 4
  %dev_id = getelementptr inbounds %struct.connector_device_tag_info, ptr %info, i32 0, i32 1
  %device_tag = getelementptr inbounds %struct.atom_display_object_path_v2, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %device_tag to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %device_tag, align 1
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %2, label %do.body.i [
    i16 2, label %if.end4.device_type_from_device_id.exit_crit_edge
    i16 32, label %sw.bb4.i
    i16 8, label %sw.bb11.i
    i16 128, label %sw.bb18.i
    i16 512, label %sw.bb25.i
    i16 1024, label %sw.bb32.i
    i16 2048, label %sw.bb39.i
    i16 64, label %sw.bb46.i
  ]

if.end4.device_type_from_device_id.exit_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %device_type_from_device_id.exit

sw.bb4.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %device_type_from_device_id.exit

sw.bb11.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %device_type_from_device_id.exit

sw.bb18.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %device_type_from_device_id.exit

sw.bb25.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %device_type_from_device_id.exit

sw.bb32.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %device_type_from_device_id.exit

sw.bb39.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %device_type_from_device_id.exit

sw.bb46.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %device_type_from_device_id.exit

do.body.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.device_type_from_device_id, i32 noundef 620) #7, !noalias !36
  tail call void @kgdb_breakpoint() #7, !noalias !36
  br label %device_type_from_device_id.exit

device_type_from_device_id.exit:                  ; preds = %do.body.i, %sw.bb46.i, %sw.bb39.i, %sw.bb32.i, %sw.bb25.i, %sw.bb18.i, %sw.bb11.i, %sw.bb4.i, %if.end4.device_type_from_device_id.exit_crit_edge
  %.sink.i = phi i32 [ 0, %do.body.i ], [ 196614, %sw.bb46.i ], [ 196613, %sw.bb39.i ], [ 196612, %sw.bb32.i ], [ 196611, %sw.bb25.i ], [ 196610, %sw.bb18.i ], [ 196609, %sw.bb11.i ], [ 65538, %sw.bb4.i ], [ 65537, %if.end4.device_type_from_device_id.exit_crit_edge ]
  %tmp5.sroa.5.0.insert.ext = zext i16 %2 to i64
  %tmp5.sroa.5.0.insert.shift = shl nuw nsw i64 %tmp5.sroa.5.0.insert.ext, 16
  %tmp5.sroa.0.0.insert.ext = zext i32 %.sink.i to i64
  %tmp5.sroa.0.0.insert.shift = shl nuw nsw i64 %tmp5.sroa.0.0.insert.ext, 32
  %tmp5.sroa.5.0.insert.insert = or i64 %tmp5.sroa.0.0.insert.shift, %tmp5.sroa.5.0.insert.shift
  %tmp5.sroa.0.0.insert.insert = or i64 %tmp5.sroa.5.0.insert.insert, 65535
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %tmp5.sroa.0.0.insert.insert, ptr %dev_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %device_type_from_device_id.exit, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %device_type_from_device_id.exit ], [ 1, %do.body ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_get_spread_spectrum_info(ptr noundef %dcb, i32 noundef %signal, i32 noundef %index, ptr noundef %ss_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ss_info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %master_data_tbl = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 3
  %0 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_data_tbl, align 4
  %dce_info = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %1, i32 0, i32 1, i32 27
  %2 = ptrtoint ptr %dce_info to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %dce_info, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool1.not = icmp eq i16 %3, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %conv = zext i16 %3 to i32
  %call = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv, i32 noundef 4) #7
  %tobool1.not.i = icmp eq ptr %call, null
  br i1 %tobool1.not.i, label %if.end3.cleanup_crit_edge, label %get_atom_data_table_revision.exit

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

get_atom_data_table_revision.exit:                ; preds = %if.end3
  %format_revision.i = getelementptr inbounds %struct.atom_common_table_header, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %format_revision.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %format_revision.i, align 1
  %6 = and i8 %5, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %6)
  %cond = icmp eq i8 %6, 4
  br i1 %cond, label %sw.bb, label %get_atom_data_table_revision.exit.cleanup_crit_edge

get_atom_data_table_revision.exit.cleanup_crit_edge: ; preds = %get_atom_data_table_revision.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %get_atom_data_table_revision.exit
  %content_revision.i = getelementptr inbounds %struct.atom_common_table_header, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %content_revision.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %content_revision.i, align 1
  %9 = and i8 %8, 63
  %and6.i = zext i8 %9 to i32
  %10 = zext i32 %and6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %and6.i, label %land.end [
    i32 1, label %if.end.i
    i32 2, label %sw.bb.if.end.i76_crit_edge
    i32 3, label %sw.bb.if.end.i76_crit_edge111
    i32 4, label %sw.bb.if.end.i76_crit_edge112
  ]

sw.bb.if.end.i76_crit_edge112:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i76

sw.bb.if.end.i76_crit_edge111:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i76

sw.bb.if.end.i76_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i76

if.end.i:                                         ; preds = %sw.bb
  %11 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %master_data_tbl, align 4
  %dce_info.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %12, i32 0, i32 1, i32 27
  %13 = ptrtoint ptr %dce_info.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %dce_info.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool1.not.i70 = icmp eq i16 %14, 0
  br i1 %tobool1.not.i70, label %if.end.i.cleanup_crit_edge, label %if.end3.i71

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i71:                                      ; preds = %if.end.i
  %conv.i = zext i16 %14 to i32
  %call.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv.i, i32 noundef 56) #7
  %tobool7.not.i = icmp eq ptr %call.i, null
  br i1 %tobool7.not.i, label %if.end3.i71.cleanup_crit_edge, label %if.end9.i

if.end3.i71.cleanup_crit_edge:                    ; preds = %if.end3.i71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9.i:                                        ; preds = %if.end3.i71
  %15 = ptrtoint ptr %ss_info to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %ss_info, align 4
  %bf.clear.i = and i8 %bf.load.i, -33
  store i8 %bf.clear.i, ptr %ss_info, align 4
  %spread_percentage_divider.i = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 2
  %16 = ptrtoint ptr %spread_percentage_divider.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1000, ptr %spread_percentage_divider.i, align 4
  %17 = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %17, align 4
  %19 = zext i32 %signal to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %signal, label %if.end9.i.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb20.i
    i32 4, label %sw.bb35.i
    i32 6, label %sw.bb51.i
  ]

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end9.i
  %dvi_ss_percentage.i = getelementptr inbounds %struct.atom_display_controller_info_v4_1, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %dvi_ss_percentage.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %dvi_ss_percentage.i, align 1
  %conv10.i = zext i16 %21 to i32
  %spread_spectrum_percentage.i = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 1
  %22 = ptrtoint ptr %spread_spectrum_percentage.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv10.i, ptr %spread_spectrum_percentage.i, align 4
  %dvi_ss_rate_10hz.i = getelementptr inbounds %struct.atom_display_controller_info_v4_1, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %dvi_ss_rate_10hz.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %dvi_ss_rate_10hz.i, align 1
  %conv11.i = zext i16 %24 to i32
  %mul.i = mul nuw nsw i32 %conv11.i, 10
  %spread_spectrum_range.i = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 3
  %25 = ptrtoint ptr %spread_spectrum_range.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul.i, ptr %spread_spectrum_range.i, align 4
  %dvi_ss_mode.i = getelementptr inbounds %struct.atom_display_controller_info_v4_1, ptr %call.i, i32 0, i32 11
  %26 = ptrtoint ptr %dvi_ss_mode.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dvi_ss_mode.i, align 1
  %28 = and i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool13.not.i = icmp eq i8 %28, 0
  br i1 %tobool13.not.i, label %sw.bb.i.cleanup_crit_edge, label %sw.bb.i.cleanup.sink.split.i_crit_edge

sw.bb.i.cleanup.sink.split.i_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb20.i:                                        ; preds = %if.end9.i
  %hdmi_ss_percentage.i = getelementptr inbounds %struct.atom_display_controller_info_v4_1, ptr %call.i, i32 0, i32 7
  %29 = ptrtoint ptr %hdmi_ss_percentage.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %hdmi_ss_percentage.i, align 1
  %conv21.i = zext i16 %30 to i32
  %spread_spectrum_percentage22.i = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 1
  %31 = ptrtoint ptr %spread_spectrum_percentage22.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv21.i, ptr %spread_spectrum_percentage22.i, align 4
  %hdmi_ss_rate_10hz.i = getelementptr inbounds %struct.atom_display_controller_info_v4_1, ptr %call.i, i32 0, i32 8
  %32 = ptrtoint ptr %hdmi_ss_rate_10hz.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %hdmi_ss_rate_10hz.i, align 1
  %conv23.i = zext i16 %33 to i32
  %mul24.i = mul nuw nsw i32 %conv23.i, 10
  %spread_spectrum_range25.i = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 3
  %34 = ptrtoint ptr %spread_spectrum_range25.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul24.i, ptr %spread_spectrum_range25.i, align 4
  %hdmi_ss_mode.i = getelementptr inbounds %struct.atom_display_controller_info_v4_1, ptr %call.i, i32 0, i32 12
  %35 = ptrtoint ptr %hdmi_ss_mode.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %hdmi_ss_mode.i, align 1
  %37 = and i8 %36, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool28.not.i = icmp eq i8 %37, 0
  br i1 %tobool28.not.i, label %sw.bb20.i.cleanup_crit_edge, label %sw.bb20.i.cleanup.sink.split.i_crit_edge

sw.bb20.i.cleanup.sink.split.i_crit_edge:         ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

sw.bb20.i.cleanup_crit_edge:                      ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb35.i:                                        ; preds = %if.end9.i
  %dp_ss_percentage.i = getelementptr inbounds %struct.atom_display_controller_info_v4_1, ptr %call.i, i32 0, i32 9
  %38 = ptrtoint ptr %dp_ss_percentage.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %dp_ss_percentage.i, align 1
  %conv36.i = zext i16 %39 to i32
  %spread_spectrum_percentage37.i = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 1
  %40 = ptrtoint ptr %spread_spectrum_percentage37.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv36.i, ptr %spread_spectrum_percentage37.i, align 4
  %dp_ss_rate_10hz.i = getelementptr inbounds %struct.atom_display_controller_info_v4_1, ptr %call.i, i32 0, i32 10
  %41 = ptrtoint ptr %dp_ss_rate_10hz.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %dp_ss_rate_10hz.i, align 1
  %conv38.i = zext i16 %42 to i32
  %mul39.i = mul nuw nsw i32 %conv38.i, 10
  %spread_spectrum_range40.i = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 3
  %43 = ptrtoint ptr %spread_spectrum_range40.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mul39.i, ptr %spread_spectrum_range40.i, align 4
  %dp_ss_mode.i = getelementptr inbounds %struct.atom_display_controller_info_v4_1, ptr %call.i, i32 0, i32 13
  %44 = ptrtoint ptr %dp_ss_mode.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %dp_ss_mode.i, align 1
  %46 = and i8 %45, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool43.not.i = icmp eq i8 %46, 0
  br i1 %tobool43.not.i, label %sw.bb35.i.cleanup_crit_edge, label %sw.bb35.i.cleanup.sink.split.i_crit_edge

sw.bb35.i.cleanup.sink.split.i_crit_edge:         ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

sw.bb35.i.cleanup_crit_edge:                      ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb51.i:                                        ; preds = %if.end9.i
  %47 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %master_data_tbl, align 4
  %smu_info55.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %48, i32 0, i32 1, i32 8
  %49 = ptrtoint ptr %smu_info55.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %smu_info55.i, align 1
  %conv56.i = zext i16 %50 to i32
  %call57.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv56.i, i32 noundef 92) #7
  %tobool58.not.i = icmp eq ptr %call57.i, null
  br i1 %tobool58.not.i, label %sw.bb51.i.cleanup_crit_edge, label %if.end60.i

sw.bb51.i.cleanup_crit_edge:                      ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end60.i:                                       ; preds = %sw.bb51.i
  %waflclk_ss_percentage.i = getelementptr inbounds %struct.atom_smu_info_v3_3, ptr %call57.i, i32 0, i32 34
  %51 = ptrtoint ptr %waflclk_ss_percentage.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %waflclk_ss_percentage.i, align 1
  %conv61.i = zext i16 %52 to i32
  %spread_spectrum_percentage62.i = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 1
  %53 = ptrtoint ptr %spread_spectrum_percentage62.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv61.i, ptr %spread_spectrum_percentage62.i, align 4
  %gpuclk_ss_rate_10hz.i = getelementptr inbounds %struct.atom_smu_info_v3_3, ptr %call57.i, i32 0, i32 8
  %54 = ptrtoint ptr %gpuclk_ss_rate_10hz.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %gpuclk_ss_rate_10hz.i, align 1
  %conv63.i = zext i16 %55 to i32
  %mul64.i = mul nuw nsw i32 %conv63.i, 10
  %spread_spectrum_range65.i = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 3
  %56 = ptrtoint ptr %spread_spectrum_range65.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %mul64.i, ptr %spread_spectrum_range65.i, align 4
  %waflclk_ss_mode.i = getelementptr inbounds %struct.atom_smu_info_v3_3, ptr %call57.i, i32 0, i32 3
  %57 = ptrtoint ptr %waflclk_ss_mode.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %waflclk_ss_mode.i, align 1
  %59 = and i8 %58, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool68.not.i = icmp eq i8 %59, 0
  br i1 %tobool68.not.i, label %if.end60.i.cleanup_crit_edge, label %if.then69.i

if.end60.i.cleanup_crit_edge:                     ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then69.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %ss_info to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load71.i = load i8, ptr %ss_info, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then69.i, %sw.bb35.i.cleanup.sink.split.i_crit_edge, %sw.bb20.i.cleanup.sink.split.i_crit_edge, %sw.bb.i.cleanup.sink.split.i_crit_edge
  %bf.clear.sink.i = phi i8 [ %bf.load71.i, %if.then69.i ], [ %bf.clear.i, %sw.bb.i.cleanup.sink.split.i_crit_edge ], [ %bf.clear.i, %sw.bb20.i.cleanup.sink.split.i_crit_edge ], [ %bf.clear.i, %sw.bb35.i.cleanup.sink.split.i_crit_edge ]
  %bf.set18.i = or i8 %bf.clear.sink.i, -128
  %61 = ptrtoint ptr %ss_info to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %bf.set18.i, ptr %ss_info, align 4
  br label %cleanup

if.end.i76:                                       ; preds = %sw.bb.if.end.i76_crit_edge, %sw.bb.if.end.i76_crit_edge111, %sw.bb.if.end.i76_crit_edge112
  %62 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %master_data_tbl, align 4
  %dce_info.i74 = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %63, i32 0, i32 1, i32 27
  %64 = ptrtoint ptr %dce_info.i74 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %dce_info.i74, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool1.not.i75 = icmp eq i16 %65, 0
  br i1 %tobool1.not.i75, label %if.end.i76.cleanup_crit_edge, label %if.end3.i78

if.end.i76.cleanup_crit_edge:                     ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i78:                                      ; preds = %if.end.i76
  %smu_info6.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %63, i32 0, i32 1, i32 8
  %66 = ptrtoint ptr %smu_info6.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %smu_info6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool7.not.i77 = icmp eq i16 %67, 0
  br i1 %tobool7.not.i77, label %if.end3.i78.cleanup_crit_edge, label %if.end9.i82

if.end3.i78.cleanup_crit_edge:                    ; preds = %if.end3.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9.i82:                                      ; preds = %if.end3.i78
  %conv.i79 = zext i16 %65 to i32
  %call.i80 = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv.i79, i32 noundef 56) #7
  %tobool13.not.i81 = icmp eq ptr %call.i80, null
  br i1 %tobool13.not.i81, label %if.end9.i82.cleanup_crit_edge, label %if.end15.i

if.end9.i82.cleanup_crit_edge:                    ; preds = %if.end9.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15.i:                                       ; preds = %if.end9.i82
  %68 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %master_data_tbl, align 4
  %smu_info19.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %69, i32 0, i32 1, i32 8
  %70 = ptrtoint ptr %smu_info19.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %smu_info19.i, align 1
  %conv20.i = zext i16 %71 to i32
  %call21.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv20.i, i32 noundef 28) #7
  %tobool22.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool22.not.i, label %if.end15.i.cleanup_crit_edge, label %if.end24.i

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24.i:                                       ; preds = %if.end15.i
  %72 = ptrtoint ptr %ss_info to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load.i83 = load i8, ptr %ss_info, align 4
  %bf.clear.i84 = and i8 %bf.load.i83, -33
  store i8 %bf.clear.i84, ptr %ss_info, align 4
  %spread_percentage_divider.i85 = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 2
  %73 = ptrtoint ptr %spread_percentage_divider.i85 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1000, ptr %spread_percentage_divider.i85, align 4
  %74 = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %74, align 4
  %76 = zext i32 %signal to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %signal, label %if.end24.i.cleanup_crit_edge [
    i32 1, label %sw.bb.i93
    i32 2, label %sw.bb35.i103
    i32 4, label %sw.bb50.i
  ]

if.end24.i.cleanup_crit_edge:                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i93:                                        ; preds = %if.end24.i
  %dvi_ss_percentage.i86 = getelementptr inbounds %struct.atom_display_controller_info_v4_2, ptr %call.i80, i32 0, i32 5
  %77 = ptrtoint ptr %dvi_ss_percentage.i86 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %78 = load i16, ptr %dvi_ss_percentage.i86, align 1
  %conv25.i = zext i16 %78 to i32
  %spread_spectrum_percentage.i87 = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 1
  %79 = ptrtoint ptr %spread_spectrum_percentage.i87 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %conv25.i, ptr %spread_spectrum_percentage.i87, align 4
  %dvi_ss_rate_10hz.i88 = getelementptr inbounds %struct.atom_display_controller_info_v4_2, ptr %call.i80, i32 0, i32 6
  %80 = ptrtoint ptr %dvi_ss_rate_10hz.i88 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %dvi_ss_rate_10hz.i88, align 1
  %conv26.i = zext i16 %81 to i32
  %mul.i89 = mul nuw nsw i32 %conv26.i, 10
  %spread_spectrum_range.i90 = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 3
  %82 = ptrtoint ptr %spread_spectrum_range.i90 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %mul.i89, ptr %spread_spectrum_range.i90, align 4
  %dvi_ss_mode.i91 = getelementptr inbounds %struct.atom_display_controller_info_v4_2, ptr %call.i80, i32 0, i32 11
  %83 = ptrtoint ptr %dvi_ss_mode.i91 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %dvi_ss_mode.i91, align 1
  %85 = and i8 %84, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool28.not.i92 = icmp eq i8 %85, 0
  br i1 %tobool28.not.i92, label %sw.bb.i93.cleanup_crit_edge, label %sw.bb.i93.cleanup.sink.split.i106_crit_edge

sw.bb.i93.cleanup.sink.split.i106_crit_edge:      ; preds = %sw.bb.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i106

sw.bb.i93.cleanup_crit_edge:                      ; preds = %sw.bb.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb35.i103:                                     ; preds = %if.end24.i
  %hdmi_ss_percentage.i94 = getelementptr inbounds %struct.atom_display_controller_info_v4_2, ptr %call.i80, i32 0, i32 7
  %86 = ptrtoint ptr %hdmi_ss_percentage.i94 to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %87 = load i16, ptr %hdmi_ss_percentage.i94, align 1
  %conv36.i95 = zext i16 %87 to i32
  %spread_spectrum_percentage37.i96 = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 1
  %88 = ptrtoint ptr %spread_spectrum_percentage37.i96 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv36.i95, ptr %spread_spectrum_percentage37.i96, align 4
  %hdmi_ss_rate_10hz.i97 = getelementptr inbounds %struct.atom_display_controller_info_v4_2, ptr %call.i80, i32 0, i32 8
  %89 = ptrtoint ptr %hdmi_ss_rate_10hz.i97 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 2)
  %90 = load i16, ptr %hdmi_ss_rate_10hz.i97, align 1
  %conv38.i98 = zext i16 %90 to i32
  %mul39.i99 = mul nuw nsw i32 %conv38.i98, 10
  %spread_spectrum_range40.i100 = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 3
  %91 = ptrtoint ptr %spread_spectrum_range40.i100 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %mul39.i99, ptr %spread_spectrum_range40.i100, align 4
  %hdmi_ss_mode.i101 = getelementptr inbounds %struct.atom_display_controller_info_v4_2, ptr %call.i80, i32 0, i32 12
  %92 = ptrtoint ptr %hdmi_ss_mode.i101 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %hdmi_ss_mode.i101, align 1
  %94 = and i8 %93, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool43.not.i102 = icmp eq i8 %94, 0
  br i1 %tobool43.not.i102, label %sw.bb35.i103.cleanup_crit_edge, label %sw.bb35.i103.cleanup.sink.split.i106_crit_edge

sw.bb35.i103.cleanup.sink.split.i106_crit_edge:   ; preds = %sw.bb35.i103
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i106

sw.bb35.i103.cleanup_crit_edge:                   ; preds = %sw.bb35.i103
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb50.i:                                        ; preds = %if.end24.i
  %gpuclk_ss_percentage.i = getelementptr inbounds %struct.atom_smu_info_v3_1, ptr %call21.i, i32 0, i32 7
  %95 = ptrtoint ptr %gpuclk_ss_percentage.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 2)
  %96 = load i16, ptr %gpuclk_ss_percentage.i, align 1
  %conv51.i = zext i16 %96 to i32
  %spread_spectrum_percentage52.i = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 1
  %97 = ptrtoint ptr %spread_spectrum_percentage52.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %conv51.i, ptr %spread_spectrum_percentage52.i, align 4
  %gpuclk_ss_rate_10hz.i104 = getelementptr inbounds %struct.atom_smu_info_v3_1, ptr %call21.i, i32 0, i32 8
  %98 = ptrtoint ptr %gpuclk_ss_rate_10hz.i104 to i32
  call void @__asan_loadN_noabort(i32 %98, i32 2)
  %99 = load i16, ptr %gpuclk_ss_rate_10hz.i104, align 1
  %conv53.i = zext i16 %99 to i32
  %mul54.i = mul nuw nsw i32 %conv53.i, 10
  %spread_spectrum_range55.i = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 3
  %100 = ptrtoint ptr %spread_spectrum_range55.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %mul54.i, ptr %spread_spectrum_range55.i, align 4
  %gpuclk_ss_mode.i = getelementptr inbounds %struct.atom_smu_info_v3_1, ptr %call21.i, i32 0, i32 4
  %101 = ptrtoint ptr %gpuclk_ss_mode.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %gpuclk_ss_mode.i, align 1
  %103 = and i8 %102, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool58.not.i105 = icmp eq i8 %103, 0
  br i1 %tobool58.not.i105, label %sw.bb50.i.cleanup_crit_edge, label %sw.bb50.i.cleanup.sink.split.i106_crit_edge

sw.bb50.i.cleanup.sink.split.i106_crit_edge:      ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i106

sw.bb50.i.cleanup_crit_edge:                      ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split.i106:                          ; preds = %sw.bb50.i.cleanup.sink.split.i106_crit_edge, %sw.bb35.i103.cleanup.sink.split.i106_crit_edge, %sw.bb.i93.cleanup.sink.split.i106_crit_edge
  %bf.set33.i = or i8 %bf.clear.i84, -128
  %104 = ptrtoint ptr %ss_info to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %bf.set33.i, ptr %ss_info, align 4
  br label %cleanup

land.end:                                         ; preds = %sw.bb
  %.b69 = load i1, ptr @bios_parser_get_spread_spectrum_info.__already_done, align 1
  br i1 %.b69, label %land.end.if.then50_crit_edge, label %if.then17, !prof !35

land.end.if.then50_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then50

if.then17:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @bios_parser_get_spread_spectrum_info.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 851, i32 noundef 9, ptr noundef null) #7
  br label %if.then50

if.then50:                                        ; preds = %if.then17, %land.end.if.then50_crit_edge
  tail call void @kgdb_breakpoint() #7
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %cleanup.sink.split.i106, %sw.bb50.i.cleanup_crit_edge, %sw.bb35.i103.cleanup_crit_edge, %sw.bb.i93.cleanup_crit_edge, %if.end24.i.cleanup_crit_edge, %if.end15.i.cleanup_crit_edge, %if.end9.i82.cleanup_crit_edge, %if.end3.i78.cleanup_crit_edge, %if.end.i76.cleanup_crit_edge, %cleanup.sink.split.i, %if.end60.i.cleanup_crit_edge, %sw.bb51.i.cleanup_crit_edge, %sw.bb35.i.cleanup_crit_edge, %sw.bb20.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %if.end3.i71.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %get_atom_data_table_revision.exit.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 3, %if.end.cleanup_crit_edge ], [ 3, %get_atom_data_table_revision.exit.cleanup_crit_edge ], [ 3, %if.then50 ], [ 2, %if.end.i.cleanup_crit_edge ], [ 2, %if.end3.i71.cleanup_crit_edge ], [ 2, %sw.bb51.i.cleanup_crit_edge ], [ 0, %if.end60.i.cleanup_crit_edge ], [ 0, %sw.bb35.i.cleanup_crit_edge ], [ 0, %sw.bb20.i.cleanup_crit_edge ], [ 0, %sw.bb.i.cleanup_crit_edge ], [ 3, %if.end9.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i ], [ 2, %if.end.i76.cleanup_crit_edge ], [ 2, %if.end3.i78.cleanup_crit_edge ], [ 2, %if.end9.i82.cleanup_crit_edge ], [ 2, %if.end15.i.cleanup_crit_edge ], [ 0, %sw.bb50.i.cleanup_crit_edge ], [ 0, %sw.bb35.i103.cleanup_crit_edge ], [ 0, %sw.bb.i93.cleanup_crit_edge ], [ 3, %if.end24.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i106 ], [ 3, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bios_parser_get_ss_entry_number(ptr nocapture noundef readnone %dcb, i32 noundef %signal) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_get_embedded_panel_info(ptr noundef %dcb, ptr noundef writeonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master_data_tbl = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 3
  %0 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_data_tbl, align 4
  %lcd_info = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %1, i32 0, i32 1, i32 6
  %2 = ptrtoint ptr %lcd_info to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %lcd_info, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %3 to i32
  %call = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv, i32 noundef 4) #7
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %get_atom_data_table_revision.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

get_atom_data_table_revision.exit:                ; preds = %if.end
  %format_revision.i = getelementptr inbounds %struct.atom_common_table_header, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %format_revision.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %format_revision.i, align 1
  %6 = and i8 %5, 63
  %content_revision.i = getelementptr inbounds %struct.atom_common_table_header, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %content_revision.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %content_revision.i, align 1
  %9 = and i8 %8, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cond = icmp eq i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cond13 = icmp eq i8 %9, 1
  %or.cond = select i1 %cond, i1 %cond13, i1 false
  br i1 %or.cond, label %sw.bb7, label %get_atom_data_table_revision.exit.cleanup_crit_edge

get_atom_data_table_revision.exit.cleanup_crit_edge: ; preds = %get_atom_data_table_revision.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb7:                                           ; preds = %get_atom_data_table_revision.exit
  %tobool.not.i = icmp eq ptr %info, null
  br i1 %tobool.not.i, label %sw.bb7.cleanup_crit_edge, label %if.end.i

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb7
  %10 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master_data_tbl, align 4
  %lcd_info.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %11, i32 0, i32 1, i32 6
  %12 = ptrtoint ptr %lcd_info.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %lcd_info.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool1.not.i18 = icmp eq i16 %13, 0
  br i1 %tobool1.not.i18, label %if.end.i.cleanup_crit_edge, label %if.end3.i19

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i19:                                      ; preds = %if.end.i
  %conv.i = zext i16 %13 to i32
  %call.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv.i, i32 noundef 92) #7
  %tobool7.not.i = icmp eq ptr %call.i, null
  br i1 %tobool7.not.i, label %if.end3.i19.cleanup_crit_edge, label %if.end9.i

if.end3.i19.cleanup_crit_edge:                    ; preds = %if.end3.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9.i:                                        ; preds = %if.end3.i19
  %format_revision.i20 = getelementptr inbounds %struct.atom_common_table_header, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %format_revision.i20 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %format_revision.i20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp.i = icmp eq i8 %15, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end9.i.cleanup_crit_edge

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end9.i
  %content_revision.i21 = getelementptr inbounds %struct.atom_common_table_header, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %content_revision.i21 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %content_revision.i21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp14.not.i = icmp eq i8 %17, 0
  br i1 %cmp14.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.end17.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = call ptr @memset(ptr %info, i32 0, i32 68)
  %lcd_timing.i = getelementptr inbounds %struct.lcd_info_v2_1, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %lcd_timing.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %lcd_timing.i, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #7
  %conv18.i = zext i16 %21 to i32
  %mul.i = mul nuw nsw i32 %conv18.i, 10
  %pixel_clk.i = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 1
  %22 = ptrtoint ptr %pixel_clk.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul.i, ptr %pixel_clk.i, align 4
  %h_active.i = getelementptr inbounds %struct.lcd_info_v2_1, ptr %call.i, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %h_active.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %h_active.i, align 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #7
  %conv21.i = zext i16 %25 to i32
  %horizontal_addressable.i = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 2
  %26 = ptrtoint ptr %horizontal_addressable.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv21.i, ptr %horizontal_addressable.i, align 4
  %h_blanking_time.i = getelementptr inbounds %struct.lcd_info_v2_1, ptr %call.i, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %h_blanking_time.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %h_blanking_time.i, align 1
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #7
  %conv24.i = zext i16 %29 to i32
  %horizontal_blanking_time.i = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 3
  %30 = ptrtoint ptr %horizontal_blanking_time.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv24.i, ptr %horizontal_blanking_time.i, align 4
  %v_active.i = getelementptr inbounds %struct.lcd_info_v2_1, ptr %call.i, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %v_active.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %v_active.i, align 1
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #7
  %conv27.i = zext i16 %33 to i32
  %vertical_addressable.i = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 4
  %34 = ptrtoint ptr %vertical_addressable.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv27.i, ptr %vertical_addressable.i, align 4
  %v_blanking_time.i = getelementptr inbounds %struct.lcd_info_v2_1, ptr %call.i, i32 0, i32 1, i32 4
  %35 = ptrtoint ptr %v_blanking_time.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %v_blanking_time.i, align 1
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #7
  %conv30.i = zext i16 %37 to i32
  %vertical_blanking_time.i = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 5
  %38 = ptrtoint ptr %vertical_blanking_time.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv30.i, ptr %vertical_blanking_time.i, align 4
  %h_sync_offset.i = getelementptr inbounds %struct.lcd_info_v2_1, ptr %call.i, i32 0, i32 1, i32 5
  %39 = ptrtoint ptr %h_sync_offset.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %h_sync_offset.i, align 1
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #7
  %conv33.i = zext i16 %41 to i32
  %horizontal_sync_offset.i = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 6
  %42 = ptrtoint ptr %horizontal_sync_offset.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv33.i, ptr %horizontal_sync_offset.i, align 4
  %h_sync_width.i = getelementptr inbounds %struct.lcd_info_v2_1, ptr %call.i, i32 0, i32 1, i32 6
  %43 = ptrtoint ptr %h_sync_width.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %h_sync_width.i, align 1
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #7
  %conv36.i = zext i16 %45 to i32
  %horizontal_sync_width.i = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 7
  %46 = ptrtoint ptr %horizontal_sync_width.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv36.i, ptr %horizontal_sync_width.i, align 4
  %v_sync_offset.i = getelementptr inbounds %struct.lcd_info_v2_1, ptr %call.i, i32 0, i32 1, i32 7
  %47 = ptrtoint ptr %v_sync_offset.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 2)
  %48 = load i16, ptr %v_sync_offset.i, align 1
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #7
  %conv39.i = zext i16 %49 to i32
  %vertical_sync_offset.i = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 8
  %50 = ptrtoint ptr %vertical_sync_offset.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv39.i, ptr %vertical_sync_offset.i, align 4
  %v_syncwidth.i = getelementptr inbounds %struct.lcd_info_v2_1, ptr %call.i, i32 0, i32 1, i32 8
  %51 = ptrtoint ptr %v_syncwidth.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %v_syncwidth.i, align 1
  %53 = tail call i16 @llvm.bswap.i16(i16 %52) #7
  %conv42.i = zext i16 %53 to i32
  %vertical_sync_width.i = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 9
  %54 = ptrtoint ptr %vertical_sync_width.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv42.i, ptr %vertical_sync_width.i, align 4
  %h_border.i = getelementptr inbounds %struct.lcd_info_v2_1, ptr %call.i, i32 0, i32 1, i32 11
  %55 = ptrtoint ptr %h_border.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %h_border.i, align 1
  %conv45.i = zext i8 %56 to i32
  %horizontal_border.i = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 10
  %57 = ptrtoint ptr %horizontal_border.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv45.i, ptr %horizontal_border.i, align 4
  %v_border.i = getelementptr inbounds %struct.lcd_info_v2_1, ptr %call.i, i32 0, i32 1, i32 12
  %58 = ptrtoint ptr %v_border.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %v_border.i, align 1
  %conv48.i = zext i8 %59 to i32
  %vertical_border.i = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 11
  %60 = ptrtoint ptr %vertical_border.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv48.i, ptr %vertical_border.i, align 4
  %miscinfo.i = getelementptr inbounds %struct.lcd_info_v2_1, ptr %call.i, i32 0, i32 1, i32 13
  %61 = ptrtoint ptr %info to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 24576, ptr %info, align 4
  %62 = ptrtoint ptr %miscinfo.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %miscinfo.i, align 1
  %64 = shl i16 %63, 7
  %bf.shl86.i = and i16 %64, 2048
  %bf.set88.i = or i16 %bf.shl86.i, 24576
  store i16 %bf.set88.i, ptr %info, align 4
  %65 = load i16, ptr %miscinfo.i, align 1
  %66 = shl i16 %65, 5
  %bf.shl103.i = and i16 %66, 1024
  %bf.set105.i = or i16 %bf.shl103.i, %bf.set88.i
  store i16 %bf.set105.i, ptr %info, align 4
  %67 = load i16, ptr %miscinfo.i, align 1
  %68 = shl i16 %67, 3
  %bf.shl120.i = and i16 %68, 512
  %bf.set122.i = or i16 %bf.shl120.i, %bf.set105.i
  store i16 %bf.set122.i, ptr %info, align 4
  %69 = load i16, ptr %miscinfo.i, align 1
  %70 = shl i16 %69, 1
  %bf.shl137.i = and i16 %70, 256
  %bf.set139.i = or i16 %bf.shl137.i, %bf.set122.i
  store i16 %bf.set139.i, ptr %info, align 4
  %ss_id.i = getelementptr inbounds %struct.embedded_panel_info, ptr %info, i32 0, i32 1
  %71 = ptrtoint ptr %ss_id.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %ss_id.i, align 4
  %dplvdsrxid.i = getelementptr inbounds %struct.lcd_info_v2_1, ptr %call.i, i32 0, i32 23
  %72 = ptrtoint ptr %dplvdsrxid.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %dplvdsrxid.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %73)
  %cmp147.i = icmp eq i8 %73, 2
  %realtek_eDPToLVDS.i = getelementptr inbounds %struct.embedded_panel_info, ptr %info, i32 0, i32 5
  %frombool.i = zext i1 %cmp147.i to i8
  %74 = ptrtoint ptr %realtek_eDPToLVDS.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %frombool.i, ptr %realtek_eDPToLVDS.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17.i, %land.lhs.true.i.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %if.end3.i19.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %get_atom_data_table_revision.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 5, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 5, %get_atom_data_table_revision.exit.cleanup_crit_edge ], [ 0, %if.end17.i ], [ 1, %sw.bb7.cleanup_crit_edge ], [ 3, %if.end.i.cleanup_crit_edge ], [ 2, %if.end3.i19.cleanup_crit_edge ], [ 3, %land.lhs.true.i.cleanup_crit_edge ], [ 3, %if.end9.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_get_gpio_pin_info(ptr noundef %dcb, i32 noundef %gpio_id, ptr nocapture noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master_data_tbl = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 3
  %0 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_data_tbl, align 4
  %gpio_pin_lut = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %1, i32 0, i32 1, i32 12
  %2 = ptrtoint ptr %gpio_pin_lut to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %gpio_pin_lut, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %3 to i32
  %call = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv, i32 noundef 68) #7
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %call, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv7 = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %6)
  %cmp = icmp ult i16 %6, 12
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %content_revision = getelementptr inbounds %struct.atom_common_table_header, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %content_revision to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %content_revision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp13.not = icmp eq i8 %8, 1
  br i1 %cmp13.not, label %if.end16, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %sub = add nsw i32 %conv7, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %cmp2076.not = icmp ult i32 %sub, 8
  br i1 %cmp2076.not, label %if.end16.cleanup_crit_edge, label %for.body.preheader

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %if.end16
  %div74 = lshr i32 %sub, 3
  %umax = call i32 @llvm.umax.i32(i32 %div74, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.077 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %gpio_id22 = getelementptr %struct.atom_gpio_pin_lut_v2_1, ptr %call, i32 0, i32 1, i32 %i.077, i32 3
  %9 = ptrtoint ptr %gpio_id22 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %gpio_id22, align 1
  %conv23 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv23, i32 %gpio_id)
  %cmp24.not = icmp eq i32 %conv23, %gpio_id
  br i1 %cmp24.not, label %if.end27, label %for.inc

if.end27:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.atom_gpio_pin_lut_v2_1, ptr %call, i32 0, i32 1, i32 %i.077
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %arrayidx, align 1
  %conv30 = trunc i32 %12 to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv30)
  %conv31 = zext i16 %13 to i32
  %14 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv31, ptr %info, align 4
  %add = add nuw nsw i32 %conv31, 2
  %offset_y = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 1
  %15 = ptrtoint ptr %offset_y to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %offset_y, align 4
  %add34 = add nuw nsw i32 %conv31, 1
  %offset_en = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 2
  %16 = ptrtoint ptr %offset_en to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add34, ptr %offset_en, align 4
  %sub36 = add nsw i32 %conv31, -1
  %offset_mask = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 3
  %17 = ptrtoint ptr %offset_mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub36, ptr %offset_mask, align 4
  %gpio_bitshift = getelementptr %struct.atom_gpio_pin_lut_v2_1, ptr %call, i32 0, i32 1, i32 %i.077, i32 1
  %18 = ptrtoint ptr %gpio_bitshift to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %gpio_bitshift, align 1
  %conv39 = zext i8 %19 to i32
  %shl = shl nuw i32 1, %conv39
  %mask = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 4
  %20 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shl, ptr %mask, align 4
  %add41 = add nuw i32 %shl, 2
  %mask_y = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 5
  %21 = ptrtoint ptr %mask_y to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add41, ptr %mask_y, align 4
  %add43 = add nuw i32 %shl, 1
  %mask_en = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 6
  %22 = ptrtoint ptr %mask_en to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add43, ptr %mask_en, align 4
  %sub45 = add i32 %shl, -1
  %mask_mask = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 7
  %23 = ptrtoint ptr %mask_mask to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub45, ptr %mask_mask, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.077, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end27, %if.end16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27 ], [ 2, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 2, %if.end6.cleanup_crit_edge ], [ 3, %if.end10.cleanup_crit_edge ], [ 4, %if.end16.cleanup_crit_edge ], [ 4, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_get_encoder_cap_info(ptr noundef %dcb, [1 x i32] %object_id.coerce, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc ptr @get_bios_object(ptr noundef %dcb, [1 x i32] %object_id.coerce)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %encoder_recordoffset.i = getelementptr inbounds %struct.atom_display_object_path_v2, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %encoder_recordoffset.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %encoder_recordoffset.i, align 1
  %conv.i = zext i16 %1 to i32
  %object_info_tbl_offset.i = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 2
  %2 = ptrtoint ptr %object_info_tbl_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %object_info_tbl_offset.i, align 4
  %add.i = add i32 %3, %conv.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end11.i.for.cond.i_crit_edge, %if.end.i
  %offset.0.i = phi i32 [ %add.i, %if.end.i ], [ %add5.i, %if.end11.i.for.cond.i_crit_edge ]
  %call.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %offset.0.i, i32 noundef 2) #7
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %for.cond.i.cleanup_crit_edge, label %if.end3.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i:                                        ; preds = %for.cond.i
  %record_size.i = getelementptr inbounds %struct.atom_common_record_header, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %record_size.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %record_size.i, align 1
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %call.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp.i = icmp eq i8 %7, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not.i = icmp eq i8 %5, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool9.not.i
  br i1 %or.cond.i, label %if.end3.i.cleanup_crit_edge, label %if.end11.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11.i:                                       ; preds = %if.end3.i
  %conv4.i = zext i8 %5 to i32
  %add5.i = add i32 %offset.0.i, %conv4.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %7)
  %cmp14.not.i = icmp eq i8 %7, 20
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %5)
  %cmp20.i = icmp ugt i8 %5, 5
  %or.cond34.i = select i1 %cmp14.not.i, i1 %cmp20.i, i1 false
  br i1 %or.cond34.i, label %if.end8, label %if.end11.i.for.cond.i_crit_edge

if.end11.i.for.cond.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.end8:                                          ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %encodercaps = getelementptr inbounds %struct.atom_encoder_caps_record, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %encodercaps to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %encodercaps, align 1
  %10 = trunc i32 %9 to i16
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load = load i16, ptr %info, align 4
  %bf.shl = shl i16 %10, 15
  %bf.clear = and i16 %bf.load, 32767
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %info, align 4
  %12 = load i32, ptr %encodercaps, align 1
  %13 = trunc i32 %12 to i16
  %14 = shl i16 %13, 13
  %bf.shl16 = and i16 %14, 16384
  %bf.clear17 = and i16 %bf.set, -16385
  %bf.set18 = or i16 %bf.shl16, %bf.clear17
  store i16 %bf.set18, ptr %info, align 4
  %15 = load i32, ptr %encodercaps, align 1
  %16 = trunc i32 %15 to i16
  %17 = shl i16 %16, 10
  %bf.shl26 = and i16 %17, 8192
  %bf.clear27 = and i16 %bf.set18, -8193
  %bf.set28 = or i16 %bf.clear27, %bf.shl26
  store i16 %bf.set28, ptr %info, align 4
  %18 = load i32, ptr %encodercaps, align 1
  %19 = trunc i32 %18 to i16
  %20 = shl i16 %19, 10
  %bf.shl36 = and i16 %20, 4096
  %bf.clear37 = and i16 %bf.set28, -4097
  %bf.set38 = or i16 %bf.clear37, %bf.shl36
  store i16 %bf.set38, ptr %info, align 4
  %21 = load i32, ptr %encodercaps, align 1
  %22 = trunc i32 %21 to i16
  %23 = lshr i16 %22, 1
  %bf.shl46 = and i16 %23, 128
  %bf.clear47 = and i16 %bf.set38, -129
  %bf.set48 = or i16 %bf.clear47, %bf.shl46
  store i16 %bf.set48, ptr %info, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end3.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 4, %if.end3.i.cleanup_crit_edge ], [ 4, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @bios_parser_is_accelerated_mode(ptr noundef %dcb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @bios_is_accelerated_mode(ptr noundef %dcb) #7
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bios_parser_set_scratch_critical_state(ptr noundef %dcb, i1 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @bios_set_scratch_critical_state(ptr noundef %dcb, i1 noundef zeroext %state) #7
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bios_parser_is_device_id_supported(ptr nocapture noundef readonly %dcb, [2 x i32] %id.coerce) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device_id.coerce.fca.0.extract.i = extractvalue [2 x i32] %id.coerce, 0
  %bf.lshr.i = lshr i32 %device_id.coerce.fca.0.extract.i, 16
  %trunc.i = trunc i32 %bf.lshr.i to i16
  %0 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.16)
  switch i16 %trunc.i, label %entry.sw.epilog13.i_crit_edge [
    i16 1, label %sw.bb.i
    i16 3, label %sw.bb3.i
  ]

entry.sw.epilog13.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog13.i

sw.bb.i:                                          ; preds = %entry
  %bf.clear.i = and i32 %device_id.coerce.fca.0.extract.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear.i)
  %cond.i = icmp eq i32 %bf.clear.i, 1
  br i1 %cond.i, label %sw.bb.i.get_support_mask_for_device_id.exit_crit_edge, label %sw.bb.i.sw.epilog13.i_crit_edge

sw.bb.i.sw.epilog13.i_crit_edge:                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog13.i

sw.bb.i.get_support_mask_for_device_id.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_support_mask_for_device_id.exit

sw.bb3.i:                                         ; preds = %entry
  %trunc17.i = trunc i32 %device_id.coerce.fca.0.extract.i to i16
  %switch.tableidx = add i16 %trunc17.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %switch.tableidx)
  %1 = icmp ult i16 %switch.tableidx, 6
  br i1 %1, label %switch.lookup, label %sw.bb3.i.sw.epilog13.i_crit_edge

sw.bb3.i.sw.epilog13.i_crit_edge:                 ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog13.i

sw.epilog13.i:                                    ; preds = %sw.bb3.i.sw.epilog13.i_crit_edge, %sw.bb.i.sw.epilog13.i_crit_edge, %entry.sw.epilog13.i_crit_edge
  br label %get_support_mask_for_device_id.exit

switch.lookup:                                    ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  %2 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.bios_parser_is_device_id_supported, i32 0, i32 %2
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_support_mask_for_device_id.exit

get_support_mask_for_device_id.exit:              ; preds = %switch.lookup, %sw.epilog13.i, %sw.bb.i.get_support_mask_for_device_id.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.epilog13.i ], [ 2, %sw.bb.i.get_support_mask_for_device_id.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %4 = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %supporteddevices = getelementptr inbounds %struct.display_object_info_table_v1_4, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %supporteddevices to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %supporteddevices, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv = zext i16 %9 to i32
  %and = and i32 %retval.0.i, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp ne i32 %and, 0
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_encoder_control(ptr noundef %dcb, ptr noundef %cntl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_tbl = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 6
  %0 = ptrtoint ptr %cmd_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_tbl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %1(ptr noundef %dcb, ptr noundef %cntl) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_transmitter_control(ptr noundef %dcb, ptr noundef %cntl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %transmitter_control = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 6, i32 3
  %0 = ptrtoint ptr %transmitter_control to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transmitter_control, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %1(ptr noundef %dcb, ptr noundef %cntl) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_enable_crtc(ptr noundef %dcb, i32 noundef %id, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_crtc = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 6, i32 12
  %0 = ptrtoint ptr %enable_crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enable_crtc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %1(ptr noundef %dcb, i32 noundef %id, i1 noundef zeroext %enable) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_set_pixel_clock(ptr noundef %dcb, ptr noundef %bp_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %set_pixel_clock = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 6, i32 4
  %0 = ptrtoint ptr %set_pixel_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_pixel_clock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %1(ptr noundef %dcb, ptr noundef %bp_params) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_set_dce_clock(ptr noundef %dcb, ptr noundef %bp_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %set_dce_clock = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 6, i32 17
  %0 = ptrtoint ptr %set_dce_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_dce_clock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %1(ptr noundef %dcb, ptr noundef %bp_params) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_program_crtc_timing(ptr noundef %dcb, ptr noundef %bp_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %set_crtc_timing = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 6, i32 11
  %0 = ptrtoint ptr %set_crtc_timing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_crtc_timing, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %1(ptr noundef %dcb, ptr noundef %bp_params) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_enable_disp_power_gating(ptr noundef %dcb, i32 noundef %controller_id, i32 noundef %action) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_disp_power_gating = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 6, i32 16
  %0 = ptrtoint ptr %enable_disp_power_gating to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enable_disp_power_gating, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %1(ptr noundef %dcb, i32 noundef %controller_id, i32 noundef %action) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @firmware_parser_destroy(ptr nocapture noundef %dcb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dcb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.firmware_parser_destroy, i32 noundef 129) #7
  tail call void @kgdb_breakpoint() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bios_local_image.i = getelementptr inbounds %struct.dc_bios, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bios_local_image.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios_local_image.i, align 4
  tail call void @kfree(ptr noundef %3) #7
  %integrated_info.i = getelementptr inbounds %struct.dc_bios, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %integrated_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %integrated_info.i, align 4
  tail call void @kfree(ptr noundef %5) #7
  tail call void @kfree(ptr noundef nonnull %1) #7
  %6 = ptrtoint ptr %dcb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %dcb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_get_board_layout_info(ptr noundef %dcb, ptr noundef %board_layout_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %board_layout_info, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %board_layout_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %board_layout_info, align 4
  %1 = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 1, i32 1
  %object_info_tbl_offset.i.i = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %if.end
  %i.059 = phi i32 [ 0, %if.end ], [ %inc11, %if.end9.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__const.bios_get_board_layout_info.slot_index_to_vbios_id, i32 0, i32 %i.059
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.board_layout_info, ptr %board_layout_info, i32 0, i32 2, i32 %i.059
  %cmp.i = icmp eq ptr %arrayidx2, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3) #7
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %number_of_path.i = getelementptr inbounds %struct.display_object_info_table_v1_4, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %number_of_path.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %number_of_path.i, align 1
  %conv.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp122.not.i = icmp eq i8 %7, 0
  br i1 %cmp122.not.i, label %if.end.i.get_bracket_layout_record.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.get_bracket_layout_record.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_bracket_layout_record.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.display_object_info_table_v1_4, ptr %5, i32 0, i32 4, i32 %i.023.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %arrayidx.i, align 1
  %conv3.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv3.i)
  %cmp4.i = icmp eq i32 %3, %conv3.i
  br i1 %cmp4.i, label %if.then6.i, label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  %disp_recordoffset.i.i = getelementptr %struct.display_object_info_table_v1_4, ptr %5, i32 0, i32 4, i32 %i.023.i, i32 1
  %10 = ptrtoint ptr %disp_recordoffset.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %disp_recordoffset.i.i, align 1
  %conv.i.i = zext i16 %11 to i32
  %12 = ptrtoint ptr %object_info_tbl_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %object_info_tbl_offset.i.i, align 4
  %add.i.i = add i32 %13, %conv.i.i
  %call154.i.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %add.i.i, i32 noundef 2) #7
  %cmp155.i.i = icmp eq ptr %call154.i.i, null
  br i1 %cmp155.i.i, label %if.then6.i.cleanup_crit_edge, label %if.then6.i.if.end.i.i_crit_edge

if.then6.i.if.end.i.i_crit_edge:                  ; preds = %if.then6.i
  br label %if.end.i.i

if.then6.i.cleanup_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.i.i:                                     ; preds = %if.end9.i.i
  %conv21.i.i = zext i8 %17 to i32
  %add22.i.i = add i32 %record_offset.0156.i.i, %conv21.i.i
  %call.i.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %add22.i.i, i32 noundef 2) #7
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %for.cond.i.i.cleanup_crit_edge, label %for.cond.i.i.if.end.i.i_crit_edge

for.cond.i.i.if.end.i.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %for.cond.i.i.if.end.i.i_crit_edge, %if.then6.i.if.end.i.i_crit_edge
  %call157.i.i = phi ptr [ %call.i.i, %for.cond.i.i.if.end.i.i_crit_edge ], [ %call154.i.i, %if.then6.i.if.end.i.i_crit_edge ]
  %record_offset.0156.i.i = phi i32 [ %add22.i.i, %for.cond.i.i.if.end.i.i_crit_edge ], [ %add.i.i, %if.then6.i.if.end.i.i_crit_edge ]
  %14 = ptrtoint ptr %call157.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %call157.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp3.i.i = icmp eq i8 %15, -1
  br i1 %cmp3.i.i, label %if.end.i.i.get_bracket_layout_record.exit_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.get_bracket_layout_record.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_bracket_layout_record.exit

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %record_size.i.i = getelementptr inbounds %struct.atom_common_record_header, ptr %call157.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %record_size.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %record_size.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp6.i.i = icmp eq i8 %17, 0
  br i1 %cmp6.i.i, label %lor.lhs.false.i.i.get_bracket_layout_record.exit_crit_edge, label %if.end9.i.i

lor.lhs.false.i.i.get_bracket_layout_record.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_bracket_layout_record.exit

if.end9.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %15)
  %cmp12.i.i = icmp eq i8 %15, 21
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %17)
  %cmp16.i.i = icmp ugt i8 %17, 9
  %or.cond.i.i = select i1 %cmp12.i.i, i1 %cmp16.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end26.i.i, label %for.cond.i.i

if.end26.i.i:                                     ; preds = %if.end9.i.i
  %bracketlen.i.i = getelementptr inbounds %struct.atom_bracket_layout_record, ptr %call157.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %bracketlen.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bracketlen.i.i, align 1
  %conv27.i.i = zext i8 %19 to i32
  %20 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv27.i.i, ptr %arrayidx2, align 4
  %bracketwidth.i.i = getelementptr inbounds %struct.atom_bracket_layout_record, ptr %call157.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %bracketwidth.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bracketwidth.i.i, align 1
  %conv28.i.i = zext i8 %22 to i32
  %width.i.i = getelementptr %struct.board_layout_info, ptr %board_layout_info, i32 0, i32 2, i32 %i.059, i32 1
  %23 = ptrtoint ptr %width.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv28.i.i, ptr %width.i.i, align 4
  %conn_num.i.i = getelementptr inbounds %struct.atom_bracket_layout_record, ptr %call157.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %conn_num.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %conn_num.i.i, align 1
  %conv29.i.i = zext i8 %25 to i32
  %num_of_connectors.i.i = getelementptr %struct.board_layout_info, ptr %board_layout_info, i32 0, i32 2, i32 %i.059, i32 2
  %26 = ptrtoint ptr %num_of_connectors.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv29.i.i, ptr %num_of_connectors.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp32160.not.i.i = icmp eq i8 %25, 0
  br i1 %cmp32160.not.i.i, label %if.end26.i.i.if.end9_crit_edge, label %if.end26.i.i.for.body.i.i_crit_edge

if.end26.i.i.for.body.i.i_crit_edge:              ; preds = %if.end26.i.i
  br label %for.body.i.i

if.end26.i.i.if.end9_crit_edge:                   ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

for.body.i.i:                                     ; preds = %sw.epilog.i.i.for.body.i.i_crit_edge, %if.end26.i.i.for.body.i.i_crit_edge
  %j.0161.i.i = phi i32 [ %inc.i.i, %sw.epilog.i.i.for.body.i.i_crit_edge ], [ 0, %if.end26.i.i.for.body.i.i_crit_edge ]
  %arrayidx34.i.i = getelementptr %struct.atom_bracket_layout_record, ptr %call157.i.i, i32 0, i32 5, i32 %j.0161.i.i
  %connector_type.i.i = getelementptr %struct.atom_bracket_layout_record, ptr %call157.i.i, i32 0, i32 5, i32 %j.0161.i.i, i32 1
  %27 = ptrtoint ptr %connector_type.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %connector_type.i.i, align 1
  %conv35.i.i = zext i8 %28 to i32
  %arrayidx36.i.i = getelementptr %struct.board_layout_info, ptr %board_layout_info, i32 0, i32 2, i32 %i.059, i32 3, i32 %j.0161.i.i
  %connector_type37.i.i = getelementptr %struct.board_layout_info, ptr %board_layout_info, i32 0, i32 2, i32 %i.059, i32 3, i32 %j.0161.i.i, i32 1
  %29 = ptrtoint ptr %connector_type37.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv35.i.i, ptr %connector_type37.i.i, align 4
  %30 = load i8, ptr %connector_type.i.i, align 1
  %switch.tableidx = add i8 %30, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %switch.tableidx)
  %31 = icmp ult i8 %switch.tableidx, 6
  br i1 %31, label %switch.lookup, label %for.body.i.i.sw.epilog.i.i_crit_edge

for.body.i.i.sw.epilog.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

switch.lookup:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.bios_get_board_layout_info, i32 0, i32 %32
  %33 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %33)
  %switch.load = load i32, ptr %switch.gep, align 4
  %34 = sext i8 %switch.tableidx to i32
  %switch.gep100 = getelementptr inbounds [6 x i32], ptr @switch.table.bios_get_board_layout_info.4, i32 0, i32 %34
  %35 = ptrtoint ptr %switch.gep100 to i32
  call void @__asan_load4_noabort(i32 %35)
  %switch.load101 = load i32, ptr %switch.gep100, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %switch.lookup, %for.body.i.i.sw.epilog.i.i_crit_edge
  %.sink167.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %for.body.i.i.sw.epilog.i.i_crit_edge ]
  %.sink.i.i = phi i32 [ %switch.load101, %switch.lookup ], [ 30, %for.body.i.i.sw.epilog.i.i_crit_edge ]
  %36 = ptrtoint ptr %connector_type37.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink167.i.i, ptr %connector_type37.i.i, align 4
  %length74.i.i = getelementptr %struct.board_layout_info, ptr %board_layout_info, i32 0, i32 2, i32 %i.059, i32 3, i32 %j.0161.i.i, i32 2
  %37 = ptrtoint ptr %length74.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink.i.i, ptr %length74.i.i, align 4
  %position.i.i = getelementptr %struct.atom_bracket_layout_record, ptr %call157.i.i, i32 0, i32 5, i32 %j.0161.i.i, i32 2
  %38 = ptrtoint ptr %position.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %position.i.i, align 1
  %conv77.i.i = zext i8 %39 to i32
  %position80.i.i = getelementptr %struct.board_layout_info, ptr %board_layout_info, i32 0, i32 2, i32 %i.059, i32 3, i32 %j.0161.i.i, i32 3
  %40 = ptrtoint ptr %position80.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv77.i.i, ptr %position80.i.i, align 4
  %41 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %arrayidx34.i.i, align 1
  %conv86.i.i = zext i16 %42 to i32
  %call87.i.i = tail call i32 @object_id_from_bios_object_id(i32 noundef %conv86.i.i) #7
  %43 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call87.i.i, ptr %arrayidx36.i.i, align 4
  %inc.i.i = add nuw i32 %j.0161.i.i, 1
  %44 = ptrtoint ptr %num_of_connectors.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_of_connectors.i.i, align 4
  %cmp32.i.i = icmp ult i32 %inc.i.i, %45
  br i1 %cmp32.i.i, label %sw.epilog.i.i.for.body.i.i_crit_edge, label %sw.epilog.i.i.if.end9_crit_edge

sw.epilog.i.i.if.end9_crit_edge:                  ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

sw.epilog.i.i.for.body.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.get_bracket_layout_record.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.get_bracket_layout_record.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_bracket_layout_record.exit

get_bracket_layout_record.exit:                   ; preds = %for.inc.i.get_bracket_layout_record.exit_crit_edge, %lor.lhs.false.i.i.get_bracket_layout_record.exit_crit_edge, %if.end.i.i.get_bracket_layout_record.exit_crit_edge, %if.end.i.get_bracket_layout_record.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.059)
  %cmp4.not = icmp eq i32 %i.059, 0
  br i1 %cmp4.not, label %get_bracket_layout_record.exit.cleanup_crit_edge, label %get_bracket_layout_record.exit.for.end_crit_edge

get_bracket_layout_record.exit.for.end_crit_edge: ; preds = %get_bracket_layout_record.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

get_bracket_layout_record.exit.cleanup_crit_edge: ; preds = %get_bracket_layout_record.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %sw.epilog.i.i.if.end9_crit_edge, %if.end26.i.i.if.end9_crit_edge
  %46 = ptrtoint ptr %board_layout_info to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %board_layout_info, align 4
  %inc = add i32 %47, 1
  store i32 %inc, ptr %board_layout_info, align 4
  %inc11 = add nuw nsw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc11, 4
  br i1 %exitcond.not, label %if.end9.for.end_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end9.for.end_crit_edge, %get_bracket_layout_record.exit.for.end_crit_edge
  %is_number_of_slots_valid = getelementptr inbounds %struct.board_layout_info, ptr %board_layout_info, i32 0, i32 1
  %48 = ptrtoint ptr %is_number_of_slots_valid to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load = load i8, ptr %is_number_of_slots_valid, align 4
  %bf.set20 = or i8 %bf.load, -16
  store i8 %bf.set20, ptr %is_number_of_slots_valid, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %get_bracket_layout_record.exit.cleanup_crit_edge, %for.cond.i.i.cleanup_crit_edge, %if.then6.i.cleanup_crit_edge, %if.then.i, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %for.end ], [ 4, %get_bracket_layout_record.exit.cleanup_crit_edge ], [ 1, %if.then.i ], [ 2, %for.cond.i.i.cleanup_crit_edge ], [ 2, %if.then6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @bios_parser_pack_data_tables(ptr nocapture noundef readnone %dcb, ptr nocapture noundef readnone %dst) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i16 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_get_atom_dc_golden_table(ptr noundef %dcb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master_data_tbl = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 3
  %0 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_data_tbl, align 4
  %dce_info = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %1, i32 0, i32 1, i32 27
  %2 = ptrtoint ptr %dce_info to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %dce_info, align 1
  %conv = zext i16 %3 to i32
  %call = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv, i32 noundef 4) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %get_atom_data_table_revision.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

get_atom_data_table_revision.exit:                ; preds = %entry
  %4 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master_data_tbl, align 4
  %dce_info.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %5, i32 0, i32 1, i32 27
  %6 = ptrtoint ptr %dce_info.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %dce_info.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i, label %get_atom_data_table_revision.exit.cleanup_crit_edge, label %if.end.i

get_atom_data_table_revision.exit.cleanup_crit_edge: ; preds = %get_atom_data_table_revision.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %get_atom_data_table_revision.exit
  %content_revision.i = getelementptr inbounds %struct.atom_common_table_header, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %content_revision.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %content_revision.i, align 1
  %10 = and i8 %9, 63
  %format_revision.i = getelementptr inbounds %struct.atom_common_table_header, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %format_revision.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %format_revision.i, align 1
  %13 = and i8 %12, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %13)
  %cond.i = icmp eq i8 %13, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %10)
  %cond25.i = icmp eq i8 %10, 4
  %or.cond.i = and i1 %cond25.i, %cond.i
  br i1 %or.cond.i, label %sw.bb1.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.end.i
  %conv.i = zext i16 %7 to i32
  %call.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv.i, i32 noundef 84) #7
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %sw.bb1.i.cleanup_crit_edge, label %sw.epilog14.i

sw.bb1.i.cleanup_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog14.i:                                    ; preds = %sw.bb1.i
  %14 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master_data_tbl, align 4
  %dce_info10.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %15, i32 0, i32 1, i32 27
  %16 = ptrtoint ptr %dce_info10.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %dce_info10.i, align 1
  %conv11.i = zext i16 %17 to i32
  %dc_golden_table_offset.i = getelementptr inbounds %struct.atom_display_controller_info_v4_4, ptr %call.i, i32 0, i32 34
  %18 = ptrtoint ptr %dc_golden_table_offset.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %dc_golden_table_offset.i, align 1
  %conv12.i = zext i16 %19 to i32
  %add.i = add nuw nsw i32 %conv12.i, %conv11.i
  %dc_golden_table_ver13.i = getelementptr inbounds %struct.atom_display_controller_info_v4_4, ptr %call.i, i32 0, i32 35
  %20 = ptrtoint ptr %dc_golden_table_ver13.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %dc_golden_table_ver13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool15.not.i = icmp ne i32 %add.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %21)
  %cmp.not.i = icmp eq i16 %21, 1
  %or.cond = select i1 %tobool15.not.i, i1 %cmp.not.i, i1 false
  br i1 %or.cond, label %bios_get_golden_table.exit, label %sw.epilog14.i.cleanup_crit_edge

sw.epilog14.i.cleanup_crit_edge:                  ; preds = %sw.epilog14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

bios_get_golden_table.exit:                       ; preds = %sw.epilog14.i
  %call23.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %add.i, i32 noundef 128) #7
  %tobool2.not = icmp eq ptr %call23.i, null
  br i1 %tobool2.not, label %bios_get_golden_table.exit.cleanup_crit_edge, label %if.end4

bios_get_golden_table.exit.cleanup_crit_edge:     ; preds = %bios_get_golden_table.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %bios_get_golden_table.exit
  call void @__sanitizer_cov_trace_pc() #9
  %golden_table = getelementptr inbounds %struct.dc_bios, ptr %dcb, i32 0, i32 10
  %22 = ptrtoint ptr %golden_table to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %golden_table, align 4
  %23 = ptrtoint ptr %call23.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %call23.i, align 1
  %aux_dphy_rx_control0_val7 = getelementptr inbounds %struct.dc_bios, ptr %dcb, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %aux_dphy_rx_control0_val7 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %aux_dphy_rx_control0_val7, align 4
  %aux_dphy_rx_control1_val = getelementptr inbounds %struct.atom_dc_golden_table_v1, ptr %call23.i, i32 0, i32 2
  %26 = ptrtoint ptr %aux_dphy_rx_control1_val to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %aux_dphy_rx_control1_val, align 1
  %aux_dphy_rx_control1_val9 = getelementptr inbounds %struct.dc_bios, ptr %dcb, i32 0, i32 10, i32 3
  %28 = ptrtoint ptr %aux_dphy_rx_control1_val9 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %aux_dphy_rx_control1_val9, align 4
  %aux_dphy_tx_control_val = getelementptr inbounds %struct.atom_dc_golden_table_v1, ptr %call23.i, i32 0, i32 1
  %29 = ptrtoint ptr %aux_dphy_tx_control_val to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %aux_dphy_tx_control_val, align 1
  %aux_dphy_tx_control_val11 = getelementptr inbounds %struct.dc_bios, ptr %dcb, i32 0, i32 10, i32 2
  %31 = ptrtoint ptr %aux_dphy_tx_control_val11 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %aux_dphy_tx_control_val11, align 4
  %dc_gpio_aux_ctrl_0_val = getelementptr inbounds %struct.atom_dc_golden_table_v1, ptr %call23.i, i32 0, i32 3
  %32 = ptrtoint ptr %dc_gpio_aux_ctrl_0_val to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %dc_gpio_aux_ctrl_0_val, align 1
  %dc_gpio_aux_ctrl_0_val13 = getelementptr inbounds %struct.dc_bios, ptr %dcb, i32 0, i32 10, i32 4
  %34 = ptrtoint ptr %dc_gpio_aux_ctrl_0_val13 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %dc_gpio_aux_ctrl_0_val13, align 4
  %dc_gpio_aux_ctrl_1_val = getelementptr inbounds %struct.atom_dc_golden_table_v1, ptr %call23.i, i32 0, i32 4
  %35 = ptrtoint ptr %dc_gpio_aux_ctrl_1_val to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %dc_gpio_aux_ctrl_1_val, align 1
  %dc_gpio_aux_ctrl_1_val15 = getelementptr inbounds %struct.dc_bios, ptr %dcb, i32 0, i32 10, i32 5
  %37 = ptrtoint ptr %dc_gpio_aux_ctrl_1_val15 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %dc_gpio_aux_ctrl_1_val15, align 4
  %dc_gpio_aux_ctrl_2_val = getelementptr inbounds %struct.atom_dc_golden_table_v1, ptr %call23.i, i32 0, i32 5
  %38 = ptrtoint ptr %dc_gpio_aux_ctrl_2_val to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %dc_gpio_aux_ctrl_2_val, align 1
  %dc_gpio_aux_ctrl_2_val17 = getelementptr inbounds %struct.dc_bios, ptr %dcb, i32 0, i32 10, i32 6
  %40 = ptrtoint ptr %dc_gpio_aux_ctrl_2_val17 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %dc_gpio_aux_ctrl_2_val17, align 4
  %dc_gpio_aux_ctrl_3_val = getelementptr inbounds %struct.atom_dc_golden_table_v1, ptr %call23.i, i32 0, i32 6
  %41 = ptrtoint ptr %dc_gpio_aux_ctrl_3_val to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %dc_gpio_aux_ctrl_3_val, align 1
  %dc_gpio_aux_ctrl_3_val19 = getelementptr inbounds %struct.dc_bios, ptr %dcb, i32 0, i32 10, i32 7
  %43 = ptrtoint ptr %dc_gpio_aux_ctrl_3_val19 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %dc_gpio_aux_ctrl_3_val19, align 4
  %dc_gpio_aux_ctrl_4_val = getelementptr inbounds %struct.atom_dc_golden_table_v1, ptr %call23.i, i32 0, i32 7
  %44 = ptrtoint ptr %dc_gpio_aux_ctrl_4_val to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %dc_gpio_aux_ctrl_4_val, align 1
  %dc_gpio_aux_ctrl_4_val21 = getelementptr inbounds %struct.dc_bios, ptr %dcb, i32 0, i32 10, i32 8
  %46 = ptrtoint ptr %dc_gpio_aux_ctrl_4_val21 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %dc_gpio_aux_ctrl_4_val21, align 4
  %dc_gpio_aux_ctrl_5_val = getelementptr inbounds %struct.atom_dc_golden_table_v1, ptr %call23.i, i32 0, i32 8
  %47 = ptrtoint ptr %dc_gpio_aux_ctrl_5_val to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %dc_gpio_aux_ctrl_5_val, align 1
  %dc_gpio_aux_ctrl_5_val23 = getelementptr inbounds %struct.dc_bios, ptr %dcb, i32 0, i32 10, i32 9
  %49 = ptrtoint ptr %dc_gpio_aux_ctrl_5_val23 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %dc_gpio_aux_ctrl_5_val23, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %bios_get_golden_table.exit.cleanup_crit_edge, %sw.epilog14.i.cleanup_crit_edge, %sw.bb1.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %get_atom_data_table_revision.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ 3, %entry.cleanup_crit_edge ], [ 3, %bios_get_golden_table.exit.cleanup_crit_edge ], [ 3, %get_atom_data_table_revision.exit.cleanup_crit_edge ], [ 3, %sw.bb1.i.cleanup_crit_edge ], [ 3, %sw.epilog14.i.cleanup_crit_edge ], [ 3, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_enable_lvtma_control(ptr noundef %dcb, i8 noundef zeroext %uc_pwr_on, i8 noundef zeroext %panel_instance) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_lvtma_control = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 6, i32 19
  %0 = ptrtoint ptr %enable_lvtma_control to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enable_lvtma_control, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %1(ptr noundef %dcb, i8 noundef zeroext %uc_pwr_on, i8 noundef zeroext %panel_instance) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_get_soc_bb_info(ptr noundef %dcb, ptr noundef writeonly %soc_bb_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %soc_bb_info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %master_data_tbl = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 3
  %0 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_data_tbl, align 4
  %dce_info = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %1, i32 0, i32 1, i32 27
  %2 = ptrtoint ptr %dce_info to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %dce_info, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool1.not = icmp eq i16 %3, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %conv = zext i16 %3 to i32
  %call = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv, i32 noundef 4) #7
  %tobool1.not.i = icmp eq ptr %call, null
  br i1 %tobool1.not.i, label %if.end3.cleanup_crit_edge, label %get_atom_data_table_revision.exit

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

get_atom_data_table_revision.exit:                ; preds = %if.end3
  %format_revision.i = getelementptr inbounds %struct.atom_common_table_header, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %format_revision.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %format_revision.i, align 1
  %6 = and i8 %5, 63
  %content_revision.i = getelementptr inbounds %struct.atom_common_table_header, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %content_revision.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %content_revision.i, align 1
  %9 = and i8 %8, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %6)
  %cond = icmp eq i8 %6, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %9)
  %cond15 = icmp eq i8 %9, 4
  %or.cond = select i1 %cond, i1 %cond15, i1 false
  br i1 %or.cond, label %if.end.i, label %get_atom_data_table_revision.exit.cleanup_crit_edge

get_atom_data_table_revision.exit.cleanup_crit_edge: ; preds = %get_atom_data_table_revision.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %get_atom_data_table_revision.exit
  %10 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master_data_tbl, align 4
  %dce_info.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %11, i32 0, i32 1, i32 27
  %12 = ptrtoint ptr %dce_info.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %dce_info.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool1.not.i20 = icmp eq i16 %13, 0
  br i1 %tobool1.not.i20, label %if.end.i.cleanup_crit_edge, label %if.end3.i21

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i21:                                      ; preds = %if.end.i
  %smu_info.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %11, i32 0, i32 1, i32 8
  %14 = ptrtoint ptr %smu_info.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %smu_info.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool6.not.i = icmp eq i16 %15, 0
  br i1 %tobool6.not.i, label %if.end3.i21.cleanup_crit_edge, label %if.end8.i

if.end3.i21.cleanup_crit_edge:                    ; preds = %if.end3.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i:                                        ; preds = %if.end3.i21
  %conv.i = zext i16 %13 to i32
  %call.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv.i, i32 noundef 84) #7
  %tobool12.not.i = icmp eq ptr %call.i, null
  br i1 %tobool12.not.i, label %if.end8.i.cleanup_crit_edge, label %if.end14.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_mclk_chg_lat.i = getelementptr inbounds %struct.atom_display_controller_info_v4_4, ptr %call.i, i32 0, i32 31
  %16 = ptrtoint ptr %max_mclk_chg_lat.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %max_mclk_chg_lat.i, align 1
  %18 = ptrtoint ptr %soc_bb_info to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %soc_bb_info, align 4
  %max_sr_enter_exit_lat.i = getelementptr inbounds %struct.atom_display_controller_info_v4_4, ptr %call.i, i32 0, i32 33
  %19 = ptrtoint ptr %max_sr_enter_exit_lat.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %max_sr_enter_exit_lat.i, align 1
  %dram_sr_enter_exit_latency_100ns.i = getelementptr inbounds %struct.bp_soc_bb_info, ptr %soc_bb_info, i32 0, i32 2
  %21 = ptrtoint ptr %dram_sr_enter_exit_latency_100ns.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %dram_sr_enter_exit_latency_100ns.i, align 4
  %max_sr_exit_lat.i = getelementptr inbounds %struct.atom_display_controller_info_v4_4, ptr %call.i, i32 0, i32 32
  %22 = ptrtoint ptr %max_sr_exit_lat.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %max_sr_exit_lat.i, align 1
  %dram_sr_exit_latency_100ns.i = getelementptr inbounds %struct.bp_soc_bb_info, ptr %soc_bb_info, i32 0, i32 1
  %24 = ptrtoint ptr %dram_sr_exit_latency_100ns.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %dram_sr_exit_latency_100ns.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14.i, %if.end8.i.cleanup_crit_edge, %if.end3.i21.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %get_atom_data_table_revision.exit.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 3, %if.end.cleanup_crit_edge ], [ 3, %get_atom_data_table_revision.exit.cleanup_crit_edge ], [ 0, %if.end14.i ], [ 2, %if.end.i.cleanup_crit_edge ], [ 2, %if.end3.i21.cleanup_crit_edge ], [ 2, %if.end8.i.cleanup_crit_edge ], [ 3, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_get_disp_connector_caps_info(ptr noundef %dcb, [1 x i32] %object_id.coerce, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc ptr @get_bios_object(ptr noundef %dcb, [1 x i32] %object_id.coerce)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %disp_recordoffset.i = getelementptr inbounds %struct.atom_display_object_path_v2, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %disp_recordoffset.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %disp_recordoffset.i, align 1
  %conv.i = zext i16 %1 to i32
  %object_info_tbl_offset.i = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 2
  %2 = ptrtoint ptr %object_info_tbl_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %object_info_tbl_offset.i, align 4
  %add.i = add i32 %3, %conv.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end11.i.for.cond.i_crit_edge, %if.end.i
  %offset.0.i = phi i32 [ %add.i, %if.end.i ], [ %add5.i, %if.end11.i.for.cond.i_crit_edge ]
  %call.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %offset.0.i, i32 noundef 2) #7
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %for.cond.i.cleanup_crit_edge, label %if.end3.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i:                                        ; preds = %for.cond.i
  %record_size.i = getelementptr inbounds %struct.atom_common_record_header, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %record_size.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %record_size.i, align 1
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %call.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp.i = icmp eq i8 %7, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not.i = icmp eq i8 %5, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool9.not.i
  br i1 %or.cond.i, label %if.end3.i.cleanup_crit_edge, label %if.end11.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11.i:                                       ; preds = %if.end3.i
  %conv4.i = zext i8 %5 to i32
  %add5.i = add i32 %offset.0.i, %conv4.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %7)
  %cmp14.not.i = icmp eq i8 %7, 23
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %5)
  %cmp20.i = icmp ugt i8 %5, 5
  %or.cond34.i = select i1 %cmp14.not.i, i1 %cmp20.i, i1 false
  br i1 %or.cond34.i, label %if.end8, label %if.end11.i.for.cond.i_crit_edge

if.end11.i.for.cond.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.end8:                                          ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %connectcaps = getelementptr inbounds %struct.atom_disp_connector_caps_record, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %connectcaps to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %connectcaps, align 1
  %10 = trunc i32 %9 to i8
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %info, align 4
  %bf.shl = shl i8 %10, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %info, align 4
  %12 = load i32, ptr %connectcaps, align 1
  %13 = trunc i32 %12 to i8
  %14 = shl i8 %13, 5
  %bf.shl16 = and i8 %14, 64
  %bf.clear17 = and i8 %bf.set, -65
  %bf.set18 = or i8 %bf.shl16, %bf.clear17
  store i8 %bf.set18, ptr %info, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end3.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 4, %if.end3.i.cleanup_crit_edge ], [ 4, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_get_lttpr_caps(ptr noundef %dcb, ptr noundef %dce_caps) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master_data_tbl = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 3
  %0 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_data_tbl, align 4
  %dce_info = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %1, i32 0, i32 1, i32 27
  %2 = ptrtoint ptr %dce_info to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %dce_info, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %3 to i32
  %call = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv, i32 noundef 4) #7
  %tobool1.not.i = icmp eq ptr %call, null
  br i1 %tobool1.not.i, label %if.end.cleanup_crit_edge, label %get_atom_data_table_revision.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

get_atom_data_table_revision.exit:                ; preds = %if.end
  %format_revision.i = getelementptr inbounds %struct.atom_common_table_header, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %format_revision.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %format_revision.i, align 1
  %6 = and i8 %5, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %6)
  %cond = icmp eq i8 %6, 4
  br i1 %cond, label %sw.bb, label %get_atom_data_table_revision.exit.cleanup_crit_edge

get_atom_data_table_revision.exit.cleanup_crit_edge: ; preds = %get_atom_data_table_revision.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %get_atom_data_table_revision.exit
  %content_revision.i = getelementptr inbounds %struct.atom_common_table_header, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %content_revision.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %content_revision.i, align 1
  %9 = and i8 %8, 63
  %and6.i = zext i8 %9 to i32
  %10 = zext i32 %and6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %and6.i, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb4
    i32 2, label %sw.bb10
    i32 3, label %sw.bb20
    i32 4, label %sw.bb30
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb
  %tobool.not.i = icmp eq ptr %dce_caps, null
  br i1 %tobool.not.i, label %sw.bb4.cleanup.sink.split_crit_edge, label %if.end.i

sw.bb4.cleanup.sink.split_crit_edge:              ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %sw.bb4
  %11 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %master_data_tbl, align 4
  %dce_info.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %12, i32 0, i32 1, i32 27
  %13 = ptrtoint ptr %dce_info.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %dce_info.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool1.not.i65 = icmp eq i16 %14, 0
  br i1 %tobool1.not.i65, label %if.end.i.cleanup.sink.split_crit_edge, label %if.end3.i66

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end3.i66:                                      ; preds = %if.end.i
  %conv.i = zext i16 %14 to i32
  %call.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv.i, i32 noundef 56) #7
  %tobool7.not.i = icmp eq ptr %call.i, null
  br i1 %tobool7.not.i, label %if.end3.i66.cleanup.sink.split_crit_edge, label %if.end9.i

if.end3.i66.cleanup.sink.split_crit_edge:         ; preds = %if.end3.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end9.i:                                        ; preds = %if.end3.i66
  call void @__sanitizer_cov_trace_pc() #9
  %display_caps.i = getelementptr inbounds %struct.atom_display_controller_info_v4_1, ptr %call.i, i32 0, i32 1
  br label %cleanup.sink.split.sink.split

sw.bb10:                                          ; preds = %sw.bb
  %tobool.not.i67 = icmp eq ptr %dce_caps, null
  br i1 %tobool.not.i67, label %sw.bb10.cleanup.sink.split_crit_edge, label %if.end.i71

sw.bb10.cleanup.sink.split_crit_edge:             ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i71:                                       ; preds = %sw.bb10
  %15 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %master_data_tbl, align 4
  %dce_info.i69 = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %16, i32 0, i32 1, i32 27
  %17 = ptrtoint ptr %dce_info.i69 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %dce_info.i69, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool1.not.i70 = icmp eq i16 %18, 0
  br i1 %tobool1.not.i70, label %if.end.i71.cleanup.sink.split_crit_edge, label %if.end3.i75

if.end.i71.cleanup.sink.split_crit_edge:          ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end3.i75:                                      ; preds = %if.end.i71
  %conv.i72 = zext i16 %18 to i32
  %call.i73 = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv.i72, i32 noundef 56) #7
  %tobool7.not.i74 = icmp eq ptr %call.i73, null
  br i1 %tobool7.not.i74, label %if.end3.i75.cleanup.sink.split_crit_edge, label %if.end9.i78

if.end3.i75.cleanup.sink.split_crit_edge:         ; preds = %if.end3.i75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end9.i78:                                      ; preds = %if.end3.i75
  call void @__sanitizer_cov_trace_pc() #9
  %display_caps.i76 = getelementptr inbounds %struct.atom_display_controller_info_v4_2, ptr %call.i73, i32 0, i32 1
  br label %cleanup.sink.split.sink.split

sw.bb20:                                          ; preds = %sw.bb
  %tobool.not.i80 = icmp eq ptr %dce_caps, null
  br i1 %tobool.not.i80, label %sw.bb20.cleanup.sink.split_crit_edge, label %if.end.i84

sw.bb20.cleanup.sink.split_crit_edge:             ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i84:                                       ; preds = %sw.bb20
  %19 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %master_data_tbl, align 4
  %dce_info.i82 = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %20, i32 0, i32 1, i32 27
  %21 = ptrtoint ptr %dce_info.i82 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %dce_info.i82, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool1.not.i83 = icmp eq i16 %22, 0
  br i1 %tobool1.not.i83, label %if.end.i84.cleanup.sink.split_crit_edge, label %if.end3.i88

if.end.i84.cleanup.sink.split_crit_edge:          ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end3.i88:                                      ; preds = %if.end.i84
  %conv.i85 = zext i16 %22 to i32
  %call.i86 = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv.i85, i32 noundef 56) #7
  %tobool7.not.i87 = icmp eq ptr %call.i86, null
  br i1 %tobool7.not.i87, label %if.end3.i88.cleanup.sink.split_crit_edge, label %if.end9.i91

if.end3.i88.cleanup.sink.split_crit_edge:         ; preds = %if.end3.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end9.i91:                                      ; preds = %if.end3.i88
  call void @__sanitizer_cov_trace_pc() #9
  %display_caps.i89 = getelementptr inbounds %struct.atom_display_controller_info_v4_3, ptr %call.i86, i32 0, i32 1
  br label %cleanup.sink.split.sink.split

sw.bb30:                                          ; preds = %sw.bb
  %tobool.not.i93 = icmp eq ptr %dce_caps, null
  br i1 %tobool.not.i93, label %sw.bb30.cleanup.sink.split_crit_edge, label %if.end.i97

sw.bb30.cleanup.sink.split_crit_edge:             ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i97:                                       ; preds = %sw.bb30
  %23 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %master_data_tbl, align 4
  %dce_info.i95 = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %24, i32 0, i32 1, i32 27
  %25 = ptrtoint ptr %dce_info.i95 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %dce_info.i95, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool1.not.i96 = icmp eq i16 %26, 0
  br i1 %tobool1.not.i96, label %if.end.i97.cleanup.sink.split_crit_edge, label %if.end3.i101

if.end.i97.cleanup.sink.split_crit_edge:          ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end3.i101:                                     ; preds = %if.end.i97
  %conv.i98 = zext i16 %26 to i32
  %call.i99 = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv.i98, i32 noundef 84) #7
  %tobool7.not.i100 = icmp eq ptr %call.i99, null
  br i1 %tobool7.not.i100, label %if.end3.i101.cleanup.sink.split_crit_edge, label %if.end9.i104

if.end3.i101.cleanup.sink.split_crit_edge:        ; preds = %if.end3.i101
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end9.i104:                                     ; preds = %if.end3.i101
  call void @__sanitizer_cov_trace_pc() #9
  %display_caps.i102 = getelementptr inbounds %struct.atom_display_controller_info_v4_4, ptr %call.i99, i32 0, i32 1
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.end9.i104, %if.end9.i91, %if.end9.i78, %if.end9.i
  %display_caps.i102.sink = phi ptr [ %display_caps.i102, %if.end9.i104 ], [ %display_caps.i89, %if.end9.i91 ], [ %display_caps.i76, %if.end9.i78 ], [ %display_caps.i, %if.end9.i ]
  %27 = ptrtoint ptr %display_caps.i102.sink to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %display_caps.i102.sink, align 1
  %conv10.i103 = trunc i32 %28 to i8
  %29 = ptrtoint ptr %dce_caps to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv10.i103, ptr %dce_caps, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end3.i101.cleanup.sink.split_crit_edge, %if.end.i97.cleanup.sink.split_crit_edge, %sw.bb30.cleanup.sink.split_crit_edge, %if.end3.i88.cleanup.sink.split_crit_edge, %if.end.i84.cleanup.sink.split_crit_edge, %sw.bb20.cleanup.sink.split_crit_edge, %if.end3.i75.cleanup.sink.split_crit_edge, %if.end.i71.cleanup.sink.split_crit_edge, %sw.bb10.cleanup.sink.split_crit_edge, %if.end3.i66.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge, %sw.bb4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 1, %sw.bb4.cleanup.sink.split_crit_edge ], [ 2, %if.end.i.cleanup.sink.split_crit_edge ], [ 2, %if.end3.i66.cleanup.sink.split_crit_edge ], [ 1, %sw.bb10.cleanup.sink.split_crit_edge ], [ 2, %if.end.i71.cleanup.sink.split_crit_edge ], [ 2, %if.end3.i75.cleanup.sink.split_crit_edge ], [ 1, %sw.bb20.cleanup.sink.split_crit_edge ], [ 2, %if.end.i84.cleanup.sink.split_crit_edge ], [ 2, %if.end3.i88.cleanup.sink.split_crit_edge ], [ 1, %sw.bb30.cleanup.sink.split_crit_edge ], [ 2, %if.end.i97.cleanup.sink.split_crit_edge ], [ 2, %if.end3.i101.cleanup.sink.split_crit_edge ], [ 0, %cleanup.sink.split.sink.split ]
  %30 = ptrtoint ptr %dce_caps to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %dce_caps, align 1
  %32 = lshr i8 %31, 5
  %.lobit = and i8 %32, 1
  store i8 %.lobit, ptr %dce_caps, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb.cleanup_crit_edge, %get_atom_data_table_revision.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %entry.cleanup_crit_edge ], [ 3, %sw.bb.cleanup_crit_edge ], [ 3, %get_atom_data_table_revision.exit.cleanup_crit_edge ], [ 3, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_get_lttpr_interop(ptr noundef %dcb, ptr noundef %dce_caps) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master_data_tbl = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 3
  %0 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_data_tbl, align 4
  %dce_info = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %1, i32 0, i32 1, i32 27
  %2 = ptrtoint ptr %dce_info to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %dce_info, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %3 to i32
  %call = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv, i32 noundef 4) #7
  %tobool1.not.i = icmp eq ptr %call, null
  br i1 %tobool1.not.i, label %if.end.cleanup_crit_edge, label %get_atom_data_table_revision.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

get_atom_data_table_revision.exit:                ; preds = %if.end
  %format_revision.i = getelementptr inbounds %struct.atom_common_table_header, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %format_revision.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %format_revision.i, align 1
  %6 = and i8 %5, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %6)
  %cond = icmp eq i8 %6, 4
  br i1 %cond, label %sw.bb, label %get_atom_data_table_revision.exit.cleanup_crit_edge

get_atom_data_table_revision.exit.cleanup_crit_edge: ; preds = %get_atom_data_table_revision.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %get_atom_data_table_revision.exit
  %content_revision.i = getelementptr inbounds %struct.atom_common_table_header, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %content_revision.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %content_revision.i, align 1
  %9 = and i8 %8, 63
  %and6.i = zext i8 %9 to i32
  %10 = zext i32 %and6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %and6.i, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb4
    i32 2, label %sw.bb10
    i32 3, label %sw.bb20
    i32 4, label %sw.bb30
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb
  %tobool.not.i = icmp eq ptr %dce_caps, null
  br i1 %tobool.not.i, label %sw.bb4.cleanup.sink.split_crit_edge, label %if.end.i

sw.bb4.cleanup.sink.split_crit_edge:              ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %sw.bb4
  %11 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %master_data_tbl, align 4
  %dce_info.i = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %12, i32 0, i32 1, i32 27
  %13 = ptrtoint ptr %dce_info.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %dce_info.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool1.not.i65 = icmp eq i16 %14, 0
  br i1 %tobool1.not.i65, label %if.end.i.cleanup.sink.split_crit_edge, label %if.end3.i66

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end3.i66:                                      ; preds = %if.end.i
  %conv.i = zext i16 %14 to i32
  %call.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv.i, i32 noundef 56) #7
  %tobool7.not.i = icmp eq ptr %call.i, null
  br i1 %tobool7.not.i, label %if.end3.i66.cleanup.sink.split_crit_edge, label %if.end9.i

if.end3.i66.cleanup.sink.split_crit_edge:         ; preds = %if.end3.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end9.i:                                        ; preds = %if.end3.i66
  call void @__sanitizer_cov_trace_pc() #9
  %display_caps.i = getelementptr inbounds %struct.atom_display_controller_info_v4_1, ptr %call.i, i32 0, i32 1
  br label %cleanup.sink.split.sink.split

sw.bb10:                                          ; preds = %sw.bb
  %tobool.not.i67 = icmp eq ptr %dce_caps, null
  br i1 %tobool.not.i67, label %sw.bb10.cleanup.sink.split_crit_edge, label %if.end.i71

sw.bb10.cleanup.sink.split_crit_edge:             ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i71:                                       ; preds = %sw.bb10
  %15 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %master_data_tbl, align 4
  %dce_info.i69 = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %16, i32 0, i32 1, i32 27
  %17 = ptrtoint ptr %dce_info.i69 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %dce_info.i69, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool1.not.i70 = icmp eq i16 %18, 0
  br i1 %tobool1.not.i70, label %if.end.i71.cleanup.sink.split_crit_edge, label %if.end3.i75

if.end.i71.cleanup.sink.split_crit_edge:          ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end3.i75:                                      ; preds = %if.end.i71
  %conv.i72 = zext i16 %18 to i32
  %call.i73 = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv.i72, i32 noundef 56) #7
  %tobool7.not.i74 = icmp eq ptr %call.i73, null
  br i1 %tobool7.not.i74, label %if.end3.i75.cleanup.sink.split_crit_edge, label %if.end9.i78

if.end3.i75.cleanup.sink.split_crit_edge:         ; preds = %if.end3.i75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end9.i78:                                      ; preds = %if.end3.i75
  call void @__sanitizer_cov_trace_pc() #9
  %display_caps.i76 = getelementptr inbounds %struct.atom_display_controller_info_v4_2, ptr %call.i73, i32 0, i32 1
  br label %cleanup.sink.split.sink.split

sw.bb20:                                          ; preds = %sw.bb
  %tobool.not.i80 = icmp eq ptr %dce_caps, null
  br i1 %tobool.not.i80, label %sw.bb20.cleanup.sink.split_crit_edge, label %if.end.i84

sw.bb20.cleanup.sink.split_crit_edge:             ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i84:                                       ; preds = %sw.bb20
  %19 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %master_data_tbl, align 4
  %dce_info.i82 = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %20, i32 0, i32 1, i32 27
  %21 = ptrtoint ptr %dce_info.i82 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %dce_info.i82, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool1.not.i83 = icmp eq i16 %22, 0
  br i1 %tobool1.not.i83, label %if.end.i84.cleanup.sink.split_crit_edge, label %if.end3.i88

if.end.i84.cleanup.sink.split_crit_edge:          ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end3.i88:                                      ; preds = %if.end.i84
  %conv.i85 = zext i16 %22 to i32
  %call.i86 = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv.i85, i32 noundef 56) #7
  %tobool7.not.i87 = icmp eq ptr %call.i86, null
  br i1 %tobool7.not.i87, label %if.end3.i88.cleanup.sink.split_crit_edge, label %if.end9.i91

if.end3.i88.cleanup.sink.split_crit_edge:         ; preds = %if.end3.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end9.i91:                                      ; preds = %if.end3.i88
  call void @__sanitizer_cov_trace_pc() #9
  %display_caps.i89 = getelementptr inbounds %struct.atom_display_controller_info_v4_3, ptr %call.i86, i32 0, i32 1
  br label %cleanup.sink.split.sink.split

sw.bb30:                                          ; preds = %sw.bb
  %tobool.not.i93 = icmp eq ptr %dce_caps, null
  br i1 %tobool.not.i93, label %sw.bb30.cleanup.sink.split_crit_edge, label %if.end.i97

sw.bb30.cleanup.sink.split_crit_edge:             ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i97:                                       ; preds = %sw.bb30
  %23 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %master_data_tbl, align 4
  %dce_info.i95 = getelementptr inbounds %struct.atom_master_data_table_v2_1, ptr %24, i32 0, i32 1, i32 27
  %25 = ptrtoint ptr %dce_info.i95 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %dce_info.i95, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool1.not.i96 = icmp eq i16 %26, 0
  br i1 %tobool1.not.i96, label %if.end.i97.cleanup.sink.split_crit_edge, label %if.end3.i101

if.end.i97.cleanup.sink.split_crit_edge:          ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end3.i101:                                     ; preds = %if.end.i97
  %conv.i98 = zext i16 %26 to i32
  %call.i99 = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv.i98, i32 noundef 84) #7
  %tobool7.not.i100 = icmp eq ptr %call.i99, null
  br i1 %tobool7.not.i100, label %if.end3.i101.cleanup.sink.split_crit_edge, label %if.end9.i104

if.end3.i101.cleanup.sink.split_crit_edge:        ; preds = %if.end3.i101
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end9.i104:                                     ; preds = %if.end3.i101
  call void @__sanitizer_cov_trace_pc() #9
  %display_caps.i102 = getelementptr inbounds %struct.atom_display_controller_info_v4_4, ptr %call.i99, i32 0, i32 1
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.end9.i104, %if.end9.i91, %if.end9.i78, %if.end9.i
  %display_caps.i102.sink = phi ptr [ %display_caps.i102, %if.end9.i104 ], [ %display_caps.i89, %if.end9.i91 ], [ %display_caps.i76, %if.end9.i78 ], [ %display_caps.i, %if.end9.i ]
  %27 = ptrtoint ptr %display_caps.i102.sink to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %display_caps.i102.sink, align 1
  %conv10.i103 = trunc i32 %28 to i8
  %29 = ptrtoint ptr %dce_caps to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv10.i103, ptr %dce_caps, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end3.i101.cleanup.sink.split_crit_edge, %if.end.i97.cleanup.sink.split_crit_edge, %sw.bb30.cleanup.sink.split_crit_edge, %if.end3.i88.cleanup.sink.split_crit_edge, %if.end.i84.cleanup.sink.split_crit_edge, %sw.bb20.cleanup.sink.split_crit_edge, %if.end3.i75.cleanup.sink.split_crit_edge, %if.end.i71.cleanup.sink.split_crit_edge, %sw.bb10.cleanup.sink.split_crit_edge, %if.end3.i66.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge, %sw.bb4.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 1, %sw.bb4.cleanup.sink.split_crit_edge ], [ 2, %if.end.i.cleanup.sink.split_crit_edge ], [ 2, %if.end3.i66.cleanup.sink.split_crit_edge ], [ 1, %sw.bb10.cleanup.sink.split_crit_edge ], [ 2, %if.end.i71.cleanup.sink.split_crit_edge ], [ 2, %if.end3.i75.cleanup.sink.split_crit_edge ], [ 1, %sw.bb20.cleanup.sink.split_crit_edge ], [ 2, %if.end.i84.cleanup.sink.split_crit_edge ], [ 2, %if.end3.i88.cleanup.sink.split_crit_edge ], [ 1, %sw.bb30.cleanup.sink.split_crit_edge ], [ 2, %if.end.i97.cleanup.sink.split_crit_edge ], [ 2, %if.end3.i101.cleanup.sink.split_crit_edge ], [ 0, %cleanup.sink.split.sink.split ]
  %30 = ptrtoint ptr %dce_caps to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %dce_caps, align 1
  %32 = lshr i8 %31, 6
  %.lobit = and i8 %32, 1
  store i8 %.lobit, ptr %dce_caps, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb.cleanup_crit_edge, %get_atom_data_table_revision.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %entry.cleanup_crit_edge ], [ 3, %sw.bb.cleanup_crit_edge ], [ 3, %get_atom_data_table_revision.exit.cleanup_crit_edge ], [ 3, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @object_id_from_bios_object_id(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_bios_object(ptr nocapture noundef readonly %bp, [1 x i32] %id.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id.coerce.fca.0.extract = extractvalue [1 x i32] %id.coerce, 0
  %bf.lshr = lshr i32 %id.coerce.fca.0.extract, 16
  %bf.clear = and i32 %bf.lshr, 15
  %0 = zext i32 %bf.clear to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %bf.clear, label %entry.cleanup_crit_edge [
    i32 2, label %for.cond.preheader
    i32 3, label %entry.sw.bb31_crit_edge
    i32 5, label %entry.sw.bb31_crit_edge132
  ]

entry.sw.bb31_crit_edge132:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb31

entry.sw.bb31_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb31

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %1 = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %number_of_path111 = getelementptr inbounds %struct.display_object_info_table_v1_4, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %number_of_path111 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %number_of_path111, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp113.not = icmp eq i8 %5, 0
  br i1 %cmp113.not, label %for.cond.preheader.sw.bb31_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.sw.bb31_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb31

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %6 = phi ptr [ %12, %for.inc.for.body_crit_edge ], [ %3, %for.cond.preheader.for.body_crit_edge ]
  %i.0114 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %encoderobjid = getelementptr %struct.display_object_info_table_v1_4, ptr %6, i32 0, i32 4, i32 %i.0114, i32 2
  %7 = ptrtoint ptr %encoderobjid to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %encoderobjid, align 1
  %conv3 = zext i16 %8 to i32
  %call = tail call i32 @object_id_from_bios_object_id(i32 noundef %conv3) #7
  %9 = and i32 %call, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %9)
  %cmp11 = icmp eq i32 %9, 131072
  %cmp17.unshifted = xor i32 %call, %id.coerce.fca.0.extract
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %cmp17.unshifted)
  %cmp17 = icmp ult i32 %cmp17.unshifted, 16777216
  %or.cond = select i1 %cmp11, i1 %cmp17, i1 false
  %10 = and i32 %cmp17.unshifted, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp26 = icmp eq i32 %10, 0
  %or.cond105 = select i1 %or.cond, i1 %cmp26, i1 false
  br i1 %or.cond105, label %for.body.cleanup.sink.split_crit_edge, label %for.inc

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0114, 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %number_of_path = getelementptr inbounds %struct.display_object_info_table_v1_4, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %number_of_path to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %number_of_path, align 1
  %conv = zext i8 %14 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.sw.bb31_crit_edge

for.inc.sw.bb31_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb31

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

sw.bb31:                                          ; preds = %for.inc.sw.bb31_crit_edge, %for.cond.preheader.sw.bb31_crit_edge, %entry.sw.bb31_crit_edge, %entry.sw.bb31_crit_edge132
  %15 = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %number_of_path34115 = getelementptr inbounds %struct.display_object_info_table_v1_4, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %number_of_path34115 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %number_of_path34115, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp36117.not = icmp eq i8 %19, 0
  br i1 %cmp36117.not, label %sw.bb31.cleanup_crit_edge, label %sw.bb31.for.body38_crit_edge

sw.bb31.for.body38_crit_edge:                     ; preds = %sw.bb31
  br label %for.body38

sw.bb31.cleanup_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body38:                                       ; preds = %for.inc75.for.body38_crit_edge, %sw.bb31.for.body38_crit_edge
  %20 = phi ptr [ %25, %for.inc75.for.body38_crit_edge ], [ %17, %sw.bb31.for.body38_crit_edge ]
  %i.1118 = phi i32 [ %inc76, %for.inc75.for.body38_crit_edge ], [ 0, %sw.bb31.for.body38_crit_edge ]
  %arrayidx42 = getelementptr %struct.display_object_info_table_v1_4, ptr %20, i32 0, i32 4, i32 %i.1118
  %21 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %arrayidx42, align 1
  %conv43 = zext i16 %22 to i32
  %call44 = tail call i32 @object_id_from_bios_object_id(i32 noundef %conv43) #7
  %bf.lshr50 = lshr i32 %call44, 16
  %bf.clear51 = and i32 %bf.lshr50, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear, i32 %bf.clear51)
  %cmp52 = icmp eq i32 %bf.clear, %bf.clear51
  %cmp59.unshifted = xor i32 %call44, %id.coerce.fca.0.extract
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %cmp59.unshifted)
  %cmp59 = icmp ult i32 %cmp59.unshifted, 16777216
  %or.cond104 = select i1 %cmp52, i1 %cmp59, i1 false
  %23 = and i32 %cmp59.unshifted, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp68 = icmp eq i32 %23, 0
  %or.cond106 = select i1 %or.cond104, i1 %cmp68, i1 false
  br i1 %or.cond106, label %for.body38.cleanup.sink.split_crit_edge, label %for.inc75

for.body38.cleanup.sink.split_crit_edge:          ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.inc75:                                        ; preds = %for.body38
  %inc76 = add nuw nsw i32 %i.1118, 1
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %15, align 4
  %number_of_path34 = getelementptr inbounds %struct.display_object_info_table_v1_4, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %number_of_path34 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %number_of_path34, align 1
  %conv35 = zext i8 %27 to i32
  %cmp36 = icmp ult i32 %inc76, %conv35
  br i1 %cmp36, label %for.inc75.for.body38_crit_edge, label %for.inc75.cleanup_crit_edge

for.inc75.cleanup_crit_edge:                      ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc75.for.body38_crit_edge:                   ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body38

cleanup.sink.split:                               ; preds = %for.body38.cleanup.sink.split_crit_edge, %for.body.cleanup.sink.split_crit_edge
  %.sink123 = phi ptr [ %15, %for.body38.cleanup.sink.split_crit_edge ], [ %1, %for.body.cleanup.sink.split_crit_edge ]
  %i.1118.lcssa.sink = phi i32 [ %i.1118, %for.body38.cleanup.sink.split_crit_edge ], [ %i.0114, %for.body.cleanup.sink.split_crit_edge ]
  %28 = ptrtoint ptr %.sink123 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %.sink123, align 4
  %arrayidx73 = getelementptr %struct.display_object_info_table_v1_4, ptr %29, i32 0, i32 4, i32 %i.1118.lcssa.sink
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc75.cleanup_crit_edge, %sw.bb31.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %sw.bb31.cleanup_crit_edge ], [ %arrayidx73, %cleanup.sink.split ], [ null, %for.inc75.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bios_is_accelerated_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bios_set_scratch_critical_state(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c", i32 3008, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @vbios_funcs, !4, !"vbios_funcs", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c", i32 2873, i32 36}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c", i32 460, i32 3}
!7 = distinct !{null, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__func__.bios_parser_get_device_tag, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c", i32 643, i32 3}
!10 = !{ptr @__func__.device_type_from_device_id, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c", i32 620, i32 3}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c", i32 851, i32 4}
!14 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c", i32 1720, i32 3}
!16 = !{ptr @__func__.firmware_parser_destroy, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c", i32 129, i32 3}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c", i32 2664, i32 3}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c", i32 2631, i32 3}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c", i32 1757, i32 3}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser2.c", i32 1645, i32 3}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{!37}
!37 = distinct !{!37, !38, !"device_type_from_device_id: %agg.result"}
!38 = distinct !{!38, !"device_type_from_device_id"}
