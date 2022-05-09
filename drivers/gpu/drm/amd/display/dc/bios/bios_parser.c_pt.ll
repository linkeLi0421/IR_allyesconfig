; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/bios/bios_parser.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dc_vbios_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spread_spectrum_info = type { %struct.spread_spectrum_type, i32, i32, i32, %union.anon }
%struct.spread_spectrum_type = type { i8 }
%union.anon = type { %struct.step_and_delay_info }
%struct.step_and_delay_info = type { i32, i32, i32 }
%struct.bp_init_data = type { ptr, ptr }
%struct.dc_bios = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, %struct.dc_firmware_info, i8, %struct.dc_vram_info, %struct.dc_golden_table }
%struct.dc_firmware_info = type { %struct.pll_info, %struct.firmware_feature, i32, i32, i32, i8, i8, i32, i32, i32, i32, i8, i8 }
%struct.pll_info = type { i32, i32, i32, i32, i32 }
%struct.firmware_feature = type { i32, i32 }
%struct.dc_vram_info = type { i32, i32 }
%struct.dc_golden_table = type { i16, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._ATOM_COMMON_TABLE_HEADER = type { i16, i8, i8 }
%struct._ATOM_ROM_HEADER = type { %struct._ATOM_COMMON_TABLE_HEADER, [4 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8 }
%struct.bios_parser = type { %struct.dc_bios, %struct.object_info_table, i32, ptr, ptr, ptr, %struct.cmd_tbl, i8 }
%struct.object_info_table = type { %struct.atom_data_revision, %union.anon.62 }
%struct.atom_data_revision = type { i32, i32 }
%union.anon.62 = type { ptr }
%struct.cmd_tbl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._ATOM_MASTER_DATA_TABLE = type { %struct._ATOM_COMMON_TABLE_HEADER, %struct._ATOM_MASTER_LIST_OF_DATA_TABLES }
%struct._ATOM_MASTER_LIST_OF_DATA_TABLES = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8 = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, [4 x %struct._ATOM_CLK_VOLT_CAPABILITY], i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i32, i16, i16, i16, i8, i8, [40 x i8], %union._ATOM_TDP_CONFIG, [19 x i32], [5 x %struct._ATOM_AVAILABLE_SCLK_LIST], i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, %struct._ATOM_CLK_VOLT_CAPABILITY, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i32], i32, [4 x i32], [4 x i16], i16, i16, %struct._ATOM_EXTERNAL_DISPLAY_CONNECTION_INFO }
%union._ATOM_TDP_CONFIG = type { %struct._ATOM_TDP_CONFIG_BITS }
%struct._ATOM_TDP_CONFIG_BITS = type { i32 }
%struct._ATOM_AVAILABLE_SCLK_LIST = type { i32, i16, i16 }
%struct._ATOM_CLK_VOLT_CAPABILITY = type { i32, i32 }
%struct._ATOM_EXTERNAL_DISPLAY_CONNECTION_INFO = type { %struct._ATOM_COMMON_TABLE_HEADER, [16 x i8], [7 x %struct._EXT_DISPLAY_PATH], i8, i8, i8, i8, i8, [3 x i8] }
%struct._EXT_DISPLAY_PATH = type { i16, i16, i16, i8, i8, i16, %union.anon.66, i8, i16, i16 }
%union.anon.66 = type { i8 }
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
%struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9 = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, [4 x %struct._ATOM_CLK_VOLT_CAPABILITY], i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i32, i16, i16, i16, i8, i8, [40 x i8], %union._ATOM_TDP_CONFIG, i8, i8, [9 x %struct._ATOM_I2C_REG_INFO], [2 x i32], [8 x %struct._ATOM_CLK_VOLT_CAPABILITY_V2], [5 x %struct._ATOM_AVAILABLE_SCLK_LIST], i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, [3 x i32], i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i32], i32, [4 x i32], [4 x i16], i16, i8, i8, %struct._ATOM_EXTERNAL_DISPLAY_CONNECTION_INFO }
%struct._ATOM_I2C_REG_INFO = type { i8, i8 }
%struct._ATOM_CLK_VOLT_CAPABILITY_V2 = type <{ i16, i32 }>
%struct._ATOM_FIRMWARE_INFO_V1_4 = type <{ %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, %union._ATOM_FIRMWARE_CAPABILITY_ACCESS, i16, i16, i8, i8, i8 }>
%union._ATOM_FIRMWARE_CAPABILITY_ACCESS = type { %struct._ATOM_FIRMWARE_CAPABILITY }
%struct._ATOM_FIRMWARE_CAPABILITY = type { i16 }
%struct._ATOM_FIRMWARE_INFO_V2_1 = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, %union._ATOM_FIRMWARE_CAPABILITY_ACCESS, i16, i16, i16, i8, [3 x i8] }
%struct._ATOM_FIRMWARE_INFO_V2_2 = type { %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, i32, i8, [3 x i8], i32, i32, i16, i16, i16, i16, %union._ATOM_FIRMWARE_CAPABILITY_ACCESS, i16, i16, i16, i8, i8, %struct._PRODUCT_BRANDING, i8, i16, i16, [3 x i32] }
%struct._PRODUCT_BRANDING = type { i8 }
%struct._ATOM_OBJECT_HEADER = type { %struct._ATOM_COMMON_TABLE_HEADER, i16, i16, i16, i16, i16, i16 }
%struct._ATOM_OBJECT_TABLE = type { i8, [3 x i8], [1 x %struct._ATOM_OBJECT] }
%struct._ATOM_OBJECT = type { i16, i16, i16, i16 }
%struct._ATOM_COMMON_RECORD_HEADER = type { i8, i8 }
%struct._ATOM_I2C_RECORD = type { %struct._ATOM_COMMON_RECORD_HEADER, %struct._ATOM_I2C_ID_CONFIG, i8 }
%struct._ATOM_I2C_ID_CONFIG = type { i8 }
%struct.graphics_object_i2c_info = type { %struct.gpio_info, i8, i32, i32, i32 }
%struct.gpio_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._ATOM_GPIO_I2C_INFO = type { %struct._ATOM_COMMON_TABLE_HEADER, [16 x %struct._ATOM_GPIO_I2C_ASSIGMENT] }
%struct._ATOM_GPIO_I2C_ASSIGMENT = type <{ i16, i16, i16, i16, i16, i16, i16, i16, %union._ATOM_I2C_ID_CONFIG_ACCESS, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%union._ATOM_I2C_ID_CONFIG_ACCESS = type { %struct._ATOM_I2C_ID_CONFIG }
%struct._ATOM_HPD_INT_RECORD = type { %struct._ATOM_COMMON_RECORD_HEADER, i8, i8 }
%struct.graphics_object_hpd_info = type { i8, i8 }
%struct._ATOM_CONNECTOR_DEVICE_TAG_RECORD = type { %struct._ATOM_COMMON_RECORD_HEADER, i8, i8, [1 x %struct._ATOM_CONNECTOR_DEVICE_TAG] }
%struct._ATOM_CONNECTOR_DEVICE_TAG = type { i32, i16, i16 }
%struct.connector_device_tag_info = type { i32, %struct.device_id }
%struct.device_id = type { i32, i16 }
%struct._ATOM_ASIC_INTERNAL_SS_INFO_V2 = type { %struct._ATOM_COMMON_TABLE_HEADER, [1 x %struct._ATOM_ASIC_SS_ASSIGNMENT_V2] }
%struct._ATOM_ASIC_SS_ASSIGNMENT_V2 = type { i32, i16, i16, i8, i8, [2 x i8] }
%struct._ATOM_ASIC_INTERNAL_SS_INFO_V3 = type { %struct._ATOM_COMMON_TABLE_HEADER, [1 x %struct._ATOM_ASIC_SS_ASSIGNMENT_V3] }
%struct._ATOM_ASIC_SS_ASSIGNMENT_V3 = type { i32, i16, i16, i8, i8, [2 x i8] }
%struct._ATOM_LVDS_INFO_V12 = type { %struct._ATOM_COMMON_TABLE_HEADER, %struct._ATOM_DTD_FORMAT, i16, i16, i16, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, [2 x i8] }
%struct._ATOM_DTD_FORMAT = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %union._ATOM_MODE_MISC_INFO_ACCESS, i8, i8 }
%union._ATOM_MODE_MISC_INFO_ACCESS = type { %struct._ATOM_MODE_MISC_INFO }
%struct._ATOM_MODE_MISC_INFO = type { i16 }
%struct.device_timing = type { %struct.misc_info, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.misc_info = type { i16, [2 x i8] }
%struct.embedded_panel_info = type { %struct.device_timing, i32, %struct.supported_refresh_rate, i32, i32, i8 }
%struct.supported_refresh_rate = type { i8, [3 x i8] }
%struct._ATOM_LCD_INFO_V13 = type { %struct._ATOM_COMMON_TABLE_HEADER, %struct._ATOM_DTD_FORMAT, i16, %union.anon.63, i32, i8, i8, i8, i8, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, [2 x i32] }
%union.anon.63 = type { i16 }
%struct._ATOM_LCD_REFRESH_RATE_SUPPORT = type { i8, i8 }
%struct._ATOM_GPIO_PIN_LUT = type { %struct._ATOM_COMMON_TABLE_HEADER, [1 x %struct._ATOM_GPIO_PIN_ASSIGNMENT] }
%struct._ATOM_GPIO_PIN_ASSIGNMENT = type { i16, i8, i8 }
%struct.gpio_pin_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._ATOM_ENCODER_CAP_RECORD_V2 = type { %struct._ATOM_COMMON_RECORD_HEADER, %union.anon.64 }
%union.anon.64 = type { i16 }
%struct.board_layout_info = type { i32, i8, [4 x %struct.slot_layout_info] }
%struct.slot_layout_info = type { i32, i32, i32, [16 x %struct.connector_layout_info] }
%struct.connector_layout_info = type { %struct.graphics_object_id, i32, i32, i32 }
%struct._ATOM_OBJECT_HEADER_V3 = type { %struct._ATOM_COMMON_TABLE_HEADER, i16, i16, i16, i16, i16, i16, i16 }
%struct._ATOM_BRACKET_LAYOUT_RECORD = type { %struct._ATOM_COMMON_RECORD_HEADER, i8, i8, i8, i8, [1 x %struct._ATOM_CONNECTOR_LAYOUT_INFO] }
%struct._ATOM_CONNECTOR_LAYOUT_INFO = type { i16, i8, i8 }
%struct._ATOM_SPREAD_SPECTRUM_INFO = type { %struct._ATOM_COMMON_TABLE_HEADER, [16 x %struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT] }
%struct._ATOM_SPREAD_SPECTRUM_ASSIGNMENT = type { i16, i8, i8, i8, i8, i8, i8 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.bios_parser_create = private unnamed_addr constant [19 x i8] c"bios_parser_create\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vbios_funcs = internal constant { %struct.dc_vbios_funcs, [60 x i8] } { %struct.dc_vbios_funcs { ptr @bios_parser_get_connectors_number, ptr @bios_parser_get_connector_id, ptr @bios_parser_get_src_obj, ptr @bios_parser_get_i2c_info, ptr @bios_parser_get_hpd_info, ptr @bios_parser_get_device_tag, ptr @bios_parser_get_spread_spectrum_info, ptr @bios_parser_get_ss_entry_number, ptr @bios_parser_get_embedded_panel_info, ptr @bios_parser_get_gpio_pin_info, ptr @bios_parser_get_encoder_cap_info, ptr @bios_is_accelerated_mode, ptr @bios_parser_set_scratch_critical_state, ptr @bios_parser_is_device_id_supported, ptr @bios_parser_encoder_control, ptr @bios_parser_transmitter_control, ptr @bios_parser_enable_crtc, ptr @bios_parser_adjust_pixel_clock, ptr @bios_parser_set_pixel_clock, ptr @bios_parser_set_dce_clock, ptr @bios_parser_enable_spread_spectrum_on_ppll, ptr @bios_parser_program_crtc_timing, ptr @bios_parser_program_display_engine_pll, ptr @bios_parser_enable_disp_power_gating, ptr @bios_parser_destroy, ptr @bios_get_board_layout_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Can't get connector table from atom bios.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Can't find connector id %d in connector table of size %d.\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.bios_parser_get_src_obj = private unnamed_addr constant [24 x i8] c"bios_parser_get_src_obj\00", align 1
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Warning: comparing invalid object 'id1'!\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.dal_graphics_object_id_is_equal = private unnamed_addr constant [32 x i8] c"dal_graphics_object_id_is_equal\00", align 1
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Warning: comparing invalid object 'id2'!\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.bios_parser_get_device_tag = private unnamed_addr constant [27 x i8] c"bios_parser_get_device_tag\00", align 1
@__func__.device_type_from_device_id = private unnamed_addr constant [27 x i8] c"device_type_from_device_id\00", align 1
@__func__.bios_parser_destroy = private unnamed_addr constant [20 x i8] c"bios_parser_destroy\00", align 1
@__const.bios_get_board_layout_info.slot_index_to_vbios_id = private unnamed_addr constant [4 x i32] [i32 28933, i32 29189, i32 0, i32 0], align 4
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid board_layout_info\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid slot_layout_info\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c\00", [36 x i8] zeroinitializer }, align 32
@switch.table.bios_parser_get_spread_spectrum_info = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 4, i32 5, i32 6, i32 7, i32 11], [44 x i8] zeroinitializer }, align 32
@switch.table.bios_parser_get_ss_entry_number = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 4, i32 5, i32 6, i32 7, i32 11], [44 x i8] zeroinitializer }, align 32
@switch.table.bios_parser_is_device_id_supported = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 8, i32 128, i32 512, i32 1024, i32 2048, i32 64], [40 x i8] zeroinitializer }, align 32
@switch.table.bios_get_board_layout_info = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 0, i32 0, i32 4, i32 5, i32 6], [40 x i8] zeroinitializer }, align 32
@switch.table.bios_get_board_layout_info.8 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 40, i32 30, i32 30, i32 16, i32 16, i32 9], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 9]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [12 x i64] [i64 10, i64 16, i64 1, i64 2, i64 8, i64 16, i64 32, i64 64, i64 128, i64 512, i64 1024, i64 2048]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [7 x i64] [i64 5, i64 16, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 9]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 9]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 110, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [12 x i8] c"vbios_funcs\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 2779, i32 36 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 173, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 178, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 1931, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 1937, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 2749, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 2705, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [63 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 2573, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [50 x i8] c"switch.table.bios_parser_get_spread_spectrum_info\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [45 x i8] c"switch.table.bios_parser_get_ss_entry_number\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [48 x i8] c"switch.table.bios_parser_is_device_id_supported\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [40 x i8] c"switch.table.bios_get_board_layout_info\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [42 x i8] c"switch.table.bios_get_board_layout_info.8\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @vbios_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @switch.table.bios_parser_get_spread_spectrum_info, ptr @switch.table.bios_parser_get_ss_entry_number, ptr @switch.table.bios_parser_is_device_id_supported, ptr @switch.table.bios_get_board_layout_info, ptr @switch.table.bios_get_board_layout_info.8], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbios_funcs to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bios_parser_get_spread_spectrum_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bios_parser_get_ss_entry_number to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bios_parser_is_device_id_supported to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bios_get_board_layout_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bios_get_board_layout_info.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bios_parser_create(ptr noundef readonly %init, i32 noundef %dce_version) local_unnamed_addr #0 align 64 {
entry:
  %internal_ss.i.i = alloca %struct.spread_spectrum_info, align 4
  %internalSS.i.i = alloca %struct.spread_spectrum_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 248) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %init, null
  br i1 %tobool.not.i, label %if.end.if.end3_crit_edge, label %if.end.i

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.end.i:                                         ; preds = %if.end
  %bios.i = getelementptr inbounds %struct.bp_init_data, ptr %init, i32 0, i32 1
  %1 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bios.i, align 4
  %tobool1.not.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i, label %if.end.i.if.end3_crit_edge, label %if.end3.i

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
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
  %call.i = tail call ptr @bios_get_image(ptr noundef nonnull %call7.i.i, i32 noundef 72, i32 noundef 2) #6
  %tobool14.not.i = icmp eq ptr %call.i, null
  br i1 %tobool14.not.i, label %if.end3.i.if.end3_crit_edge, label %if.end16.i

if.end3.i.if.end3_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.end16.i:                                       ; preds = %if.end3.i
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %call.i, align 2
  %conv18.i = zext i16 %13 to i32
  %call19.i = tail call ptr @bios_get_image(ptr noundef nonnull %call7.i.i, i32 noundef %conv18.i, i32 noundef 36) #6
  %tobool20.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool20.not.i, label %if.end16.i.if.end3_crit_edge, label %get_atom_data_table_revision.exit.i

if.end16.i.if.end3_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

get_atom_data_table_revision.exit.i:              ; preds = %if.end16.i
  %ucTableFormatRevision.i.i = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call19.i, i32 0, i32 1
  %14 = ptrtoint ptr %ucTableFormatRevision.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ucTableFormatRevision.i.i, align 1
  %16 = and i8 %15, 62
  %ucTableContentRevision.i.i = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call19.i, i32 0, i32 2
  %17 = ptrtoint ptr %ucTableContentRevision.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ucTableContentRevision.i.i, align 1
  %19 = and i8 %18, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp.i = icmp ne i8 %16, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp24.i = icmp ne i8 %19, 0
  %or.cond.i = select i1 %cmp.i, i1 %cmp24.i, i1 false
  br i1 %or.cond.i, label %get_atom_data_table_revision.exit.i.if.end3_crit_edge, label %if.end27.i

get_atom_data_table_revision.exit.i.if.end3_crit_edge: ; preds = %get_atom_data_table_revision.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.end27.i:                                       ; preds = %get_atom_data_table_revision.exit.i
  %usMasterDataTableOffset.i = getelementptr inbounds %struct._ATOM_ROM_HEADER, ptr %call19.i, i32 0, i32 14
  %20 = ptrtoint ptr %usMasterDataTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %usMasterDataTableOffset.i, align 1
  %conv29.i = zext i16 %21 to i32
  %call30.i = tail call ptr @bios_get_image(ptr noundef nonnull %call7.i.i, i32 noundef %conv29.i, i32 noundef 74) #6
  %master_data_tbl.i = getelementptr inbounds %struct.bios_parser, ptr %call7.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call30.i, ptr %master_data_tbl.i, align 8
  %tobool32.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool32.not.i, label %if.end27.i.if.end3_crit_edge, label %if.end34.i

if.end27.i.if.end3_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.end34.i:                                       ; preds = %if.end27.i
  %Object_Header.i = getelementptr inbounds %struct._ATOM_MASTER_DATA_TABLE, ptr %call30.i, i32 0, i32 1, i32 22
  %23 = ptrtoint ptr %Object_Header.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %Object_Header.i, align 1
  %conv36.i = zext i16 %24 to i32
  %object_info_tbl_offset.i = getelementptr inbounds %struct.bios_parser, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %object_info_tbl_offset.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv36.i, ptr %object_info_tbl_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool38.not.i = icmp eq i16 %24, 0
  br i1 %tobool38.not.i, label %if.end34.i.if.end3_crit_edge, label %if.end40.i

if.end34.i.if.end3_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.end40.i:                                       ; preds = %if.end34.i
  %call43.i = tail call ptr @bios_get_image(ptr noundef nonnull %call7.i.i, i32 noundef %conv36.i, i32 noundef 16) #6
  %tobool44.not.i = icmp eq ptr %call43.i, null
  br i1 %tobool44.not.i, label %if.end40.i.if.end3_crit_edge, label %if.end46.i

if.end40.i.if.end3_crit_edge:                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.end46.i:                                       ; preds = %if.end40.i
  %object_info_tbl48.i = getelementptr inbounds %struct.bios_parser, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %object_info_tbl48.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %object_info_tbl48.i, align 8
  %minor.i138.i = getelementptr inbounds %struct.bios_parser, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %minor.i138.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %minor.i138.i, align 4
  %ucTableFormatRevision.i140.i = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call43.i, i32 0, i32 1
  %28 = ptrtoint ptr %ucTableFormatRevision.i140.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ucTableFormatRevision.i140.i, align 1
  %30 = and i8 %29, 63
  %and.i141.i = zext i8 %30 to i32
  store i32 %and.i141.i, ptr %object_info_tbl48.i, align 8
  %ucTableContentRevision.i142.i = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call43.i, i32 0, i32 2
  %31 = ptrtoint ptr %ucTableContentRevision.i142.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ucTableContentRevision.i142.i, align 1
  %33 = and i8 %32, 63
  %and6.i143.i = zext i8 %33 to i32
  store i32 %and6.i143.i, ptr %minor.i138.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp52.i = icmp eq i8 %30, 1
  br i1 %cmp52.i, label %land.lhs.true54.i, label %if.end46.i.if.end3_crit_edge

if.end46.i.if.end3_crit_edge:                     ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

land.lhs.true54.i:                                ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp58.i = icmp ugt i8 %33, 2
  br i1 %cmp58.i, label %if.then60.i, label %land.lhs.true73.i

if.then60.i:                                      ; preds = %land.lhs.true54.i
  %34 = ptrtoint ptr %object_info_tbl_offset.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %object_info_tbl_offset.i, align 4
  %call63.i = tail call ptr @bios_get_image(ptr noundef nonnull %call7.i.i, i32 noundef %35, i32 noundef 18) #6
  %tobool64.not.i = icmp eq ptr %call63.i, null
  br i1 %tobool64.not.i, label %if.then60.i.if.end3_crit_edge, label %if.then60.i.if.end83.i_crit_edge

if.then60.i.if.end83.i_crit_edge:                 ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83.i

if.then60.i.if.end3_crit_edge:                    ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

land.lhs.true73.i:                                ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp77.not.i = icmp eq i8 %33, 0
  br i1 %cmp77.not.i, label %land.lhs.true73.i.if.end3_crit_edge, label %land.lhs.true73.i.if.end83.i_crit_edge

land.lhs.true73.i.if.end83.i_crit_edge:           ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83.i

land.lhs.true73.i.if.end3_crit_edge:              ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.end83.i:                                       ; preds = %land.lhs.true73.i.if.end83.i_crit_edge, %if.then60.i.if.end83.i_crit_edge
  %call63.sink.i = phi ptr [ %call63.i, %if.then60.i.if.end83.i_crit_edge ], [ %call43.i, %land.lhs.true73.i.if.end83.i_crit_edge ]
  %36 = getelementptr inbounds %struct.bios_parser, ptr %call7.i.i, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call63.sink.i, ptr %36, align 8
  tail call void @dal_bios_parser_init_cmd_tbl(ptr noundef nonnull %call7.i.i) #6
  %cmd_helper.i = getelementptr inbounds %struct.bios_parser, ptr %call7.i.i, i32 0, i32 5
  %call84.i = tail call zeroext i1 @dal_bios_parser_init_cmd_tbl_helper(ptr noundef %cmd_helper.i, i32 noundef %dce_version) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 716) #9
  %cmp.i16 = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i16, label %do.end.i, label %if.end23.i

do.end.i:                                         ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 2573, i32 noundef 9, ptr noundef null) #6
  tail call void @kgdb_breakpoint() #6
  br label %bios_parser_create_integrated_info.exit

if.end23.i:                                       ; preds = %if.end83.i
  %39 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %master_data_tbl.i, align 8
  %IntegratedSystemInfo.i.i = getelementptr inbounds %struct._ATOM_MASTER_DATA_TABLE, ptr %40, i32 0, i32 1, i32 30
  %41 = ptrtoint ptr %IntegratedSystemInfo.i.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %IntegratedSystemInfo.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool.not.i.i = icmp eq i16 %42, 0
  br i1 %tobool.not.i.i, label %if.end23.i.if.end27.i19_crit_edge, label %if.then.i.i

if.end23.i.if.end27.i19_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i19

if.then.i.i:                                      ; preds = %if.end23.i
  %conv.i.i17 = zext i16 %42 to i32
  %call.i.i18 = tail call ptr @bios_get_image(ptr noundef nonnull %call7.i.i, i32 noundef %conv.i.i17, i32 noundef 4) #6
  %tobool1.not.i.i.i = icmp eq ptr %call.i.i18, null
  br i1 %tobool1.not.i.i.i, label %if.then.i.i.if.end27.i19_crit_edge, label %get_atom_data_table_revision.exit.i.i

if.then.i.i.if.end27.i19_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i19

get_atom_data_table_revision.exit.i.i:            ; preds = %if.then.i.i
  %ucTableContentRevision.i.i.i = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call.i.i18, i32 0, i32 2
  %43 = ptrtoint ptr %ucTableContentRevision.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ucTableContentRevision.i.i.i, align 1
  %45 = and i8 %44, 63
  %and6.i.i.i = zext i8 %45 to i32
  %46 = zext i32 %and6.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and6.i.i.i, label %get_atom_data_table_revision.exit.i.i.if.end27.i19_crit_edge [
    i32 8, label %sw.bb.i.i
    i32 9, label %sw.bb5.i.i
  ]

get_atom_data_table_revision.exit.i.i.if.end27.i19_crit_edge: ; preds = %get_atom_data_table_revision.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i19

sw.bb.i.i:                                        ; preds = %get_atom_data_table_revision.exit.i.i
  %47 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %master_data_tbl.i, align 8
  %IntegratedSystemInfo.i.i.i = getelementptr inbounds %struct._ATOM_MASTER_DATA_TABLE, ptr %48, i32 0, i32 1, i32 30
  %49 = ptrtoint ptr %IntegratedSystemInfo.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %IntegratedSystemInfo.i.i.i, align 1
  %conv.i.i.i = zext i16 %50 to i32
  %call.i.i.i = tail call ptr @bios_get_image(ptr noundef nonnull %call7.i.i, i32 noundef %conv.i.i.i, i32 noundef 512) #6
  %cmp.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.i.i.i, label %sw.bb.i.i.if.end27.i19_crit_edge, label %if.end.i.i.i

sw.bb.i.i.if.end27.i19_crit_edge:                 ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i19

if.end.i.i.i:                                     ; preds = %sw.bb.i.i
  %ulBootUpEngineClock.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %ulBootUpEngineClock.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %ulBootUpEngineClock.i.i.i, align 1
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #6
  %mul.i.i.i = mul i32 %53, 10
  %boot_up_engine_clock.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 5
  %54 = ptrtoint ptr %boot_up_engine_clock.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %mul.i.i.i, ptr %boot_up_engine_clock.i.i.i, align 4
  %ulDentistVCOFreq.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 2
  %55 = ptrtoint ptr %ulDentistVCOFreq.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %ulDentistVCOFreq.i.i.i, align 1
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #6
  %mul2.i.i.i = mul i32 %57, 10
  %dentist_vco_freq.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 6
  %58 = ptrtoint ptr %dentist_vco_freq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %mul2.i.i.i, ptr %dentist_vco_freq.i.i.i, align 8
  %ulBootUpUMAClock.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 3
  %59 = ptrtoint ptr %ulBootUpUMAClock.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %ulBootUpUMAClock.i.i.i, align 1
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #6
  %mul3.i.i.i = mul i32 %61, 10
  %boot_up_uma_clock.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 7
  %62 = ptrtoint ptr %boot_up_uma_clock.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %mul3.i.i.i, ptr %boot_up_uma_clock.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 4, i32 0
  %ulMaximumSupportedCLK.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 4, i32 0, i32 1
  %63 = ptrtoint ptr %ulMaximumSupportedCLK.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %ulMaximumSupportedCLK.i.i.i, align 1
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #6
  %mul6.i.i.i = mul i32 %65, 10
  %max_supported_clk.i.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 0, i32 1
  %66 = ptrtoint ptr %max_supported_clk.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %mul6.i.i.i, ptr %max_supported_clk.i.i.i, align 4
  %67 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %arrayidx.i.i.i, align 1
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #6
  %70 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %call7.i.i.i, align 8
  %arrayidx.1.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 4, i32 1
  %ulMaximumSupportedCLK.1.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 4, i32 1, i32 1
  %71 = ptrtoint ptr %ulMaximumSupportedCLK.1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %ulMaximumSupportedCLK.1.i.i.i, align 1
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #6
  %mul6.1.i.i.i = mul i32 %73, 10
  %arrayidx7.1.i.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 1
  %max_supported_clk.1.i.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %74 = ptrtoint ptr %max_supported_clk.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %mul6.1.i.i.i, ptr %max_supported_clk.1.i.i.i, align 4
  %75 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %arrayidx.1.i.i.i, align 1
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #6
  %78 = ptrtoint ptr %arrayidx7.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %arrayidx7.1.i.i.i, align 8
  %arrayidx.2.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 4, i32 2
  %ulMaximumSupportedCLK.2.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 4, i32 2, i32 1
  %79 = ptrtoint ptr %ulMaximumSupportedCLK.2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %80 = load i32, ptr %ulMaximumSupportedCLK.2.i.i.i, align 1
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #6
  %mul6.2.i.i.i = mul i32 %81, 10
  %arrayidx7.2.i.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 2
  %max_supported_clk.2.i.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %82 = ptrtoint ptr %max_supported_clk.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %mul6.2.i.i.i, ptr %max_supported_clk.2.i.i.i, align 4
  %83 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %arrayidx.2.i.i.i, align 1
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #6
  %86 = ptrtoint ptr %arrayidx7.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %arrayidx7.2.i.i.i, align 8
  %arrayidx.3.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 4, i32 3
  %ulMaximumSupportedCLK.3.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 4, i32 3, i32 1
  %87 = ptrtoint ptr %ulMaximumSupportedCLK.3.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %ulMaximumSupportedCLK.3.i.i.i, align 1
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #6
  %mul6.3.i.i.i = mul i32 %89, 10
  %arrayidx7.3.i.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 3
  %max_supported_clk.3.i.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %90 = ptrtoint ptr %max_supported_clk.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %mul6.3.i.i.i, ptr %max_supported_clk.3.i.i.i, align 4
  %91 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %arrayidx.3.i.i.i, align 1
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #6
  %94 = ptrtoint ptr %arrayidx7.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %arrayidx7.3.i.i.i, align 8
  %ulBootUpReqDisplayVector.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 5
  %95 = ptrtoint ptr %ulBootUpReqDisplayVector.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %ulBootUpReqDisplayVector.i.i.i, align 1
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #6
  %boot_up_req_display_vector.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 8
  %98 = ptrtoint ptr %boot_up_req_display_vector.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %boot_up_req_display_vector.i.i.i, align 8
  %ulGPUCapInfo.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 7
  %99 = ptrtoint ptr %ulGPUCapInfo.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %ulGPUCapInfo.i.i.i, align 1
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #6
  %gpu_cap_info.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 10
  %102 = ptrtoint ptr %gpu_cap_info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %gpu_cap_info.i.i.i, align 8
  %ulSystemConfig.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 13
  %103 = ptrtoint ptr %ulSystemConfig.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %ulSystemConfig.i.i.i, align 1
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #6
  %system_config.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 12
  %106 = ptrtoint ptr %system_config.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %system_config.i.i.i, align 8
  %ulCPUCapInfo.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 14
  %107 = ptrtoint ptr %ulCPUCapInfo.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %ulCPUCapInfo.i.i.i, align 1
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #6
  %cpu_cap_info.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 13
  %110 = ptrtoint ptr %cpu_cap_info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %cpu_cap_info.i.i.i, align 4
  %usBootUpNBVoltage.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 58
  %111 = ptrtoint ptr %usBootUpNBVoltage.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %111, i32 2)
  %112 = load i16, ptr %usBootUpNBVoltage.i.i.i, align 1
  %113 = tail call i16 @llvm.bswap.i16(i16 %112) #6
  %conv12.i.i.i = zext i16 %113 to i32
  %boot_up_nb_voltage.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 16
  %114 = ptrtoint ptr %boot_up_nb_voltage.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %conv12.i.i.i, ptr %boot_up_nb_voltage.i.i.i, align 8
  %usExtDispConnInfoOffset.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 17
  %115 = ptrtoint ptr %usExtDispConnInfoOffset.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 2)
  %116 = load i16, ptr %usExtDispConnInfoOffset.i.i.i, align 1
  %117 = tail call i16 @llvm.bswap.i16(i16 %116) #6
  %conv13.i.i.i = zext i16 %117 to i32
  %ext_disp_conn_info_offset.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 17
  %118 = ptrtoint ptr %ext_disp_conn_info_offset.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %conv13.i.i.i, ptr %ext_disp_conn_info_offset.i.i.i, align 4
  %ucMemoryType.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 19
  %119 = ptrtoint ptr %ucMemoryType.i.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %ucMemoryType.i.i.i, align 1
  %memory_type.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 3
  %121 = ptrtoint ptr %memory_type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %memory_type.i.i.i, align 8
  %ucUMAChannelNumber.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 20
  %122 = ptrtoint ptr %ucUMAChannelNumber.i.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %ucUMAChannelNumber.i.i.i, align 1
  %ma_channel_number.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 4
  %124 = ptrtoint ptr %ma_channel_number.i.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %123, ptr %ma_channel_number.i.i.i, align 1
  %ulGMCRestoreResetTime.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 25
  %125 = ptrtoint ptr %ulGMCRestoreResetTime.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %125, i32 4)
  %126 = load i32, ptr %ulGMCRestoreResetTime.i.i.i, align 1
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #6
  %gmc_restore_reset_time.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 21
  %128 = ptrtoint ptr %gmc_restore_reset_time.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %gmc_restore_reset_time.i.i.i, align 8
  %ulNbpStateNClkFreq.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 56
  %129 = ptrtoint ptr %ulNbpStateNClkFreq.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load i32, ptr %ulNbpStateNClkFreq.i.i.i, align 1
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #6
  %minimum_n_clk.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 22
  %132 = ptrtoint ptr %minimum_n_clk.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %minimum_n_clk.i.i.i, align 4
  %arrayidx21.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 56, i32 1
  %133 = ptrtoint ptr %arrayidx21.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %133, i32 4)
  %134 = load i32, ptr %arrayidx21.i.i.i, align 1
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #6
  %136 = tail call i32 @llvm.umin.i32(i32 %131, i32 %135) #6
  %137 = ptrtoint ptr %minimum_n_clk.i.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %minimum_n_clk.i.i.i, align 4
  %arrayidx21.1.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 56, i32 2
  %138 = ptrtoint ptr %arrayidx21.1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %arrayidx21.1.i.i.i, align 1
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #6
  %141 = tail call i32 @llvm.umin.i32(i32 %136, i32 %140) #6
  %142 = ptrtoint ptr %minimum_n_clk.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %minimum_n_clk.i.i.i, align 4
  %arrayidx21.2.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 56, i32 3
  %143 = ptrtoint ptr %arrayidx21.2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %143, i32 4)
  %144 = load i32, ptr %arrayidx21.2.i.i.i, align 1
  %145 = tail call i32 @llvm.bswap.i32(i32 %144) #6
  %146 = tail call i32 @llvm.umin.i32(i32 %141, i32 %145) #6
  %147 = ptrtoint ptr %minimum_n_clk.i.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %minimum_n_clk.i.i.i, align 4
  %ulIdleNClk.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 27
  %148 = ptrtoint ptr %ulIdleNClk.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %148, i32 4)
  %149 = load i32, ptr %ulIdleNClk.i.i.i, align 1
  %150 = tail call i32 @llvm.bswap.i32(i32 %149) #6
  %idle_n_clk.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 23
  %151 = ptrtoint ptr %idle_n_clk.i.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %idle_n_clk.i.i.i, align 8
  %ulDDR_DLL_PowerUpTime.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 28
  %152 = ptrtoint ptr %ulDDR_DLL_PowerUpTime.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %152, i32 4)
  %153 = load i32, ptr %ulDDR_DLL_PowerUpTime.i.i.i, align 1
  %154 = tail call i32 @llvm.bswap.i32(i32 %153) #6
  %ddr_dll_power_up_time.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 24
  %155 = ptrtoint ptr %ddr_dll_power_up_time.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %ddr_dll_power_up_time.i.i.i, align 4
  %ulDDR_PLL_PowerUpTime.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 29
  %156 = ptrtoint ptr %ulDDR_PLL_PowerUpTime.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %156, i32 4)
  %157 = load i32, ptr %ulDDR_PLL_PowerUpTime.i.i.i, align 1
  %158 = tail call i32 @llvm.bswap.i32(i32 %157) #6
  %ddr_pll_power_up_time.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 25
  %159 = ptrtoint ptr %ddr_pll_power_up_time.i.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %ddr_pll_power_up_time.i.i.i, align 8
  %usPCIEClkSSType.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 31
  %160 = ptrtoint ptr %usPCIEClkSSType.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %160, i32 2)
  %161 = load i16, ptr %usPCIEClkSSType.i.i.i, align 1
  %162 = tail call i16 @llvm.bswap.i16(i16 %161) #6
  %conv31.i.i.i = zext i16 %162 to i32
  %pcie_clk_ss_type.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 26
  %163 = ptrtoint ptr %pcie_clk_ss_type.i.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %conv31.i.i.i, ptr %pcie_clk_ss_type.i.i.i, align 4
  %usLvdsSSPercentage.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 32
  %164 = ptrtoint ptr %usLvdsSSPercentage.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %164, i32 2)
  %165 = load i16, ptr %usLvdsSSPercentage.i.i.i, align 1
  %166 = tail call i16 @llvm.bswap.i16(i16 %165) #6
  %conv32.i.i.i = zext i16 %166 to i32
  %lvds_ss_percentage.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 27
  %167 = ptrtoint ptr %lvds_ss_percentage.i.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %conv32.i.i.i, ptr %lvds_ss_percentage.i.i.i, align 8
  %usLvdsSSpreadRateIn10Hz.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 33
  %168 = ptrtoint ptr %usLvdsSSpreadRateIn10Hz.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %168, i32 2)
  %169 = load i16, ptr %usLvdsSSpreadRateIn10Hz.i.i.i, align 1
  %170 = tail call i16 @llvm.bswap.i16(i16 %169) #6
  %conv33.i.i.i = zext i16 %170 to i32
  %lvds_sspread_rate_in_10hz.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 28
  %171 = ptrtoint ptr %lvds_sspread_rate_in_10hz.i.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %conv33.i.i.i, ptr %lvds_sspread_rate_in_10hz.i.i.i, align 4
  %usHDMISSPercentage.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 34
  %172 = ptrtoint ptr %usHDMISSPercentage.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %172, i32 2)
  %173 = load i16, ptr %usHDMISSPercentage.i.i.i, align 1
  %174 = tail call i16 @llvm.bswap.i16(i16 %173) #6
  %conv34.i.i.i = zext i16 %174 to i32
  %hdmi_ss_percentage.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 29
  %175 = ptrtoint ptr %hdmi_ss_percentage.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %conv34.i.i.i, ptr %hdmi_ss_percentage.i.i.i, align 8
  %usHDMISSpreadRateIn10Hz.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 35
  %176 = ptrtoint ptr %usHDMISSpreadRateIn10Hz.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %176, i32 2)
  %177 = load i16, ptr %usHDMISSpreadRateIn10Hz.i.i.i, align 1
  %178 = tail call i16 @llvm.bswap.i16(i16 %177) #6
  %conv35.i.i.i = zext i16 %178 to i32
  %hdmi_sspread_rate_in_10hz.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 30
  %179 = ptrtoint ptr %hdmi_sspread_rate_in_10hz.i.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %conv35.i.i.i, ptr %hdmi_sspread_rate_in_10hz.i.i.i, align 4
  %usDVISSPercentage.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 36
  %180 = ptrtoint ptr %usDVISSPercentage.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %180, i32 2)
  %181 = load i16, ptr %usDVISSPercentage.i.i.i, align 1
  %182 = tail call i16 @llvm.bswap.i16(i16 %181) #6
  %conv36.i.i.i = zext i16 %182 to i32
  %dvi_ss_percentage.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 31
  %183 = ptrtoint ptr %dvi_ss_percentage.i.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %conv36.i.i.i, ptr %dvi_ss_percentage.i.i.i, align 8
  %usDVISSpreadRateIn10Hz.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 37
  %184 = ptrtoint ptr %usDVISSpreadRateIn10Hz.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %184, i32 2)
  %185 = load i16, ptr %usDVISSpreadRateIn10Hz.i.i.i, align 1
  %186 = tail call i16 @llvm.bswap.i16(i16 %185) #6
  %conv37.i.i.i = zext i16 %186 to i32
  %dvi_sspread_rate_in_10_hz.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 32
  %187 = ptrtoint ptr %dvi_sspread_rate_in_10_hz.i.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %conv37.i.i.i, ptr %dvi_sspread_rate_in_10_hz.i.i.i, align 4
  %usMaxLVDSPclkFreqInSingleLink.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 42
  %188 = ptrtoint ptr %usMaxLVDSPclkFreqInSingleLink.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %188, i32 2)
  %189 = load i16, ptr %usMaxLVDSPclkFreqInSingleLink.i.i.i, align 1
  %190 = tail call i16 @llvm.bswap.i16(i16 %189) #6
  %conv38.i.i.i = zext i16 %190 to i32
  %max_lvds_pclk_freq_in_single_link.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 41
  %191 = ptrtoint ptr %max_lvds_pclk_freq_in_single_link.i.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %conv38.i.i.i, ptr %max_lvds_pclk_freq_in_single_link.i.i.i, align 8
  %ucLvdsMisc.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 43
  %192 = ptrtoint ptr %ucLvdsMisc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %ucLvdsMisc.i.i.i, align 1
  %conv39.i.i.i = zext i8 %193 to i32
  %lvds_misc.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 42
  %194 = ptrtoint ptr %lvds_misc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %conv39.i.i.i, ptr %lvds_misc.i.i.i, align 4
  %ucLVDSPwrOnSeqDIGONtoDE_in4Ms.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 45
  %195 = ptrtoint ptr %ucLVDSPwrOnSeqDIGONtoDE_in4Ms.i.i.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %ucLVDSPwrOnSeqDIGONtoDE_in4Ms.i.i.i, align 1
  %conv40.i.i.i = zext i8 %196 to i32
  %lvds_pwr_on_seq_dig_on_to_de_in_4ms.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 43
  %197 = ptrtoint ptr %lvds_pwr_on_seq_dig_on_to_de_in_4ms.i.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %conv40.i.i.i, ptr %lvds_pwr_on_seq_dig_on_to_de_in_4ms.i.i.i, align 8
  %ucLVDSPwrOnSeqDEtoVARY_BL_in4Ms.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 46
  %198 = ptrtoint ptr %ucLVDSPwrOnSeqDEtoVARY_BL_in4Ms.i.i.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %ucLVDSPwrOnSeqDEtoVARY_BL_in4Ms.i.i.i, align 1
  %conv41.i.i.i = zext i8 %199 to i32
  %lvds_pwr_on_seq_de_to_vary_bl_in_4ms.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 44
  %200 = ptrtoint ptr %lvds_pwr_on_seq_de_to_vary_bl_in_4ms.i.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %conv41.i.i.i, ptr %lvds_pwr_on_seq_de_to_vary_bl_in_4ms.i.i.i, align 4
  %ucLVDSPwrOnSeqVARY_BLtoBLON_in4Ms.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 50
  %201 = ptrtoint ptr %ucLVDSPwrOnSeqVARY_BLtoBLON_in4Ms.i.i.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %ucLVDSPwrOnSeqVARY_BLtoBLON_in4Ms.i.i.i, align 1
  %conv42.i.i.i = zext i8 %202 to i32
  %lvds_pwr_on_seq_vary_bl_to_blon_in_4ms.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 48
  %203 = ptrtoint ptr %lvds_pwr_on_seq_vary_bl_to_blon_in_4ms.i.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %conv42.i.i.i, ptr %lvds_pwr_on_seq_vary_bl_to_blon_in_4ms.i.i.i, align 4
  %ucLVDSPwrOffSeqVARY_BLtoDE_in4Ms.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 47
  %204 = ptrtoint ptr %ucLVDSPwrOffSeqVARY_BLtoDE_in4Ms.i.i.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %ucLVDSPwrOffSeqVARY_BLtoDE_in4Ms.i.i.i, align 1
  %conv43.i.i.i = zext i8 %205 to i32
  %lvds_pwr_off_seq_vary_bl_to_de_in4ms.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 45
  %206 = ptrtoint ptr %lvds_pwr_off_seq_vary_bl_to_de_in4ms.i.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %conv43.i.i.i, ptr %lvds_pwr_off_seq_vary_bl_to_de_in4ms.i.i.i, align 8
  %ucLVDSPwrOffSeqDEtoDIGON_in4Ms.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 48
  %207 = ptrtoint ptr %ucLVDSPwrOffSeqDEtoDIGON_in4Ms.i.i.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %ucLVDSPwrOffSeqDEtoDIGON_in4Ms.i.i.i, align 1
  %conv44.i.i.i = zext i8 %208 to i32
  %lvds_pwr_off_seq_de_to_dig_on_in4ms.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 46
  %209 = ptrtoint ptr %lvds_pwr_off_seq_de_to_dig_on_in4ms.i.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %conv44.i.i.i, ptr %lvds_pwr_off_seq_de_to_dig_on_in4ms.i.i.i, align 4
  %ucLVDSPwrOffSeqBLONtoVARY_BL_in4Ms.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 51
  %210 = ptrtoint ptr %ucLVDSPwrOffSeqBLONtoVARY_BL_in4Ms.i.i.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %ucLVDSPwrOffSeqBLONtoVARY_BL_in4Ms.i.i.i, align 1
  %conv45.i.i.i = zext i8 %211 to i32
  %lvds_pwr_off_seq_blon_to_vary_bl_in_4ms.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 49
  %212 = ptrtoint ptr %lvds_pwr_off_seq_blon_to_vary_bl_in_4ms.i.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %conv45.i.i.i, ptr %lvds_pwr_off_seq_blon_to_vary_bl_in_4ms.i.i.i, align 8
  %ucLVDSOffToOnDelay_in4Ms.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 49
  %213 = ptrtoint ptr %ucLVDSOffToOnDelay_in4Ms.i.i.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %ucLVDSOffToOnDelay_in4Ms.i.i.i, align 1
  %conv46.i.i.i = zext i8 %214 to i32
  %lvds_off_to_on_delay_in_4ms.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 47
  %215 = ptrtoint ptr %lvds_off_to_on_delay_in_4ms.i.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %conv46.i.i.i, ptr %lvds_off_to_on_delay_in_4ms.i.i.i, align 8
  %ulLCDBitDepthControlVal.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 53
  %216 = ptrtoint ptr %ulLCDBitDepthControlVal.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %216, i32 4)
  %217 = load i32, ptr %ulLCDBitDepthControlVal.i.i.i, align 1
  %218 = tail call i32 @llvm.bswap.i32(i32 %217) #6
  %lvds_bit_depth_control_val.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 51
  %219 = ptrtoint ptr %lvds_bit_depth_control_val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %218, ptr %lvds_bit_depth_control_val.i.i.i, align 8
  %arrayidx51.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 24, i32 0
  %220 = ptrtoint ptr %arrayidx51.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %220, i32 4)
  %221 = load i32, ptr %arrayidx51.i.i.i, align 1
  %222 = tail call i32 @llvm.bswap.i32(i32 %221) #6
  %mul52.i.i.i = mul i32 %222, 10
  %arrayidx53.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 0
  %223 = ptrtoint ptr %arrayidx53.i.i.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %mul52.i.i.i, ptr %arrayidx53.i.i.i, align 4
  %usVoltageIndex.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 24, i32 0, i32 1
  %224 = ptrtoint ptr %usVoltageIndex.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %224, i32 2)
  %225 = load i16, ptr %usVoltageIndex.i.i.i, align 1
  %226 = tail call i16 @llvm.bswap.i16(i16 %225) #6
  %conv56.i.i.i = zext i16 %226 to i32
  %voltage_index59.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 1
  %227 = ptrtoint ptr %voltage_index59.i.i.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %conv56.i.i.i, ptr %voltage_index59.i.i.i, align 8
  %usVoltageID.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 24, i32 0, i32 2
  %228 = ptrtoint ptr %usVoltageID.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %228, i32 2)
  %229 = load i16, ptr %usVoltageID.i.i.i, align 1
  %230 = tail call i16 @llvm.bswap.i16(i16 %229) #6
  %conv62.i.i.i = zext i16 %230 to i32
  %voltage_id.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 2
  %231 = ptrtoint ptr %voltage_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %conv62.i.i.i, ptr %voltage_id.i.i.i, align 4
  %arrayidx51.1.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 24, i32 1
  %232 = ptrtoint ptr %arrayidx51.1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %232, i32 4)
  %233 = load i32, ptr %arrayidx51.1.i.i.i, align 1
  %234 = tail call i32 @llvm.bswap.i32(i32 %233) #6
  %mul52.1.i.i.i = mul i32 %234, 10
  %arrayidx53.1.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %235 = ptrtoint ptr %arrayidx53.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %mul52.1.i.i.i, ptr %arrayidx53.1.i.i.i, align 8
  %usVoltageIndex.1.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 24, i32 1, i32 1
  %236 = ptrtoint ptr %usVoltageIndex.1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %236, i32 2)
  %237 = load i16, ptr %usVoltageIndex.1.i.i.i, align 1
  %238 = tail call i16 @llvm.bswap.i16(i16 %237) #6
  %conv56.1.i.i.i = zext i16 %238 to i32
  %voltage_index59.1.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 1, i32 1
  %239 = ptrtoint ptr %voltage_index59.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %conv56.1.i.i.i, ptr %voltage_index59.1.i.i.i, align 4
  %usVoltageID.1.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 24, i32 1, i32 2
  %240 = ptrtoint ptr %usVoltageID.1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %240, i32 2)
  %241 = load i16, ptr %usVoltageID.1.i.i.i, align 1
  %242 = tail call i16 @llvm.bswap.i16(i16 %241) #6
  %conv62.1.i.i.i = zext i16 %242 to i32
  %voltage_id.1.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 1, i32 2
  %243 = ptrtoint ptr %voltage_id.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %conv62.1.i.i.i, ptr %voltage_id.1.i.i.i, align 8
  %arrayidx51.2.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 24, i32 2
  %244 = ptrtoint ptr %arrayidx51.2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %244, i32 4)
  %245 = load i32, ptr %arrayidx51.2.i.i.i, align 1
  %246 = tail call i32 @llvm.bswap.i32(i32 %245) #6
  %mul52.2.i.i.i = mul i32 %246, 10
  %arrayidx53.2.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %247 = ptrtoint ptr %arrayidx53.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %mul52.2.i.i.i, ptr %arrayidx53.2.i.i.i, align 4
  %usVoltageIndex.2.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 24, i32 2, i32 1
  %248 = ptrtoint ptr %usVoltageIndex.2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %248, i32 2)
  %249 = load i16, ptr %usVoltageIndex.2.i.i.i, align 1
  %250 = tail call i16 @llvm.bswap.i16(i16 %249) #6
  %conv56.2.i.i.i = zext i16 %250 to i32
  %voltage_index59.2.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 1
  %251 = ptrtoint ptr %voltage_index59.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %conv56.2.i.i.i, ptr %voltage_index59.2.i.i.i, align 8
  %usVoltageID.2.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 24, i32 2, i32 2
  %252 = ptrtoint ptr %usVoltageID.2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %252, i32 2)
  %253 = load i16, ptr %usVoltageID.2.i.i.i, align 1
  %254 = tail call i16 @llvm.bswap.i16(i16 %253) #6
  %conv62.2.i.i.i = zext i16 %254 to i32
  %voltage_id.2.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 2
  %255 = ptrtoint ptr %voltage_id.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %conv62.2.i.i.i, ptr %voltage_id.2.i.i.i, align 4
  %arrayidx51.3.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 24, i32 3
  %256 = ptrtoint ptr %arrayidx51.3.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %256, i32 4)
  %257 = load i32, ptr %arrayidx51.3.i.i.i, align 1
  %258 = tail call i32 @llvm.bswap.i32(i32 %257) #6
  %mul52.3.i.i.i = mul i32 %258, 10
  %arrayidx53.3.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 3
  %259 = ptrtoint ptr %arrayidx53.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %mul52.3.i.i.i, ptr %arrayidx53.3.i.i.i, align 8
  %usVoltageIndex.3.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 24, i32 3, i32 1
  %260 = ptrtoint ptr %usVoltageIndex.3.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %260, i32 2)
  %261 = load i16, ptr %usVoltageIndex.3.i.i.i, align 1
  %262 = tail call i16 @llvm.bswap.i16(i16 %261) #6
  %conv56.3.i.i.i = zext i16 %262 to i32
  %voltage_index59.3.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 3, i32 1
  %263 = ptrtoint ptr %voltage_index59.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %conv56.3.i.i.i, ptr %voltage_index59.3.i.i.i, align 4
  %usVoltageID.3.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 24, i32 3, i32 2
  %264 = ptrtoint ptr %usVoltageID.3.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %264, i32 2)
  %265 = load i16, ptr %usVoltageID.3.i.i.i, align 1
  %266 = tail call i16 @llvm.bswap.i16(i16 %265) #6
  %conv62.3.i.i.i = zext i16 %266 to i32
  %voltage_id.3.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 3, i32 2
  %267 = ptrtoint ptr %voltage_id.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %conv62.3.i.i.i, ptr %voltage_id.3.i.i.i, align 8
  %arrayidx51.4.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 24, i32 4
  %268 = ptrtoint ptr %arrayidx51.4.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %268, i32 4)
  %269 = load i32, ptr %arrayidx51.4.i.i.i, align 1
  %270 = tail call i32 @llvm.bswap.i32(i32 %269) #6
  %mul52.4.i.i.i = mul i32 %270, 10
  %arrayidx53.4.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 4
  %271 = ptrtoint ptr %arrayidx53.4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %mul52.4.i.i.i, ptr %arrayidx53.4.i.i.i, align 4
  %usVoltageIndex.4.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 24, i32 4, i32 1
  %272 = ptrtoint ptr %usVoltageIndex.4.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %272, i32 2)
  %273 = load i16, ptr %usVoltageIndex.4.i.i.i, align 1
  %274 = tail call i16 @llvm.bswap.i16(i16 %273) #6
  %conv56.4.i.i.i = zext i16 %274 to i32
  %voltage_index59.4.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 4, i32 1
  %275 = ptrtoint ptr %voltage_index59.4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %conv56.4.i.i.i, ptr %voltage_index59.4.i.i.i, align 8
  %usVoltageID.4.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 24, i32 4, i32 2
  %276 = ptrtoint ptr %usVoltageID.4.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %276, i32 2)
  %277 = load i16, ptr %usVoltageID.4.i.i.i, align 1
  %278 = tail call i16 @llvm.bswap.i16(i16 %277) #6
  %conv62.4.i.i.i = zext i16 %278 to i32
  %voltage_id.4.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 4, i32 2
  %279 = ptrtoint ptr %voltage_id.4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %conv62.4.i.i.i, ptr %voltage_id.4.i.i.i, align 4
  %arrayidx72.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 60, i32 1, i32 0
  %280 = ptrtoint ptr %arrayidx72.i.i.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %arrayidx72.i.i.i, align 1
  %arrayidx73.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 0
  %282 = ptrtoint ptr %arrayidx73.i.i.i to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 %281, ptr %arrayidx73.i.i.i, align 8
  %arrayidx72.1.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 60, i32 1, i32 1
  %283 = ptrtoint ptr %arrayidx72.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %arrayidx72.1.i.i.i, align 1
  %arrayidx73.1.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 1
  %285 = ptrtoint ptr %arrayidx73.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 %284, ptr %arrayidx73.1.i.i.i, align 1
  %arrayidx72.2.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 60, i32 1, i32 2
  %286 = ptrtoint ptr %arrayidx72.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %arrayidx72.2.i.i.i, align 1
  %arrayidx73.2.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 2
  %288 = ptrtoint ptr %arrayidx73.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 %287, ptr %arrayidx73.2.i.i.i, align 2
  %arrayidx72.3.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 60, i32 1, i32 3
  %289 = ptrtoint ptr %arrayidx72.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %arrayidx72.3.i.i.i, align 1
  %arrayidx73.3.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 3
  %291 = ptrtoint ptr %arrayidx73.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 %290, ptr %arrayidx73.3.i.i.i, align 1
  %arrayidx72.4.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 60, i32 1, i32 4
  %292 = ptrtoint ptr %arrayidx72.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %arrayidx72.4.i.i.i, align 1
  %arrayidx73.4.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 4
  %294 = ptrtoint ptr %arrayidx73.4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 %293, ptr %arrayidx73.4.i.i.i, align 4
  %arrayidx72.5.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 60, i32 1, i32 5
  %295 = ptrtoint ptr %arrayidx72.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %arrayidx72.5.i.i.i, align 1
  %arrayidx73.5.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 5
  %297 = ptrtoint ptr %arrayidx73.5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 %296, ptr %arrayidx73.5.i.i.i, align 1
  %arrayidx72.6.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 60, i32 1, i32 6
  %298 = ptrtoint ptr %arrayidx72.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %arrayidx72.6.i.i.i, align 1
  %arrayidx73.6.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 6
  %300 = ptrtoint ptr %arrayidx73.6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 %299, ptr %arrayidx73.6.i.i.i, align 2
  %arrayidx72.7.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 60, i32 1, i32 7
  %301 = ptrtoint ptr %arrayidx72.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %arrayidx72.7.i.i.i, align 1
  %arrayidx73.7.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 7
  %303 = ptrtoint ptr %arrayidx73.7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 %302, ptr %arrayidx73.7.i.i.i, align 1
  %arrayidx72.8.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 60, i32 1, i32 8
  %304 = ptrtoint ptr %arrayidx72.8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %arrayidx72.8.i.i.i, align 1
  %arrayidx73.8.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 8
  %306 = ptrtoint ptr %arrayidx73.8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 %305, ptr %arrayidx73.8.i.i.i, align 8
  %arrayidx72.9.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 60, i32 1, i32 9
  %307 = ptrtoint ptr %arrayidx72.9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %arrayidx72.9.i.i.i, align 1
  %arrayidx73.9.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 9
  %309 = ptrtoint ptr %arrayidx73.9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 %308, ptr %arrayidx73.9.i.i.i, align 1
  %arrayidx72.10.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 60, i32 1, i32 10
  %310 = ptrtoint ptr %arrayidx72.10.i.i.i to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %arrayidx72.10.i.i.i, align 1
  %arrayidx73.10.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 10
  %312 = ptrtoint ptr %arrayidx73.10.i.i.i to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 %311, ptr %arrayidx73.10.i.i.i, align 2
  %arrayidx72.11.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 60, i32 1, i32 11
  %313 = ptrtoint ptr %arrayidx72.11.i.i.i to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %arrayidx72.11.i.i.i, align 1
  %arrayidx73.11.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 11
  %315 = ptrtoint ptr %arrayidx73.11.i.i.i to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 %314, ptr %arrayidx73.11.i.i.i, align 1
  %arrayidx72.12.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 60, i32 1, i32 12
  %316 = ptrtoint ptr %arrayidx72.12.i.i.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %arrayidx72.12.i.i.i, align 1
  %arrayidx73.12.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 12
  %318 = ptrtoint ptr %arrayidx73.12.i.i.i to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 %317, ptr %arrayidx73.12.i.i.i, align 4
  %arrayidx72.13.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 60, i32 1, i32 13
  %319 = ptrtoint ptr %arrayidx72.13.i.i.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %arrayidx72.13.i.i.i, align 1
  %arrayidx73.13.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 13
  %321 = ptrtoint ptr %arrayidx73.13.i.i.i to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 %320, ptr %arrayidx73.13.i.i.i, align 1
  %arrayidx72.14.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 60, i32 1, i32 14
  %322 = ptrtoint ptr %arrayidx72.14.i.i.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %arrayidx72.14.i.i.i, align 1
  %arrayidx73.14.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 14
  %324 = ptrtoint ptr %arrayidx73.14.i.i.i to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 %323, ptr %arrayidx73.14.i.i.i, align 2
  %arrayidx72.15.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 60, i32 1, i32 15
  %325 = ptrtoint ptr %arrayidx72.15.i.i.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %arrayidx72.15.i.i.i, align 1
  %arrayidx73.15.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 15
  %327 = ptrtoint ptr %arrayidx73.15.i.i.i to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 %326, ptr %arrayidx73.15.i.i.i, align 1
  %ext_disp_conn_info81.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1
  br label %for.body80.i.i.i

for.body80.i.i.i:                                 ; preds = %for.body80.i.i.i.for.body80.i.i.i_crit_edge, %if.end.i.i.i
  %i.4276.i.i.i = phi i32 [ 0, %if.end.i.i.i ], [ %inc130.i.i.i, %for.body80.i.i.i.for.body80.i.i.i_crit_edge ]
  %arrayidx82.i.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info81.i.i.i, i32 0, i32 %i.4276.i.i.i
  %device_connector_id.i.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info81.i.i.i, i32 0, i32 %i.4276.i.i.i, i32 2
  %arrayidx84.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 60, i32 2, i32 %i.4276.i.i.i
  %usDeviceConnector.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 60, i32 2, i32 %i.4276.i.i.i, i32 2
  %328 = ptrtoint ptr %usDeviceConnector.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %328, i32 2)
  %329 = load i16, ptr %usDeviceConnector.i.i.i, align 1
  %330 = tail call i16 @llvm.bswap.i16(i16 %329) #6
  %conv85.i.i.i = zext i16 %330 to i32
  %call86.i.i.i = tail call i32 @object_id_from_bios_object_id(i32 noundef %conv85.i.i.i) #6
  %331 = ptrtoint ptr %device_connector_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 %call86.i.i.i, ptr %device_connector_id.i.i.i, align 8
  %ext_encoder_obj_id.i.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info81.i.i.i, i32 0, i32 %i.4276.i.i.i, i32 5
  %usExtEncoderObjId.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 60, i32 2, i32 %i.4276.i.i.i, i32 5
  %332 = ptrtoint ptr %usExtEncoderObjId.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %332, i32 2)
  %333 = load i16, ptr %usExtEncoderObjId.i.i.i, align 1
  %334 = tail call i16 @llvm.bswap.i16(i16 %333) #6
  %conv94.i.i.i = zext i16 %334 to i32
  %call95.i.i.i = tail call i32 @object_id_from_bios_object_id(i32 noundef %conv94.i.i.i) #6
  %335 = ptrtoint ptr %ext_encoder_obj_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %call95.i.i.i, ptr %ext_encoder_obj_id.i.i.i, align 8
  %336 = ptrtoint ptr %arrayidx84.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %336, i32 2)
  %337 = load i16, ptr %arrayidx84.i.i.i, align 1
  %338 = tail call i16 @llvm.bswap.i16(i16 %337) #6
  %conv100.i.i.i = zext i16 %338 to i32
  %339 = ptrtoint ptr %arrayidx82.i.i.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store i32 %conv100.i.i.i, ptr %arrayidx82.i.i.i, align 8
  %usDeviceACPIEnum.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 60, i32 2, i32 %i.4276.i.i.i, i32 1
  %340 = ptrtoint ptr %usDeviceACPIEnum.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %340, i32 2)
  %341 = load i16, ptr %usDeviceACPIEnum.i.i.i, align 1
  %342 = tail call i16 @llvm.bswap.i16(i16 %341) #6
  %conv107.i.i.i = zext i16 %342 to i32
  %device_acpi_enum.i.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info81.i.i.i, i32 0, i32 %i.4276.i.i.i, i32 1
  %343 = ptrtoint ptr %device_acpi_enum.i.i.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 %conv107.i.i.i, ptr %device_acpi_enum.i.i.i, align 4
  %ucExtAUXDDCLutIndex.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 60, i32 2, i32 %i.4276.i.i.i, i32 3
  %344 = ptrtoint ptr %ucExtAUXDDCLutIndex.i.i.i to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %ucExtAUXDDCLutIndex.i.i.i, align 1
  %ext_aux_ddc_lut_index.i.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info81.i.i.i, i32 0, i32 %i.4276.i.i.i, i32 3
  %346 = ptrtoint ptr %ext_aux_ddc_lut_index.i.i.i to i32
  call void @__asan_store1_noabort(i32 %346)
  store i8 %345, ptr %ext_aux_ddc_lut_index.i.i.i, align 4
  %ucExtHPDPINLutIndex.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 60, i32 2, i32 %i.4276.i.i.i, i32 4
  %347 = ptrtoint ptr %ucExtHPDPINLutIndex.i.i.i to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %ucExtHPDPINLutIndex.i.i.i, align 1
  %ext_hpd_pin_lut_index.i.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info81.i.i.i, i32 0, i32 %i.4276.i.i.i, i32 4
  %349 = ptrtoint ptr %ext_hpd_pin_lut_index.i.i.i to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 %348, ptr %ext_hpd_pin_lut_index.i.i.i, align 1
  %350 = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 60, i32 2, i32 %i.4276.i.i.i, i32 6
  %351 = ptrtoint ptr %350 to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %350, align 1
  %channel_mapping.i.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info81.i.i.i, i32 0, i32 %i.4276.i.i.i, i32 6
  %353 = ptrtoint ptr %channel_mapping.i.i.i to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 %352, ptr %channel_mapping.i.i.i, align 4
  %inc130.i.i.i = add nuw nsw i32 %i.4276.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc130.i.i.i, 7
  br i1 %exitcond.not.i.i.i, label %for.end131.i.i.i, label %for.body80.i.i.i.for.body80.i.i.i_crit_edge

for.body80.i.i.i.for.body80.i.i.i_crit_edge:      ; preds = %for.body80.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body80.i.i.i

for.end131.i.i.i:                                 ; preds = %for.body80.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %ucChecksum.i.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_8, ptr %call.i.i.i, i32 0, i32 60, i32 3
  br label %for.body14.preheader.i.i

sw.bb5.i.i:                                       ; preds = %get_atom_data_table_revision.exit.i.i
  %354 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %master_data_tbl.i, align 8
  %IntegratedSystemInfo.i62.i.i = getelementptr inbounds %struct._ATOM_MASTER_DATA_TABLE, ptr %355, i32 0, i32 1, i32 30
  %356 = ptrtoint ptr %IntegratedSystemInfo.i62.i.i to i32
  call void @__asan_loadN_noabort(i32 %356, i32 2)
  %357 = load i16, ptr %IntegratedSystemInfo.i62.i.i, align 1
  %conv.i63.i.i = zext i16 %357 to i32
  %call.i64.i.i = tail call ptr @bios_get_image(ptr noundef nonnull %call7.i.i, i32 noundef %conv.i63.i.i, i32 noundef 512) #6
  %tobool.not.i.i.i = icmp eq ptr %call.i64.i.i, null
  br i1 %tobool.not.i.i.i, label %sw.bb5.i.i.if.end27.i19_crit_edge, label %if.end.i179.i.i

sw.bb5.i.i.if.end27.i19_crit_edge:                ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i19

if.end.i179.i.i:                                  ; preds = %sw.bb5.i.i
  %ulBootUpEngineClock.i65.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 1
  %358 = ptrtoint ptr %ulBootUpEngineClock.i65.i.i to i32
  call void @__asan_loadN_noabort(i32 %358, i32 4)
  %359 = load i32, ptr %ulBootUpEngineClock.i65.i.i, align 1
  %360 = tail call i32 @llvm.bswap.i32(i32 %359) #6
  %mul.i66.i.i = mul i32 %360, 10
  %boot_up_engine_clock.i67.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 5
  %361 = ptrtoint ptr %boot_up_engine_clock.i67.i.i to i32
  call void @__asan_store4_noabort(i32 %361)
  store i32 %mul.i66.i.i, ptr %boot_up_engine_clock.i67.i.i, align 4
  %ulDentistVCOFreq.i68.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 2
  %362 = ptrtoint ptr %ulDentistVCOFreq.i68.i.i to i32
  call void @__asan_loadN_noabort(i32 %362, i32 4)
  %363 = load i32, ptr %ulDentistVCOFreq.i68.i.i, align 1
  %364 = tail call i32 @llvm.bswap.i32(i32 %363) #6
  %mul1.i.i.i = mul i32 %364, 10
  %dentist_vco_freq.i69.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 6
  %365 = ptrtoint ptr %dentist_vco_freq.i69.i.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 %mul1.i.i.i, ptr %dentist_vco_freq.i69.i.i, align 8
  %ulBootUpUMAClock.i70.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 3
  %366 = ptrtoint ptr %ulBootUpUMAClock.i70.i.i to i32
  call void @__asan_loadN_noabort(i32 %366, i32 4)
  %367 = load i32, ptr %ulBootUpUMAClock.i70.i.i, align 1
  %368 = tail call i32 @llvm.bswap.i32(i32 %367) #6
  %mul2.i71.i.i = mul i32 %368, 10
  %boot_up_uma_clock.i72.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 7
  %369 = ptrtoint ptr %boot_up_uma_clock.i72.i.i to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 %mul2.i71.i.i, ptr %boot_up_uma_clock.i72.i.i, align 4
  %arrayidx.i73.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 4, i32 0
  %ulMaximumSupportedCLK.i74.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 4, i32 0, i32 1
  %370 = ptrtoint ptr %ulMaximumSupportedCLK.i74.i.i to i32
  call void @__asan_loadN_noabort(i32 %370, i32 4)
  %371 = load i32, ptr %ulMaximumSupportedCLK.i74.i.i, align 1
  %372 = tail call i32 @llvm.bswap.i32(i32 %371) #6
  %mul4.i.i.i = mul i32 %372, 10
  %max_supported_clk.i75.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 0, i32 1
  %373 = ptrtoint ptr %max_supported_clk.i75.i.i to i32
  call void @__asan_store4_noabort(i32 %373)
  store i32 %mul4.i.i.i, ptr %max_supported_clk.i75.i.i, align 4
  %374 = ptrtoint ptr %arrayidx.i73.i.i to i32
  call void @__asan_loadN_noabort(i32 %374, i32 4)
  %375 = load i32, ptr %arrayidx.i73.i.i, align 1
  %376 = tail call i32 @llvm.bswap.i32(i32 %375) #6
  %377 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 %376, ptr %call7.i.i.i, align 8
  %arrayidx.1.i76.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 4, i32 1
  %ulMaximumSupportedCLK.1.i77.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 4, i32 1, i32 1
  %378 = ptrtoint ptr %ulMaximumSupportedCLK.1.i77.i.i to i32
  call void @__asan_loadN_noabort(i32 %378, i32 4)
  %379 = load i32, ptr %ulMaximumSupportedCLK.1.i77.i.i, align 1
  %380 = tail call i32 @llvm.bswap.i32(i32 %379) #6
  %mul4.1.i.i.i = mul i32 %380, 10
  %arrayidx5.1.i.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 1
  %max_supported_clk.1.i78.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %381 = ptrtoint ptr %max_supported_clk.1.i78.i.i to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 %mul4.1.i.i.i, ptr %max_supported_clk.1.i78.i.i, align 4
  %382 = ptrtoint ptr %arrayidx.1.i76.i.i to i32
  call void @__asan_loadN_noabort(i32 %382, i32 4)
  %383 = load i32, ptr %arrayidx.1.i76.i.i, align 1
  %384 = tail call i32 @llvm.bswap.i32(i32 %383) #6
  %385 = ptrtoint ptr %arrayidx5.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 %384, ptr %arrayidx5.1.i.i.i, align 8
  %arrayidx.2.i79.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 4, i32 2
  %ulMaximumSupportedCLK.2.i80.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 4, i32 2, i32 1
  %386 = ptrtoint ptr %ulMaximumSupportedCLK.2.i80.i.i to i32
  call void @__asan_loadN_noabort(i32 %386, i32 4)
  %387 = load i32, ptr %ulMaximumSupportedCLK.2.i80.i.i, align 1
  %388 = tail call i32 @llvm.bswap.i32(i32 %387) #6
  %mul4.2.i.i.i = mul i32 %388, 10
  %arrayidx5.2.i.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 2
  %max_supported_clk.2.i81.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %389 = ptrtoint ptr %max_supported_clk.2.i81.i.i to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 %mul4.2.i.i.i, ptr %max_supported_clk.2.i81.i.i, align 4
  %390 = ptrtoint ptr %arrayidx.2.i79.i.i to i32
  call void @__asan_loadN_noabort(i32 %390, i32 4)
  %391 = load i32, ptr %arrayidx.2.i79.i.i, align 1
  %392 = tail call i32 @llvm.bswap.i32(i32 %391) #6
  %393 = ptrtoint ptr %arrayidx5.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 %392, ptr %arrayidx5.2.i.i.i, align 8
  %arrayidx.3.i82.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 4, i32 3
  %ulMaximumSupportedCLK.3.i83.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 4, i32 3, i32 1
  %394 = ptrtoint ptr %ulMaximumSupportedCLK.3.i83.i.i to i32
  call void @__asan_loadN_noabort(i32 %394, i32 4)
  %395 = load i32, ptr %ulMaximumSupportedCLK.3.i83.i.i, align 1
  %396 = tail call i32 @llvm.bswap.i32(i32 %395) #6
  %mul4.3.i.i.i = mul i32 %396, 10
  %arrayidx5.3.i.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 3
  %max_supported_clk.3.i84.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %397 = ptrtoint ptr %max_supported_clk.3.i84.i.i to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 %mul4.3.i.i.i, ptr %max_supported_clk.3.i84.i.i, align 4
  %398 = ptrtoint ptr %arrayidx.3.i82.i.i to i32
  call void @__asan_loadN_noabort(i32 %398, i32 4)
  %399 = load i32, ptr %arrayidx.3.i82.i.i, align 1
  %400 = tail call i32 @llvm.bswap.i32(i32 %399) #6
  %401 = ptrtoint ptr %arrayidx5.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 %400, ptr %arrayidx5.3.i.i.i, align 8
  %ulBootUpReqDisplayVector.i85.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 5
  %402 = ptrtoint ptr %ulBootUpReqDisplayVector.i85.i.i to i32
  call void @__asan_loadN_noabort(i32 %402, i32 4)
  %403 = load i32, ptr %ulBootUpReqDisplayVector.i85.i.i, align 1
  %404 = tail call i32 @llvm.bswap.i32(i32 %403) #6
  %boot_up_req_display_vector.i86.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 8
  %405 = ptrtoint ptr %boot_up_req_display_vector.i86.i.i to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 %404, ptr %boot_up_req_display_vector.i86.i.i, align 8
  %ulGPUCapInfo.i87.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 7
  %406 = ptrtoint ptr %ulGPUCapInfo.i87.i.i to i32
  call void @__asan_loadN_noabort(i32 %406, i32 4)
  %407 = load i32, ptr %ulGPUCapInfo.i87.i.i, align 1
  %408 = tail call i32 @llvm.bswap.i32(i32 %407) #6
  %gpu_cap_info.i88.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 10
  %409 = ptrtoint ptr %gpu_cap_info.i88.i.i to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 %408, ptr %gpu_cap_info.i88.i.i, align 8
  %ulSystemConfig.i89.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 13
  %410 = ptrtoint ptr %ulSystemConfig.i89.i.i to i32
  call void @__asan_loadN_noabort(i32 %410, i32 4)
  %411 = load i32, ptr %ulSystemConfig.i89.i.i, align 1
  %412 = tail call i32 @llvm.bswap.i32(i32 %411) #6
  %system_config.i90.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 12
  %413 = ptrtoint ptr %system_config.i90.i.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 %412, ptr %system_config.i90.i.i, align 8
  %ulCPUCapInfo.i91.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 14
  %414 = ptrtoint ptr %ulCPUCapInfo.i91.i.i to i32
  call void @__asan_loadN_noabort(i32 %414, i32 4)
  %415 = load i32, ptr %ulCPUCapInfo.i91.i.i, align 1
  %416 = tail call i32 @llvm.bswap.i32(i32 %415) #6
  %cpu_cap_info.i92.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 13
  %417 = ptrtoint ptr %cpu_cap_info.i92.i.i to i32
  call void @__asan_store4_noabort(i32 %417)
  store i32 %416, ptr %cpu_cap_info.i92.i.i, align 4
  %usBootUpNBVoltage.i93.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 61
  %418 = ptrtoint ptr %usBootUpNBVoltage.i93.i.i to i32
  call void @__asan_loadN_noabort(i32 %418, i32 2)
  %419 = load i16, ptr %usBootUpNBVoltage.i93.i.i, align 1
  %420 = tail call i16 @llvm.bswap.i16(i16 %419) #6
  %conv10.i.i.i = zext i16 %420 to i32
  %boot_up_nb_voltage.i94.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 16
  %421 = ptrtoint ptr %boot_up_nb_voltage.i94.i.i to i32
  call void @__asan_store4_noabort(i32 %421)
  store i32 %conv10.i.i.i, ptr %boot_up_nb_voltage.i94.i.i, align 8
  %usExtDispConnInfoOffset.i95.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 17
  %422 = ptrtoint ptr %usExtDispConnInfoOffset.i95.i.i to i32
  call void @__asan_loadN_noabort(i32 %422, i32 2)
  %423 = load i16, ptr %usExtDispConnInfoOffset.i95.i.i, align 1
  %424 = tail call i16 @llvm.bswap.i16(i16 %423) #6
  %conv11.i.i.i = zext i16 %424 to i32
  %ext_disp_conn_info_offset.i96.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 17
  %425 = ptrtoint ptr %ext_disp_conn_info_offset.i96.i.i to i32
  call void @__asan_store4_noabort(i32 %425)
  store i32 %conv11.i.i.i, ptr %ext_disp_conn_info_offset.i96.i.i, align 4
  %ucMemoryType.i97.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 19
  %426 = ptrtoint ptr %ucMemoryType.i97.i.i to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %ucMemoryType.i97.i.i, align 1
  %memory_type.i98.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 3
  %428 = ptrtoint ptr %memory_type.i98.i.i to i32
  call void @__asan_store1_noabort(i32 %428)
  store i8 %427, ptr %memory_type.i98.i.i, align 8
  %ucUMAChannelNumber.i99.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 20
  %429 = ptrtoint ptr %ucUMAChannelNumber.i99.i.i to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %ucUMAChannelNumber.i99.i.i, align 1
  %ma_channel_number.i100.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 4
  %431 = ptrtoint ptr %ma_channel_number.i100.i.i to i32
  call void @__asan_store1_noabort(i32 %431)
  store i8 %430, ptr %ma_channel_number.i100.i.i, align 1
  %ulGMCRestoreResetTime.i101.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 29
  %432 = ptrtoint ptr %ulGMCRestoreResetTime.i101.i.i to i32
  call void @__asan_loadN_noabort(i32 %432, i32 4)
  %433 = load i32, ptr %ulGMCRestoreResetTime.i101.i.i, align 1
  %434 = tail call i32 @llvm.bswap.i32(i32 %433) #6
  %gmc_restore_reset_time.i102.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 21
  %435 = ptrtoint ptr %gmc_restore_reset_time.i102.i.i to i32
  call void @__asan_store4_noabort(i32 %435)
  store i32 %434, ptr %gmc_restore_reset_time.i102.i.i, align 8
  %ulNbpStateNClkFreq.i103.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 59
  %436 = ptrtoint ptr %ulNbpStateNClkFreq.i103.i.i to i32
  call void @__asan_loadN_noabort(i32 %436, i32 4)
  %437 = load i32, ptr %ulNbpStateNClkFreq.i103.i.i, align 1
  %438 = tail call i32 @llvm.bswap.i32(i32 %437) #6
  %minimum_n_clk.i104.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 22
  %439 = ptrtoint ptr %minimum_n_clk.i104.i.i to i32
  call void @__asan_store4_noabort(i32 %439)
  store i32 %438, ptr %minimum_n_clk.i104.i.i, align 4
  %arrayidx19.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 59, i32 1
  %440 = ptrtoint ptr %arrayidx19.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %440, i32 4)
  %441 = load i32, ptr %arrayidx19.i.i.i, align 1
  %442 = tail call i32 @llvm.bswap.i32(i32 %441) #6
  %443 = tail call i32 @llvm.umin.i32(i32 %438, i32 %442) #6
  %444 = ptrtoint ptr %minimum_n_clk.i104.i.i to i32
  call void @__asan_store4_noabort(i32 %444)
  store i32 %443, ptr %minimum_n_clk.i104.i.i, align 4
  %arrayidx19.1.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 59, i32 2
  %445 = ptrtoint ptr %arrayidx19.1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %445, i32 4)
  %446 = load i32, ptr %arrayidx19.1.i.i.i, align 1
  %447 = tail call i32 @llvm.bswap.i32(i32 %446) #6
  %448 = tail call i32 @llvm.umin.i32(i32 %443, i32 %447) #6
  %449 = ptrtoint ptr %minimum_n_clk.i104.i.i to i32
  call void @__asan_store4_noabort(i32 %449)
  store i32 %448, ptr %minimum_n_clk.i104.i.i, align 4
  %arrayidx19.2.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 59, i32 3
  %450 = ptrtoint ptr %arrayidx19.2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %450, i32 4)
  %451 = load i32, ptr %arrayidx19.2.i.i.i, align 1
  %452 = tail call i32 @llvm.bswap.i32(i32 %451) #6
  %453 = tail call i32 @llvm.umin.i32(i32 %448, i32 %452) #6
  %454 = ptrtoint ptr %minimum_n_clk.i104.i.i to i32
  call void @__asan_store4_noabort(i32 %454)
  store i32 %453, ptr %minimum_n_clk.i104.i.i, align 4
  %ulIdleNClk.i105.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 31
  %455 = ptrtoint ptr %ulIdleNClk.i105.i.i to i32
  call void @__asan_loadN_noabort(i32 %455, i32 4)
  %456 = load i32, ptr %ulIdleNClk.i105.i.i, align 1
  %457 = tail call i32 @llvm.bswap.i32(i32 %456) #6
  %idle_n_clk.i106.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 23
  %458 = ptrtoint ptr %idle_n_clk.i106.i.i to i32
  call void @__asan_store4_noabort(i32 %458)
  store i32 %457, ptr %idle_n_clk.i106.i.i, align 8
  %ulDDR_DLL_PowerUpTime.i107.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 32
  %459 = ptrtoint ptr %ulDDR_DLL_PowerUpTime.i107.i.i to i32
  call void @__asan_loadN_noabort(i32 %459, i32 4)
  %460 = load i32, ptr %ulDDR_DLL_PowerUpTime.i107.i.i, align 1
  %461 = tail call i32 @llvm.bswap.i32(i32 %460) #6
  %ddr_dll_power_up_time.i108.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 24
  %462 = ptrtoint ptr %ddr_dll_power_up_time.i108.i.i to i32
  call void @__asan_store4_noabort(i32 %462)
  store i32 %461, ptr %ddr_dll_power_up_time.i108.i.i, align 4
  %ulDDR_PLL_PowerUpTime.i109.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 33
  %463 = ptrtoint ptr %ulDDR_PLL_PowerUpTime.i109.i.i to i32
  call void @__asan_loadN_noabort(i32 %463, i32 4)
  %464 = load i32, ptr %ulDDR_PLL_PowerUpTime.i109.i.i, align 1
  %465 = tail call i32 @llvm.bswap.i32(i32 %464) #6
  %ddr_pll_power_up_time.i110.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 25
  %466 = ptrtoint ptr %ddr_pll_power_up_time.i110.i.i to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 %465, ptr %ddr_pll_power_up_time.i110.i.i, align 8
  %usPCIEClkSSType.i111.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 35
  %467 = ptrtoint ptr %usPCIEClkSSType.i111.i.i to i32
  call void @__asan_loadN_noabort(i32 %467, i32 2)
  %468 = load i16, ptr %usPCIEClkSSType.i111.i.i, align 1
  %469 = tail call i16 @llvm.bswap.i16(i16 %468) #6
  %conv29.i.i.i = zext i16 %469 to i32
  %pcie_clk_ss_type.i112.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 26
  %470 = ptrtoint ptr %pcie_clk_ss_type.i112.i.i to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 %conv29.i.i.i, ptr %pcie_clk_ss_type.i112.i.i, align 4
  %usLvdsSSPercentage.i113.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 36
  %471 = ptrtoint ptr %usLvdsSSPercentage.i113.i.i to i32
  call void @__asan_loadN_noabort(i32 %471, i32 2)
  %472 = load i16, ptr %usLvdsSSPercentage.i113.i.i, align 1
  %473 = tail call i16 @llvm.bswap.i16(i16 %472) #6
  %conv30.i.i.i = zext i16 %473 to i32
  %lvds_ss_percentage.i114.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 27
  %474 = ptrtoint ptr %lvds_ss_percentage.i114.i.i to i32
  call void @__asan_store4_noabort(i32 %474)
  store i32 %conv30.i.i.i, ptr %lvds_ss_percentage.i114.i.i, align 8
  %usLvdsSSpreadRateIn10Hz.i115.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 37
  %475 = ptrtoint ptr %usLvdsSSpreadRateIn10Hz.i115.i.i to i32
  call void @__asan_loadN_noabort(i32 %475, i32 2)
  %476 = load i16, ptr %usLvdsSSpreadRateIn10Hz.i115.i.i, align 1
  %477 = tail call i16 @llvm.bswap.i16(i16 %476) #6
  %conv31.i116.i.i = zext i16 %477 to i32
  %lvds_sspread_rate_in_10hz.i117.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 28
  %478 = ptrtoint ptr %lvds_sspread_rate_in_10hz.i117.i.i to i32
  call void @__asan_store4_noabort(i32 %478)
  store i32 %conv31.i116.i.i, ptr %lvds_sspread_rate_in_10hz.i117.i.i, align 4
  %usHDMISSPercentage.i118.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 38
  %479 = ptrtoint ptr %usHDMISSPercentage.i118.i.i to i32
  call void @__asan_loadN_noabort(i32 %479, i32 2)
  %480 = load i16, ptr %usHDMISSPercentage.i118.i.i, align 1
  %481 = tail call i16 @llvm.bswap.i16(i16 %480) #6
  %conv32.i119.i.i = zext i16 %481 to i32
  %hdmi_ss_percentage.i120.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 29
  %482 = ptrtoint ptr %hdmi_ss_percentage.i120.i.i to i32
  call void @__asan_store4_noabort(i32 %482)
  store i32 %conv32.i119.i.i, ptr %hdmi_ss_percentage.i120.i.i, align 8
  %usHDMISSpreadRateIn10Hz.i121.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 39
  %483 = ptrtoint ptr %usHDMISSpreadRateIn10Hz.i121.i.i to i32
  call void @__asan_loadN_noabort(i32 %483, i32 2)
  %484 = load i16, ptr %usHDMISSpreadRateIn10Hz.i121.i.i, align 1
  %485 = tail call i16 @llvm.bswap.i16(i16 %484) #6
  %conv33.i122.i.i = zext i16 %485 to i32
  %hdmi_sspread_rate_in_10hz.i123.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 30
  %486 = ptrtoint ptr %hdmi_sspread_rate_in_10hz.i123.i.i to i32
  call void @__asan_store4_noabort(i32 %486)
  store i32 %conv33.i122.i.i, ptr %hdmi_sspread_rate_in_10hz.i123.i.i, align 4
  %usDVISSPercentage.i124.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 40
  %487 = ptrtoint ptr %usDVISSPercentage.i124.i.i to i32
  call void @__asan_loadN_noabort(i32 %487, i32 2)
  %488 = load i16, ptr %usDVISSPercentage.i124.i.i, align 1
  %489 = tail call i16 @llvm.bswap.i16(i16 %488) #6
  %conv34.i125.i.i = zext i16 %489 to i32
  %dvi_ss_percentage.i126.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 31
  %490 = ptrtoint ptr %dvi_ss_percentage.i126.i.i to i32
  call void @__asan_store4_noabort(i32 %490)
  store i32 %conv34.i125.i.i, ptr %dvi_ss_percentage.i126.i.i, align 8
  %usDVISSpreadRateIn10Hz.i127.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 41
  %491 = ptrtoint ptr %usDVISSpreadRateIn10Hz.i127.i.i to i32
  call void @__asan_loadN_noabort(i32 %491, i32 2)
  %492 = load i16, ptr %usDVISSpreadRateIn10Hz.i127.i.i, align 1
  %493 = tail call i16 @llvm.bswap.i16(i16 %492) #6
  %conv35.i128.i.i = zext i16 %493 to i32
  %dvi_sspread_rate_in_10_hz.i129.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 32
  %494 = ptrtoint ptr %dvi_sspread_rate_in_10_hz.i129.i.i to i32
  call void @__asan_store4_noabort(i32 %494)
  store i32 %conv35.i128.i.i, ptr %dvi_sspread_rate_in_10_hz.i129.i.i, align 4
  %usMaxLVDSPclkFreqInSingleLink.i130.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 45
  %495 = ptrtoint ptr %usMaxLVDSPclkFreqInSingleLink.i130.i.i to i32
  call void @__asan_loadN_noabort(i32 %495, i32 2)
  %496 = load i16, ptr %usMaxLVDSPclkFreqInSingleLink.i130.i.i, align 1
  %497 = tail call i16 @llvm.bswap.i16(i16 %496) #6
  %conv36.i131.i.i = zext i16 %497 to i32
  %max_lvds_pclk_freq_in_single_link.i132.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 41
  %498 = ptrtoint ptr %max_lvds_pclk_freq_in_single_link.i132.i.i to i32
  call void @__asan_store4_noabort(i32 %498)
  store i32 %conv36.i131.i.i, ptr %max_lvds_pclk_freq_in_single_link.i132.i.i, align 8
  %ucLvdsMisc.i133.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 46
  %499 = ptrtoint ptr %ucLvdsMisc.i133.i.i to i32
  call void @__asan_load1_noabort(i32 %499)
  %500 = load i8, ptr %ucLvdsMisc.i133.i.i, align 1
  %conv37.i134.i.i = zext i8 %500 to i32
  %lvds_misc.i135.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 42
  %501 = ptrtoint ptr %lvds_misc.i135.i.i to i32
  call void @__asan_store4_noabort(i32 %501)
  store i32 %conv37.i134.i.i, ptr %lvds_misc.i135.i.i, align 4
  %ucLVDSPwrOnSeqDIGONtoDE_in4Ms.i136.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 48
  %502 = ptrtoint ptr %ucLVDSPwrOnSeqDIGONtoDE_in4Ms.i136.i.i to i32
  call void @__asan_load1_noabort(i32 %502)
  %503 = load i8, ptr %ucLVDSPwrOnSeqDIGONtoDE_in4Ms.i136.i.i, align 1
  %conv38.i137.i.i = zext i8 %503 to i32
  %lvds_pwr_on_seq_dig_on_to_de_in_4ms.i138.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 43
  %504 = ptrtoint ptr %lvds_pwr_on_seq_dig_on_to_de_in_4ms.i138.i.i to i32
  call void @__asan_store4_noabort(i32 %504)
  store i32 %conv38.i137.i.i, ptr %lvds_pwr_on_seq_dig_on_to_de_in_4ms.i138.i.i, align 8
  %ucLVDSPwrOnSeqDEtoVARY_BL_in4Ms.i139.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 49
  %505 = ptrtoint ptr %ucLVDSPwrOnSeqDEtoVARY_BL_in4Ms.i139.i.i to i32
  call void @__asan_load1_noabort(i32 %505)
  %506 = load i8, ptr %ucLVDSPwrOnSeqDEtoVARY_BL_in4Ms.i139.i.i, align 1
  %conv39.i140.i.i = zext i8 %506 to i32
  %lvds_pwr_on_seq_de_to_vary_bl_in_4ms.i141.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 44
  %507 = ptrtoint ptr %lvds_pwr_on_seq_de_to_vary_bl_in_4ms.i141.i.i to i32
  call void @__asan_store4_noabort(i32 %507)
  store i32 %conv39.i140.i.i, ptr %lvds_pwr_on_seq_de_to_vary_bl_in_4ms.i141.i.i, align 4
  %ucLVDSPwrOnSeqVARY_BLtoBLON_in4Ms.i142.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 53
  %508 = ptrtoint ptr %ucLVDSPwrOnSeqVARY_BLtoBLON_in4Ms.i142.i.i to i32
  call void @__asan_load1_noabort(i32 %508)
  %509 = load i8, ptr %ucLVDSPwrOnSeqVARY_BLtoBLON_in4Ms.i142.i.i, align 1
  %conv40.i143.i.i = zext i8 %509 to i32
  %lvds_pwr_on_seq_vary_bl_to_blon_in_4ms.i144.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 48
  %510 = ptrtoint ptr %lvds_pwr_on_seq_vary_bl_to_blon_in_4ms.i144.i.i to i32
  call void @__asan_store4_noabort(i32 %510)
  store i32 %conv40.i143.i.i, ptr %lvds_pwr_on_seq_vary_bl_to_blon_in_4ms.i144.i.i, align 4
  %ucLVDSPwrOffSeqVARY_BLtoDE_in4Ms.i145.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 50
  %511 = ptrtoint ptr %ucLVDSPwrOffSeqVARY_BLtoDE_in4Ms.i145.i.i to i32
  call void @__asan_load1_noabort(i32 %511)
  %512 = load i8, ptr %ucLVDSPwrOffSeqVARY_BLtoDE_in4Ms.i145.i.i, align 1
  %conv41.i146.i.i = zext i8 %512 to i32
  %lvds_pwr_off_seq_vary_bl_to_de_in4ms.i147.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 45
  %513 = ptrtoint ptr %lvds_pwr_off_seq_vary_bl_to_de_in4ms.i147.i.i to i32
  call void @__asan_store4_noabort(i32 %513)
  store i32 %conv41.i146.i.i, ptr %lvds_pwr_off_seq_vary_bl_to_de_in4ms.i147.i.i, align 8
  %ucLVDSPwrOffSeqDEtoDIGON_in4Ms.i148.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 51
  %514 = ptrtoint ptr %ucLVDSPwrOffSeqDEtoDIGON_in4Ms.i148.i.i to i32
  call void @__asan_load1_noabort(i32 %514)
  %515 = load i8, ptr %ucLVDSPwrOffSeqDEtoDIGON_in4Ms.i148.i.i, align 1
  %conv42.i149.i.i = zext i8 %515 to i32
  %lvds_pwr_off_seq_de_to_dig_on_in4ms.i150.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 46
  %516 = ptrtoint ptr %lvds_pwr_off_seq_de_to_dig_on_in4ms.i150.i.i to i32
  call void @__asan_store4_noabort(i32 %516)
  store i32 %conv42.i149.i.i, ptr %lvds_pwr_off_seq_de_to_dig_on_in4ms.i150.i.i, align 4
  %ucLVDSPwrOffSeqBLONtoVARY_BL_in4Ms.i151.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 54
  %517 = ptrtoint ptr %ucLVDSPwrOffSeqBLONtoVARY_BL_in4Ms.i151.i.i to i32
  call void @__asan_load1_noabort(i32 %517)
  %518 = load i8, ptr %ucLVDSPwrOffSeqBLONtoVARY_BL_in4Ms.i151.i.i, align 1
  %conv43.i152.i.i = zext i8 %518 to i32
  %lvds_pwr_off_seq_blon_to_vary_bl_in_4ms.i153.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 49
  %519 = ptrtoint ptr %lvds_pwr_off_seq_blon_to_vary_bl_in_4ms.i153.i.i to i32
  call void @__asan_store4_noabort(i32 %519)
  store i32 %conv43.i152.i.i, ptr %lvds_pwr_off_seq_blon_to_vary_bl_in_4ms.i153.i.i, align 8
  %ucLVDSOffToOnDelay_in4Ms.i154.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 52
  %520 = ptrtoint ptr %ucLVDSOffToOnDelay_in4Ms.i154.i.i to i32
  call void @__asan_load1_noabort(i32 %520)
  %521 = load i8, ptr %ucLVDSOffToOnDelay_in4Ms.i154.i.i, align 1
  %conv44.i155.i.i = zext i8 %521 to i32
  %lvds_off_to_on_delay_in_4ms.i156.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 47
  %522 = ptrtoint ptr %lvds_off_to_on_delay_in_4ms.i156.i.i to i32
  call void @__asan_store4_noabort(i32 %522)
  store i32 %conv44.i155.i.i, ptr %lvds_off_to_on_delay_in_4ms.i156.i.i, align 8
  %ulLCDBitDepthControlVal.i157.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 56
  %523 = ptrtoint ptr %ulLCDBitDepthControlVal.i157.i.i to i32
  call void @__asan_loadN_noabort(i32 %523, i32 4)
  %524 = load i32, ptr %ulLCDBitDepthControlVal.i157.i.i, align 1
  %525 = tail call i32 @llvm.bswap.i32(i32 %524) #6
  %lvds_bit_depth_control_val.i158.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 51
  %526 = ptrtoint ptr %lvds_bit_depth_control_val.i158.i.i to i32
  call void @__asan_store4_noabort(i32 %526)
  store i32 %525, ptr %lvds_bit_depth_control_val.i158.i.i, align 8
  %arrayidx49.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 28, i32 0
  %527 = ptrtoint ptr %arrayidx49.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %527, i32 4)
  %528 = load i32, ptr %arrayidx49.i.i.i, align 1
  %529 = tail call i32 @llvm.bswap.i32(i32 %528) #6
  %mul50.i.i.i = mul i32 %529, 10
  %arrayidx51.i159.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 0
  %530 = ptrtoint ptr %arrayidx51.i159.i.i to i32
  call void @__asan_store4_noabort(i32 %530)
  store i32 %mul50.i.i.i, ptr %arrayidx51.i159.i.i, align 4
  %usVoltageIndex.i160.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 28, i32 0, i32 1
  %531 = ptrtoint ptr %usVoltageIndex.i160.i.i to i32
  call void @__asan_loadN_noabort(i32 %531, i32 2)
  %532 = load i16, ptr %usVoltageIndex.i160.i.i, align 1
  %533 = tail call i16 @llvm.bswap.i16(i16 %532) #6
  %conv54.i.i.i = zext i16 %533 to i32
  %voltage_index57.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 1
  %534 = ptrtoint ptr %voltage_index57.i.i.i to i32
  call void @__asan_store4_noabort(i32 %534)
  store i32 %conv54.i.i.i, ptr %voltage_index57.i.i.i, align 8
  %usVoltageID.i161.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 28, i32 0, i32 2
  %535 = ptrtoint ptr %usVoltageID.i161.i.i to i32
  call void @__asan_loadN_noabort(i32 %535, i32 2)
  %536 = load i16, ptr %usVoltageID.i161.i.i, align 1
  %537 = tail call i16 @llvm.bswap.i16(i16 %536) #6
  %conv60.i.i.i = zext i16 %537 to i32
  %voltage_id.i162.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 2
  %538 = ptrtoint ptr %voltage_id.i162.i.i to i32
  call void @__asan_store4_noabort(i32 %538)
  store i32 %conv60.i.i.i, ptr %voltage_id.i162.i.i, align 4
  %arrayidx49.1.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 28, i32 1
  %539 = ptrtoint ptr %arrayidx49.1.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %539, i32 4)
  %540 = load i32, ptr %arrayidx49.1.i.i.i, align 1
  %541 = tail call i32 @llvm.bswap.i32(i32 %540) #6
  %mul50.1.i.i.i = mul i32 %541, 10
  %arrayidx51.1.i163.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %542 = ptrtoint ptr %arrayidx51.1.i163.i.i to i32
  call void @__asan_store4_noabort(i32 %542)
  store i32 %mul50.1.i.i.i, ptr %arrayidx51.1.i163.i.i, align 8
  %usVoltageIndex.1.i164.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 28, i32 1, i32 1
  %543 = ptrtoint ptr %usVoltageIndex.1.i164.i.i to i32
  call void @__asan_loadN_noabort(i32 %543, i32 2)
  %544 = load i16, ptr %usVoltageIndex.1.i164.i.i, align 1
  %545 = tail call i16 @llvm.bswap.i16(i16 %544) #6
  %conv54.1.i.i.i = zext i16 %545 to i32
  %voltage_index57.1.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 1, i32 1
  %546 = ptrtoint ptr %voltage_index57.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %546)
  store i32 %conv54.1.i.i.i, ptr %voltage_index57.1.i.i.i, align 4
  %usVoltageID.1.i165.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 28, i32 1, i32 2
  %547 = ptrtoint ptr %usVoltageID.1.i165.i.i to i32
  call void @__asan_loadN_noabort(i32 %547, i32 2)
  %548 = load i16, ptr %usVoltageID.1.i165.i.i, align 1
  %549 = tail call i16 @llvm.bswap.i16(i16 %548) #6
  %conv60.1.i.i.i = zext i16 %549 to i32
  %voltage_id.1.i166.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 1, i32 2
  %550 = ptrtoint ptr %voltage_id.1.i166.i.i to i32
  call void @__asan_store4_noabort(i32 %550)
  store i32 %conv60.1.i.i.i, ptr %voltage_id.1.i166.i.i, align 8
  %arrayidx49.2.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 28, i32 2
  %551 = ptrtoint ptr %arrayidx49.2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %551, i32 4)
  %552 = load i32, ptr %arrayidx49.2.i.i.i, align 1
  %553 = tail call i32 @llvm.bswap.i32(i32 %552) #6
  %mul50.2.i.i.i = mul i32 %553, 10
  %arrayidx51.2.i167.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %554 = ptrtoint ptr %arrayidx51.2.i167.i.i to i32
  call void @__asan_store4_noabort(i32 %554)
  store i32 %mul50.2.i.i.i, ptr %arrayidx51.2.i167.i.i, align 4
  %usVoltageIndex.2.i168.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 28, i32 2, i32 1
  %555 = ptrtoint ptr %usVoltageIndex.2.i168.i.i to i32
  call void @__asan_loadN_noabort(i32 %555, i32 2)
  %556 = load i16, ptr %usVoltageIndex.2.i168.i.i, align 1
  %557 = tail call i16 @llvm.bswap.i16(i16 %556) #6
  %conv54.2.i.i.i = zext i16 %557 to i32
  %voltage_index57.2.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 1
  %558 = ptrtoint ptr %voltage_index57.2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %558)
  store i32 %conv54.2.i.i.i, ptr %voltage_index57.2.i.i.i, align 8
  %usVoltageID.2.i169.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 28, i32 2, i32 2
  %559 = ptrtoint ptr %usVoltageID.2.i169.i.i to i32
  call void @__asan_loadN_noabort(i32 %559, i32 2)
  %560 = load i16, ptr %usVoltageID.2.i169.i.i, align 1
  %561 = tail call i16 @llvm.bswap.i16(i16 %560) #6
  %conv60.2.i.i.i = zext i16 %561 to i32
  %voltage_id.2.i170.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 2, i32 2
  %562 = ptrtoint ptr %voltage_id.2.i170.i.i to i32
  call void @__asan_store4_noabort(i32 %562)
  store i32 %conv60.2.i.i.i, ptr %voltage_id.2.i170.i.i, align 4
  %arrayidx49.3.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 28, i32 3
  %563 = ptrtoint ptr %arrayidx49.3.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %563, i32 4)
  %564 = load i32, ptr %arrayidx49.3.i.i.i, align 1
  %565 = tail call i32 @llvm.bswap.i32(i32 %564) #6
  %mul50.3.i.i.i = mul i32 %565, 10
  %arrayidx51.3.i171.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 3
  %566 = ptrtoint ptr %arrayidx51.3.i171.i.i to i32
  call void @__asan_store4_noabort(i32 %566)
  store i32 %mul50.3.i.i.i, ptr %arrayidx51.3.i171.i.i, align 8
  %usVoltageIndex.3.i172.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 28, i32 3, i32 1
  %567 = ptrtoint ptr %usVoltageIndex.3.i172.i.i to i32
  call void @__asan_loadN_noabort(i32 %567, i32 2)
  %568 = load i16, ptr %usVoltageIndex.3.i172.i.i, align 1
  %569 = tail call i16 @llvm.bswap.i16(i16 %568) #6
  %conv54.3.i.i.i = zext i16 %569 to i32
  %voltage_index57.3.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 3, i32 1
  %570 = ptrtoint ptr %voltage_index57.3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %570)
  store i32 %conv54.3.i.i.i, ptr %voltage_index57.3.i.i.i, align 4
  %usVoltageID.3.i173.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 28, i32 3, i32 2
  %571 = ptrtoint ptr %usVoltageID.3.i173.i.i to i32
  call void @__asan_loadN_noabort(i32 %571, i32 2)
  %572 = load i16, ptr %usVoltageID.3.i173.i.i, align 1
  %573 = tail call i16 @llvm.bswap.i16(i16 %572) #6
  %conv60.3.i.i.i = zext i16 %573 to i32
  %voltage_id.3.i174.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 3, i32 2
  %574 = ptrtoint ptr %voltage_id.3.i174.i.i to i32
  call void @__asan_store4_noabort(i32 %574)
  store i32 %conv60.3.i.i.i, ptr %voltage_id.3.i174.i.i, align 8
  %arrayidx49.4.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 28, i32 4
  %575 = ptrtoint ptr %arrayidx49.4.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %575, i32 4)
  %576 = load i32, ptr %arrayidx49.4.i.i.i, align 1
  %577 = tail call i32 @llvm.bswap.i32(i32 %576) #6
  %mul50.4.i.i.i = mul i32 %577, 10
  %arrayidx51.4.i175.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 4
  %578 = ptrtoint ptr %arrayidx51.4.i175.i.i to i32
  call void @__asan_store4_noabort(i32 %578)
  store i32 %mul50.4.i.i.i, ptr %arrayidx51.4.i175.i.i, align 4
  %usVoltageIndex.4.i176.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 28, i32 4, i32 1
  %579 = ptrtoint ptr %usVoltageIndex.4.i176.i.i to i32
  call void @__asan_loadN_noabort(i32 %579, i32 2)
  %580 = load i16, ptr %usVoltageIndex.4.i176.i.i, align 1
  %581 = tail call i16 @llvm.bswap.i16(i16 %580) #6
  %conv54.4.i.i.i = zext i16 %581 to i32
  %voltage_index57.4.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 4, i32 1
  %582 = ptrtoint ptr %voltage_index57.4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %582)
  store i32 %conv54.4.i.i.i, ptr %voltage_index57.4.i.i.i, align 8
  %usVoltageID.4.i177.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 28, i32 4, i32 2
  %583 = ptrtoint ptr %usVoltageID.4.i177.i.i to i32
  call void @__asan_loadN_noabort(i32 %583, i32 2)
  %584 = load i16, ptr %usVoltageID.4.i177.i.i, align 1
  %585 = tail call i16 @llvm.bswap.i16(i16 %584) #6
  %conv60.4.i.i.i = zext i16 %585 to i32
  %voltage_id.4.i178.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 2, i32 4, i32 2
  %586 = ptrtoint ptr %voltage_id.4.i178.i.i to i32
  call void @__asan_store4_noabort(i32 %586)
  store i32 %conv60.4.i.i.i, ptr %voltage_id.4.i178.i.i, align 4
  %arrayidx70.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 64, i32 1, i32 0
  %587 = ptrtoint ptr %arrayidx70.i.i.i to i32
  call void @__asan_load1_noabort(i32 %587)
  %588 = load i8, ptr %arrayidx70.i.i.i, align 1
  %arrayidx71.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 0
  %589 = ptrtoint ptr %arrayidx71.i.i.i to i32
  call void @__asan_store1_noabort(i32 %589)
  store i8 %588, ptr %arrayidx71.i.i.i, align 8
  %arrayidx70.1.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 64, i32 1, i32 1
  %590 = ptrtoint ptr %arrayidx70.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %590)
  %591 = load i8, ptr %arrayidx70.1.i.i.i, align 1
  %arrayidx71.1.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 1
  %592 = ptrtoint ptr %arrayidx71.1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %592)
  store i8 %591, ptr %arrayidx71.1.i.i.i, align 1
  %arrayidx70.2.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 64, i32 1, i32 2
  %593 = ptrtoint ptr %arrayidx70.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %593)
  %594 = load i8, ptr %arrayidx70.2.i.i.i, align 1
  %arrayidx71.2.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 2
  %595 = ptrtoint ptr %arrayidx71.2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %595)
  store i8 %594, ptr %arrayidx71.2.i.i.i, align 2
  %arrayidx70.3.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 64, i32 1, i32 3
  %596 = ptrtoint ptr %arrayidx70.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %596)
  %597 = load i8, ptr %arrayidx70.3.i.i.i, align 1
  %arrayidx71.3.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 3
  %598 = ptrtoint ptr %arrayidx71.3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %598)
  store i8 %597, ptr %arrayidx71.3.i.i.i, align 1
  %arrayidx70.4.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 64, i32 1, i32 4
  %599 = ptrtoint ptr %arrayidx70.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %599)
  %600 = load i8, ptr %arrayidx70.4.i.i.i, align 1
  %arrayidx71.4.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 4
  %601 = ptrtoint ptr %arrayidx71.4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %601)
  store i8 %600, ptr %arrayidx71.4.i.i.i, align 4
  %arrayidx70.5.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 64, i32 1, i32 5
  %602 = ptrtoint ptr %arrayidx70.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %602)
  %603 = load i8, ptr %arrayidx70.5.i.i.i, align 1
  %arrayidx71.5.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 5
  %604 = ptrtoint ptr %arrayidx71.5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %604)
  store i8 %603, ptr %arrayidx71.5.i.i.i, align 1
  %arrayidx70.6.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 64, i32 1, i32 6
  %605 = ptrtoint ptr %arrayidx70.6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %605)
  %606 = load i8, ptr %arrayidx70.6.i.i.i, align 1
  %arrayidx71.6.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 6
  %607 = ptrtoint ptr %arrayidx71.6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %607)
  store i8 %606, ptr %arrayidx71.6.i.i.i, align 2
  %arrayidx70.7.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 64, i32 1, i32 7
  %608 = ptrtoint ptr %arrayidx70.7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %608)
  %609 = load i8, ptr %arrayidx70.7.i.i.i, align 1
  %arrayidx71.7.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 7
  %610 = ptrtoint ptr %arrayidx71.7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %610)
  store i8 %609, ptr %arrayidx71.7.i.i.i, align 1
  %arrayidx70.8.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 64, i32 1, i32 8
  %611 = ptrtoint ptr %arrayidx70.8.i.i.i to i32
  call void @__asan_load1_noabort(i32 %611)
  %612 = load i8, ptr %arrayidx70.8.i.i.i, align 1
  %arrayidx71.8.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 8
  %613 = ptrtoint ptr %arrayidx71.8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %613)
  store i8 %612, ptr %arrayidx71.8.i.i.i, align 8
  %arrayidx70.9.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 64, i32 1, i32 9
  %614 = ptrtoint ptr %arrayidx70.9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %614)
  %615 = load i8, ptr %arrayidx70.9.i.i.i, align 1
  %arrayidx71.9.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 9
  %616 = ptrtoint ptr %arrayidx71.9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %616)
  store i8 %615, ptr %arrayidx71.9.i.i.i, align 1
  %arrayidx70.10.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 64, i32 1, i32 10
  %617 = ptrtoint ptr %arrayidx70.10.i.i.i to i32
  call void @__asan_load1_noabort(i32 %617)
  %618 = load i8, ptr %arrayidx70.10.i.i.i, align 1
  %arrayidx71.10.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 10
  %619 = ptrtoint ptr %arrayidx71.10.i.i.i to i32
  call void @__asan_store1_noabort(i32 %619)
  store i8 %618, ptr %arrayidx71.10.i.i.i, align 2
  %arrayidx70.11.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 64, i32 1, i32 11
  %620 = ptrtoint ptr %arrayidx70.11.i.i.i to i32
  call void @__asan_load1_noabort(i32 %620)
  %621 = load i8, ptr %arrayidx70.11.i.i.i, align 1
  %arrayidx71.11.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 11
  %622 = ptrtoint ptr %arrayidx71.11.i.i.i to i32
  call void @__asan_store1_noabort(i32 %622)
  store i8 %621, ptr %arrayidx71.11.i.i.i, align 1
  %arrayidx70.12.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 64, i32 1, i32 12
  %623 = ptrtoint ptr %arrayidx70.12.i.i.i to i32
  call void @__asan_load1_noabort(i32 %623)
  %624 = load i8, ptr %arrayidx70.12.i.i.i, align 1
  %arrayidx71.12.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 12
  %625 = ptrtoint ptr %arrayidx71.12.i.i.i to i32
  call void @__asan_store1_noabort(i32 %625)
  store i8 %624, ptr %arrayidx71.12.i.i.i, align 4
  %arrayidx70.13.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 64, i32 1, i32 13
  %626 = ptrtoint ptr %arrayidx70.13.i.i.i to i32
  call void @__asan_load1_noabort(i32 %626)
  %627 = load i8, ptr %arrayidx70.13.i.i.i, align 1
  %arrayidx71.13.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 13
  %628 = ptrtoint ptr %arrayidx71.13.i.i.i to i32
  call void @__asan_store1_noabort(i32 %628)
  store i8 %627, ptr %arrayidx71.13.i.i.i, align 1
  %arrayidx70.14.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 64, i32 1, i32 14
  %629 = ptrtoint ptr %arrayidx70.14.i.i.i to i32
  call void @__asan_load1_noabort(i32 %629)
  %630 = load i8, ptr %arrayidx70.14.i.i.i, align 1
  %arrayidx71.14.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 14
  %631 = ptrtoint ptr %arrayidx71.14.i.i.i to i32
  call void @__asan_store1_noabort(i32 %631)
  store i8 %630, ptr %arrayidx71.14.i.i.i, align 2
  %arrayidx70.15.i.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 64, i32 1, i32 15
  %632 = ptrtoint ptr %arrayidx70.15.i.i.i to i32
  call void @__asan_load1_noabort(i32 %632)
  %633 = load i8, ptr %arrayidx70.15.i.i.i, align 1
  %arrayidx71.15.i.i.i = getelementptr %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 15
  %634 = ptrtoint ptr %arrayidx71.15.i.i.i to i32
  call void @__asan_store1_noabort(i32 %634)
  store i8 %633, ptr %arrayidx71.15.i.i.i, align 1
  %ext_disp_conn_info79.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1
  br label %for.body78.i.i.i

for.body78.i.i.i:                                 ; preds = %for.body78.i.i.i.for.body78.i.i.i_crit_edge, %if.end.i179.i.i
  %i.4274.i.i.i = phi i32 [ 0, %if.end.i179.i.i ], [ %inc128.i.i.i, %for.body78.i.i.i.for.body78.i.i.i_crit_edge ]
  %arrayidx80.i.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info79.i.i.i, i32 0, i32 %i.4274.i.i.i
  %device_connector_id.i180.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info79.i.i.i, i32 0, i32 %i.4274.i.i.i, i32 2
  %arrayidx82.i181.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 64, i32 2, i32 %i.4274.i.i.i
  %usDeviceConnector.i182.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 64, i32 2, i32 %i.4274.i.i.i, i32 2
  %635 = ptrtoint ptr %usDeviceConnector.i182.i.i to i32
  call void @__asan_loadN_noabort(i32 %635, i32 2)
  %636 = load i16, ptr %usDeviceConnector.i182.i.i, align 1
  %637 = tail call i16 @llvm.bswap.i16(i16 %636) #6
  %conv83.i.i.i = zext i16 %637 to i32
  %call84.i.i.i = tail call i32 @object_id_from_bios_object_id(i32 noundef %conv83.i.i.i) #6
  %638 = ptrtoint ptr %device_connector_id.i180.i.i to i32
  call void @__asan_store4_noabort(i32 %638)
  store i32 %call84.i.i.i, ptr %device_connector_id.i180.i.i, align 8
  %ext_encoder_obj_id.i183.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info79.i.i.i, i32 0, i32 %i.4274.i.i.i, i32 5
  %usExtEncoderObjId.i184.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 64, i32 2, i32 %i.4274.i.i.i, i32 5
  %639 = ptrtoint ptr %usExtEncoderObjId.i184.i.i to i32
  call void @__asan_loadN_noabort(i32 %639, i32 2)
  %640 = load i16, ptr %usExtEncoderObjId.i184.i.i, align 1
  %641 = tail call i16 @llvm.bswap.i16(i16 %640) #6
  %conv92.i.i.i = zext i16 %641 to i32
  %call93.i.i.i = tail call i32 @object_id_from_bios_object_id(i32 noundef %conv92.i.i.i) #6
  %642 = ptrtoint ptr %ext_encoder_obj_id.i183.i.i to i32
  call void @__asan_store4_noabort(i32 %642)
  store i32 %call93.i.i.i, ptr %ext_encoder_obj_id.i183.i.i, align 8
  %643 = ptrtoint ptr %arrayidx82.i181.i.i to i32
  call void @__asan_loadN_noabort(i32 %643, i32 2)
  %644 = load i16, ptr %arrayidx82.i181.i.i, align 1
  %645 = tail call i16 @llvm.bswap.i16(i16 %644) #6
  %conv98.i.i.i = zext i16 %645 to i32
  %646 = ptrtoint ptr %arrayidx80.i.i.i to i32
  call void @__asan_store4_noabort(i32 %646)
  store i32 %conv98.i.i.i, ptr %arrayidx80.i.i.i, align 8
  %usDeviceACPIEnum.i185.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 64, i32 2, i32 %i.4274.i.i.i, i32 1
  %647 = ptrtoint ptr %usDeviceACPIEnum.i185.i.i to i32
  call void @__asan_loadN_noabort(i32 %647, i32 2)
  %648 = load i16, ptr %usDeviceACPIEnum.i185.i.i, align 1
  %649 = tail call i16 @llvm.bswap.i16(i16 %648) #6
  %conv105.i.i.i = zext i16 %649 to i32
  %device_acpi_enum.i186.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info79.i.i.i, i32 0, i32 %i.4274.i.i.i, i32 1
  %650 = ptrtoint ptr %device_acpi_enum.i186.i.i to i32
  call void @__asan_store4_noabort(i32 %650)
  store i32 %conv105.i.i.i, ptr %device_acpi_enum.i186.i.i, align 4
  %ucExtAUXDDCLutIndex.i187.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 64, i32 2, i32 %i.4274.i.i.i, i32 3
  %651 = ptrtoint ptr %ucExtAUXDDCLutIndex.i187.i.i to i32
  call void @__asan_load1_noabort(i32 %651)
  %652 = load i8, ptr %ucExtAUXDDCLutIndex.i187.i.i, align 1
  %ext_aux_ddc_lut_index.i188.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info79.i.i.i, i32 0, i32 %i.4274.i.i.i, i32 3
  %653 = ptrtoint ptr %ext_aux_ddc_lut_index.i188.i.i to i32
  call void @__asan_store1_noabort(i32 %653)
  store i8 %652, ptr %ext_aux_ddc_lut_index.i188.i.i, align 4
  %ucExtHPDPINLutIndex.i189.i.i = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 64, i32 2, i32 %i.4274.i.i.i, i32 4
  %654 = ptrtoint ptr %ucExtHPDPINLutIndex.i189.i.i to i32
  call void @__asan_load1_noabort(i32 %654)
  %655 = load i8, ptr %ucExtHPDPINLutIndex.i189.i.i, align 1
  %ext_hpd_pin_lut_index.i190.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info79.i.i.i, i32 0, i32 %i.4274.i.i.i, i32 4
  %656 = ptrtoint ptr %ext_hpd_pin_lut_index.i190.i.i to i32
  call void @__asan_store1_noabort(i32 %656)
  store i8 %655, ptr %ext_hpd_pin_lut_index.i190.i.i, align 1
  %657 = getelementptr %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 64, i32 2, i32 %i.4274.i.i.i, i32 6
  %658 = ptrtoint ptr %657 to i32
  call void @__asan_load1_noabort(i32 %658)
  %659 = load i8, ptr %657, align 1
  %channel_mapping.i191.i.i = getelementptr [7 x %struct.external_display_path], ptr %ext_disp_conn_info79.i.i.i, i32 0, i32 %i.4274.i.i.i, i32 6
  %660 = ptrtoint ptr %channel_mapping.i191.i.i to i32
  call void @__asan_store1_noabort(i32 %660)
  store i8 %659, ptr %channel_mapping.i191.i.i, align 4
  %inc128.i.i.i = add nuw nsw i32 %i.4274.i.i.i, 1
  %exitcond.not.i192.i.i = icmp eq i32 %inc128.i.i.i, 7
  br i1 %exitcond.not.i192.i.i, label %for.end129.i.i.i, label %for.body78.i.i.i.for.body78.i.i.i_crit_edge

for.body78.i.i.i.for.body78.i.i.i_crit_edge:      ; preds = %for.body78.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body78.i.i.i

for.end129.i.i.i:                                 ; preds = %for.body78.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %ucChecksum.i193.i.i = getelementptr inbounds %struct._ATOM_INTEGRATED_SYSTEM_INFO_V1_9, ptr %call.i64.i.i, i32 0, i32 64, i32 3
  br label %for.body14.preheader.i.i

for.body14.preheader.i.i:                         ; preds = %for.end129.i.i.i, %for.end131.i.i.i
  %ucChecksum.i.sink.i.i = phi ptr [ %ucChecksum.i.i.i, %for.end131.i.i.i ], [ %ucChecksum.i193.i.i, %for.end129.i.i.i ]
  %661 = ptrtoint ptr %ucChecksum.i.sink.i.i to i32
  call void @__asan_load1_noabort(i32 %661)
  %662 = load i8, ptr %ucChecksum.i.sink.i.i, align 1
  %checksum.i.i.i = getelementptr inbounds %struct.integrated_info, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %663 = ptrtoint ptr %checksum.i.i.i to i32
  call void @__asan_store1_noabort(i32 %663)
  store i8 %662, ptr %checksum.i.i.i, align 8
  %max_supported_clk.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %664 = ptrtoint ptr %max_supported_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load i32, ptr %max_supported_clk.i.i, align 4
  %max_supported_clk17.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 0, i32 1
  %666 = ptrtoint ptr %max_supported_clk17.i.i to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load i32, ptr %max_supported_clk17.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %665, i32 %667)
  %cmp18.i.i = icmp ult i32 %665, %667
  br i1 %cmp18.i.i, label %do.body.i.i, label %for.body14.preheader.i.i.for.body14.preheader.1.i.i_crit_edge

for.body14.preheader.i.i.for.body14.preheader.1.i.i_crit_edge: ; preds = %for.body14.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body14.preheader.1.i.i

do.body.i.i:                                      ; preds = %for.body14.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 1
  %668 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %668)
  %__tmp.sroa.0.0.copyload.i.i = load i32, ptr %call7.i.i.i, align 8
  %669 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %669)
  %670 = load i64, ptr %arrayidx.i.i, align 8
  store i64 %670, ptr %call7.i.i.i, align 8
  store i32 %__tmp.sroa.0.0.copyload.i.i, ptr %arrayidx.i.i, align 8
  %671 = ptrtoint ptr %max_supported_clk.i.i to i32
  call void @__asan_store4_noabort(i32 %671)
  store i32 %667, ptr %max_supported_clk.i.i, align 4
  br label %for.body14.preheader.1.i.i

for.body14.preheader.1.i.i:                       ; preds = %do.body.i.i, %for.body14.preheader.i.i.for.body14.preheader.1.i.i_crit_edge
  %max_supported_clk.1.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %672 = ptrtoint ptr %max_supported_clk.1.i.i to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load i32, ptr %max_supported_clk.1.i.i, align 4
  %674 = ptrtoint ptr %max_supported_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load i32, ptr %max_supported_clk.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %673, i32 %675)
  %cmp18.1.i.i = icmp ult i32 %673, %675
  br i1 %cmp18.1.i.i, label %do.body.1.i.i, label %for.body14.preheader.1.i.i.for.inc.1.i.i_crit_edge

for.body14.preheader.1.i.i.for.inc.1.i.i_crit_edge: ; preds = %for.body14.preheader.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i.i

do.body.1.i.i:                                    ; preds = %for.body14.preheader.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx16.1.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 1
  %arrayidx.1.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 2
  %676 = ptrtoint ptr %arrayidx16.1.i.i to i32
  call void @__asan_load4_noabort(i32 %676)
  %__tmp.sroa.0.0.copyload.1.i.i = load i32, ptr %arrayidx16.1.i.i, align 8
  %677 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load8_noabort(i32 %677)
  %678 = load i64, ptr %arrayidx.1.i.i, align 8
  store i64 %678, ptr %arrayidx16.1.i.i, align 8
  store i32 %__tmp.sroa.0.0.copyload.1.i.i, ptr %arrayidx.1.i.i, align 8
  %679 = ptrtoint ptr %max_supported_clk.1.i.i to i32
  call void @__asan_store4_noabort(i32 %679)
  store i32 %675, ptr %max_supported_clk.1.i.i, align 4
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %do.body.1.i.i, %for.body14.preheader.1.i.i.for.inc.1.i.i_crit_edge
  %680 = ptrtoint ptr %max_supported_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load i32, ptr %max_supported_clk.i.i, align 4
  %682 = ptrtoint ptr %max_supported_clk17.i.i to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load i32, ptr %max_supported_clk17.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %681, i32 %683)
  %cmp18.1.1.i.i = icmp ult i32 %681, %683
  br i1 %cmp18.1.1.i.i, label %do.body.1.1.i.i, label %for.inc.1.i.i.for.body14.preheader.2.i.i_crit_edge

for.inc.1.i.i.for.body14.preheader.2.i.i_crit_edge: ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body14.preheader.2.i.i

do.body.1.1.i.i:                                  ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.1.1.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 1
  %684 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %684)
  %__tmp.sroa.0.0.copyload.1.1.i.i = load i32, ptr %call7.i.i.i, align 8
  %685 = ptrtoint ptr %arrayidx.1.1.i.i to i32
  call void @__asan_load8_noabort(i32 %685)
  %686 = load i64, ptr %arrayidx.1.1.i.i, align 8
  store i64 %686, ptr %call7.i.i.i, align 8
  store i32 %__tmp.sroa.0.0.copyload.1.1.i.i, ptr %arrayidx.1.1.i.i, align 8
  %687 = ptrtoint ptr %max_supported_clk.i.i to i32
  call void @__asan_store4_noabort(i32 %687)
  store i32 %683, ptr %max_supported_clk.i.i, align 4
  br label %for.body14.preheader.2.i.i

for.body14.preheader.2.i.i:                       ; preds = %do.body.1.1.i.i, %for.inc.1.i.i.for.body14.preheader.2.i.i_crit_edge
  %max_supported_clk.2.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %688 = ptrtoint ptr %max_supported_clk.2.i.i to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load i32, ptr %max_supported_clk.2.i.i, align 4
  %690 = ptrtoint ptr %max_supported_clk.1.i.i to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load i32, ptr %max_supported_clk.1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %689, i32 %691)
  %cmp18.2.i.i = icmp ult i32 %689, %691
  br i1 %cmp18.2.i.i, label %do.body.2.i.i, label %for.body14.preheader.2.i.i.for.inc.2.i.i_crit_edge

for.body14.preheader.2.i.i.for.inc.2.i.i_crit_edge: ; preds = %for.body14.preheader.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i.i

do.body.2.i.i:                                    ; preds = %for.body14.preheader.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx16.2.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 2
  %arrayidx.2.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 3
  %692 = ptrtoint ptr %arrayidx16.2.i.i to i32
  call void @__asan_load4_noabort(i32 %692)
  %__tmp.sroa.0.0.copyload.2.i.i = load i32, ptr %arrayidx16.2.i.i, align 8
  %693 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load8_noabort(i32 %693)
  %694 = load i64, ptr %arrayidx.2.i.i, align 8
  store i64 %694, ptr %arrayidx16.2.i.i, align 8
  store i32 %__tmp.sroa.0.0.copyload.2.i.i, ptr %arrayidx.2.i.i, align 8
  %695 = ptrtoint ptr %max_supported_clk.2.i.i to i32
  call void @__asan_store4_noabort(i32 %695)
  store i32 %691, ptr %max_supported_clk.2.i.i, align 4
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %do.body.2.i.i, %for.body14.preheader.2.i.i.for.inc.2.i.i_crit_edge
  %696 = ptrtoint ptr %max_supported_clk.1.i.i to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load i32, ptr %max_supported_clk.1.i.i, align 4
  %698 = ptrtoint ptr %max_supported_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load i32, ptr %max_supported_clk.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %697, i32 %699)
  %cmp18.2.1.i.i = icmp ult i32 %697, %699
  br i1 %cmp18.2.1.i.i, label %do.body.2.1.i.i, label %for.inc.2.i.i.for.inc.2.1.i.i_crit_edge

for.inc.2.i.i.for.inc.2.1.i.i_crit_edge:          ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.1.i.i

do.body.2.1.i.i:                                  ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx16.2.1.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 1
  %arrayidx.2.1.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 2
  %700 = ptrtoint ptr %arrayidx16.2.1.i.i to i32
  call void @__asan_load4_noabort(i32 %700)
  %__tmp.sroa.0.0.copyload.2.1.i.i = load i32, ptr %arrayidx16.2.1.i.i, align 8
  %701 = ptrtoint ptr %arrayidx.2.1.i.i to i32
  call void @__asan_load8_noabort(i32 %701)
  %702 = load i64, ptr %arrayidx.2.1.i.i, align 8
  store i64 %702, ptr %arrayidx16.2.1.i.i, align 8
  store i32 %__tmp.sroa.0.0.copyload.2.1.i.i, ptr %arrayidx.2.1.i.i, align 8
  %703 = ptrtoint ptr %max_supported_clk.1.i.i to i32
  call void @__asan_store4_noabort(i32 %703)
  store i32 %699, ptr %max_supported_clk.1.i.i, align 4
  br label %for.inc.2.1.i.i

for.inc.2.1.i.i:                                  ; preds = %do.body.2.1.i.i, %for.inc.2.i.i.for.inc.2.1.i.i_crit_edge
  %704 = ptrtoint ptr %max_supported_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load i32, ptr %max_supported_clk.i.i, align 4
  %706 = ptrtoint ptr %max_supported_clk17.i.i to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load i32, ptr %max_supported_clk17.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %705, i32 %707)
  %cmp18.2.2.i.i = icmp ult i32 %705, %707
  br i1 %cmp18.2.2.i.i, label %do.body.2.2.i.i, label %for.inc.2.1.i.i.bios_parser_create_integrated_info.exit_crit_edge

for.inc.2.1.i.i.bios_parser_create_integrated_info.exit_crit_edge: ; preds = %for.inc.2.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bios_parser_create_integrated_info.exit

do.body.2.2.i.i:                                  ; preds = %for.inc.2.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.2.2.i.i = getelementptr [4 x %struct.clock_voltage_caps], ptr %call7.i.i.i, i32 0, i32 1
  %708 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %708)
  %__tmp.sroa.0.0.copyload.2.2.i.i = load i32, ptr %call7.i.i.i, align 8
  %709 = ptrtoint ptr %arrayidx.2.2.i.i to i32
  call void @__asan_load8_noabort(i32 %709)
  %710 = load i64, ptr %arrayidx.2.2.i.i, align 8
  store i64 %710, ptr %call7.i.i.i, align 8
  store i32 %__tmp.sroa.0.0.copyload.2.2.i.i, ptr %arrayidx.2.2.i.i, align 8
  %711 = ptrtoint ptr %max_supported_clk.i.i to i32
  call void @__asan_store4_noabort(i32 %711)
  store i32 %707, ptr %max_supported_clk.i.i, align 4
  br label %bios_parser_create_integrated_info.exit

if.end27.i19:                                     ; preds = %sw.bb5.i.i.if.end27.i19_crit_edge, %sw.bb.i.i.if.end27.i19_crit_edge, %get_atom_data_table_revision.exit.i.i.if.end27.i19_crit_edge, %if.then.i.i.if.end27.i19_crit_edge, %if.end23.i.if.end27.i19_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %bios_parser_create_integrated_info.exit

bios_parser_create_integrated_info.exit:          ; preds = %if.end27.i19, %do.body.2.2.i.i, %for.inc.2.1.i.i.bios_parser_create_integrated_info.exit_crit_edge, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ null, %if.end27.i19 ], [ %call7.i.i.i, %for.inc.2.1.i.i.bios_parser_create_integrated_info.exit_crit_edge ], [ %call7.i.i.i, %do.body.2.2.i.i ]
  %integrated_info.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 6
  %712 = ptrtoint ptr %integrated_info.i to i32
  call void @__asan_store4_noabort(i32 %712)
  store ptr %retval.0.i, ptr %integrated_info.i, align 8
  %fw_info.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7
  %713 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load ptr, ptr %master_data_tbl.i, align 8
  %FirmwareInfo.i = getelementptr inbounds %struct._ATOM_MASTER_DATA_TABLE, ptr %714, i32 0, i32 1, i32 4
  %715 = ptrtoint ptr %FirmwareInfo.i to i32
  call void @__asan_loadN_noabort(i32 %715, i32 2)
  %716 = load i16, ptr %FirmwareInfo.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %716)
  %tobool1.not.i9 = icmp eq i16 %716, 0
  br i1 %tobool1.not.i9, label %bios_parser_create_integrated_info.exit.bios_parser_construct.exit_crit_edge, label %if.then.i

bios_parser_create_integrated_info.exit.bios_parser_construct.exit_crit_edge: ; preds = %bios_parser_create_integrated_info.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %bios_parser_construct.exit

if.then.i:                                        ; preds = %bios_parser_create_integrated_info.exit
  %conv.i10 = zext i16 %716 to i32
  %call.i11 = tail call ptr @bios_get_image(ptr noundef %call7.i.i, i32 noundef %conv.i10, i32 noundef 4) #6
  %tobool1.not.i.i = icmp eq ptr %call.i11, null
  br i1 %tobool1.not.i.i, label %if.then.i.bios_parser_construct.exit_crit_edge, label %get_atom_data_table_revision.exit.i14

if.then.i.bios_parser_construct.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bios_parser_construct.exit

get_atom_data_table_revision.exit.i14:            ; preds = %if.then.i
  %ucTableFormatRevision.i.i12 = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call.i11, i32 0, i32 1
  %717 = ptrtoint ptr %ucTableFormatRevision.i.i12 to i32
  call void @__asan_load1_noabort(i32 %717)
  %718 = load i8, ptr %ucTableFormatRevision.i.i12, align 1
  %719 = and i8 %718, 63
  %and.i.i = zext i8 %719 to i32
  %ucTableContentRevision.i.i13 = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call.i11, i32 0, i32 2
  %720 = ptrtoint ptr %ucTableContentRevision.i.i13 to i32
  call void @__asan_load1_noabort(i32 %720)
  %721 = load i8, ptr %ucTableContentRevision.i.i13, align 1
  %722 = and i8 %721, 63
  %723 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %723, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %and.i.i, label %get_atom_data_table_revision.exit.i14.bios_parser_construct.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb8.i
  ]

get_atom_data_table_revision.exit.i14.bios_parser_construct.exit_crit_edge: ; preds = %get_atom_data_table_revision.exit.i14
  call void @__sanitizer_cov_trace_pc() #8
  br label %bios_parser_construct.exit

sw.bb.i:                                          ; preds = %get_atom_data_table_revision.exit.i14
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %722)
  %cond.i = icmp eq i8 %722, 4
  br i1 %cond.i, label %if.end.i.i, label %sw.bb.i.bios_parser_construct.exit_crit_edge

sw.bb.i.bios_parser_construct.exit_crit_edge:     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bios_parser_construct.exit

if.end.i.i:                                       ; preds = %sw.bb.i
  %724 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load ptr, ptr %master_data_tbl.i, align 8
  %FirmwareInfo.i.i = getelementptr inbounds %struct._ATOM_MASTER_DATA_TABLE, ptr %725, i32 0, i32 1, i32 4
  %726 = ptrtoint ptr %FirmwareInfo.i.i to i32
  call void @__asan_loadN_noabort(i32 %726, i32 2)
  %727 = load i16, ptr %FirmwareInfo.i.i, align 1
  %conv.i.i = zext i16 %727 to i32
  %call.i.i = tail call ptr @bios_get_image(ptr noundef %call7.i.i, i32 noundef %conv.i.i, i32 noundef 89) #6
  %tobool1.not.i26.i = icmp eq ptr %call.i.i, null
  br i1 %tobool1.not.i26.i, label %if.end.i.i.bios_parser_construct.exit_crit_edge, label %if.end3.i27.i

if.end.i.i.bios_parser_construct.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bios_parser_construct.exit

if.end3.i27.i:                                    ; preds = %if.end.i.i
  %728 = call ptr @memset(ptr %fw_info.i, i32 0, i32 64)
  %usReferenceClock.i.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V1_4, ptr %call.i.i, i32 0, i32 29
  %729 = ptrtoint ptr %usReferenceClock.i.i to i32
  call void @__asan_loadN_noabort(i32 %729, i32 2)
  %730 = load i16, ptr %usReferenceClock.i.i, align 1
  %731 = tail call i16 @llvm.bswap.i16(i16 %730) #6
  %conv4.i.i = zext i16 %731 to i32
  %mul.i.i = mul nuw nsw i32 %conv4.i.i, 10
  %732 = ptrtoint ptr %fw_info.i to i32
  call void @__asan_store4_noabort(i32 %732)
  store i32 %mul.i.i, ptr %fw_info.i, align 4
  %usMinPixelClockPLL_Input.i.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V1_4, ptr %call.i.i, i32 0, i32 25
  %733 = ptrtoint ptr %usMinPixelClockPLL_Input.i.i to i32
  call void @__asan_loadN_noabort(i32 %733, i32 2)
  %734 = load i16, ptr %usMinPixelClockPLL_Input.i.i, align 1
  %735 = tail call i16 @llvm.bswap.i16(i16 %734) #6
  %conv5.i.i = zext i16 %735 to i32
  %mul6.i.i = mul nuw nsw i32 %conv5.i.i, 10
  %min_input_pxl_clk_pll_frequency.i.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 1
  %736 = ptrtoint ptr %min_input_pxl_clk_pll_frequency.i.i to i32
  call void @__asan_store4_noabort(i32 %736)
  store i32 %mul6.i.i, ptr %min_input_pxl_clk_pll_frequency.i.i, align 8
  %usMaxPixelClockPLL_Input.i.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V1_4, ptr %call.i.i, i32 0, i32 26
  %737 = ptrtoint ptr %usMaxPixelClockPLL_Input.i.i to i32
  call void @__asan_loadN_noabort(i32 %737, i32 2)
  %738 = load i16, ptr %usMaxPixelClockPLL_Input.i.i, align 1
  %739 = tail call i16 @llvm.bswap.i16(i16 %738) #6
  %conv8.i.i = zext i16 %739 to i32
  %mul9.i.i = mul nuw nsw i32 %conv8.i.i, 10
  %max_input_pxl_clk_pll_frequency.i.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 2
  %740 = ptrtoint ptr %max_input_pxl_clk_pll_frequency.i.i to i32
  call void @__asan_store4_noabort(i32 %740)
  store i32 %mul9.i.i, ptr %max_input_pxl_clk_pll_frequency.i.i, align 4
  %ulMinPixelClockPLL_Output.i.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V1_4, ptr %call.i.i, i32 0, i32 17
  %741 = ptrtoint ptr %ulMinPixelClockPLL_Output.i.i to i32
  call void @__asan_loadN_noabort(i32 %741, i32 4)
  %742 = load i32, ptr %ulMinPixelClockPLL_Output.i.i, align 1
  %743 = tail call i32 @llvm.bswap.i32(i32 %742) #6
  %mul11.i.i = mul i32 %743, 10
  %min_output_pxl_clk_pll_frequency.i.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 3
  %744 = ptrtoint ptr %min_output_pxl_clk_pll_frequency.i.i to i32
  call void @__asan_store4_noabort(i32 %744)
  store i32 %mul11.i.i, ptr %min_output_pxl_clk_pll_frequency.i.i, align 8
  %ulMaxPixelClockPLL_Output.i.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V1_4, ptr %call.i.i, i32 0, i32 8
  %745 = ptrtoint ptr %ulMaxPixelClockPLL_Output.i.i to i32
  call void @__asan_loadN_noabort(i32 %745, i32 4)
  %746 = load i32, ptr %ulMaxPixelClockPLL_Output.i.i, align 1
  %747 = tail call i32 @llvm.bswap.i32(i32 %746) #6
  %mul13.i.i = mul i32 %747, 10
  %max_output_pxl_clk_pll_frequency.i.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 4
  %748 = ptrtoint ptr %max_output_pxl_clk_pll_frequency.i.i to i32
  call void @__asan_store4_noabort(i32 %748)
  store i32 %mul13.i.i, ptr %max_output_pxl_clk_pll_frequency.i.i, align 4
  %usFirmwareCapability.i.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V1_4, ptr %call.i.i, i32 0, i32 28
  %749 = ptrtoint ptr %usFirmwareCapability.i.i to i32
  call void @__asan_loadN_noabort(i32 %749, i32 2)
  %bf.load.i.i = load i16, ptr %usFirmwareCapability.i.i, align 1
  %750 = and i16 %bf.load.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %750)
  %tobool15.not.i.i = icmp eq i16 %750, 0
  br i1 %tobool15.not.i.i, label %if.end3.i27.i.if.end17.i.i_crit_edge, label %if.then16.i.i

if.end3.i27.i.if.end17.i.i_crit_edge:             ; preds = %if.end3.i27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i.i

if.then16.i.i:                                    ; preds = %if.end3.i27.i
  call void @__sanitizer_cov_trace_pc() #8
  %feature.i.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 1
  %751 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_store4_noabort(i32 %751)
  store i32 300, ptr %feature.i.i, align 8
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then16.i.i, %if.end3.i27.i.if.end17.i.i_crit_edge
  %752 = ptrtoint ptr %usFirmwareCapability.i.i to i32
  call void @__asan_loadN_noabort(i32 %752, i32 2)
  %bf.load19.i.i = load i16, ptr %usFirmwareCapability.i.i, align 1
  %753 = and i16 %bf.load19.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %753)
  %tobool22.not.i.i = icmp eq i16 %753, 0
  br i1 %tobool22.not.i.i, label %if.end17.i.i.bios_parser_construct.exit_crit_edge, label %if.then23.i.i

if.end17.i.i.bios_parser_construct.exit_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bios_parser_construct.exit

if.then23.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %engine_clk_ss_percentage.i.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 1
  %754 = ptrtoint ptr %engine_clk_ss_percentage.i.i to i32
  call void @__asan_store4_noabort(i32 %754)
  store i32 300, ptr %engine_clk_ss_percentage.i.i, align 4
  br label %bios_parser_construct.exit

sw.bb8.i:                                         ; preds = %get_atom_data_table_revision.exit.i14
  %and6.i.i = zext i8 %722 to i32
  %755 = zext i32 %and6.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %755, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %and6.i.i, label %sw.bb8.i.bios_parser_construct.exit_crit_edge [
    i32 1, label %if.end.i34.i
    i32 2, label %if.end.i63.i
  ]

sw.bb8.i.bios_parser_construct.exit_crit_edge:    ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bios_parser_construct.exit

if.end.i34.i:                                     ; preds = %sw.bb8.i
  %756 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load ptr, ptr %master_data_tbl.i, align 8
  %FirmwareInfo.i29.i = getelementptr inbounds %struct._ATOM_MASTER_DATA_TABLE, ptr %757, i32 0, i32 1, i32 4
  %758 = ptrtoint ptr %FirmwareInfo.i29.i to i32
  call void @__asan_loadN_noabort(i32 %758, i32 2)
  %759 = load i16, ptr %FirmwareInfo.i29.i, align 1
  %conv.i30.i = zext i16 %759 to i32
  %call.i31.i = tail call ptr @bios_get_image(ptr noundef %call7.i.i, i32 noundef %conv.i30.i, i32 noundef 92) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %internalSS.i.i) #6
  %760 = call ptr @memset(ptr %internalSS.i.i, i32 255, i32 28)
  %tobool1.not.i33.i = icmp eq ptr %call.i31.i, null
  br i1 %tobool1.not.i33.i, label %if.end.i34.i.get_firmware_info_v2_1.exit.i_crit_edge, label %if.end3.i53.i

if.end.i34.i.get_firmware_info_v2_1.exit.i_crit_edge: ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_firmware_info_v2_1.exit.i

if.end3.i53.i:                                    ; preds = %if.end.i34.i
  %761 = call ptr @memset(ptr %fw_info.i, i32 0, i32 64)
  %usCoreReferenceClock.i.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_1, ptr %call.i31.i, i32 0, i32 29
  %762 = ptrtoint ptr %usCoreReferenceClock.i.i to i32
  call void @__asan_loadN_noabort(i32 %762, i32 2)
  %763 = load i16, ptr %usCoreReferenceClock.i.i, align 1
  %764 = tail call i16 @llvm.bswap.i16(i16 %763) #6
  %conv4.i35.i = zext i16 %764 to i32
  %mul.i36.i = mul nuw nsw i32 %conv4.i35.i, 10
  %765 = ptrtoint ptr %fw_info.i to i32
  call void @__asan_store4_noabort(i32 %765)
  store i32 %mul.i36.i, ptr %fw_info.i, align 4
  %usMinPixelClockPLL_Input.i37.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_1, ptr %call.i31.i, i32 0, i32 25
  %766 = ptrtoint ptr %usMinPixelClockPLL_Input.i37.i to i32
  call void @__asan_loadN_noabort(i32 %766, i32 2)
  %767 = load i16, ptr %usMinPixelClockPLL_Input.i37.i, align 1
  %768 = tail call i16 @llvm.bswap.i16(i16 %767) #6
  %conv5.i38.i = zext i16 %768 to i32
  %mul6.i39.i = mul nuw nsw i32 %conv5.i38.i, 10
  %min_input_pxl_clk_pll_frequency.i40.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 1
  %769 = ptrtoint ptr %min_input_pxl_clk_pll_frequency.i40.i to i32
  call void @__asan_store4_noabort(i32 %769)
  store i32 %mul6.i39.i, ptr %min_input_pxl_clk_pll_frequency.i40.i, align 8
  %usMaxPixelClockPLL_Input.i41.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_1, ptr %call.i31.i, i32 0, i32 26
  %770 = ptrtoint ptr %usMaxPixelClockPLL_Input.i41.i to i32
  call void @__asan_loadN_noabort(i32 %770, i32 2)
  %771 = load i16, ptr %usMaxPixelClockPLL_Input.i41.i, align 1
  %772 = tail call i16 @llvm.bswap.i16(i16 %771) #6
  %conv8.i42.i = zext i16 %772 to i32
  %mul9.i43.i = mul nuw nsw i32 %conv8.i42.i, 10
  %max_input_pxl_clk_pll_frequency.i44.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 2
  %773 = ptrtoint ptr %max_input_pxl_clk_pll_frequency.i44.i to i32
  call void @__asan_store4_noabort(i32 %773)
  store i32 %mul9.i43.i, ptr %max_input_pxl_clk_pll_frequency.i44.i, align 4
  %ulMinPixelClockPLL_Output.i45.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_1, ptr %call.i31.i, i32 0, i32 17
  %774 = ptrtoint ptr %ulMinPixelClockPLL_Output.i45.i to i32
  call void @__asan_loadN_noabort(i32 %774, i32 4)
  %775 = load i32, ptr %ulMinPixelClockPLL_Output.i45.i, align 1
  %776 = tail call i32 @llvm.bswap.i32(i32 %775) #6
  %mul11.i46.i = mul i32 %776, 10
  %min_output_pxl_clk_pll_frequency.i47.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 3
  %777 = ptrtoint ptr %min_output_pxl_clk_pll_frequency.i47.i to i32
  call void @__asan_store4_noabort(i32 %777)
  store i32 %mul11.i46.i, ptr %min_output_pxl_clk_pll_frequency.i47.i, align 8
  %ulMaxPixelClockPLL_Output.i48.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_1, ptr %call.i31.i, i32 0, i32 8
  %778 = ptrtoint ptr %ulMaxPixelClockPLL_Output.i48.i to i32
  call void @__asan_loadN_noabort(i32 %778, i32 4)
  %779 = load i32, ptr %ulMaxPixelClockPLL_Output.i48.i, align 1
  %780 = tail call i32 @llvm.bswap.i32(i32 %779) #6
  %mul13.i49.i = mul i32 %780, 10
  %max_output_pxl_clk_pll_frequency.i50.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 4
  %781 = ptrtoint ptr %max_output_pxl_clk_pll_frequency.i50.i to i32
  call void @__asan_store4_noabort(i32 %781)
  store i32 %mul13.i49.i, ptr %max_output_pxl_clk_pll_frequency.i50.i, align 4
  %ulDefaultDispEngineClkFreq.i.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_1, ptr %call.i31.i, i32 0, i32 10
  %782 = ptrtoint ptr %ulDefaultDispEngineClkFreq.i.i to i32
  call void @__asan_loadN_noabort(i32 %782, i32 4)
  %783 = load i32, ptr %ulDefaultDispEngineClkFreq.i.i, align 1
  %784 = tail call i32 @llvm.bswap.i32(i32 %783) #6
  %mul15.i.i = mul i32 %784, 10
  %default_display_engine_pll_frequency.i.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 2
  %785 = ptrtoint ptr %default_display_engine_pll_frequency.i.i to i32
  call void @__asan_store4_noabort(i32 %785)
  store i32 %mul15.i.i, ptr %default_display_engine_pll_frequency.i.i, align 8
  %usUniphyDPModeExtClkFreq.i.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_1, ptr %call.i31.i, i32 0, i32 31
  %786 = ptrtoint ptr %usUniphyDPModeExtClkFreq.i.i to i32
  call void @__asan_loadN_noabort(i32 %786, i32 2)
  %787 = load i16, ptr %usUniphyDPModeExtClkFreq.i.i, align 1
  %788 = tail call i16 @llvm.bswap.i16(i16 %787) #6
  %conv16.i.i = zext i16 %788 to i32
  %mul17.i.i = mul nuw nsw i32 %conv16.i.i, 10
  %external_clock_source_frequency_for_dp.i.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 3
  %789 = ptrtoint ptr %external_clock_source_frequency_for_dp.i.i to i32
  call void @__asan_store4_noabort(i32 %789)
  store i32 %mul17.i.i, ptr %external_clock_source_frequency_for_dp.i.i, align 4
  %ucMinAllowedBL_Level.i.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_1, ptr %call.i31.i, i32 0, i32 12
  %790 = ptrtoint ptr %ucMinAllowedBL_Level.i.i to i32
  call void @__asan_load1_noabort(i32 %790)
  %791 = load i8, ptr %ucMinAllowedBL_Level.i.i, align 1
  %min_allowed_bl_level.i.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 5
  %792 = ptrtoint ptr %min_allowed_bl_level.i.i to i32
  call void @__asan_store1_noabort(i32 %792)
  store i8 %791, ptr %min_allowed_bl_level.i.i, align 4
  %usFirmwareCapability.i51.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_1, ptr %call.i31.i, i32 0, i32 28
  %793 = ptrtoint ptr %usFirmwareCapability.i51.i to i32
  call void @__asan_loadN_noabort(i32 %793, i32 2)
  %bf.load.i52.i = load i16, ptr %usFirmwareCapability.i51.i, align 1
  %794 = and i16 %bf.load.i52.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %794)
  %tobool18.not.i.i = icmp eq i16 %794, 0
  br i1 %tobool18.not.i.i, label %if.else.i.i, label %if.then19.i.i

if.then19.i.i:                                    ; preds = %if.end3.i53.i
  call void @__sanitizer_cov_trace_pc() #8
  %feature.i54.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 1
  %795 = ptrtoint ptr %feature.i54.i to i32
  call void @__asan_store4_noabort(i32 %795)
  store i32 300, ptr %feature.i54.i, align 8
  br label %if.end38.i.i

if.else.i.i:                                      ; preds = %if.end3.i53.i
  %call20.i.i = call fastcc i32 @get_ss_info_v3_1(ptr noundef %call7.i.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %internalSS.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %cmp.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %cmp.i.i, label %if.then22.i.i, label %if.else.i.i.if.end38.i.i_crit_edge

if.else.i.i.if.end38.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i.i

if.then22.i.i:                                    ; preds = %if.else.i.i
  %spread_spectrum_percentage.i.i = getelementptr inbounds %struct.spread_spectrum_info, ptr %internalSS.i.i, i32 0, i32 1
  %796 = ptrtoint ptr %spread_spectrum_percentage.i.i to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load i32, ptr %spread_spectrum_percentage.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %797)
  %tobool23.not.i.i = icmp eq i32 %797, 0
  br i1 %tobool23.not.i.i, label %if.then22.i.i.if.end38.i.i_crit_edge, label %if.then24.i.i

if.then22.i.i.if.end38.i.i_crit_edge:             ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i.i

if.then24.i.i:                                    ; preds = %if.then22.i.i
  %feature26.i.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 1
  %798 = ptrtoint ptr %feature26.i.i to i32
  call void @__asan_store4_noabort(i32 %798)
  store i32 %797, ptr %feature26.i.i, align 8
  %799 = ptrtoint ptr %internalSS.i.i to i32
  call void @__asan_load1_noabort(i32 %799)
  %bf.load28.i.i = load i8, ptr %internalSS.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load28.i.i)
  %bf.cast.not.i.i = icmp sgt i8 %bf.load28.i.i, -1
  br i1 %bf.cast.not.i.i, label %if.then24.i.i.if.end38.i.i_crit_edge, label %if.then30.i.i

if.then24.i.i.if.end38.i.i_crit_edge:             ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i.i

if.then30.i.i:                                    ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i.i = add i32 %797, 1
  %div107.i.i = lshr i32 %inc.i.i, 1
  %800 = ptrtoint ptr %feature26.i.i to i32
  call void @__asan_store4_noabort(i32 %800)
  store i32 %div107.i.i, ptr %feature26.i.i, align 8
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.then30.i.i, %if.then24.i.i.if.end38.i.i_crit_edge, %if.then22.i.i.if.end38.i.i_crit_edge, %if.else.i.i.if.end38.i.i_crit_edge, %if.then19.i.i
  %801 = ptrtoint ptr %usFirmwareCapability.i51.i to i32
  call void @__asan_loadN_noabort(i32 %801, i32 2)
  %bf.load40.i.i = load i16, ptr %usFirmwareCapability.i51.i, align 1
  %802 = and i16 %bf.load40.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %802)
  %tobool43.not.i.i = icmp eq i16 %802, 0
  br i1 %tobool43.not.i.i, label %if.else46.i.i, label %if.then44.i.i

if.then44.i.i:                                    ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %engine_clk_ss_percentage.i55.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 1
  %803 = ptrtoint ptr %engine_clk_ss_percentage.i55.i to i32
  call void @__asan_store4_noabort(i32 %803)
  store i32 300, ptr %engine_clk_ss_percentage.i55.i, align 4
  br label %get_firmware_info_v2_1.exit.i

if.else46.i.i:                                    ; preds = %if.end38.i.i
  %call47.i.i = call fastcc i32 @get_ss_info_v3_1(ptr noundef %call7.i.i, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %internalSS.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %cmp48.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %cmp48.i.i, label %if.then50.i.i, label %if.else46.i.i.get_firmware_info_v2_1.exit.i_crit_edge

if.else46.i.i.get_firmware_info_v2_1.exit.i_crit_edge: ; preds = %if.else46.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_firmware_info_v2_1.exit.i

if.then50.i.i:                                    ; preds = %if.else46.i.i
  %spread_spectrum_percentage51.i.i = getelementptr inbounds %struct.spread_spectrum_info, ptr %internalSS.i.i, i32 0, i32 1
  %804 = ptrtoint ptr %spread_spectrum_percentage51.i.i to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load i32, ptr %spread_spectrum_percentage51.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %805)
  %tobool52.not.i.i = icmp eq i32 %805, 0
  br i1 %tobool52.not.i.i, label %if.then50.i.i.get_firmware_info_v2_1.exit.i_crit_edge, label %if.then53.i.i

if.then50.i.i.get_firmware_info_v2_1.exit.i_crit_edge: ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_firmware_info_v2_1.exit.i

if.then53.i.i:                                    ; preds = %if.then50.i.i
  %engine_clk_ss_percentage56.i.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 1
  %806 = ptrtoint ptr %engine_clk_ss_percentage56.i.i to i32
  call void @__asan_store4_noabort(i32 %806)
  store i32 %805, ptr %engine_clk_ss_percentage56.i.i, align 4
  %807 = ptrtoint ptr %internalSS.i.i to i32
  call void @__asan_load1_noabort(i32 %807)
  %bf.load58.i.i = load i8, ptr %internalSS.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load58.i.i)
  %bf.cast60.not.i.i = icmp sgt i8 %bf.load58.i.i, -1
  br i1 %bf.cast60.not.i.i, label %if.then53.i.i.get_firmware_info_v2_1.exit.i_crit_edge, label %if.then61.i.i

if.then53.i.i.get_firmware_info_v2_1.exit.i_crit_edge: ; preds = %if.then53.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_firmware_info_v2_1.exit.i

if.then61.i.i:                                    ; preds = %if.then53.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc64.i.i = add i32 %805, 1
  %div67106.i.i = lshr i32 %inc64.i.i, 1
  %808 = ptrtoint ptr %engine_clk_ss_percentage56.i.i to i32
  call void @__asan_store4_noabort(i32 %808)
  store i32 %div67106.i.i, ptr %engine_clk_ss_percentage56.i.i, align 4
  br label %get_firmware_info_v2_1.exit.i

get_firmware_info_v2_1.exit.i:                    ; preds = %if.then61.i.i, %if.then53.i.i.get_firmware_info_v2_1.exit.i_crit_edge, %if.then50.i.i.get_firmware_info_v2_1.exit.i_crit_edge, %if.else46.i.i.get_firmware_info_v2_1.exit.i_crit_edge, %if.then44.i.i, %if.end.i34.i.get_firmware_info_v2_1.exit.i_crit_edge
  %retval.0.i56.i = phi i32 [ 2, %if.end.i34.i.get_firmware_info_v2_1.exit.i_crit_edge ], [ 0, %if.else46.i.i.get_firmware_info_v2_1.exit.i_crit_edge ], [ 0, %if.then53.i.i.get_firmware_info_v2_1.exit.i_crit_edge ], [ 0, %if.then61.i.i ], [ 0, %if.then50.i.i.get_firmware_info_v2_1.exit.i_crit_edge ], [ 0, %if.then44.i.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %internalSS.i.i) #6
  br label %bios_parser_construct.exit

if.end.i63.i:                                     ; preds = %sw.bb8.i
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %internal_ss.i.i) #6
  %809 = call ptr @memset(ptr %internal_ss.i.i, i32 255, i32 28)
  %810 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load ptr, ptr %master_data_tbl.i, align 8
  %FirmwareInfo.i59.i = getelementptr inbounds %struct._ATOM_MASTER_DATA_TABLE, ptr %811, i32 0, i32 1, i32 4
  %812 = ptrtoint ptr %FirmwareInfo.i59.i to i32
  call void @__asan_loadN_noabort(i32 %812, i32 2)
  %813 = load i16, ptr %FirmwareInfo.i59.i, align 1
  %conv.i60.i = zext i16 %813 to i32
  %call.i61.i = tail call ptr @bios_get_image(ptr noundef %call7.i.i, i32 noundef %conv.i60.i, i32 noundef 108) #6
  %tobool1.not.i62.i = icmp eq ptr %call.i61.i, null
  br i1 %tobool1.not.i62.i, label %if.end.i63.i.get_firmware_info_v2_2.exit.i_crit_edge, label %if.end3.i91.i

if.end.i63.i.get_firmware_info_v2_2.exit.i_crit_edge: ; preds = %if.end.i63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_firmware_info_v2_2.exit.i

if.end3.i91.i:                                    ; preds = %if.end.i63.i
  %814 = call ptr @memset(ptr %fw_info.i, i32 0, i32 64)
  %usCoreReferenceClock.i64.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_2, ptr %call.i61.i, i32 0, i32 27
  %815 = ptrtoint ptr %usCoreReferenceClock.i64.i to i32
  call void @__asan_loadN_noabort(i32 %815, i32 2)
  %816 = load i16, ptr %usCoreReferenceClock.i64.i, align 1
  %817 = tail call i16 @llvm.bswap.i16(i16 %816) #6
  %conv4.i65.i = zext i16 %817 to i32
  %mul.i66.i = mul nuw nsw i32 %conv4.i65.i, 10
  %818 = ptrtoint ptr %fw_info.i to i32
  call void @__asan_store4_noabort(i32 %818)
  store i32 %mul.i66.i, ptr %fw_info.i, align 4
  %usMinPixelClockPLL_Input.i67.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_2, ptr %call.i61.i, i32 0, i32 23
  %819 = ptrtoint ptr %usMinPixelClockPLL_Input.i67.i to i32
  call void @__asan_loadN_noabort(i32 %819, i32 2)
  %820 = load i16, ptr %usMinPixelClockPLL_Input.i67.i, align 1
  %821 = tail call i16 @llvm.bswap.i16(i16 %820) #6
  %conv5.i68.i = zext i16 %821 to i32
  %mul6.i69.i = mul nuw nsw i32 %conv5.i68.i, 10
  %min_input_pxl_clk_pll_frequency.i70.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 1
  %822 = ptrtoint ptr %min_input_pxl_clk_pll_frequency.i70.i to i32
  call void @__asan_store4_noabort(i32 %822)
  store i32 %mul6.i69.i, ptr %min_input_pxl_clk_pll_frequency.i70.i, align 8
  %usMaxPixelClockPLL_Input.i71.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_2, ptr %call.i61.i, i32 0, i32 24
  %823 = ptrtoint ptr %usMaxPixelClockPLL_Input.i71.i to i32
  call void @__asan_loadN_noabort(i32 %823, i32 2)
  %824 = load i16, ptr %usMaxPixelClockPLL_Input.i71.i, align 1
  %825 = tail call i16 @llvm.bswap.i16(i16 %824) #6
  %conv8.i72.i = zext i16 %825 to i32
  %mul9.i73.i = mul nuw nsw i32 %conv8.i72.i, 10
  %max_input_pxl_clk_pll_frequency.i74.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 2
  %826 = ptrtoint ptr %max_input_pxl_clk_pll_frequency.i74.i to i32
  call void @__asan_store4_noabort(i32 %826)
  store i32 %mul9.i73.i, ptr %max_input_pxl_clk_pll_frequency.i74.i, align 4
  %ulMinPixelClockPLL_Output.i75.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_2, ptr %call.i61.i, i32 0, i32 17
  %827 = ptrtoint ptr %ulMinPixelClockPLL_Output.i75.i to i32
  call void @__asan_loadN_noabort(i32 %827, i32 4)
  %828 = load i32, ptr %ulMinPixelClockPLL_Output.i75.i, align 1
  %829 = tail call i32 @llvm.bswap.i32(i32 %828) #6
  %mul11.i76.i = mul i32 %829, 10
  %min_output_pxl_clk_pll_frequency.i77.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 3
  %830 = ptrtoint ptr %min_output_pxl_clk_pll_frequency.i77.i to i32
  call void @__asan_store4_noabort(i32 %830)
  store i32 %mul11.i76.i, ptr %min_output_pxl_clk_pll_frequency.i77.i, align 8
  %ulMaxPixelClockPLL_Output.i78.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_2, ptr %call.i61.i, i32 0, i32 8
  %831 = ptrtoint ptr %ulMaxPixelClockPLL_Output.i78.i to i32
  call void @__asan_loadN_noabort(i32 %831, i32 4)
  %832 = load i32, ptr %ulMaxPixelClockPLL_Output.i78.i, align 1
  %833 = tail call i32 @llvm.bswap.i32(i32 %832) #6
  %mul13.i79.i = mul i32 %833, 10
  %max_output_pxl_clk_pll_frequency.i80.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 4
  %834 = ptrtoint ptr %max_output_pxl_clk_pll_frequency.i80.i to i32
  call void @__asan_store4_noabort(i32 %834)
  store i32 %mul13.i79.i, ptr %max_output_pxl_clk_pll_frequency.i80.i, align 4
  %ulDefaultDispEngineClkFreq.i81.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_2, ptr %call.i61.i, i32 0, i32 10
  %835 = ptrtoint ptr %ulDefaultDispEngineClkFreq.i81.i to i32
  call void @__asan_loadN_noabort(i32 %835, i32 4)
  %836 = load i32, ptr %ulDefaultDispEngineClkFreq.i81.i, align 1
  %837 = tail call i32 @llvm.bswap.i32(i32 %836) #6
  %mul15.i82.i = mul i32 %837, 10
  %default_display_engine_pll_frequency.i83.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 2
  %838 = ptrtoint ptr %default_display_engine_pll_frequency.i83.i to i32
  call void @__asan_store4_noabort(i32 %838)
  store i32 %mul15.i82.i, ptr %default_display_engine_pll_frequency.i83.i, align 8
  %usUniphyDPModeExtClkFreq.i84.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_2, ptr %call.i61.i, i32 0, i32 29
  %839 = ptrtoint ptr %usUniphyDPModeExtClkFreq.i84.i to i32
  call void @__asan_loadN_noabort(i32 %839, i32 2)
  %840 = load i16, ptr %usUniphyDPModeExtClkFreq.i84.i, align 1
  %841 = tail call i16 @llvm.bswap.i16(i16 %840) #6
  %conv16.i85.i = zext i16 %841 to i32
  %mul17.i86.i = mul nuw nsw i32 %conv16.i85.i, 10
  %external_clock_source_frequency_for_dp.i87.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 3
  %842 = ptrtoint ptr %external_clock_source_frequency_for_dp.i87.i to i32
  call void @__asan_store4_noabort(i32 %842)
  store i32 %mul17.i86.i, ptr %external_clock_source_frequency_for_dp.i87.i, align 4
  %usFirmwareCapability.i88.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_2, ptr %call.i61.i, i32 0, i32 26
  %843 = ptrtoint ptr %usFirmwareCapability.i88.i to i32
  call void @__asan_loadN_noabort(i32 %843, i32 2)
  %bf.load.i89.i = load i16, ptr %usFirmwareCapability.i88.i, align 1
  %844 = and i16 %bf.load.i89.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %844)
  %tobool18.not.i90.i = icmp eq i16 %844, 0
  br i1 %tobool18.not.i90.i, label %if.else.i96.i, label %if.then19.i93.i

if.then19.i93.i:                                  ; preds = %if.end3.i91.i
  call void @__sanitizer_cov_trace_pc() #8
  %feature.i92.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 1
  %845 = ptrtoint ptr %feature.i92.i to i32
  call void @__asan_store4_noabort(i32 %845)
  store i32 300, ptr %feature.i92.i, align 8
  br label %if.end38.i108.i

if.else.i96.i:                                    ; preds = %if.end3.i91.i
  %call20.i94.i = call fastcc i32 @get_ss_info_v3_1(ptr noundef %call7.i.i, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %internal_ss.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i94.i)
  %cmp.i95.i = icmp eq i32 %call20.i94.i, 0
  br i1 %cmp.i95.i, label %if.then22.i99.i, label %if.else.i96.i.if.end38.i108.i_crit_edge

if.else.i96.i.if.end38.i108.i_crit_edge:          ; preds = %if.else.i96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i108.i

if.then22.i99.i:                                  ; preds = %if.else.i96.i
  %spread_spectrum_percentage.i97.i = getelementptr inbounds %struct.spread_spectrum_info, ptr %internal_ss.i.i, i32 0, i32 1
  %846 = ptrtoint ptr %spread_spectrum_percentage.i97.i to i32
  call void @__asan_load4_noabort(i32 %846)
  %847 = load i32, ptr %spread_spectrum_percentage.i97.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %847)
  %tobool23.not.i98.i = icmp eq i32 %847, 0
  br i1 %tobool23.not.i98.i, label %if.then22.i99.i.if.end38.i108.i_crit_edge, label %if.then24.i103.i

if.then22.i99.i.if.end38.i108.i_crit_edge:        ; preds = %if.then22.i99.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i108.i

if.then24.i103.i:                                 ; preds = %if.then22.i99.i
  %feature26.i100.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 1
  %848 = ptrtoint ptr %feature26.i100.i to i32
  call void @__asan_store4_noabort(i32 %848)
  store i32 %847, ptr %feature26.i100.i, align 8
  %849 = ptrtoint ptr %internal_ss.i.i to i32
  call void @__asan_load1_noabort(i32 %849)
  %bf.load28.i101.i = load i8, ptr %internal_ss.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load28.i101.i)
  %bf.cast.not.i102.i = icmp sgt i8 %bf.load28.i101.i, -1
  br i1 %bf.cast.not.i102.i, label %if.then24.i103.i.if.end38.i108.i_crit_edge, label %if.then30.i105.i

if.then24.i103.i.if.end38.i108.i_crit_edge:       ; preds = %if.then24.i103.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i108.i

if.then30.i105.i:                                 ; preds = %if.then24.i103.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i104.i = add i32 %847, 1
  %div112.i.i = lshr i32 %inc.i104.i, 1
  %850 = ptrtoint ptr %feature26.i100.i to i32
  call void @__asan_store4_noabort(i32 %850)
  store i32 %div112.i.i, ptr %feature26.i100.i, align 8
  br label %if.end38.i108.i

if.end38.i108.i:                                  ; preds = %if.then30.i105.i, %if.then24.i103.i.if.end38.i108.i_crit_edge, %if.then22.i99.i.if.end38.i108.i_crit_edge, %if.else.i96.i.if.end38.i108.i_crit_edge, %if.then19.i93.i
  %851 = ptrtoint ptr %usFirmwareCapability.i88.i to i32
  call void @__asan_loadN_noabort(i32 %851, i32 2)
  %bf.load40.i106.i = load i16, ptr %usFirmwareCapability.i88.i, align 1
  %852 = and i16 %bf.load40.i106.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %852)
  %tobool43.not.i107.i = icmp eq i16 %852, 0
  br i1 %tobool43.not.i107.i, label %if.else46.i113.i, label %if.then44.i110.i

if.then44.i110.i:                                 ; preds = %if.end38.i108.i
  call void @__sanitizer_cov_trace_pc() #8
  %engine_clk_ss_percentage.i109.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 1
  %853 = ptrtoint ptr %engine_clk_ss_percentage.i109.i to i32
  call void @__asan_store4_noabort(i32 %853)
  store i32 300, ptr %engine_clk_ss_percentage.i109.i, align 4
  br label %if.end71.i.i

if.else46.i113.i:                                 ; preds = %if.end38.i108.i
  %call47.i111.i = call fastcc i32 @get_ss_info_v3_1(ptr noundef %call7.i.i, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %internal_ss.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i111.i)
  %cmp48.i112.i = icmp eq i32 %call47.i111.i, 0
  br i1 %cmp48.i112.i, label %if.then50.i116.i, label %if.else46.i113.i.if.end71.i.i_crit_edge

if.else46.i113.i.if.end71.i.i_crit_edge:          ; preds = %if.else46.i113.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71.i.i

if.then50.i116.i:                                 ; preds = %if.else46.i113.i
  %spread_spectrum_percentage51.i114.i = getelementptr inbounds %struct.spread_spectrum_info, ptr %internal_ss.i.i, i32 0, i32 1
  %854 = ptrtoint ptr %spread_spectrum_percentage51.i114.i to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load i32, ptr %spread_spectrum_percentage51.i114.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %855)
  %tobool52.not.i115.i = icmp eq i32 %855, 0
  br i1 %tobool52.not.i115.i, label %if.then50.i116.i.if.end71.i.i_crit_edge, label %if.then53.i120.i

if.then50.i116.i.if.end71.i.i_crit_edge:          ; preds = %if.then50.i116.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71.i.i

if.then53.i120.i:                                 ; preds = %if.then50.i116.i
  %engine_clk_ss_percentage56.i117.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 1
  %856 = ptrtoint ptr %engine_clk_ss_percentage56.i117.i to i32
  call void @__asan_store4_noabort(i32 %856)
  store i32 %855, ptr %engine_clk_ss_percentage56.i117.i, align 4
  %857 = ptrtoint ptr %internal_ss.i.i to i32
  call void @__asan_load1_noabort(i32 %857)
  %bf.load58.i118.i = load i8, ptr %internal_ss.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load58.i118.i)
  %bf.cast60.not.i119.i = icmp sgt i8 %bf.load58.i118.i, -1
  br i1 %bf.cast60.not.i119.i, label %if.then53.i120.i.if.end71.i.i_crit_edge, label %if.then61.i122.i

if.then53.i120.i.if.end71.i.i_crit_edge:          ; preds = %if.then53.i120.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71.i.i

if.then61.i122.i:                                 ; preds = %if.then53.i120.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc64.i121.i = add i32 %855, 1
  %div67111.i.i = lshr i32 %inc64.i121.i, 1
  %858 = ptrtoint ptr %engine_clk_ss_percentage56.i117.i to i32
  call void @__asan_store4_noabort(i32 %858)
  store i32 %div67111.i.i, ptr %engine_clk_ss_percentage56.i117.i, align 4
  br label %if.end71.i.i

if.end71.i.i:                                     ; preds = %if.then61.i122.i, %if.then53.i120.i.if.end71.i.i_crit_edge, %if.then50.i116.i.if.end71.i.i_crit_edge, %if.else46.i113.i.if.end71.i.i_crit_edge, %if.then44.i110.i
  %ucRemoteDisplayConfig.i.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_2, ptr %call.i61.i, i32 0, i32 18
  %859 = ptrtoint ptr %ucRemoteDisplayConfig.i.i to i32
  call void @__asan_load1_noabort(i32 %859)
  %860 = load i8, ptr %ucRemoteDisplayConfig.i.i, align 1
  %remote_display_config.i.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 6
  %861 = ptrtoint ptr %remote_display_config.i.i to i32
  call void @__asan_store1_noabort(i32 %861)
  store i8 %860, ptr %remote_display_config.i.i, align 1
  %ucMinAllowedBL_Level.i123.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_2, ptr %call.i61.i, i32 0, i32 12
  %862 = ptrtoint ptr %ucMinAllowedBL_Level.i123.i to i32
  call void @__asan_load1_noabort(i32 %862)
  %863 = load i8, ptr %ucMinAllowedBL_Level.i123.i, align 1
  %min_allowed_bl_level.i124.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 5
  %864 = ptrtoint ptr %min_allowed_bl_level.i124.i to i32
  call void @__asan_store1_noabort(i32 %864)
  store i8 %863, ptr %min_allowed_bl_level.i124.i, align 4
  %ulGPUPLL_OutputFreq.i.i = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO_V2_2, ptr %call.i61.i, i32 0, i32 5
  %865 = ptrtoint ptr %ulGPUPLL_OutputFreq.i.i to i32
  call void @__asan_loadN_noabort(i32 %865, i32 4)
  %866 = load i32, ptr %ulGPUPLL_OutputFreq.i.i, align 1
  %867 = call i32 @llvm.bswap.i32(i32 %866) #6
  %mul72.i.i = mul i32 %867, 10
  %smu_gpu_pll_output_freq.i.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 7, i32 4
  %868 = ptrtoint ptr %smu_gpu_pll_output_freq.i.i to i32
  call void @__asan_store4_noabort(i32 %868)
  store i32 %mul72.i.i, ptr %smu_gpu_pll_output_freq.i.i, align 8
  br label %get_firmware_info_v2_2.exit.i

get_firmware_info_v2_2.exit.i:                    ; preds = %if.end71.i.i, %if.end.i63.i.get_firmware_info_v2_2.exit.i_crit_edge
  %retval.0.i125.i = phi i32 [ 0, %if.end71.i.i ], [ 2, %if.end.i63.i.get_firmware_info_v2_2.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %internal_ss.i.i) #6
  br label %bios_parser_construct.exit

bios_parser_construct.exit:                       ; preds = %get_firmware_info_v2_2.exit.i, %get_firmware_info_v2_1.exit.i, %sw.bb8.i.bios_parser_construct.exit_crit_edge, %if.then23.i.i, %if.end17.i.i.bios_parser_construct.exit_crit_edge, %if.end.i.i.bios_parser_construct.exit_crit_edge, %sw.bb.i.bios_parser_construct.exit_crit_edge, %get_atom_data_table_revision.exit.i14.bios_parser_construct.exit_crit_edge, %if.then.i.bios_parser_construct.exit_crit_edge, %bios_parser_create_integrated_info.exit.bios_parser_construct.exit_crit_edge
  %result.0.i = phi i32 [ 2, %get_atom_data_table_revision.exit.i14.bios_parser_construct.exit_crit_edge ], [ 2, %sw.bb8.i.bios_parser_construct.exit_crit_edge ], [ %retval.0.i125.i, %get_firmware_info_v2_2.exit.i ], [ %retval.0.i56.i, %get_firmware_info_v2_1.exit.i ], [ 2, %sw.bb.i.bios_parser_construct.exit_crit_edge ], [ 2, %bios_parser_create_integrated_info.exit.bios_parser_construct.exit_crit_edge ], [ 2, %if.end.i.i.bios_parser_construct.exit_crit_edge ], [ 0, %if.then23.i.i ], [ 0, %if.end17.i.i.bios_parser_construct.exit_crit_edge ], [ 2, %if.then.i.bios_parser_construct.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.i)
  %cmp91.i = icmp eq i32 %result.0.i, 0
  %fw_info_valid.i = getelementptr inbounds %struct.dc_bios, ptr %call7.i.i, i32 0, i32 8
  %frombool.i = zext i1 %cmp91.i to i8
  %869 = ptrtoint ptr %fw_info_valid.i to i32
  call void @__asan_store1_noabort(i32 %869)
  store i8 %frombool.i, ptr %fw_info_valid.i, align 4
  br label %cleanup

if.end3:                                          ; preds = %land.lhs.true73.i.if.end3_crit_edge, %if.then60.i.if.end3_crit_edge, %if.end46.i.if.end3_crit_edge, %if.end40.i.if.end3_crit_edge, %if.end34.i.if.end3_crit_edge, %if.end27.i.if.end3_crit_edge, %get_atom_data_table_revision.exit.i.if.end3_crit_edge, %if.end16.i.if.end3_crit_edge, %if.end3.i.if.end3_crit_edge, %if.end.i.if.end3_crit_edge, %if.end.if.end3_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.bios_parser_create, i32 noundef 110) #6
  tail call void @kgdb_breakpoint() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %bios_parser_construct.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end3 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %bios_parser_construct.exit ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bios_get_image(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_bios_parser_init_cmd_tbl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dal_bios_parser_init_cmd_tbl_helper(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @bios_parser_get_connectors_number(ptr noundef %dcb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %usConnectorObjectTableOffset = getelementptr inbounds %struct._ATOM_OBJECT_HEADER, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %usConnectorObjectTableOffset to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %usConnectorObjectTableOffset, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv = zext i16 %5 to i32
  %object_info_tbl_offset.i = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 2
  %6 = ptrtoint ptr %object_info_tbl_offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %object_info_tbl_offset.i, align 4
  %add.i = add i32 %7, %conv
  %call.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %add.i, i32 noundef 12) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.get_number_of_objects.exit_crit_edge, label %if.else.i

entry.get_number_of_objects.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_number_of_objects.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %call.i, align 1
  br label %get_number_of_objects.exit

get_number_of_objects.exit:                       ; preds = %if.else.i, %entry.get_number_of_objects.exit_crit_edge
  %retval.0.i = phi i8 [ %9, %if.else.i ], [ 0, %entry.get_number_of_objects.exit_crit_edge ]
  ret i8 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_get_connector_id(ptr noundef %dcb, i8 noundef zeroext %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %object_info_tbl_offset = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 2
  %0 = ptrtoint ptr %object_info_tbl_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %object_info_tbl_offset, align 4
  %2 = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %usConnectorObjectTableOffset = getelementptr inbounds %struct._ATOM_OBJECT_HEADER, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %usConnectorObjectTableOffset to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %usConnectorObjectTableOffset, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv = zext i16 %7 to i32
  %add = add i32 %1, %conv
  %call1 = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %add, i32 noundef 12) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %call1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %call1, align 1
  %conv3 = zext i8 %i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %i)
  %cmp.not = icmp ugt i8 %9, %i
  br i1 %cmp.not, label %if.end9, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv2 = zext i8 %9 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %conv3, i32 noundef %conv2) #6
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct._ATOM_OBJECT_TABLE, ptr %call1, i32 0, i32 2, i32 %conv3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %arrayidx, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv11 = zext i16 %12 to i32
  %call12 = tail call i32 @object_id_from_bios_object_id(i32 noundef %conv11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then5, %if.then
  %retval.sroa.0.0 = phi i32 [ 0, %if.then5 ], [ %call12, %if.end9 ], [ 0, %if.then ]
  ret i32 %retval.sroa.0.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_get_src_obj(ptr noundef %dcb, [1 x i32] %object_id.coerce, i32 noundef %index, ptr noundef writeonly %src_object_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %src_object_id, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc ptr @get_bios_object(ptr noundef %dcb, [1 x i32] %object_id.coerce)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %do.body, label %if.end.i

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.bios_parser_get_src_obj, i32 noundef 203) #6
  tail call void @kgdb_breakpoint() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %usSrcDstTableOffset.i = getelementptr inbounds %struct._ATOM_OBJECT, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %usSrcDstTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %usSrcDstTableOffset.i, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #6
  %conv.i = zext i16 %2 to i32
  %object_info_tbl_offset.i = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 2
  %3 = ptrtoint ptr %object_info_tbl_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %object_info_tbl_offset.i, align 4
  %add.i = add i32 %4, %conv.i
  %call.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %add.i, i32 noundef 1) #6
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %add4.i = add i32 %add.i, 1
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %call.i, align 1
  %conv6.i = zext i8 %6 to i32
  %mul.i = shl nuw nsw i32 %conv6.i, 1
  %call7.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %add4.i, i32 noundef %mul.i) #6
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %if.end3.i.cleanup_crit_edge, label %get_src_obj_list.exit

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

get_src_obj_list.exit:                            ; preds = %if.end3.i
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call.i, align 1
  %conv11.i = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i, i32 %index)
  %cmp.not = icmp ugt i32 %conv11.i, %index
  br i1 %cmp.not, label %if.end7, label %get_src_obj_list.exit.cleanup_crit_edge

get_src_obj_list.exit.cleanup_crit_edge:          ; preds = %get_src_obj_list.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %get_src_obj_list.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr i16, ptr %call7.i, i32 %index
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %10 to i32
  %call9 = tail call i32 @object_id_from_bios_object_id(i32 noundef %conv) #6
  %11 = ptrtoint ptr %src_object_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call9, ptr %src_object_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %get_src_obj_list.exit.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ 1, %do.body ], [ 1, %entry.cleanup_crit_edge ], [ 1, %get_src_obj_list.exit.cleanup_crit_edge ], [ 1, %if.end.i.cleanup_crit_edge ], [ 1, %if.end3.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_get_i2c_info(ptr noundef %dcb, [1 x i32] %id.coerce, ptr noundef writeonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc ptr @get_bios_object(ptr noundef %dcb, [1 x i32] %id.coerce)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %usRecordOffset = getelementptr inbounds %struct._ATOM_OBJECT, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %usRecordOffset to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %usRecordOffset, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  %object_info_tbl_offset = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 2
  %3 = ptrtoint ptr %object_info_tbl_offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %object_info_tbl_offset, align 4
  %add = add i32 %4, %conv
  %call551 = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %add, i32 noundef 2) #6
  %tobool6.not52 = icmp eq ptr %call551, null
  br i1 %tobool6.not52, label %if.end4.cleanup_crit_edge, label %if.end8.lr.ph

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8.lr.ph:                                    ; preds = %if.end4
  %master_data_tbl.i = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 3
  br label %if.end8

if.end8:                                          ; preds = %if.end28.if.end8_crit_edge, %if.end8.lr.ph
  %call554 = phi ptr [ %call551, %if.end8.lr.ph ], [ %call5, %if.end28.if.end8_crit_edge ]
  %offset.053 = phi i32 [ %add, %if.end8.lr.ph ], [ %add31, %if.end28.if.end8_crit_edge ]
  %5 = ptrtoint ptr %call554 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %call554, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp = icmp eq i8 %6, -1
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %lor.lhs.false

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end8
  %ucRecordSize = getelementptr inbounds %struct._ATOM_COMMON_RECORD_HEADER, ptr %call554, i32 0, i32 1
  %7 = ptrtoint ptr %ucRecordSize to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ucRecordSize, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool11.not = icmp eq i8 %8, 0
  br i1 %tobool11.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end13

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp16 = icmp eq i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp20 = icmp ugt i8 %8, 3
  %or.cond = select i1 %cmp16, i1 %cmp20, i1 false
  br i1 %or.cond, label %if.end.i, label %if.end13.if.end28_crit_edge

if.end13.if.end28_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end.i:                                         ; preds = %if.end13
  %9 = ptrtoint ptr %master_data_tbl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master_data_tbl.i, align 4
  %GPIO_I2C_Info.i = getelementptr inbounds %struct._ATOM_MASTER_DATA_TABLE, ptr %10, i32 0, i32 1, i32 10
  %11 = ptrtoint ptr %GPIO_I2C_Info.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %GPIO_I2C_Info.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool1.not.i = icmp eq i16 %12, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end28_crit_edge, label %if.end3.i

if.end.i.if.end28_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end3.i:                                        ; preds = %if.end.i
  %conv.i = zext i16 %12 to i32
  %call.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv.i, i32 noundef 436) #6
  %tobool7.not.i = icmp eq ptr %call.i, null
  br i1 %tobool7.not.i, label %if.end3.i.if.end28_crit_edge, label %if.end9.i

if.end3.i.if.end28_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end9.i:                                        ; preds = %if.end3.i
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %call.i, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #6
  %conv10.i = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %15)
  %cmp.i = icmp ult i16 %15, 31
  br i1 %cmp.i, label %if.end9.i.if.end28_crit_edge, label %if.end13.i

if.end9.i.if.end28_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end13.i:                                       ; preds = %if.end9.i
  %ucTableContentRevision.i = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %ucTableContentRevision.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ucTableContentRevision.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp16.not.i = icmp eq i8 %17, 1
  br i1 %cmp16.not.i, label %if.end19.i, label %if.end13.i.if.end28_crit_edge

if.end13.i.if.end28_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end19.i:                                       ; preds = %if.end13.i
  %sub.i = add nsw i32 %conv10.i, -4
  %div.i = udiv i32 %sub.i, 27
  %sucI2cId.i = getelementptr inbounds %struct._ATOM_I2C_RECORD, ptr %call554, i32 0, i32 1
  %18 = ptrtoint ptr %sucI2cId.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %sucI2cId.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 15
  %conv23.i = zext i8 %bf.clear.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %conv23.i)
  %cmp24.i = icmp ult i32 %div.i, %conv23.i
  br i1 %cmp24.i, label %if.end19.i.if.end28_crit_edge, label %get_gpio_i2c_info.exit

if.end19.i.if.end28_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

get_gpio_i2c_info.exit:                           ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_hw_assist.i = getelementptr inbounds %struct.graphics_object_i2c_info, ptr %info, i32 0, i32 1
  %bf.load.lobit.i = lshr i8 %bf.load.i, 7
  %19 = ptrtoint ptr %i2c_hw_assist.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %bf.load.lobit.i, ptr %i2c_hw_assist.i, align 4
  %20 = ptrtoint ptr %sucI2cId.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load32.i = load i8, ptr %sucI2cId.i, align 1
  %bf.clear33.i = and i8 %bf.load32.i, 15
  %conv34.i = zext i8 %bf.clear33.i to i32
  %i2c_line.i = getelementptr inbounds %struct.graphics_object_i2c_info, ptr %info, i32 0, i32 2
  %21 = ptrtoint ptr %i2c_line.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv34.i, ptr %i2c_line.i, align 4
  %bf.load36.i = load i8, ptr %sucI2cId.i, align 1
  %bf.lshr37.i = lshr i8 %bf.load36.i, 4
  %bf.clear38.i = and i8 %bf.lshr37.i, 7
  %conv39.i = zext i8 %bf.clear38.i to i32
  %i2c_engine_id.i = getelementptr inbounds %struct.graphics_object_i2c_info, ptr %info, i32 0, i32 3
  %22 = ptrtoint ptr %i2c_engine_id.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv39.i, ptr %i2c_engine_id.i, align 4
  %ucI2CAddr.i = getelementptr inbounds %struct._ATOM_I2C_RECORD, ptr %call554, i32 0, i32 2
  %23 = ptrtoint ptr %ucI2CAddr.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ucI2CAddr.i, align 1
  %conv40.i = zext i8 %24 to i32
  %i2c_slave_address.i = getelementptr inbounds %struct.graphics_object_i2c_info, ptr %info, i32 0, i32 4
  %25 = ptrtoint ptr %i2c_slave_address.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv40.i, ptr %i2c_slave_address.i, align 4
  %arrayidx.i = getelementptr %struct._ATOM_GPIO_I2C_INFO, ptr %call.i, i32 0, i32 1, i32 %conv34.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %arrayidx.i, align 1
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #6
  %conv42.i = zext i16 %28 to i32
  %29 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv42.i, ptr %info, align 4
  %usClkEnRegisterIndex.i = getelementptr %struct._ATOM_GPIO_I2C_INFO, ptr %call.i, i32 0, i32 1, i32 %conv34.i, i32 1
  %30 = ptrtoint ptr %usClkEnRegisterIndex.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %usClkEnRegisterIndex.i, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #6
  %conv46.i = zext i16 %32 to i32
  %clk_en_register_index.i = getelementptr inbounds %struct.gpio_info, ptr %info, i32 0, i32 1
  %33 = ptrtoint ptr %clk_en_register_index.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv46.i, ptr %clk_en_register_index.i, align 4
  %usClkY_RegisterIndex.i = getelementptr %struct._ATOM_GPIO_I2C_INFO, ptr %call.i, i32 0, i32 1, i32 %conv34.i, i32 2
  %34 = ptrtoint ptr %usClkY_RegisterIndex.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %usClkY_RegisterIndex.i, align 1
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #6
  %conv51.i = zext i16 %36 to i32
  %clk_y_register_index.i = getelementptr inbounds %struct.gpio_info, ptr %info, i32 0, i32 2
  %37 = ptrtoint ptr %clk_y_register_index.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv51.i, ptr %clk_y_register_index.i, align 4
  %usClkA_RegisterIndex.i = getelementptr %struct._ATOM_GPIO_I2C_INFO, ptr %call.i, i32 0, i32 1, i32 %conv34.i, i32 3
  %38 = ptrtoint ptr %usClkA_RegisterIndex.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %usClkA_RegisterIndex.i, align 1
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #6
  %conv56.i = zext i16 %40 to i32
  %clk_a_register_index.i = getelementptr inbounds %struct.gpio_info, ptr %info, i32 0, i32 3
  %41 = ptrtoint ptr %clk_a_register_index.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv56.i, ptr %clk_a_register_index.i, align 4
  %usDataMaskRegisterIndex.i = getelementptr %struct._ATOM_GPIO_I2C_INFO, ptr %call.i, i32 0, i32 1, i32 %conv34.i, i32 4
  %42 = ptrtoint ptr %usDataMaskRegisterIndex.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %usDataMaskRegisterIndex.i, align 1
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #6
  %conv61.i = zext i16 %44 to i32
  %data_mask_register_index.i = getelementptr inbounds %struct.gpio_info, ptr %info, i32 0, i32 4
  %45 = ptrtoint ptr %data_mask_register_index.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv61.i, ptr %data_mask_register_index.i, align 4
  %usDataEnRegisterIndex.i = getelementptr %struct._ATOM_GPIO_I2C_INFO, ptr %call.i, i32 0, i32 1, i32 %conv34.i, i32 5
  %46 = ptrtoint ptr %usDataEnRegisterIndex.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %usDataEnRegisterIndex.i, align 1
  %48 = tail call i16 @llvm.bswap.i16(i16 %47) #6
  %conv66.i = zext i16 %48 to i32
  %data_en_register_index.i = getelementptr inbounds %struct.gpio_info, ptr %info, i32 0, i32 5
  %49 = ptrtoint ptr %data_en_register_index.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv66.i, ptr %data_en_register_index.i, align 4
  %usDataY_RegisterIndex.i = getelementptr %struct._ATOM_GPIO_I2C_INFO, ptr %call.i, i32 0, i32 1, i32 %conv34.i, i32 6
  %50 = ptrtoint ptr %usDataY_RegisterIndex.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %usDataY_RegisterIndex.i, align 1
  %52 = tail call i16 @llvm.bswap.i16(i16 %51) #6
  %conv71.i = zext i16 %52 to i32
  %data_y_register_index.i = getelementptr inbounds %struct.gpio_info, ptr %info, i32 0, i32 6
  %53 = ptrtoint ptr %data_y_register_index.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv71.i, ptr %data_y_register_index.i, align 4
  %usDataA_RegisterIndex.i = getelementptr %struct._ATOM_GPIO_I2C_INFO, ptr %call.i, i32 0, i32 1, i32 %conv34.i, i32 7
  %54 = ptrtoint ptr %usDataA_RegisterIndex.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %usDataA_RegisterIndex.i, align 1
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #6
  %conv76.i = zext i16 %56 to i32
  %data_a_register_index.i = getelementptr inbounds %struct.gpio_info, ptr %info, i32 0, i32 7
  %57 = ptrtoint ptr %data_a_register_index.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv76.i, ptr %data_a_register_index.i, align 4
  %ucClkMaskShift.i = getelementptr %struct._ATOM_GPIO_I2C_INFO, ptr %call.i, i32 0, i32 1, i32 %conv34.i, i32 9
  %58 = ptrtoint ptr %ucClkMaskShift.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ucClkMaskShift.i, align 1
  %conv81.i = zext i8 %59 to i32
  %clk_mask_shift.i = getelementptr inbounds %struct.gpio_info, ptr %info, i32 0, i32 8
  %60 = ptrtoint ptr %clk_mask_shift.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv81.i, ptr %clk_mask_shift.i, align 4
  %ucClkEnShift.i = getelementptr %struct._ATOM_GPIO_I2C_INFO, ptr %call.i, i32 0, i32 1, i32 %conv34.i, i32 10
  %61 = ptrtoint ptr %ucClkEnShift.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %ucClkEnShift.i, align 1
  %conv86.i = zext i8 %62 to i32
  %clk_en_shift.i = getelementptr inbounds %struct.gpio_info, ptr %info, i32 0, i32 9
  %63 = ptrtoint ptr %clk_en_shift.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv86.i, ptr %clk_en_shift.i, align 4
  %ucClkY_Shift.i = getelementptr %struct._ATOM_GPIO_I2C_INFO, ptr %call.i, i32 0, i32 1, i32 %conv34.i, i32 11
  %64 = ptrtoint ptr %ucClkY_Shift.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %ucClkY_Shift.i, align 1
  %conv91.i = zext i8 %65 to i32
  %clk_y_shift.i = getelementptr inbounds %struct.gpio_info, ptr %info, i32 0, i32 10
  %66 = ptrtoint ptr %clk_y_shift.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv91.i, ptr %clk_y_shift.i, align 4
  %ucClkA_Shift.i = getelementptr %struct._ATOM_GPIO_I2C_INFO, ptr %call.i, i32 0, i32 1, i32 %conv34.i, i32 12
  %67 = ptrtoint ptr %ucClkA_Shift.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %ucClkA_Shift.i, align 1
  %conv96.i = zext i8 %68 to i32
  %clk_a_shift.i = getelementptr inbounds %struct.gpio_info, ptr %info, i32 0, i32 11
  %69 = ptrtoint ptr %clk_a_shift.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv96.i, ptr %clk_a_shift.i, align 4
  %ucDataMaskShift.i = getelementptr %struct._ATOM_GPIO_I2C_INFO, ptr %call.i, i32 0, i32 1, i32 %conv34.i, i32 13
  %70 = ptrtoint ptr %ucDataMaskShift.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %ucDataMaskShift.i, align 1
  %conv101.i = zext i8 %71 to i32
  %data_mask_shift.i = getelementptr inbounds %struct.gpio_info, ptr %info, i32 0, i32 12
  %72 = ptrtoint ptr %data_mask_shift.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv101.i, ptr %data_mask_shift.i, align 4
  %ucDataEnShift.i = getelementptr %struct._ATOM_GPIO_I2C_INFO, ptr %call.i, i32 0, i32 1, i32 %conv34.i, i32 14
  %73 = ptrtoint ptr %ucDataEnShift.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %ucDataEnShift.i, align 1
  %conv106.i = zext i8 %74 to i32
  %data_en_shift.i = getelementptr inbounds %struct.gpio_info, ptr %info, i32 0, i32 13
  %75 = ptrtoint ptr %data_en_shift.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv106.i, ptr %data_en_shift.i, align 4
  %ucDataY_Shift.i = getelementptr %struct._ATOM_GPIO_I2C_INFO, ptr %call.i, i32 0, i32 1, i32 %conv34.i, i32 15
  %76 = ptrtoint ptr %ucDataY_Shift.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %ucDataY_Shift.i, align 1
  %conv111.i = zext i8 %77 to i32
  %data_y_shift.i = getelementptr inbounds %struct.gpio_info, ptr %info, i32 0, i32 14
  %78 = ptrtoint ptr %data_y_shift.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %conv111.i, ptr %data_y_shift.i, align 4
  %ucDataA_Shift.i = getelementptr %struct._ATOM_GPIO_I2C_INFO, ptr %call.i, i32 0, i32 1, i32 %conv34.i, i32 16
  %79 = ptrtoint ptr %ucDataA_Shift.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %ucDataA_Shift.i, align 1
  %conv116.i = zext i8 %80 to i32
  %data_a_shift.i = getelementptr inbounds %struct.gpio_info, ptr %info, i32 0, i32 15
  %81 = ptrtoint ptr %data_a_shift.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %conv116.i, ptr %data_a_shift.i, align 4
  br label %cleanup

if.end28:                                         ; preds = %if.end19.i.if.end28_crit_edge, %if.end13.i.if.end28_crit_edge, %if.end9.i.if.end28_crit_edge, %if.end3.i.if.end28_crit_edge, %if.end.i.if.end28_crit_edge, %if.end13.if.end28_crit_edge
  %82 = ptrtoint ptr %ucRecordSize to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %ucRecordSize, align 1
  %conv30 = zext i8 %83 to i32
  %add31 = add i32 %offset.053, %conv30
  %call5 = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %add31, i32 noundef 2) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end28.cleanup_crit_edge, label %if.end28.if.end8_crit_edge

if.end28.if.end8_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end28.cleanup_crit_edge, %get_gpio_i2c_info.exit, %lor.lhs.false.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 0, %get_gpio_i2c_info.exit ], [ 2, %if.end4.cleanup_crit_edge ], [ 2, %if.end28.cleanup_crit_edge ], [ 4, %if.end8.cleanup_crit_edge ], [ 4, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_get_hpd_info(ptr noundef %dcb, [1 x i32] %id.coerce, ptr noundef writeonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc ptr @get_bios_object(ptr noundef %dcb, [1 x i32] %id.coerce)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %usRecordOffset.i = getelementptr inbounds %struct._ATOM_OBJECT, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %usRecordOffset.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %usRecordOffset.i, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #6
  %conv.i = zext i16 %2 to i32
  %object_info_tbl_offset.i = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 2
  %3 = ptrtoint ptr %object_info_tbl_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %object_info_tbl_offset.i, align 4
  %add.i = add i32 %4, %conv.i
  %call32.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %add.i, i32 noundef 2) #6
  %tobool1.not33.i = icmp eq ptr %call32.i, null
  br i1 %tobool1.not33.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  br label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.i:                                       ; preds = %if.end8.i
  %conv20.i = zext i8 %8 to i32
  %add21.i = add i32 %offset.034.i, %conv20.i
  %call.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %add21.i, i32 noundef 2) #6
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.if.end3.i_crit_edge

for.cond.i.if.end3.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end3.i
  %ucRecordSize.i = getelementptr inbounds %struct._ATOM_COMMON_RECORD_HEADER, ptr %call35.i, i32 0, i32 1
  %7 = ptrtoint ptr %ucRecordSize.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ucRecordSize.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not.i = icmp eq i8 %8, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end8.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp11.i = icmp eq i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp15.i = icmp ugt i8 %8, 3
  %or.cond.i = select i1 %cmp11.i, i1 %cmp15.i, i1 false
  br i1 %or.cond.i, label %if.then6, label %for.cond.i

if.then6:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %ucHPDIntGPIOID = getelementptr inbounds %struct._ATOM_HPD_INT_RECORD, ptr %call35.i, i32 0, i32 1
  %9 = ptrtoint ptr %ucHPDIntGPIOID to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ucHPDIntGPIOID, align 1
  %11 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %info, align 1
  %ucPlugged_PinState = getelementptr inbounds %struct._ATOM_HPD_INT_RECORD, ptr %call35.i, i32 0, i32 2
  %12 = ptrtoint ptr %ucPlugged_PinState to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ucPlugged_PinState, align 1
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
define internal i32 @bios_parser_get_device_tag(ptr noundef %dcb, [1 x i32] %connector_object_id.coerce, i32 noundef %device_tag_index, ptr noundef writeonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc ptr @get_bios_object(ptr noundef %dcb, [1 x i32] %connector_object_id.coerce)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %do.body, label %if.end4

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.bios_parser_get_device_tag, i32 noundef 345) #6
  tail call void @kgdb_breakpoint() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %usRecordOffset.i = getelementptr inbounds %struct._ATOM_OBJECT, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %usRecordOffset.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %usRecordOffset.i, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #6
  %conv.i = zext i16 %2 to i32
  %object_info_tbl_offset.i = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 2
  %3 = ptrtoint ptr %object_info_tbl_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %object_info_tbl_offset.i, align 4
  %add.i = add i32 %4, %conv.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end8.i.for.cond.i_crit_edge, %if.end4
  %offset.0.i = phi i32 [ %add.i, %if.end4 ], [ %add2.i, %if.end8.i.for.cond.i_crit_edge ]
  %call.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %offset.0.i, i32 noundef 2) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.cond.i.cleanup_crit_edge, label %if.end.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %for.cond.i
  %ucRecordSize.i = getelementptr inbounds %struct._ATOM_COMMON_RECORD_HEADER, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %ucRecordSize.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ucRecordSize.i, align 1
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp.i = icmp eq i8 %8, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not.i = icmp eq i8 %6, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool6.not.i
  br i1 %or.cond.i, label %if.end.i.cleanup_crit_edge, label %if.end8.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  %conv1.i = zext i8 %6 to i32
  %add2.i = add i32 %offset.0.i, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %8)
  %cmp11.not.i = icmp ne i8 %8, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %6)
  %cmp17.i = icmp ult i8 %6, 8
  %or.cond30.i = select i1 %cmp11.not.i, i1 true, i1 %cmp17.i
  br i1 %or.cond30.i, label %if.end8.i.for.cond.i_crit_edge, label %if.end7

if.end8.i.for.cond.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

if.end7:                                          ; preds = %if.end8.i
  %ucNumberOfDevice = getelementptr inbounds %struct._ATOM_CONNECTOR_DEVICE_TAG_RECORD, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %ucNumberOfDevice to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ucNumberOfDevice, align 1
  %conv = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %device_tag_index)
  %cmp8.not = icmp ugt i32 %conv, %device_tag_index
  br i1 %cmp8.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %arrayidx = getelementptr %struct._ATOM_CONNECTOR_DEVICE_TAG_RECORD, ptr %call.i, i32 0, i32 3, i32 %device_tag_index
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %arrayidx, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %info, align 4
  %dev_id = getelementptr inbounds %struct.connector_device_tag_info, ptr %info, i32 0, i32 1
  %usDeviceID = getelementptr %struct._ATOM_CONNECTOR_DEVICE_TAG_RECORD, ptr %call.i, i32 0, i32 3, i32 %device_tag_index, i32 1
  %15 = ptrtoint ptr %usDeviceID to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %usDeviceID, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %17, label %do.body.i [
    i16 2, label %if.end11.device_type_from_device_id.exit_crit_edge
    i16 32, label %sw.bb4.i
    i16 1, label %sw.bb11.i
    i16 16, label %sw.bb18.i
    i16 8, label %sw.bb25.i
    i16 128, label %sw.bb32.i
    i16 512, label %sw.bb39.i
    i16 1024, label %sw.bb46.i
    i16 2048, label %sw.bb53.i
    i16 64, label %sw.bb60.i
  ]

if.end11.device_type_from_device_id.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %device_type_from_device_id.exit

sw.bb4.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %device_type_from_device_id.exit

sw.bb11.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %device_type_from_device_id.exit

sw.bb18.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %device_type_from_device_id.exit

sw.bb25.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %device_type_from_device_id.exit

sw.bb32.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %device_type_from_device_id.exit

sw.bb39.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %device_type_from_device_id.exit

sw.bb46.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %device_type_from_device_id.exit

sw.bb53.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %device_type_from_device_id.exit

sw.bb60.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %device_type_from_device_id.exit

do.body.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.device_type_from_device_id, i32 noundef 2078) #6, !noalias !43
  tail call void @kgdb_breakpoint() #6, !noalias !43
  br label %device_type_from_device_id.exit

device_type_from_device_id.exit:                  ; preds = %do.body.i, %sw.bb60.i, %sw.bb53.i, %sw.bb46.i, %sw.bb39.i, %sw.bb32.i, %sw.bb25.i, %sw.bb18.i, %sw.bb11.i, %sw.bb4.i, %if.end11.device_type_from_device_id.exit_crit_edge
  %.sink.i = phi i32 [ 0, %do.body.i ], [ 196614, %sw.bb60.i ], [ 196613, %sw.bb53.i ], [ 196612, %sw.bb46.i ], [ 196611, %sw.bb39.i ], [ 196610, %sw.bb32.i ], [ 196609, %sw.bb25.i ], [ 131074, %sw.bb18.i ], [ 131073, %sw.bb11.i ], [ 65538, %sw.bb4.i ], [ 65537, %if.end11.device_type_from_device_id.exit_crit_edge ]
  %tmp12.sroa.0.0.insert.ext = zext i32 %.sink.i to i64
  %tmp12.sroa.0.0.insert.shift = shl nuw nsw i64 %tmp12.sroa.0.0.insert.ext, 32
  %tmp12.sroa.0.0.insert.insert = or i64 %tmp12.sroa.0.0.insert.shift, 65535
  %19 = ptrtoint ptr %dev_id to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %tmp12.sroa.0.0.insert.insert, ptr %dev_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %device_type_from_device_id.exit, %if.end7.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %device_type_from_device_id.exit ], [ 1, %do.body ], [ 1, %entry.cleanup_crit_edge ], [ 4, %if.end7.cleanup_crit_edge ], [ 4, %if.end.i.cleanup_crit_edge ], [ 4, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_get_spread_spectrum_info(ptr noundef %dcb, i32 noundef %signal, i32 noundef %index, ptr noundef %ss_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ss_info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %switch.tableidx = add i32 %signal, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 5
  br i1 %0, label %switch.lookup, label %if.end.signal_to_ss_id.exit_crit_edge

if.end.signal_to_ss_id.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %signal_to_ss_id.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.bios_parser_get_spread_spectrum_info, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %signal_to_ss_id.exit

signal_to_ss_id.exit:                             ; preds = %switch.lookup, %if.end.signal_to_ss_id.exit_crit_edge
  %clk_id_ss.0.i = phi i32 [ 0, %if.end.signal_to_ss_id.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %master_data_tbl = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 3
  %2 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master_data_tbl, align 4
  %ASIC_InternalSS_Info = getelementptr inbounds %struct._ATOM_MASTER_DATA_TABLE, ptr %3, i32 0, i32 1, i32 26
  %4 = ptrtoint ptr %ASIC_InternalSS_Info to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %ASIC_InternalSS_Info, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool1.not = icmp eq i16 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %tobool3.not = icmp eq i32 %index, 0
  %or.cond = and i1 %tobool3.not, %tobool1.not
  br i1 %or.cond, label %if.then4, label %if.end7

if.then4:                                         ; preds = %signal_to_ss_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call fastcc i32 @get_ss_info_from_ss_info_table(ptr noundef %dcb, i32 noundef %clk_id_ss.0.i, ptr noundef nonnull %ss_info)
  br label %cleanup

if.end7:                                          ; preds = %signal_to_ss_id.exit
  %conv = zext i16 %5 to i32
  %call11 = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv, i32 noundef 4) #6
  %tobool1.not.i = icmp eq ptr %call11, null
  br i1 %tobool1.not.i, label %if.end7.cleanup_crit_edge, label %get_atom_data_table_revision.exit

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

get_atom_data_table_revision.exit:                ; preds = %if.end7
  %ucTableFormatRevision.i = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call11, i32 0, i32 1
  %6 = ptrtoint ptr %ucTableFormatRevision.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ucTableFormatRevision.i, align 1
  %8 = and i8 %7, 63
  %and.i = zext i8 %8 to i32
  %ucTableContentRevision.i = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call11, i32 0, i32 2
  %9 = ptrtoint ptr %ucTableContentRevision.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ucTableContentRevision.i, align 1
  %11 = and i8 %10, 63
  %12 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %and.i, label %get_atom_data_table_revision.exit.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb17
  ]

get_atom_data_table_revision.exit.cleanup_crit_edge: ; preds = %get_atom_data_table_revision.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %get_atom_data_table_revision.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cond29 = icmp eq i8 %11, 1
  %or.cond42 = and i1 %tobool3.not, %cond29
  br i1 %or.cond42, label %if.end.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %13 = and i32 %clk_id_ss.0.i, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %switch.i = icmp eq i32 %13, 6
  br i1 %switch.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call fastcc i32 @get_ss_info_from_ss_info_table(ptr noundef %dcb, i32 noundef %clk_id_ss.0.i, ptr noundef nonnull %ss_info) #6
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i
  %14 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master_data_tbl, align 4
  %ASIC_InternalSS_Info.i.i = getelementptr inbounds %struct._ATOM_MASTER_DATA_TABLE, ptr %15, i32 0, i32 1, i32 26
  %16 = ptrtoint ptr %ASIC_InternalSS_Info.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %ASIC_InternalSS_Info.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i.i = icmp eq i16 %17, 0
  br i1 %tobool.not.i.i, label %if.else.i.cleanup_crit_edge, label %if.end.i.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.else.i
  %conv.i.i = zext i16 %17 to i32
  %call.i.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv.i.i, i32 noundef 16) #6
  %18 = call ptr @memset(ptr %ss_info, i32 0, i32 28)
  %19 = ptrtoint ptr %call.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %call.i.i, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #6
  %conv4.i.i = zext i16 %21 to i32
  %sub.i.i = add nsw i32 %conv4.i.i, -4
  %asSpreadSpectrum.i.i = getelementptr inbounds %struct._ATOM_ASIC_INTERNAL_SS_INFO_V2, ptr %call.i.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i.i)
  %22 = icmp ult i32 %sub.i.i, 12
  br i1 %22, label %if.end.i.i.cleanup_crit_edge, label %for.body.lr.ph.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %div.i.i = udiv i32 %sub.i.i, 12
  %23 = trunc i32 %clk_id_ss.0.i to i8
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %div.i.i, i32 1) #6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.069.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %ucClockIndication.i.i = getelementptr %struct._ATOM_ASIC_SS_ASSIGNMENT_V2, ptr %asSpreadSpectrum.i.i, i32 %i.069.i.i, i32 3
  %24 = ptrtoint ptr %ucClockIndication.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ucClockIndication.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %23)
  %cmp10.not.i.i = icmp eq i8 %25, %23
  br i1 %cmp10.not.i.i, label %if.end13.i.i, label %for.inc.i.i

if.end13.i.i:                                     ; preds = %for.body.i.i
  %arrayidx6.le.i.i = getelementptr %struct._ATOM_ASIC_SS_ASSIGNMENT_V2, ptr %asSpreadSpectrum.i.i, i32 %i.069.i.i
  %ucSpreadSpectrumMode.i.i = getelementptr %struct._ATOM_ASIC_SS_ASSIGNMENT_V2, ptr %asSpreadSpectrum.i.i, i32 %i.069.i.i, i32 4
  %26 = ptrtoint ptr %ucSpreadSpectrumMode.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ucSpreadSpectrumMode.i.i, align 1
  %28 = and i8 %27, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool16.not.i.i = icmp eq i8 %28, 0
  br i1 %tobool16.not.i.i, label %if.end13.i.i.if.end18.i.i_crit_edge, label %if.then17.i.i

if.end13.i.i.if.end18.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i.i

if.then17.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %ss_info to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i.i = load i8, ptr %ss_info, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, 64
  store i8 %bf.set.i.i, ptr %ss_info, align 4
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then17.i.i, %if.end13.i.i.if.end18.i.i_crit_edge
  %30 = ptrtoint ptr %ucSpreadSpectrumMode.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ucSpreadSpectrumMode.i.i, align 1
  %32 = and i8 %31, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool23.not.i.i = icmp eq i8 %32, 0
  br i1 %tobool23.not.i.i, label %if.end18.i.i.if.end29.i.i_crit_edge, label %if.then24.i.i

if.end18.i.i.if.end29.i.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i.i

if.then24.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %ss_info to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load26.i.i = load i8, ptr %ss_info, align 4
  %bf.set28.i.i = or i8 %bf.load26.i.i, -128
  store i8 %bf.set28.i.i, ptr %ss_info, align 4
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then24.i.i, %if.end18.i.i.if.end29.i.i_crit_edge
  %34 = ptrtoint ptr %ss_info to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load31.i.i = load i8, ptr %ss_info, align 4
  %bf.clear32.i.i = and i8 %bf.load31.i.i, -33
  store i8 %bf.clear32.i.i, ptr %ss_info, align 4
  %35 = ptrtoint ptr %arrayidx6.le.i.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %arrayidx6.le.i.i, align 1
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #6
  %mul.i.i = mul i32 %37, 10
  %38 = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %mul.i.i, ptr %38, align 4
  %usSpreadSpectrumPercentage.i.i = getelementptr %struct._ATOM_ASIC_SS_ASSIGNMENT_V2, ptr %asSpreadSpectrum.i.i, i32 %i.069.i.i, i32 1
  %40 = ptrtoint ptr %usSpreadSpectrumPercentage.i.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %usSpreadSpectrumPercentage.i.i, align 1
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #6
  %conv36.i.i = zext i16 %42 to i32
  %spread_spectrum_percentage.i.i = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 1
  %43 = ptrtoint ptr %spread_spectrum_percentage.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv36.i.i, ptr %spread_spectrum_percentage.i.i, align 4
  %usSpreadRateIn10Hz.i.i = getelementptr %struct._ATOM_ASIC_SS_ASSIGNMENT_V2, ptr %asSpreadSpectrum.i.i, i32 %i.069.i.i, i32 2
  %44 = ptrtoint ptr %usSpreadRateIn10Hz.i.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %usSpreadRateIn10Hz.i.i, align 1
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #6
  %conv38.i.i = zext i16 %46 to i32
  %mul39.i.i = mul nuw nsw i32 %conv38.i.i, 10
  %spread_spectrum_range.i.i = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 3
  %47 = ptrtoint ptr %spread_spectrum_range.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul39.i.i, ptr %spread_spectrum_range.i.i, align 4
  br label %cleanup

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.069.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb17:                                          ; preds = %get_atom_data_table_revision.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cond = icmp eq i8 %11, 1
  br i1 %cond, label %sw.bb19, label %sw.bb17.cleanup_crit_edge

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb19:                                          ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call fastcc i32 @get_ss_info_v3_1(ptr noundef %dcb, i32 noundef %clk_id_ss.0.i, i32 noundef %index, ptr noundef nonnull %ss_info)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb19, %sw.bb17.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %if.end29.i.i, %if.end.i.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.then2.i, %sw.bb.cleanup_crit_edge, %get_atom_data_table_revision.exit.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %sw.bb19 ], [ %call5, %if.then4 ], [ 1, %entry.cleanup_crit_edge ], [ 3, %get_atom_data_table_revision.exit.cleanup_crit_edge ], [ 3, %sw.bb17.cleanup_crit_edge ], [ 3, %sw.bb.cleanup_crit_edge ], [ %call.i, %if.then2.i ], [ 3, %if.else.i.cleanup_crit_edge ], [ 0, %if.end29.i.i ], [ 3, %if.end.i.i.cleanup_crit_edge ], [ 3, %if.end7.cleanup_crit_edge ], [ 4, %for.inc.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_get_ss_entry_number(ptr noundef %dcb, i32 noundef %signal) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %signal, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 5
  br i1 %0, label %switch.lookup, label %entry.signal_to_ss_id.exit_crit_edge

entry.signal_to_ss_id.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %signal_to_ss_id.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.bios_parser_get_ss_entry_number, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %signal_to_ss_id.exit

signal_to_ss_id.exit:                             ; preds = %switch.lookup, %entry.signal_to_ss_id.exit_crit_edge
  %clk_id_ss.0.i = phi i32 [ 0, %entry.signal_to_ss_id.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %master_data_tbl = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 3
  %2 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master_data_tbl, align 4
  %ASIC_InternalSS_Info = getelementptr inbounds %struct._ATOM_MASTER_DATA_TABLE, ptr %3, i32 0, i32 1, i32 26
  %4 = ptrtoint ptr %ASIC_InternalSS_Info to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %ASIC_InternalSS_Info, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %signal_to_ss_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call fastcc i32 @get_ss_entry_number_from_ss_info_tbl(ptr noundef %dcb, i32 noundef %clk_id_ss.0.i)
  br label %cleanup

if.end:                                           ; preds = %signal_to_ss_id.exit
  %conv = zext i16 %5 to i32
  %call5 = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv, i32 noundef 4) #6
  %tobool1.not.i = icmp eq ptr %call5, null
  br i1 %tobool1.not.i, label %if.end.cleanup_crit_edge, label %get_atom_data_table_revision.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

get_atom_data_table_revision.exit:                ; preds = %if.end
  %ucTableFormatRevision.i = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call5, i32 0, i32 1
  %6 = ptrtoint ptr %ucTableFormatRevision.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ucTableFormatRevision.i, align 1
  %8 = and i8 %7, 63
  %and.i = zext i8 %8 to i32
  %ucTableContentRevision.i = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call5, i32 0, i32 2
  %9 = ptrtoint ptr %ucTableContentRevision.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ucTableContentRevision.i, align 1
  %11 = and i8 %10, 63
  %12 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %and.i, label %get_atom_data_table_revision.exit.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb8
  ]

get_atom_data_table_revision.exit.cleanup_crit_edge: ; preds = %get_atom_data_table_revision.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %get_atom_data_table_revision.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cond19 = icmp eq i8 %11, 1
  br i1 %cond19, label %sw.bb6, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb6:                                           ; preds = %sw.bb
  %13 = and i32 %clk_id_ss.0.i, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %switch.i = icmp eq i32 %13, 6
  br i1 %switch.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call fastcc i32 @get_ss_entry_number_from_ss_info_tbl(ptr noundef %dcb, i32 noundef %clk_id_ss.0.i) #6
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb6
  %14 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master_data_tbl, align 4
  %ASIC_InternalSS_Info.i.i = getelementptr inbounds %struct._ATOM_MASTER_DATA_TABLE, ptr %15, i32 0, i32 1, i32 26
  %16 = ptrtoint ptr %ASIC_InternalSS_Info.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %ASIC_InternalSS_Info.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i.i = icmp eq i16 %17, 0
  br i1 %tobool.not.i.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end.i
  %conv.i.i = zext i16 %17 to i32
  %call.i.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv.i.i, i32 noundef 16) #6
  %18 = ptrtoint ptr %call.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %call.i.i, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #6
  %conv4.i.i = zext i16 %20 to i32
  %sub.i.i = add nsw i32 %conv4.i.i, -4
  %asSpreadSpectrum.i.i = getelementptr inbounds %struct._ATOM_ASIC_INTERNAL_SS_INFO_V2, ptr %call.i.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i.i)
  %21 = icmp ult i32 %sub.i.i, 12
  br i1 %21, label %if.end.i.i.cleanup_crit_edge, label %for.body.lr.ph.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %div.i.i = udiv i32 %sub.i.i, 12
  %22 = trunc i32 %clk_id_ss.0.i to i8
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %div.i.i, i32 1) #6
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.023.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.cleanup_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.023.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %ucClockIndication.i.i = getelementptr %struct._ATOM_ASIC_SS_ASSIGNMENT_V2, ptr %asSpreadSpectrum.i.i, i32 %i.023.i.i, i32 3
  %23 = ptrtoint ptr %ucClockIndication.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ucClockIndication.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %22)
  %cmp10.i.i = icmp eq i8 %24, %22
  br i1 %cmp10.i.i, label %for.body.i.i.cleanup_crit_edge, label %for.cond.i.i

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb8:                                           ; preds = %get_atom_data_table_revision.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cond = icmp eq i8 %11, 1
  br i1 %cond, label %sw.bb10, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb10:                                          ; preds = %sw.bb8
  %25 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %master_data_tbl, align 4
  %ASIC_InternalSS_Info.i = getelementptr inbounds %struct._ATOM_MASTER_DATA_TABLE, ptr %26, i32 0, i32 1, i32 26
  %27 = ptrtoint ptr %ASIC_InternalSS_Info.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %28 = load i16, ptr %ASIC_InternalSS_Info.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool.not.i = icmp eq i16 %28, 0
  br i1 %tobool.not.i, label %sw.bb10.cleanup_crit_edge, label %if.end.i28

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i28:                                       ; preds = %sw.bb10
  %conv.i = zext i16 %28 to i32
  %call.i27 = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv.i, i32 noundef 16) #6
  %29 = ptrtoint ptr %call.i27 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %call.i27, align 1
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #6
  %conv4.i = zext i16 %31 to i32
  %sub.i = add nsw i32 %conv4.i, -4
  %asSpreadSpectrum.i = getelementptr inbounds %struct._ATOM_ASIC_INTERNAL_SS_INFO_V3, ptr %call.i27, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i)
  %32 = icmp ult i32 %sub.i, 12
  br i1 %32, label %if.end.i28.cleanup_crit_edge, label %for.body.lr.ph.i

if.end.i28.cleanup_crit_edge:                     ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end.i28
  %div.i = udiv i32 %sub.i, 12
  %33 = trunc i32 %clk_id_ss.0.i to i8
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div.i, i32 1) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc14.i, %for.body.i.for.body.i_crit_edge ]
  %number.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %spec.select.i, %for.body.i.for.body.i_crit_edge ]
  %ucClockIndication.i = getelementptr %struct._ATOM_ASIC_SS_ASSIGNMENT_V3, ptr %asSpreadSpectrum.i, i32 %i.028.i, i32 3
  %34 = ptrtoint ptr %ucClockIndication.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ucClockIndication.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %33)
  %cmp10.i = icmp eq i8 %35, %33
  %inc.i = zext i1 %cmp10.i to i32
  %spec.select.i = add i32 %number.027.i, %inc.i
  %inc14.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc14.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.end.i28.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %for.body.i.i.cleanup_crit_edge, %for.cond.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i, %sw.bb.cleanup_crit_edge, %get_atom_data_table_revision.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %get_atom_data_table_revision.exit.cleanup_crit_edge ], [ 0, %sw.bb8.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ %call.i, %if.then.i ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end.i.i.cleanup_crit_edge ], [ 0, %sw.bb10.cleanup_crit_edge ], [ 0, %if.end.i28.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %for.body.i.i.cleanup_crit_edge ], [ 0, %for.cond.i.i.cleanup_crit_edge ], [ %spec.select.i, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_get_embedded_panel_info(ptr noundef %dcb, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %master_data_tbl = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 3
  %0 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_data_tbl, align 4
  %LCD_Info = getelementptr inbounds %struct._ATOM_MASTER_DATA_TABLE, ptr %1, i32 0, i32 1, i32 6
  %2 = ptrtoint ptr %LCD_Info to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %LCD_Info, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %3 to i32
  %call = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv, i32 noundef 4) #6
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %ucTableFormatRevision = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %ucTableFormatRevision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ucTableFormatRevision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cond = icmp eq i8 %5, 1
  br i1 %cond, label %sw.bb, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end6
  %ucTableContentRevision = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %ucTableContentRevision to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ucTableContentRevision, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %7, label %sw.bb.cleanup_crit_edge [
    i8 0, label %sw.bb.sw.bb9_crit_edge
    i8 1, label %sw.bb.sw.bb9_crit_edge112
    i8 2, label %sw.bb.sw.bb9_crit_edge113
    i8 3, label %sw.bb11
  ]

sw.bb.sw.bb9_crit_edge113:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

sw.bb.sw.bb9_crit_edge112:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

sw.bb.sw.bb9_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb9:                                           ; preds = %sw.bb.sw.bb9_crit_edge, %sw.bb.sw.bb9_crit_edge112, %sw.bb.sw.bb9_crit_edge113
  %tobool.not.i = icmp eq ptr %info, null
  br i1 %tobool.not.i, label %sw.bb9.cleanup_crit_edge, label %if.end.i

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb9
  %9 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master_data_tbl, align 4
  %LCD_Info.i = getelementptr inbounds %struct._ATOM_MASTER_DATA_TABLE, ptr %10, i32 0, i32 1, i32 6
  %11 = ptrtoint ptr %LCD_Info.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %LCD_Info.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool1.not.i = icmp eq i16 %12, 0
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %conv.i = zext i16 %12 to i32
  %call.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv.i, i32 noundef 52) #6
  %tobool7.not.i = icmp eq ptr %call.i, null
  br i1 %tobool7.not.i, label %if.end3.i.cleanup_crit_edge, label %if.end9.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9.i:                                        ; preds = %if.end3.i
  %ucTableFormatRevision.i = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %ucTableFormatRevision.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ucTableFormatRevision.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp.not.i = icmp eq i8 %14, 1
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end9.i.cleanup_crit_edge

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end9.i
  %ucTableContentRevision.i = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %ucTableContentRevision.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ucTableContentRevision.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp14.i = icmp ult i8 %16, 2
  br i1 %cmp14.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end17.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17.i:                                       ; preds = %lor.lhs.false.i
  %17 = call ptr @memset(ptr %info, i32 0, i32 68)
  %sLCDTiming.i = getelementptr inbounds %struct._ATOM_LVDS_INFO_V12, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %sLCDTiming.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %sLCDTiming.i, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #6
  %conv18.i = zext i16 %20 to i32
  %mul.i = mul nuw nsw i32 %conv18.i, 10
  %pixel_clk.i = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 1
  %21 = ptrtoint ptr %pixel_clk.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul.i, ptr %pixel_clk.i, align 4
  %usHActive.i = getelementptr inbounds %struct._ATOM_LVDS_INFO_V12, ptr %call.i, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %usHActive.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %usHActive.i, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #6
  %conv20.i = zext i16 %24 to i32
  %horizontal_addressable.i = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 2
  %25 = ptrtoint ptr %horizontal_addressable.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv20.i, ptr %horizontal_addressable.i, align 4
  %usHBlanking_Time.i = getelementptr inbounds %struct._ATOM_LVDS_INFO_V12, ptr %call.i, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %usHBlanking_Time.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %usHBlanking_Time.i, align 1
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #6
  %conv23.i = zext i16 %28 to i32
  %horizontal_blanking_time.i = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 3
  %29 = ptrtoint ptr %horizontal_blanking_time.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv23.i, ptr %horizontal_blanking_time.i, align 4
  %usVActive.i = getelementptr inbounds %struct._ATOM_LVDS_INFO_V12, ptr %call.i, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %usVActive.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %usVActive.i, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #6
  %conv26.i = zext i16 %32 to i32
  %vertical_addressable.i = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 4
  %33 = ptrtoint ptr %vertical_addressable.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv26.i, ptr %vertical_addressable.i, align 4
  %usVBlanking_Time.i = getelementptr inbounds %struct._ATOM_LVDS_INFO_V12, ptr %call.i, i32 0, i32 1, i32 4
  %34 = ptrtoint ptr %usVBlanking_Time.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %usVBlanking_Time.i, align 1
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #6
  %conv29.i = zext i16 %36 to i32
  %vertical_blanking_time.i = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 5
  %37 = ptrtoint ptr %vertical_blanking_time.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv29.i, ptr %vertical_blanking_time.i, align 4
  %usHSyncOffset.i = getelementptr inbounds %struct._ATOM_LVDS_INFO_V12, ptr %call.i, i32 0, i32 1, i32 5
  %38 = ptrtoint ptr %usHSyncOffset.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %usHSyncOffset.i, align 1
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #6
  %conv32.i = zext i16 %40 to i32
  %horizontal_sync_offset.i = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 6
  %41 = ptrtoint ptr %horizontal_sync_offset.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv32.i, ptr %horizontal_sync_offset.i, align 4
  %usHSyncWidth.i = getelementptr inbounds %struct._ATOM_LVDS_INFO_V12, ptr %call.i, i32 0, i32 1, i32 6
  %42 = ptrtoint ptr %usHSyncWidth.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %usHSyncWidth.i, align 1
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #6
  %conv35.i = zext i16 %44 to i32
  %horizontal_sync_width.i = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 7
  %45 = ptrtoint ptr %horizontal_sync_width.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv35.i, ptr %horizontal_sync_width.i, align 4
  %usVSyncOffset.i = getelementptr inbounds %struct._ATOM_LVDS_INFO_V12, ptr %call.i, i32 0, i32 1, i32 7
  %46 = ptrtoint ptr %usVSyncOffset.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %usVSyncOffset.i, align 1
  %48 = tail call i16 @llvm.bswap.i16(i16 %47) #6
  %conv38.i = zext i16 %48 to i32
  %vertical_sync_offset.i = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 8
  %49 = ptrtoint ptr %vertical_sync_offset.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv38.i, ptr %vertical_sync_offset.i, align 4
  %usVSyncWidth.i = getelementptr inbounds %struct._ATOM_LVDS_INFO_V12, ptr %call.i, i32 0, i32 1, i32 8
  %50 = ptrtoint ptr %usVSyncWidth.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %usVSyncWidth.i, align 1
  %52 = tail call i16 @llvm.bswap.i16(i16 %51) #6
  %conv41.i = zext i16 %52 to i32
  %vertical_sync_width.i = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 9
  %53 = ptrtoint ptr %vertical_sync_width.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv41.i, ptr %vertical_sync_width.i, align 4
  %ucHBorder.i = getelementptr inbounds %struct._ATOM_LVDS_INFO_V12, ptr %call.i, i32 0, i32 1, i32 11
  %54 = ptrtoint ptr %ucHBorder.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %ucHBorder.i, align 1
  %conv44.i = zext i8 %55 to i32
  %horizontal_border.i = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 10
  %56 = ptrtoint ptr %horizontal_border.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv44.i, ptr %horizontal_border.i, align 4
  %ucVBorder.i = getelementptr inbounds %struct._ATOM_LVDS_INFO_V12, ptr %call.i, i32 0, i32 1, i32 12
  %57 = ptrtoint ptr %ucVBorder.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ucVBorder.i, align 1
  %conv47.i = zext i8 %58 to i32
  %vertical_border.i = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 11
  %59 = ptrtoint ptr %vertical_border.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv47.i, ptr %vertical_border.i, align 4
  %susModeMiscInfo.i = getelementptr inbounds %struct._ATOM_LVDS_INFO_V12, ptr %call.i, i32 0, i32 1, i32 13
  %60 = ptrtoint ptr %susModeMiscInfo.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %bf.load.i = load i16, ptr %susModeMiscInfo.i, align 1
  %bf.shl.i = shl i16 %bf.load.i, 15
  %61 = ptrtoint ptr %info to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %bf.shl.i, ptr %info, align 4
  %bf.load56.i = load i16, ptr %susModeMiscInfo.i, align 1
  %62 = shl i16 %bf.load56.i, 13
  %bf.value62.i = and i16 %62, 16384
  %63 = or i16 %bf.value62.i, %bf.shl.i
  %bf.set65.i = xor i16 %63, 16384
  store i16 %bf.set65.i, ptr %info, align 4
  %bf.load69.i = load i16, ptr %susModeMiscInfo.i, align 1
  %64 = shl i16 %bf.load69.i, 11
  %bf.value77.i = and i16 %64, 8192
  %65 = or i16 %bf.set65.i, %bf.value77.i
  %bf.set80.i = xor i16 %65, 8192
  store i16 %bf.set80.i, ptr %info, align 4
  %bf.load84.i = load i16, ptr %susModeMiscInfo.i, align 1
  %66 = shl i16 %bf.load84.i, 9
  %bf.shl92.i = and i16 %66, 4096
  %bf.set94.i = or i16 %bf.set80.i, %bf.shl92.i
  store i16 %bf.set94.i, ptr %info, align 4
  %bf.load98.i = load i16, ptr %susModeMiscInfo.i, align 1
  %67 = shl i16 %bf.load98.i, 7
  %bf.shl106.i = and i16 %67, 2048
  %bf.clear107.i = and i16 %bf.set94.i, -2049
  %bf.set108.i = or i16 %bf.clear107.i, %bf.shl106.i
  store i16 %bf.set108.i, ptr %info, align 4
  %bf.load112.i = load i16, ptr %susModeMiscInfo.i, align 1
  %68 = shl i16 %bf.load112.i, 5
  %bf.shl120.i = and i16 %68, 1024
  %bf.clear121.i = and i16 %bf.set108.i, -1025
  %bf.set122.i = or i16 %bf.clear121.i, %bf.shl120.i
  store i16 %bf.set122.i, ptr %info, align 4
  %bf.load126.i = load i16, ptr %susModeMiscInfo.i, align 1
  %69 = shl i16 %bf.load126.i, 3
  %bf.shl134.i = and i16 %69, 512
  %bf.clear135.i = and i16 %bf.set122.i, -513
  %bf.set136.i = or i16 %bf.clear135.i, %bf.shl134.i
  store i16 %bf.set136.i, ptr %info, align 4
  %bf.load140.i = load i16, ptr %susModeMiscInfo.i, align 1
  %70 = shl i16 %bf.load140.i, 1
  %bf.shl148.i = and i16 %70, 256
  %bf.clear149.i = and i16 %bf.set136.i, -257
  %bf.set150.i = or i16 %bf.clear149.i, %bf.shl148.i
  store i16 %bf.set150.i, ptr %info, align 4
  %bf.load154.i = load i16, ptr %susModeMiscInfo.i, align 1
  %71 = lshr i16 %bf.load154.i, 1
  %bf.shl162.i = and i16 %71, 128
  %bf.clear163.i = and i16 %bf.set150.i, -129
  %bf.set164.i = or i16 %bf.clear163.i, %bf.shl162.i
  store i16 %bf.set164.i, ptr %info, align 4
  %ucSS_Id.i = getelementptr inbounds %struct._ATOM_LVDS_INFO_V12, ptr %call.i, i32 0, i32 10
  %72 = ptrtoint ptr %ucSS_Id.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %ucSS_Id.i, align 1
  %conv166.i = zext i8 %73 to i32
  %ss_id.i = getelementptr inbounds %struct.embedded_panel_info, ptr %info, i32 0, i32 1
  %74 = ptrtoint ptr %ss_id.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv166.i, ptr %ss_id.i, align 4
  %usSupportedRefreshRate.i = getelementptr inbounds %struct._ATOM_LVDS_INFO_V12, ptr %call.i, i32 0, i32 3
  %75 = ptrtoint ptr %usSupportedRefreshRate.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %usSupportedRefreshRate.i, align 1
  %77 = lshr i16 %76, 8
  %conv167.i = zext i16 %77 to i32
  %and.i = and i32 %conv167.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool169.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool169.not.i, label %if.else.i, label %if.end17.i.if.end213.sink.split.i_crit_edge

if.end17.i.if.end213.sink.split.i_crit_edge:      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end213.sink.split.i

if.else.i:                                        ; preds = %if.end17.i
  %and175.i = and i32 %conv167.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175.i)
  %tobool176.not.i = icmp eq i32 %and175.i, 0
  br i1 %tobool176.not.i, label %if.else182.i, label %if.else.i.if.end213.sink.split.i_crit_edge

if.else.i.if.end213.sink.split.i_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end213.sink.split.i

if.else182.i:                                     ; preds = %if.else.i
  %and184.i = and i32 %conv167.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184.i)
  %tobool185.not.i = icmp eq i32 %and184.i, 0
  br i1 %tobool185.not.i, label %if.else191.i, label %if.else182.i.if.end213.sink.split.i_crit_edge

if.else182.i.if.end213.sink.split.i_crit_edge:    ; preds = %if.else182.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end213.sink.split.i

if.else191.i:                                     ; preds = %if.else182.i
  %and193.i = and i32 %conv167.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193.i)
  %tobool194.not.i = icmp eq i32 %and193.i, 0
  br i1 %tobool194.not.i, label %if.else200.i, label %if.else191.i.if.end213.sink.split.i_crit_edge

if.else191.i.if.end213.sink.split.i_crit_edge:    ; preds = %if.else191.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end213.sink.split.i

if.else200.i:                                     ; preds = %if.else191.i
  %and202.i = and i32 %conv167.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and202.i)
  %tobool203.not.i = icmp eq i32 %and202.i, 0
  br i1 %tobool203.not.i, label %if.else200.i.if.end213.i_crit_edge, label %if.else200.i.if.end213.sink.split.i_crit_edge

if.else200.i.if.end213.sink.split.i_crit_edge:    ; preds = %if.else200.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end213.sink.split.i

if.else200.i.if.end213.i_crit_edge:               ; preds = %if.else200.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end213.i

if.end213.sink.split.i:                           ; preds = %if.else200.i.if.end213.sink.split.i_crit_edge, %if.else191.i.if.end213.sink.split.i_crit_edge, %if.else182.i.if.end213.sink.split.i_crit_edge, %if.else.i.if.end213.sink.split.i_crit_edge, %if.end17.i.if.end213.sink.split.i_crit_edge
  %.sink.i = phi i8 [ -128, %if.end17.i.if.end213.sink.split.i_crit_edge ], [ 64, %if.else.i.if.end213.sink.split.i_crit_edge ], [ 32, %if.else182.i.if.end213.sink.split.i_crit_edge ], [ 16, %if.else191.i.if.end213.sink.split.i_crit_edge ], [ 8, %if.else200.i.if.end213.sink.split.i_crit_edge ]
  %supported_rr.i = getelementptr inbounds %struct.embedded_panel_info, ptr %info, i32 0, i32 2
  %78 = ptrtoint ptr %supported_rr.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load179.i = load i8, ptr %supported_rr.i, align 4
  %bf.set181.i = or i8 %bf.load179.i, %.sink.i
  store i8 %bf.set181.i, ptr %supported_rr.i, align 4
  br label %if.end213.i

if.end213.i:                                      ; preds = %if.end213.sink.split.i, %if.else200.i.if.end213.i_crit_edge
  %ucLCDPanel_SpecialHandlingCap.i = getelementptr inbounds %struct._ATOM_LVDS_INFO_V12, ptr %call.i, i32 0, i32 13
  %79 = ptrtoint ptr %ucLCDPanel_SpecialHandlingCap.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %ucLCDPanel_SpecialHandlingCap.i, align 1
  %81 = and i8 %80, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool216.not.i = icmp eq i8 %81, 0
  br i1 %tobool216.not.i, label %if.end213.i.if.end218.i_crit_edge, label %if.then217.i

if.end213.i.if.end218.i_crit_edge:                ; preds = %if.end213.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end218.i

if.then217.i:                                     ; preds = %if.end213.i
  call void @__sanitizer_cov_trace_pc() #8
  %drr_enabled.i = getelementptr inbounds %struct.embedded_panel_info, ptr %info, i32 0, i32 3
  %82 = ptrtoint ptr %drr_enabled.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %drr_enabled.i, align 4
  br label %if.end218.i

if.end218.i:                                      ; preds = %if.then217.i, %if.end213.i.if.end218.i_crit_edge
  %ucLVDS_Misc.i = getelementptr inbounds %struct._ATOM_LVDS_INFO_V12, ptr %call.i, i32 0, i32 7
  %83 = ptrtoint ptr %ucLVDS_Misc.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %ucLVDS_Misc.i, align 1
  %85 = and i8 %84, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool221.not.i = icmp eq i8 %85, 0
  br i1 %tobool221.not.i, label %if.end218.i.if.end228.i_crit_edge, label %if.then222.i

if.end218.i.if.end228.i_crit_edge:                ; preds = %if.end218.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end228.i

if.then222.i:                                     ; preds = %if.end218.i
  call void @__sanitizer_cov_trace_pc() #8
  %bf.set227.i = or i16 %bf.set150.i, 128
  %86 = ptrtoint ptr %info to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %bf.set227.i, ptr %info, align 4
  br label %if.end228.i

if.end228.i:                                      ; preds = %if.then222.i, %if.end218.i.if.end228.i_crit_edge
  %87 = ptrtoint ptr %ucLVDS_Misc.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %ucLVDS_Misc.i, align 1
  %89 = and i8 %88, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool232.not.i = icmp eq i8 %89, 0
  br i1 %tobool232.not.i, label %if.end228.i.if.end239.i_crit_edge, label %if.then233.i

if.end228.i.if.end239.i_crit_edge:                ; preds = %if.end228.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end239.i

if.then233.i:                                     ; preds = %if.end228.i
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %info to i32
  call void @__asan_load2_noabort(i32 %90)
  %bf.load236.i = load i16, ptr %info, align 4
  %bf.set238.i = or i16 %bf.load236.i, 64
  store i16 %bf.set238.i, ptr %info, align 4
  br label %if.end239.i

if.end239.i:                                      ; preds = %if.then233.i, %if.end228.i.if.end239.i_crit_edge
  %91 = ptrtoint ptr %ucLVDS_Misc.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %ucLVDS_Misc.i, align 1
  %93 = ptrtoint ptr %info to i32
  call void @__asan_load2_noabort(i32 %93)
  %bf.load245.i = load i16, ptr %info, align 4
  %94 = shl i8 %92, 2
  %95 = and i8 %94, 48
  %bf.shl247.i = zext i8 %95 to i16
  %bf.clear248.i = and i16 %bf.load245.i, -49
  %bf.set249.i = or i16 %bf.clear248.i, %bf.shl247.i
  store i16 %bf.set249.i, ptr %info, align 4
  %96 = load i8, ptr %ucLVDS_Misc.i, align 1
  %97 = and i8 %96, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool254.not.i = icmp eq i8 %97, 0
  br i1 %tobool254.not.i, label %if.end239.i.if.end261.i_crit_edge, label %if.then255.i

if.end239.i.if.end261.i_crit_edge:                ; preds = %if.end239.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end261.i

if.then255.i:                                     ; preds = %if.end239.i
  call void @__sanitizer_cov_trace_pc() #8
  %bf.set260.i = or i16 %bf.set249.i, 8
  %98 = ptrtoint ptr %info to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %bf.set260.i, ptr %info, align 4
  br label %if.end261.i

if.end261.i:                                      ; preds = %if.then255.i, %if.end239.i.if.end261.i_crit_edge
  %99 = ptrtoint ptr %ucLVDS_Misc.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %ucLVDS_Misc.i, align 1
  %101 = and i8 %100, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool265.not.i = icmp eq i8 %101, 0
  br i1 %tobool265.not.i, label %if.end261.i.if.end272.i_crit_edge, label %if.then266.i

if.end261.i.if.end272.i_crit_edge:                ; preds = %if.end261.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end272.i

if.then266.i:                                     ; preds = %if.end261.i
  call void @__sanitizer_cov_trace_pc() #8
  %102 = ptrtoint ptr %info to i32
  call void @__asan_load2_noabort(i32 %102)
  %bf.load269.i = load i16, ptr %info, align 4
  %bf.set271.i = or i16 %bf.load269.i, 4
  store i16 %bf.set271.i, ptr %info, align 4
  %103 = ptrtoint ptr %ucLVDS_Misc.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %.pr.i = load i8, ptr %ucLVDS_Misc.i, align 1
  br label %if.end272.i

if.end272.i:                                      ; preds = %if.then266.i, %if.end261.i.if.end272.i_crit_edge
  %104 = phi i8 [ %.pr.i, %if.then266.i ], [ %100, %if.end261.i.if.end272.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %104)
  %tobool276.not.i = icmp sgt i8 %104, -1
  br i1 %tobool276.not.i, label %if.end272.i.cleanup_crit_edge, label %if.then277.i

if.end272.i.cleanup_crit_edge:                    ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then277.i:                                     ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #8
  %105 = ptrtoint ptr %info to i32
  call void @__asan_load2_noabort(i32 %105)
  %bf.load280.i = load i16, ptr %info, align 4
  %bf.set282.i = or i16 %bf.load280.i, 2
  br label %cleanup.sink.split

sw.bb11:                                          ; preds = %sw.bb
  %tobool.not.i23 = icmp eq ptr %info, null
  br i1 %tobool.not.i23, label %sw.bb11.cleanup_crit_edge, label %if.end.i27

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i27:                                       ; preds = %sw.bb11
  %106 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %master_data_tbl, align 4
  %LCD_Info.i25 = getelementptr inbounds %struct._ATOM_MASTER_DATA_TABLE, ptr %107, i32 0, i32 1, i32 6
  %108 = ptrtoint ptr %LCD_Info.i25 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 2)
  %109 = load i16, ptr %LCD_Info.i25, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %tobool1.not.i26 = icmp eq i16 %109, 0
  br i1 %tobool1.not.i26, label %if.end.i27.cleanup_crit_edge, label %if.end3.i31

if.end.i27.cleanup_crit_edge:                     ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3.i31:                                      ; preds = %if.end.i27
  %conv.i28 = zext i16 %109 to i32
  %call.i29 = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv.i28, i32 noundef 76) #6
  %tobool7.not.i30 = icmp eq ptr %call.i29, null
  br i1 %tobool7.not.i30, label %if.end3.i31.cleanup_crit_edge, label %if.end9.i33

if.end3.i31.cleanup_crit_edge:                    ; preds = %if.end3.i31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9.i33:                                      ; preds = %if.end3.i31
  %ucTableFormatRevision.i32 = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call.i29, i32 0, i32 1
  %110 = ptrtoint ptr %ucTableFormatRevision.i32 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %ucTableFormatRevision.i32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %111)
  %cmp.i = icmp eq i8 %111, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end9.i33.cleanup_crit_edge

if.end9.i33.cleanup_crit_edge:                    ; preds = %if.end9.i33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end9.i33
  %ucTableContentRevision.i34 = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call.i29, i32 0, i32 2
  %112 = ptrtoint ptr %ucTableContentRevision.i34 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %ucTableContentRevision.i34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %113)
  %cmp14.i35 = icmp ugt i8 %113, 2
  br i1 %cmp14.i35, label %if.end17.i106, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17.i106:                                    ; preds = %land.lhs.true.i
  %114 = call ptr @memset(ptr %info, i32 0, i32 68)
  %sLCDTiming.i36 = getelementptr inbounds %struct._ATOM_LCD_INFO_V13, ptr %call.i29, i32 0, i32 1
  %115 = ptrtoint ptr %sLCDTiming.i36 to i32
  call void @__asan_loadN_noabort(i32 %115, i32 2)
  %116 = load i16, ptr %sLCDTiming.i36, align 1
  %117 = tail call i16 @llvm.bswap.i16(i16 %116) #6
  %conv18.i37 = zext i16 %117 to i32
  %mul.i38 = mul nuw nsw i32 %conv18.i37, 10
  %pixel_clk.i39 = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 1
  %118 = ptrtoint ptr %pixel_clk.i39 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %mul.i38, ptr %pixel_clk.i39, align 4
  %usHActive.i40 = getelementptr inbounds %struct._ATOM_LCD_INFO_V13, ptr %call.i29, i32 0, i32 1, i32 1
  %119 = ptrtoint ptr %usHActive.i40 to i32
  call void @__asan_loadN_noabort(i32 %119, i32 2)
  %120 = load i16, ptr %usHActive.i40, align 1
  %121 = tail call i16 @llvm.bswap.i16(i16 %120) #6
  %conv20.i41 = zext i16 %121 to i32
  %horizontal_addressable.i42 = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 2
  %122 = ptrtoint ptr %horizontal_addressable.i42 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %conv20.i41, ptr %horizontal_addressable.i42, align 4
  %usHBlanking_Time.i43 = getelementptr inbounds %struct._ATOM_LCD_INFO_V13, ptr %call.i29, i32 0, i32 1, i32 2
  %123 = ptrtoint ptr %usHBlanking_Time.i43 to i32
  call void @__asan_loadN_noabort(i32 %123, i32 2)
  %124 = load i16, ptr %usHBlanking_Time.i43, align 1
  %125 = tail call i16 @llvm.bswap.i16(i16 %124) #6
  %conv23.i44 = zext i16 %125 to i32
  %horizontal_blanking_time.i45 = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 3
  %126 = ptrtoint ptr %horizontal_blanking_time.i45 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %conv23.i44, ptr %horizontal_blanking_time.i45, align 4
  %usVActive.i46 = getelementptr inbounds %struct._ATOM_LCD_INFO_V13, ptr %call.i29, i32 0, i32 1, i32 3
  %127 = ptrtoint ptr %usVActive.i46 to i32
  call void @__asan_loadN_noabort(i32 %127, i32 2)
  %128 = load i16, ptr %usVActive.i46, align 1
  %129 = tail call i16 @llvm.bswap.i16(i16 %128) #6
  %conv26.i47 = zext i16 %129 to i32
  %vertical_addressable.i48 = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 4
  %130 = ptrtoint ptr %vertical_addressable.i48 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %conv26.i47, ptr %vertical_addressable.i48, align 4
  %usVBlanking_Time.i49 = getelementptr inbounds %struct._ATOM_LCD_INFO_V13, ptr %call.i29, i32 0, i32 1, i32 4
  %131 = ptrtoint ptr %usVBlanking_Time.i49 to i32
  call void @__asan_loadN_noabort(i32 %131, i32 2)
  %132 = load i16, ptr %usVBlanking_Time.i49, align 1
  %133 = tail call i16 @llvm.bswap.i16(i16 %132) #6
  %conv29.i50 = zext i16 %133 to i32
  %vertical_blanking_time.i51 = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 5
  %134 = ptrtoint ptr %vertical_blanking_time.i51 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %conv29.i50, ptr %vertical_blanking_time.i51, align 4
  %usHSyncOffset.i52 = getelementptr inbounds %struct._ATOM_LCD_INFO_V13, ptr %call.i29, i32 0, i32 1, i32 5
  %135 = ptrtoint ptr %usHSyncOffset.i52 to i32
  call void @__asan_loadN_noabort(i32 %135, i32 2)
  %136 = load i16, ptr %usHSyncOffset.i52, align 1
  %137 = tail call i16 @llvm.bswap.i16(i16 %136) #6
  %conv32.i53 = zext i16 %137 to i32
  %horizontal_sync_offset.i54 = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 6
  %138 = ptrtoint ptr %horizontal_sync_offset.i54 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %conv32.i53, ptr %horizontal_sync_offset.i54, align 4
  %usHSyncWidth.i55 = getelementptr inbounds %struct._ATOM_LCD_INFO_V13, ptr %call.i29, i32 0, i32 1, i32 6
  %139 = ptrtoint ptr %usHSyncWidth.i55 to i32
  call void @__asan_loadN_noabort(i32 %139, i32 2)
  %140 = load i16, ptr %usHSyncWidth.i55, align 1
  %141 = tail call i16 @llvm.bswap.i16(i16 %140) #6
  %conv35.i56 = zext i16 %141 to i32
  %horizontal_sync_width.i57 = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 7
  %142 = ptrtoint ptr %horizontal_sync_width.i57 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %conv35.i56, ptr %horizontal_sync_width.i57, align 4
  %usVSyncOffset.i58 = getelementptr inbounds %struct._ATOM_LCD_INFO_V13, ptr %call.i29, i32 0, i32 1, i32 7
  %143 = ptrtoint ptr %usVSyncOffset.i58 to i32
  call void @__asan_loadN_noabort(i32 %143, i32 2)
  %144 = load i16, ptr %usVSyncOffset.i58, align 1
  %145 = tail call i16 @llvm.bswap.i16(i16 %144) #6
  %conv38.i59 = zext i16 %145 to i32
  %vertical_sync_offset.i60 = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 8
  %146 = ptrtoint ptr %vertical_sync_offset.i60 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %conv38.i59, ptr %vertical_sync_offset.i60, align 4
  %usVSyncWidth.i61 = getelementptr inbounds %struct._ATOM_LCD_INFO_V13, ptr %call.i29, i32 0, i32 1, i32 8
  %147 = ptrtoint ptr %usVSyncWidth.i61 to i32
  call void @__asan_loadN_noabort(i32 %147, i32 2)
  %148 = load i16, ptr %usVSyncWidth.i61, align 1
  %149 = tail call i16 @llvm.bswap.i16(i16 %148) #6
  %conv41.i62 = zext i16 %149 to i32
  %vertical_sync_width.i63 = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 9
  %150 = ptrtoint ptr %vertical_sync_width.i63 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %conv41.i62, ptr %vertical_sync_width.i63, align 4
  %ucHBorder.i64 = getelementptr inbounds %struct._ATOM_LCD_INFO_V13, ptr %call.i29, i32 0, i32 1, i32 11
  %151 = ptrtoint ptr %ucHBorder.i64 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %ucHBorder.i64, align 1
  %conv44.i65 = zext i8 %152 to i32
  %horizontal_border.i66 = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 10
  %153 = ptrtoint ptr %horizontal_border.i66 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %conv44.i65, ptr %horizontal_border.i66, align 4
  %ucVBorder.i67 = getelementptr inbounds %struct._ATOM_LCD_INFO_V13, ptr %call.i29, i32 0, i32 1, i32 12
  %154 = ptrtoint ptr %ucVBorder.i67 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %ucVBorder.i67, align 1
  %conv47.i68 = zext i8 %155 to i32
  %vertical_border.i69 = getelementptr inbounds %struct.device_timing, ptr %info, i32 0, i32 11
  %156 = ptrtoint ptr %vertical_border.i69 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %conv47.i68, ptr %vertical_border.i69, align 4
  %susModeMiscInfo.i70 = getelementptr inbounds %struct._ATOM_LCD_INFO_V13, ptr %call.i29, i32 0, i32 1, i32 13
  %157 = ptrtoint ptr %susModeMiscInfo.i70 to i32
  call void @__asan_loadN_noabort(i32 %157, i32 2)
  %bf.load.i71 = load i16, ptr %susModeMiscInfo.i70, align 1
  %bf.shl.i72 = shl i16 %bf.load.i71, 15
  %158 = ptrtoint ptr %info to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %bf.shl.i72, ptr %info, align 4
  %bf.load56.i73 = load i16, ptr %susModeMiscInfo.i70, align 1
  %159 = shl i16 %bf.load56.i73, 13
  %bf.value62.i74 = and i16 %159, 16384
  %160 = or i16 %bf.value62.i74, %bf.shl.i72
  %bf.set65.i75 = xor i16 %160, 16384
  store i16 %bf.set65.i75, ptr %info, align 4
  %bf.load69.i76 = load i16, ptr %susModeMiscInfo.i70, align 1
  %161 = shl i16 %bf.load69.i76, 11
  %bf.value77.i77 = and i16 %161, 8192
  %162 = or i16 %bf.set65.i75, %bf.value77.i77
  %bf.set80.i78 = xor i16 %162, 8192
  store i16 %bf.set80.i78, ptr %info, align 4
  %bf.load84.i79 = load i16, ptr %susModeMiscInfo.i70, align 1
  %163 = shl i16 %bf.load84.i79, 9
  %bf.shl92.i80 = and i16 %163, 4096
  %bf.set94.i81 = or i16 %bf.set80.i78, %bf.shl92.i80
  store i16 %bf.set94.i81, ptr %info, align 4
  %bf.load98.i82 = load i16, ptr %susModeMiscInfo.i70, align 1
  %164 = shl i16 %bf.load98.i82, 7
  %bf.shl106.i83 = and i16 %164, 2048
  %bf.clear107.i84 = and i16 %bf.set94.i81, -2049
  %bf.set108.i85 = or i16 %bf.clear107.i84, %bf.shl106.i83
  store i16 %bf.set108.i85, ptr %info, align 4
  %bf.load112.i86 = load i16, ptr %susModeMiscInfo.i70, align 1
  %165 = shl i16 %bf.load112.i86, 5
  %bf.shl120.i87 = and i16 %165, 1024
  %bf.clear121.i88 = and i16 %bf.set108.i85, -1025
  %bf.set122.i89 = or i16 %bf.clear121.i88, %bf.shl120.i87
  store i16 %bf.set122.i89, ptr %info, align 4
  %bf.load126.i90 = load i16, ptr %susModeMiscInfo.i70, align 1
  %166 = shl i16 %bf.load126.i90, 3
  %bf.shl134.i91 = and i16 %166, 512
  %bf.clear135.i92 = and i16 %bf.set122.i89, -513
  %bf.set136.i93 = or i16 %bf.clear135.i92, %bf.shl134.i91
  store i16 %bf.set136.i93, ptr %info, align 4
  %bf.load140.i94 = load i16, ptr %susModeMiscInfo.i70, align 1
  %167 = shl i16 %bf.load140.i94, 1
  %bf.shl148.i95 = and i16 %167, 256
  %bf.clear149.i96 = and i16 %bf.set136.i93, -257
  %bf.set150.i97 = or i16 %bf.clear149.i96, %bf.shl148.i95
  store i16 %bf.set150.i97, ptr %info, align 4
  %bf.load154.i98 = load i16, ptr %susModeMiscInfo.i70, align 1
  %168 = lshr i16 %bf.load154.i98, 1
  %bf.shl162.i99 = and i16 %168, 128
  %bf.clear163.i100 = and i16 %bf.set150.i97, -129
  %bf.set164.i101 = or i16 %bf.clear163.i100, %bf.shl162.i99
  store i16 %bf.set164.i101, ptr %info, align 4
  %ucSS_Id.i102 = getelementptr inbounds %struct._ATOM_LCD_INFO_V13, ptr %call.i29, i32 0, i32 8
  %169 = ptrtoint ptr %ucSS_Id.i102 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %ucSS_Id.i102, align 1
  %conv166.i103 = zext i8 %170 to i32
  %ss_id.i104 = getelementptr inbounds %struct.embedded_panel_info, ptr %info, i32 0, i32 1
  %171 = ptrtoint ptr %ss_id.i104 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %conv166.i103, ptr %ss_id.i104, align 4
  %ucLCDPanel_SpecialHandlingCap.i105 = getelementptr inbounds %struct._ATOM_LCD_INFO_V13, ptr %call.i29, i32 0, i32 11
  %172 = ptrtoint ptr %ucLCDPanel_SpecialHandlingCap.i105 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %ucLCDPanel_SpecialHandlingCap.i105, align 1
  %174 = and i8 %173, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool168.not.i = icmp eq i8 %174, 0
  br i1 %tobool168.not.i, label %if.end17.i106.if.end170.i_crit_edge, label %if.then169.i

if.end17.i106.if.end170.i_crit_edge:              ; preds = %if.end17.i106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end170.i

if.then169.i:                                     ; preds = %if.end17.i106
  call void @__sanitizer_cov_trace_pc() #8
  %drr_enabled.i107 = getelementptr inbounds %struct.embedded_panel_info, ptr %info, i32 0, i32 3
  %175 = ptrtoint ptr %drr_enabled.i107 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 1, ptr %drr_enabled.i107, align 4
  br label %if.end170.i

if.end170.i:                                      ; preds = %if.then169.i, %if.end17.i106.if.end170.i_crit_edge
  %drr_enabled171.i = getelementptr inbounds %struct.embedded_panel_info, ptr %info, i32 0, i32 3
  %176 = ptrtoint ptr %drr_enabled171.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %drr_enabled171.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %177)
  %cmp172.i = icmp eq i32 %177, 1
  br i1 %cmp172.i, label %if.then174.i, label %if.end170.i.if.end277.i_crit_edge

if.end170.i.if.end277.i_crit_edge:                ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end277.i

if.then174.i:                                     ; preds = %if.end170.i
  %178 = getelementptr inbounds %struct._ATOM_LCD_INFO_V13, ptr %call.i29, i32 0, i32 3
  %ucMinRefreshRateForDRR.i = getelementptr inbounds %struct._ATOM_LCD_REFRESH_RATE_SUPPORT, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %ucMinRefreshRateForDRR.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %ucMinRefreshRateForDRR.i, align 1
  %conv175.i = zext i8 %180 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %cmp176.not.i = icmp eq i8 %180, 0
  br i1 %cmp176.not.i, label %if.else226.i, label %if.then178.i

if.then178.i:                                     ; preds = %if.then174.i
  %and180.i = and i32 %conv175.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180.i)
  %tobool181.not.i = icmp eq i32 %and180.i, 0
  br i1 %tobool181.not.i, label %if.else.i108, label %if.then178.i.if.end277.sink.split.i_crit_edge

if.then178.i.if.end277.sink.split.i_crit_edge:    ; preds = %if.then178.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end277.sink.split.i

if.else.i108:                                     ; preds = %if.then178.i
  %and187.i = and i32 %conv175.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and187.i)
  %tobool188.not.i = icmp eq i32 %and187.i, 0
  br i1 %tobool188.not.i, label %if.else194.i, label %if.else.i108.if.end277.sink.split.i_crit_edge

if.else.i108.if.end277.sink.split.i_crit_edge:    ; preds = %if.else.i108
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end277.sink.split.i

if.else194.i:                                     ; preds = %if.else.i108
  %and196.i = and i32 %conv175.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196.i)
  %tobool197.not.i = icmp eq i32 %and196.i, 0
  br i1 %tobool197.not.i, label %if.else203.i, label %if.else194.i.if.end277.sink.split.i_crit_edge

if.else194.i.if.end277.sink.split.i_crit_edge:    ; preds = %if.else194.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end277.sink.split.i

if.else203.i:                                     ; preds = %if.else194.i
  %and205.i = and i32 %conv175.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and205.i)
  %tobool206.not.i = icmp eq i32 %and205.i, 0
  br i1 %tobool206.not.i, label %if.else212.i, label %if.else203.i.if.end277.sink.split.i_crit_edge

if.else203.i.if.end277.sink.split.i_crit_edge:    ; preds = %if.else203.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end277.sink.split.i

if.else212.i:                                     ; preds = %if.else203.i
  %and214.i = and i32 %conv175.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214.i)
  %tobool215.not.i = icmp eq i32 %and214.i, 0
  br i1 %tobool215.not.i, label %if.else212.i.if.end277.i_crit_edge, label %if.else212.i.if.end277.sink.split.i_crit_edge

if.else212.i.if.end277.sink.split.i_crit_edge:    ; preds = %if.else212.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end277.sink.split.i

if.else212.i.if.end277.i_crit_edge:               ; preds = %if.else212.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end277.i

if.else226.i:                                     ; preds = %if.then174.i
  %181 = ptrtoint ptr %178 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %178, align 1
  %conv227.i = zext i8 %182 to i32
  %and228.i = and i32 %conv227.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228.i)
  %tobool229.not.i = icmp eq i32 %and228.i, 0
  br i1 %tobool229.not.i, label %if.else235.i, label %if.else226.i.if.end277.sink.split.i_crit_edge

if.else226.i.if.end277.sink.split.i_crit_edge:    ; preds = %if.else226.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end277.sink.split.i

if.else235.i:                                     ; preds = %if.else226.i
  %and237.i = and i32 %conv227.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and237.i)
  %tobool238.not.i = icmp eq i32 %and237.i, 0
  br i1 %tobool238.not.i, label %if.else244.i, label %if.else235.i.if.end277.sink.split.i_crit_edge

if.else235.i.if.end277.sink.split.i_crit_edge:    ; preds = %if.else235.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end277.sink.split.i

if.else244.i:                                     ; preds = %if.else235.i
  %and246.i = and i32 %conv227.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and246.i)
  %tobool247.not.i = icmp eq i32 %and246.i, 0
  br i1 %tobool247.not.i, label %if.else253.i, label %if.else244.i.if.end277.sink.split.i_crit_edge

if.else244.i.if.end277.sink.split.i_crit_edge:    ; preds = %if.else244.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end277.sink.split.i

if.else253.i:                                     ; preds = %if.else244.i
  %and255.i = and i32 %conv227.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and255.i)
  %tobool256.not.i = icmp eq i32 %and255.i, 0
  br i1 %tobool256.not.i, label %if.else262.i, label %if.else253.i.if.end277.sink.split.i_crit_edge

if.else253.i.if.end277.sink.split.i_crit_edge:    ; preds = %if.else253.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end277.sink.split.i

if.else262.i:                                     ; preds = %if.else253.i
  %and264.i = and i32 %conv227.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and264.i)
  %tobool265.not.i109 = icmp eq i32 %and264.i, 0
  br i1 %tobool265.not.i109, label %if.else262.i.if.end277.i_crit_edge, label %if.else262.i.if.end277.sink.split.i_crit_edge

if.else262.i.if.end277.sink.split.i_crit_edge:    ; preds = %if.else262.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end277.sink.split.i

if.else262.i.if.end277.i_crit_edge:               ; preds = %if.else262.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end277.i

if.end277.sink.split.i:                           ; preds = %if.else262.i.if.end277.sink.split.i_crit_edge, %if.else253.i.if.end277.sink.split.i_crit_edge, %if.else244.i.if.end277.sink.split.i_crit_edge, %if.else235.i.if.end277.sink.split.i_crit_edge, %if.else226.i.if.end277.sink.split.i_crit_edge, %if.else212.i.if.end277.sink.split.i_crit_edge, %if.else203.i.if.end277.sink.split.i_crit_edge, %if.else194.i.if.end277.sink.split.i_crit_edge, %if.else.i108.if.end277.sink.split.i_crit_edge, %if.then178.i.if.end277.sink.split.i_crit_edge
  %.sink.i110 = phi i8 [ -128, %if.then178.i.if.end277.sink.split.i_crit_edge ], [ 64, %if.else.i108.if.end277.sink.split.i_crit_edge ], [ 32, %if.else194.i.if.end277.sink.split.i_crit_edge ], [ 16, %if.else203.i.if.end277.sink.split.i_crit_edge ], [ 8, %if.else212.i.if.end277.sink.split.i_crit_edge ], [ -128, %if.else226.i.if.end277.sink.split.i_crit_edge ], [ 64, %if.else235.i.if.end277.sink.split.i_crit_edge ], [ 32, %if.else244.i.if.end277.sink.split.i_crit_edge ], [ 16, %if.else253.i.if.end277.sink.split.i_crit_edge ], [ 8, %if.else262.i.if.end277.sink.split.i_crit_edge ]
  %supported_rr231.i = getelementptr inbounds %struct.embedded_panel_info, ptr %info, i32 0, i32 2
  %183 = ptrtoint ptr %supported_rr231.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %bf.load191.i = load i8, ptr %supported_rr231.i, align 4
  %bf.set193.i = or i8 %bf.load191.i, %.sink.i110
  store i8 %bf.set193.i, ptr %supported_rr231.i, align 4
  br label %if.end277.i

if.end277.i:                                      ; preds = %if.end277.sink.split.i, %if.else262.i.if.end277.i_crit_edge, %if.else212.i.if.end277.i_crit_edge, %if.end170.i.if.end277.i_crit_edge
  %ucLCD_Misc.i = getelementptr inbounds %struct._ATOM_LCD_INFO_V13, ptr %call.i29, i32 0, i32 5
  %184 = ptrtoint ptr %ucLCD_Misc.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %ucLCD_Misc.i, align 1
  %186 = and i8 %185, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool280.not.i = icmp eq i8 %186, 0
  br i1 %tobool280.not.i, label %if.end277.i.if.end287.i_crit_edge, label %if.then281.i

if.end277.i.if.end287.i_crit_edge:                ; preds = %if.end277.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end287.i

if.then281.i:                                     ; preds = %if.end277.i
  call void @__sanitizer_cov_trace_pc() #8
  %bf.set286.i = or i16 %bf.set150.i97, 128
  %187 = ptrtoint ptr %info to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %bf.set286.i, ptr %info, align 4
  br label %if.end287.i

if.end287.i:                                      ; preds = %if.then281.i, %if.end277.i.if.end287.i_crit_edge
  %188 = ptrtoint ptr %ucLCD_Misc.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %ucLCD_Misc.i, align 1
  %190 = and i8 %189, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool291.not.i = icmp eq i8 %190, 0
  br i1 %tobool291.not.i, label %if.end287.i.if.end298.i_crit_edge, label %if.then292.i

if.end287.i.if.end298.i_crit_edge:                ; preds = %if.end287.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end298.i

if.then292.i:                                     ; preds = %if.end287.i
  call void @__sanitizer_cov_trace_pc() #8
  %191 = ptrtoint ptr %info to i32
  call void @__asan_load2_noabort(i32 %191)
  %bf.load295.i = load i16, ptr %info, align 4
  %bf.set297.i = or i16 %bf.load295.i, 64
  store i16 %bf.set297.i, ptr %info, align 4
  br label %if.end298.i

if.end298.i:                                      ; preds = %if.then292.i, %if.end287.i.if.end298.i_crit_edge
  %192 = ptrtoint ptr %ucLCD_Misc.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %ucLCD_Misc.i, align 1
  %194 = ptrtoint ptr %info to i32
  call void @__asan_load2_noabort(i32 %194)
  %bf.load304.i = load i16, ptr %info, align 4
  %195 = shl i8 %193, 2
  %196 = and i8 %195, 48
  %bf.shl306.i = zext i8 %196 to i16
  %bf.clear307.i = and i16 %bf.load304.i, -49
  %bf.set308.i = or i16 %bf.clear307.i, %bf.shl306.i
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end298.i, %if.then277.i
  %bf.set308.i.sink = phi i16 [ %bf.set308.i, %if.end298.i ], [ %bf.set282.i, %if.then277.i ]
  %197 = ptrtoint ptr %info to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %bf.set308.i.sink, ptr %info, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.i.cleanup_crit_edge, %if.end9.i33.cleanup_crit_edge, %if.end3.i31.cleanup_crit_edge, %if.end.i27.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge, %if.end272.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.bb9.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 5, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 5, %if.end6.cleanup_crit_edge ], [ 5, %sw.bb.cleanup_crit_edge ], [ 1, %sw.bb9.cleanup_crit_edge ], [ 3, %if.end.i.cleanup_crit_edge ], [ 2, %if.end3.i.cleanup_crit_edge ], [ 3, %lor.lhs.false.i.cleanup_crit_edge ], [ 3, %if.end9.i.cleanup_crit_edge ], [ 0, %if.end272.i.cleanup_crit_edge ], [ 1, %sw.bb11.cleanup_crit_edge ], [ 3, %if.end.i27.cleanup_crit_edge ], [ 2, %if.end3.i31.cleanup_crit_edge ], [ 3, %land.lhs.true.i.cleanup_crit_edge ], [ 3, %if.end9.i33.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_get_gpio_pin_info(ptr noundef %dcb, i32 noundef %gpio_id, ptr nocapture noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %master_data_tbl = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 3
  %0 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_data_tbl, align 4
  %GPIO_Pin_LUT = getelementptr inbounds %struct._ATOM_MASTER_DATA_TABLE, ptr %1, i32 0, i32 1, i32 12
  %2 = ptrtoint ptr %GPIO_Pin_LUT to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %GPIO_Pin_LUT, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %3 to i32
  %call = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %conv, i32 noundef 8) #6
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %ucTableContentRevision = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %ucTableContentRevision to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ucTableContentRevision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp13.not = icmp eq i8 %8, 1
  br i1 %cmp13.not, label %if.end16, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %sub = add nsw i32 %conv7, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp2074.not = icmp ult i32 %sub, 4
  br i1 %cmp2074.not, label %if.end16.cleanup_crit_edge, label %for.body.preheader

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %if.end16
  %div72 = lshr i32 %sub, 2
  %umax = call i32 @llvm.umax.i32(i32 %div72, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.075 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %ucGPIO_ID = getelementptr %struct._ATOM_GPIO_PIN_LUT, ptr %call, i32 0, i32 1, i32 %i.075, i32 2
  %9 = ptrtoint ptr %ucGPIO_ID to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ucGPIO_ID, align 1
  %conv22 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv22, i32 %gpio_id)
  %cmp23.not = icmp eq i32 %conv22, %gpio_id
  br i1 %cmp23.not, label %if.end26, label %for.inc

if.end26:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct._ATOM_GPIO_PIN_LUT, ptr %call, i32 0, i32 1, i32 %i.075
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %arrayidx, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv29 = zext i16 %13 to i32
  %14 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv29, ptr %info, align 4
  %add = add nuw nsw i32 %conv29, 2
  %offset_y = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 1
  %15 = ptrtoint ptr %offset_y to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %offset_y, align 4
  %add32 = add nuw nsw i32 %conv29, 1
  %offset_en = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 2
  %16 = ptrtoint ptr %offset_en to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add32, ptr %offset_en, align 4
  %sub34 = add nsw i32 %conv29, -1
  %offset_mask = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 3
  %17 = ptrtoint ptr %offset_mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub34, ptr %offset_mask, align 4
  %ucGpioPinBitShift = getelementptr %struct._ATOM_GPIO_PIN_LUT, ptr %call, i32 0, i32 1, i32 %i.075, i32 1
  %18 = ptrtoint ptr %ucGpioPinBitShift to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ucGpioPinBitShift, align 1
  %conv37 = zext i8 %19 to i32
  %shl = shl nuw i32 1, %conv37
  %mask = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 4
  %20 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shl, ptr %mask, align 4
  %add39 = add nuw i32 %shl, 2
  %mask_y = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 5
  %21 = ptrtoint ptr %mask_y to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add39, ptr %mask_y, align 4
  %add41 = add nuw i32 %shl, 1
  %mask_en = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 6
  %22 = ptrtoint ptr %mask_en to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add41, ptr %mask_en, align 4
  %sub43 = add i32 %shl, -1
  %mask_mask = getelementptr inbounds %struct.gpio_pin_info, ptr %info, i32 0, i32 7
  %23 = ptrtoint ptr %mask_mask to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub43, ptr %mask_mask, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end26, %if.end16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ 2, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 2, %if.end6.cleanup_crit_edge ], [ 3, %if.end10.cleanup_crit_edge ], [ 4, %if.end16.cleanup_crit_edge ], [ 4, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_get_encoder_cap_info(ptr noundef %dcb, [1 x i32] %object_id.coerce, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc ptr @get_bios_object(ptr noundef %dcb, [1 x i32] %object_id.coerce)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %usRecordOffset.i = getelementptr inbounds %struct._ATOM_OBJECT, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %usRecordOffset.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %usRecordOffset.i, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #6
  %conv.i = zext i16 %2 to i32
  %object_info_tbl_offset.i = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 2
  %3 = ptrtoint ptr %object_info_tbl_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %object_info_tbl_offset.i, align 4
  %add.i = add i32 %4, %conv.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end11.i.for.cond.i_crit_edge, %if.end.i
  %offset.0.i = phi i32 [ %add.i, %if.end.i ], [ %add5.i, %if.end11.i.for.cond.i_crit_edge ]
  %call.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %offset.0.i, i32 noundef 2) #6
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %for.cond.i.cleanup_crit_edge, label %if.end3.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3.i:                                        ; preds = %for.cond.i
  %ucRecordSize.i = getelementptr inbounds %struct._ATOM_COMMON_RECORD_HEADER, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %ucRecordSize.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ucRecordSize.i, align 1
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp.i = icmp eq i8 %8, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool9.not.i = icmp eq i8 %6, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool9.not.i
  br i1 %or.cond.i, label %if.end3.i.cleanup_crit_edge, label %if.end11.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11.i:                                       ; preds = %if.end3.i
  %conv4.i = zext i8 %6 to i32
  %add5.i = add i32 %offset.0.i, %conv4.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %8)
  %cmp14.not.i = icmp eq i8 %8, 20
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp20.i = icmp ugt i8 %6, 3
  %or.cond34.i = select i1 %cmp14.not.i, i1 %cmp20.i, i1 false
  br i1 %or.cond34.i, label %if.end8, label %if.end11.i.for.cond.i_crit_edge

if.end11.i.for.cond.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

if.end8:                                          ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = getelementptr inbounds %struct._ATOM_ENCODER_CAP_RECORD_V2, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %bf.load = load i16, ptr %9, align 1
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load9 = load i16, ptr %info, align 4
  %12 = shl i16 %bf.load, 13
  %bf.shl = and i16 %12, 16384
  %bf.clear10 = and i16 %bf.load9, -16385
  %bf.set = or i16 %bf.clear10, %bf.shl
  store i16 %bf.set, ptr %info, align 4
  %bf.load11 = load i16, ptr %9, align 1
  %13 = shl i16 %bf.load11, 10
  %bf.shl17 = and i16 %13, 8192
  %bf.clear18 = and i16 %bf.set, -8193
  %bf.set19 = or i16 %bf.shl17, %bf.clear18
  store i16 %bf.set19, ptr %info, align 4
  %bf.load21 = load i16, ptr %9, align 1
  %14 = shl i16 %bf.load21, 10
  %bf.shl27 = and i16 %14, 4096
  %bf.clear28 = and i16 %bf.set19, -4097
  %bf.set29 = or i16 %bf.clear28, %bf.shl27
  store i16 %bf.set29, ptr %info, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end3.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 4, %if.end3.i.cleanup_crit_edge ], [ 4, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bios_is_accelerated_mode(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bios_parser_set_scratch_critical_state(ptr noundef %dcb, i1 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @bios_set_scratch_critical_state(ptr noundef %dcb, i1 noundef zeroext %state) #6
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bios_parser_is_device_id_supported(ptr nocapture noundef readonly %dcb, [2 x i32] %id.coerce) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device_id.coerce.fca.0.extract.i = extractvalue [2 x i32] %id.coerce, 0
  %bf.lshr.i = lshr i32 %device_id.coerce.fca.0.extract.i, 16
  %bf.clear.i = and i32 %device_id.coerce.fca.0.extract.i, 65535
  %trunc.i = trunc i32 %bf.lshr.i to i16
  %0 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.15)
  switch i16 %trunc.i, label %entry.sw.epilog27.i_crit_edge [
    i16 1, label %sw.bb.i
    i16 2, label %sw.bb4.i
    i16 3, label %sw.bb9.i
    i16 4, label %sw.bb18.i
    i16 5, label %sw.bb22.i
  ]

entry.sw.epilog27.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog27.i

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %trunc37.i = trunc i32 %device_id.coerce.fca.0.extract.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %trunc37.i)
  %switch.selectcmp.i = icmp eq i16 %trunc37.i, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 32, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %trunc37.i)
  %switch.selectcmp38.i = icmp eq i16 %trunc37.i, 1
  %switch.select39.i = select i1 %switch.selectcmp38.i, i32 2, i32 %switch.select.i
  br label %get_support_mask_for_device_id.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %trunc36.i = trunc i32 %device_id.coerce.fca.0.extract.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %trunc36.i)
  %switch.selectcmp40.i = icmp eq i16 %trunc36.i, 2
  %switch.select41.i = select i1 %switch.selectcmp40.i, i32 16, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %trunc36.i)
  %switch.selectcmp42.i = icmp eq i16 %trunc36.i, 1
  %switch.select43.i = select i1 %switch.selectcmp42.i, i32 1, i32 %switch.select41.i
  br label %get_support_mask_for_device_id.exit

sw.bb9.i:                                         ; preds = %entry
  %trunc35.i = trunc i32 %device_id.coerce.fca.0.extract.i to i16
  %switch.tableidx = add i16 %trunc35.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %switch.tableidx)
  %1 = icmp ult i16 %switch.tableidx, 6
  br i1 %1, label %switch.lookup, label %sw.bb9.i.sw.epilog27.i_crit_edge

sw.bb9.i.sw.epilog27.i_crit_edge:                 ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog27.i

sw.bb18.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear.i)
  %cond29.i = icmp eq i32 %bf.clear.i, 1
  br i1 %cond29.i, label %sw.bb18.i.get_support_mask_for_device_id.exit_crit_edge, label %sw.bb18.i.sw.epilog27.i_crit_edge

sw.bb18.i.sw.epilog27.i_crit_edge:                ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog27.i

sw.bb18.i.get_support_mask_for_device_id.exit_crit_edge: ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_support_mask_for_device_id.exit

sw.bb22.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear.i)
  %cond.i = icmp eq i32 %bf.clear.i, 1
  br i1 %cond.i, label %sw.bb22.i.get_support_mask_for_device_id.exit_crit_edge, label %sw.bb22.i.sw.epilog27.i_crit_edge

sw.bb22.i.sw.epilog27.i_crit_edge:                ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog27.i

sw.bb22.i.get_support_mask_for_device_id.exit_crit_edge: ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_support_mask_for_device_id.exit

sw.epilog27.i:                                    ; preds = %sw.bb22.i.sw.epilog27.i_crit_edge, %sw.bb18.i.sw.epilog27.i_crit_edge, %sw.bb9.i.sw.epilog27.i_crit_edge, %entry.sw.epilog27.i_crit_edge
  br label %get_support_mask_for_device_id.exit

switch.lookup:                                    ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #8
  %2 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.bios_parser_is_device_id_supported, i32 0, i32 %2
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_support_mask_for_device_id.exit

get_support_mask_for_device_id.exit:              ; preds = %switch.lookup, %sw.epilog27.i, %sw.bb22.i.get_support_mask_for_device_id.exit_crit_edge, %sw.bb18.i.get_support_mask_for_device_id.exit_crit_edge, %sw.bb4.i, %sw.bb.i
  %retval.0.i = phi i32 [ 0, %sw.epilog27.i ], [ %switch.select39.i, %sw.bb.i ], [ %switch.select43.i, %sw.bb4.i ], [ 256, %sw.bb18.i.get_support_mask_for_device_id.exit_crit_edge ], [ 4, %sw.bb22.i.get_support_mask_for_device_id.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %4 = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %usDeviceSupport = getelementptr inbounds %struct._ATOM_OBJECT_HEADER, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %usDeviceSupport to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %usDeviceSupport, align 1
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
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_tbl = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 6
  %0 = ptrtoint ptr %cmd_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_tbl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %1(ptr noundef %dcb, ptr noundef %cntl) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_transmitter_control(ptr noundef %dcb, ptr noundef %cntl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %transmitter_control = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 6, i32 3
  %0 = ptrtoint ptr %transmitter_control to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transmitter_control, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %1(ptr noundef %dcb, ptr noundef %cntl) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_enable_crtc(ptr noundef %dcb, i32 noundef %id, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_crtc = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 6, i32 12
  %0 = ptrtoint ptr %enable_crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enable_crtc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %1(ptr noundef %dcb, i32 noundef %id, i1 noundef zeroext %enable) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_adjust_pixel_clock(ptr noundef %dcb, ptr noundef %bp_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adjust_display_pll = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 6, i32 6
  %0 = ptrtoint ptr %adjust_display_pll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adjust_display_pll, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %1(ptr noundef %dcb, ptr noundef %bp_params) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_set_pixel_clock(ptr noundef %dcb, ptr noundef %bp_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %set_pixel_clock = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 6, i32 4
  %0 = ptrtoint ptr %set_pixel_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_pixel_clock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %1(ptr noundef %dcb, ptr noundef %bp_params) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_set_dce_clock(ptr noundef %dcb, ptr noundef %bp_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %set_dce_clock = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 6, i32 17
  %0 = ptrtoint ptr %set_dce_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_dce_clock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %1(ptr noundef %dcb, ptr noundef %bp_params) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_enable_spread_spectrum_on_ppll(ptr noundef %dcb, ptr noundef %bp_params, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_spread_spectrum_on_ppll = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 6, i32 5
  %0 = ptrtoint ptr %enable_spread_spectrum_on_ppll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enable_spread_spectrum_on_ppll, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %1(ptr noundef %dcb, ptr noundef %bp_params, i1 noundef zeroext %enable) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_program_crtc_timing(ptr noundef %dcb, ptr noundef %bp_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %set_crtc_timing = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 6, i32 11
  %0 = ptrtoint ptr %set_crtc_timing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_crtc_timing, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %1(ptr noundef %dcb, ptr noundef %bp_params) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_program_display_engine_pll(ptr noundef %dcb, ptr noundef %bp_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %program_clock = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 6, i32 14
  %0 = ptrtoint ptr %program_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %program_clock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %1(ptr noundef %dcb, ptr noundef %bp_params) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bios_parser_enable_disp_power_gating(ptr noundef %dcb, i32 noundef %controller_id, i32 noundef %action) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_disp_power_gating = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 6, i32 16
  %0 = ptrtoint ptr %enable_disp_power_gating to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enable_disp_power_gating, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %1(ptr noundef %dcb, i32 noundef %controller_id, i32 noundef %action) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bios_parser_destroy(ptr nocapture noundef %dcb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dcb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.bios_parser_destroy, i32 noundef 125) #6
  tail call void @kgdb_breakpoint() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bios_local_image.i = getelementptr inbounds %struct.dc_bios, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bios_local_image.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios_local_image.i, align 4
  tail call void @kfree(ptr noundef %3) #6
  %integrated_info.i = getelementptr inbounds %struct.dc_bios, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %integrated_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %integrated_info.i, align 4
  tail call void @kfree(ptr noundef %5) #6
  tail call void @kfree(ptr noundef nonnull %1) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %board_layout_info, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.5) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %board_layout_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %board_layout_info, align 4
  %object_info_tbl_offset.i = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 2
  %1 = getelementptr inbounds %struct.bios_parser, ptr %dcb, i32 0, i32 1, i32 1
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
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6) #6
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %4 = ptrtoint ptr %object_info_tbl_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %object_info_tbl_offset.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %usMiscObjectTableOffset.i = getelementptr inbounds %struct._ATOM_OBJECT_HEADER_V3, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %usMiscObjectTableOffset.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %usMiscObjectTableOffset.i, align 1
  %conv.i = zext i16 %9 to i32
  %add.i = add i32 %5, %conv.i
  %call.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %add.i, i32 noundef 12) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %for.cond.preheader.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end.i
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %call.i, align 1
  %conv3.i = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp439.not.i = icmp eq i8 %11, 0
  br i1 %cmp439.not.i, label %for.cond.preheader.i.get_bracket_layout_record.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.get_bracket_layout_record.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_bracket_layout_record.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.040.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct._ATOM_OBJECT_TABLE, ptr %call.i, i32 0, i32 2, i32 %i.040.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %arrayidx.i, align 1
  %conv6.i = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv6.i)
  %cmp7.i = icmp eq i32 %3, %conv6.i
  br i1 %cmp7.i, label %if.then9.i, label %for.inc.i

if.then9.i:                                       ; preds = %for.body.i
  %usRecordOffset.i = getelementptr %struct._ATOM_OBJECT_TABLE, ptr %call.i, i32 0, i32 2, i32 %i.040.i, i32 2
  %14 = ptrtoint ptr %usRecordOffset.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %usRecordOffset.i, align 1
  %conv12.i = zext i16 %15 to i32
  %16 = ptrtoint ptr %object_info_tbl_offset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %object_info_tbl_offset.i, align 4
  %add14.i = add i32 %17, %conv12.i
  %call7.i.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %add14.i, i32 noundef 2) #6
  %cmp8.i.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp8.i.i, label %if.then9.i.cleanup_crit_edge, label %if.then9.i.if.end.i.i_crit_edge

if.then9.i.if.end.i.i_crit_edge:                  ; preds = %if.then9.i
  br label %if.end.i.i

if.then9.i.cleanup_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.i.i:                                     ; preds = %if.end7.i.i
  %conv19.i.i = zext i8 %21 to i32
  %add.i.i = add i32 %record_offset.addr.09.i.i, %conv19.i.i
  %call.i.i = tail call ptr @bios_get_image(ptr noundef %dcb, i32 noundef %add.i.i, i32 noundef 2) #6
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %for.cond.i.i.cleanup_crit_edge, label %for.cond.i.i.if.end.i.i_crit_edge

for.cond.i.i.if.end.i.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %for.cond.i.i.if.end.i.i_crit_edge, %if.then9.i.if.end.i.i_crit_edge
  %call10.i.i = phi ptr [ %call.i.i, %for.cond.i.i.if.end.i.i_crit_edge ], [ %call7.i.i, %if.then9.i.if.end.i.i_crit_edge ]
  %record_offset.addr.09.i.i = phi i32 [ %add.i.i, %for.cond.i.i.if.end.i.i_crit_edge ], [ %add14.i, %if.then9.i.if.end.i.i_crit_edge ]
  %18 = ptrtoint ptr %call10.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %call10.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp1.i.i = icmp eq i8 %19, -1
  br i1 %cmp1.i.i, label %if.end.i.i.get_bracket_layout_record.exit_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.get_bracket_layout_record.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_bracket_layout_record.exit

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %ucRecordSize.i.i = getelementptr inbounds %struct._ATOM_COMMON_RECORD_HEADER, ptr %call10.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %ucRecordSize.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ucRecordSize.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp4.i.i = icmp eq i8 %21, 0
  br i1 %cmp4.i.i, label %lor.lhs.false.i.i.get_bracket_layout_record.exit_crit_edge, label %if.end7.i.i

lor.lhs.false.i.i.get_bracket_layout_record.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_bracket_layout_record.exit

if.end7.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %19)
  %cmp10.i.i = icmp eq i8 %19, 21
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %21)
  %cmp14.i.i = icmp ugt i8 %21, 9
  %or.cond.i.i = select i1 %cmp10.i.i, i1 %cmp14.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end23.i.i, label %for.cond.i.i

if.end23.i.i:                                     ; preds = %if.end7.i.i
  %ucLength.i.i = getelementptr inbounds %struct._ATOM_BRACKET_LAYOUT_RECORD, ptr %call10.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %ucLength.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ucLength.i.i, align 1
  %conv24.i.i = zext i8 %23 to i32
  %24 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv24.i.i, ptr %arrayidx2, align 4
  %ucWidth.i.i = getelementptr inbounds %struct._ATOM_BRACKET_LAYOUT_RECORD, ptr %call10.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %ucWidth.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ucWidth.i.i, align 1
  %conv25.i.i = zext i8 %26 to i32
  %width.i.i = getelementptr %struct.board_layout_info, ptr %board_layout_info, i32 0, i32 2, i32 %i.059, i32 1
  %27 = ptrtoint ptr %width.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv25.i.i, ptr %width.i.i, align 4
  %ucConnNum.i.i = getelementptr inbounds %struct._ATOM_BRACKET_LAYOUT_RECORD, ptr %call10.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %ucConnNum.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ucConnNum.i.i, align 1
  %conv26.i.i = zext i8 %29 to i32
  %num_of_connectors.i.i = getelementptr %struct.board_layout_info, ptr %board_layout_info, i32 0, i32 2, i32 %i.059, i32 2
  %30 = ptrtoint ptr %num_of_connectors.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv26.i.i, ptr %num_of_connectors.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp2913.not.i.i = icmp eq i8 %29, 0
  br i1 %cmp2913.not.i.i, label %if.end23.i.i.if.end9_crit_edge, label %if.end23.i.i.for.body.i.i_crit_edge

if.end23.i.i.for.body.i.i_crit_edge:              ; preds = %if.end23.i.i
  br label %for.body.i.i

if.end23.i.i.if.end9_crit_edge:                   ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

for.body.i.i:                                     ; preds = %sw.epilog.i.i.for.body.i.i_crit_edge, %if.end23.i.i.for.body.i.i_crit_edge
  %j.014.i.i = phi i32 [ %inc.i.i, %sw.epilog.i.i.for.body.i.i_crit_edge ], [ 0, %if.end23.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct._ATOM_BRACKET_LAYOUT_RECORD, ptr %call10.i.i, i32 0, i32 5, i32 %j.014.i.i
  %ucConnectorType.i.i = getelementptr %struct._ATOM_BRACKET_LAYOUT_RECORD, ptr %call10.i.i, i32 0, i32 5, i32 %j.014.i.i, i32 1
  %31 = ptrtoint ptr %ucConnectorType.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ucConnectorType.i.i, align 1
  %conv31.i.i = zext i8 %32 to i32
  %arrayidx32.i.i = getelementptr %struct.board_layout_info, ptr %board_layout_info, i32 0, i32 2, i32 %i.059, i32 3, i32 %j.014.i.i
  %connector_type.i.i = getelementptr %struct.board_layout_info, ptr %board_layout_info, i32 0, i32 2, i32 %i.059, i32 3, i32 %j.014.i.i, i32 1
  %33 = ptrtoint ptr %connector_type.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv31.i.i, ptr %connector_type.i.i, align 4
  %34 = load i8, ptr %ucConnectorType.i.i, align 1
  %switch.tableidx = add i8 %34, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %switch.tableidx)
  %35 = icmp ult i8 %switch.tableidx, 6
  br i1 %35, label %switch.lookup, label %for.body.i.i.sw.epilog.i.i_crit_edge

for.body.i.i.sw.epilog.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i

switch.lookup:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %36 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.bios_get_board_layout_info, i32 0, i32 %36
  %37 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %37)
  %switch.load = load i32, ptr %switch.gep, align 4
  %38 = sext i8 %switch.tableidx to i32
  %switch.gep100 = getelementptr inbounds [6 x i32], ptr @switch.table.bios_get_board_layout_info.8, i32 0, i32 %38
  %39 = ptrtoint ptr %switch.gep100 to i32
  call void @__asan_load4_noabort(i32 %39)
  %switch.load101 = load i32, ptr %switch.gep100, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %switch.lookup, %for.body.i.i.sw.epilog.i.i_crit_edge
  %.sink20.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %for.body.i.i.sw.epilog.i.i_crit_edge ]
  %.sink.i.i = phi i32 [ %switch.load101, %switch.lookup ], [ 30, %for.body.i.i.sw.epilog.i.i_crit_edge ]
  %40 = ptrtoint ptr %connector_type.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %.sink20.i.i, ptr %connector_type.i.i, align 4
  %length69.i.i = getelementptr %struct.board_layout_info, ptr %board_layout_info, i32 0, i32 2, i32 %i.059, i32 3, i32 %j.014.i.i, i32 2
  %41 = ptrtoint ptr %length69.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %.sink.i.i, ptr %length69.i.i, align 4
  %ucPosition.i.i = getelementptr %struct._ATOM_BRACKET_LAYOUT_RECORD, ptr %call10.i.i, i32 0, i32 5, i32 %j.014.i.i, i32 2
  %42 = ptrtoint ptr %ucPosition.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ucPosition.i.i, align 1
  %conv72.i.i = zext i8 %43 to i32
  %position.i.i = getelementptr %struct.board_layout_info, ptr %board_layout_info, i32 0, i32 2, i32 %i.059, i32 3, i32 %j.014.i.i, i32 3
  %44 = ptrtoint ptr %position.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv72.i.i, ptr %position.i.i, align 4
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %arrayidx.i.i, align 1
  %conv80.i.i = zext i16 %46 to i32
  %call81.i.i = tail call i32 @object_id_from_bios_object_id(i32 noundef %conv80.i.i) #6
  %47 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call81.i.i, ptr %arrayidx32.i.i, align 4
  %inc.i.i = add nuw i32 %j.014.i.i, 1
  %48 = ptrtoint ptr %num_of_connectors.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_of_connectors.i.i, align 4
  %cmp29.i.i = icmp ult i32 %inc.i.i, %49
  br i1 %cmp29.i.i, label %sw.epilog.i.i.for.body.i.i_crit_edge, label %sw.epilog.i.i.if.end9_crit_edge

sw.epilog.i.i.if.end9_crit_edge:                  ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

sw.epilog.i.i.for.body.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.040.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv3.i
  br i1 %exitcond.not.i, label %for.inc.i.get_bracket_layout_record.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.get_bracket_layout_record.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_bracket_layout_record.exit

get_bracket_layout_record.exit:                   ; preds = %for.inc.i.get_bracket_layout_record.exit_crit_edge, %lor.lhs.false.i.i.get_bracket_layout_record.exit_crit_edge, %if.end.i.i.get_bracket_layout_record.exit_crit_edge, %for.cond.preheader.i.get_bracket_layout_record.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.059)
  %cmp4.not = icmp eq i32 %i.059, 0
  br i1 %cmp4.not, label %get_bracket_layout_record.exit.cleanup_crit_edge, label %get_bracket_layout_record.exit.for.end_crit_edge

get_bracket_layout_record.exit.for.end_crit_edge: ; preds = %get_bracket_layout_record.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

get_bracket_layout_record.exit.cleanup_crit_edge: ; preds = %get_bracket_layout_record.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %sw.epilog.i.i.if.end9_crit_edge, %if.end23.i.i.if.end9_crit_edge
  %50 = ptrtoint ptr %board_layout_info to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %board_layout_info, align 4
  %inc = add i32 %51, 1
  store i32 %inc, ptr %board_layout_info, align 4
  %inc11 = add nuw nsw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc11, 4
  br i1 %exitcond.not, label %if.end9.for.end_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end9.for.end_crit_edge, %get_bracket_layout_record.exit.for.end_crit_edge
  %is_number_of_slots_valid = getelementptr inbounds %struct.board_layout_info, ptr %board_layout_info, i32 0, i32 1
  %52 = ptrtoint ptr %is_number_of_slots_valid to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load = load i8, ptr %is_number_of_slots_valid, align 4
  %bf.set20 = or i8 %bf.load, -16
  store i8 %bf.set20, ptr %is_number_of_slots_valid, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %get_bracket_layout_record.exit.cleanup_crit_edge, %for.cond.i.i.cleanup_crit_edge, %if.then9.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %for.end ], [ 4, %get_bracket_layout_record.exit.cleanup_crit_edge ], [ 1, %if.then.i ], [ 2, %for.cond.i.i.cleanup_crit_edge ], [ 2, %if.then9.i.cleanup_crit_edge ], [ 5, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @object_id_from_bios_object_id(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_bios_object(ptr noundef %bp, [1 x i32] %id.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id.coerce.fca.0.extract = extractvalue [1 x i32] %id.coerce, 0
  %bf.lshr = lshr i32 %id.coerce.fca.0.extract, 16
  %bf.clear = and i32 %bf.lshr, 15
  %0 = zext i32 %bf.clear to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %bf.clear, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 4, label %sw.bb4
    i32 5, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %usEncoderObjectTableOffset = getelementptr inbounds %struct._ATOM_OBJECT_HEADER, ptr %3, i32 0, i32 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %usConnectorObjectTableOffset = getelementptr inbounds %struct._ATOM_OBJECT_HEADER, ptr %6, i32 0, i32 2
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %usRouterObjectTableOffset = getelementptr inbounds %struct._ATOM_OBJECT_HEADER, ptr %9, i32 0, i32 3
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %minor = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %minor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp = icmp ult i32 %11, 3
  br i1 %cmp, label %sw.bb7.cleanup_crit_edge, label %if.end

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  %12 = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %usMiscObjectTableOffset = getelementptr inbounds %struct._ATOM_OBJECT_HEADER_V3, ptr %14, i32 0, i32 7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb4, %sw.bb1, %sw.bb
  %usMiscObjectTableOffset.sink = phi ptr [ %usMiscObjectTableOffset, %if.end ], [ %usRouterObjectTableOffset, %sw.bb4 ], [ %usConnectorObjectTableOffset, %sw.bb1 ], [ %usEncoderObjectTableOffset, %sw.bb ]
  %15 = ptrtoint ptr %usMiscObjectTableOffset.sink to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %usMiscObjectTableOffset.sink, align 1
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %offset.0 = zext i16 %17 to i32
  %object_info_tbl_offset = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 2
  %18 = ptrtoint ptr %object_info_tbl_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %object_info_tbl_offset, align 4
  %add = add i32 %19, %offset.0
  %call = tail call ptr @bios_get_image(ptr noundef %bp, i32 noundef %add, i32 noundef 12) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %for.cond.preheader

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %sw.epilog
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %call, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp1546.not = icmp eq i8 %21, 0
  br i1 %cmp1546.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %22 = and i32 %id.coerce.fca.0.extract, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i.not.i = icmp eq i32 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %id.coerce.fca.0.extract)
  %cmp7.i.i = icmp ugt i32 %id.coerce.fca.0.extract, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp11.i.i = icmp ne i32 %22, 0
  %not.or.cond.i.i = and i1 %cmp7.i.i, %cmp11.i.i
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct._ATOM_OBJECT_TABLE, ptr %call, i32 0, i32 2, i32 %i.047
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %arrayidx, align 1
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %conv17 = zext i16 %25 to i32
  %call18 = tail call i32 @object_id_from_bios_object_id(i32 noundef %conv17) #6
  %26 = zext i32 %bf.clear to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %bf.clear, label %dal_graphics_object_id_is_valid.exit.i [
    i32 0, label %for.body.for.inc.sink.split_crit_edge
    i32 1, label %for.body.sw.bb1.i.i_crit_edge
    i32 9, label %for.body.sw.bb1.i.i_crit_edge49
  ]

for.body.sw.bb1.i.i_crit_edge49:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i.i

for.body.sw.bb1.i.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i.i

for.body.for.inc.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split

sw.bb1.i.i:                                       ; preds = %for.body.sw.bb1.i.i_crit_edge, %for.body.sw.bb1.i.i_crit_edge49
  br i1 %cmp.i.not.i, label %sw.bb1.i.i.for.inc.sink.split_crit_edge, label %sw.bb1.i.i.if.end.i_crit_edge

sw.bb1.i.i.if.end.i_crit_edge:                    ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

sw.bb1.i.i.for.inc.sink.split_crit_edge:          ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split

dal_graphics_object_id_is_valid.exit.i:           ; preds = %for.body
  br i1 %not.or.cond.i.i, label %dal_graphics_object_id_is_valid.exit.i.if.end.i_crit_edge, label %dal_graphics_object_id_is_valid.exit.i.for.inc.sink.split_crit_edge

dal_graphics_object_id_is_valid.exit.i.for.inc.sink.split_crit_edge: ; preds = %dal_graphics_object_id_is_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split

dal_graphics_object_id_is_valid.exit.i.if.end.i_crit_edge: ; preds = %dal_graphics_object_id_is_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %dal_graphics_object_id_is_valid.exit.i.if.end.i_crit_edge, %sw.bb1.i.i.if.end.i_crit_edge
  %bf.lshr.i43.i = lshr i32 %call18, 16
  %bf.clear.i44.i = and i32 %bf.lshr.i43.i, 15
  %27 = zext i32 %bf.clear.i44.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %bf.clear.i44.i, label %dal_graphics_object_id_is_valid.exit52.i [
    i32 0, label %if.end.i.for.inc.sink.split_crit_edge
    i32 1, label %if.end.i.sw.bb1.i46.i_crit_edge
    i32 9, label %if.end.i.sw.bb1.i46.i_crit_edge50
  ]

if.end.i.sw.bb1.i46.i_crit_edge50:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i46.i

if.end.i.sw.bb1.i46.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i46.i

if.end.i.for.inc.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split

sw.bb1.i46.i:                                     ; preds = %if.end.i.sw.bb1.i46.i_crit_edge, %if.end.i.sw.bb1.i46.i_crit_edge50
  %28 = and i32 %call18, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i45.not.i = icmp eq i32 %28, 0
  br i1 %cmp.i45.not.i, label %sw.bb1.i46.i.for.inc.sink.split_crit_edge, label %sw.bb1.i46.i.dal_graphics_object_id_is_equal.exit_crit_edge

sw.bb1.i46.i.dal_graphics_object_id_is_equal.exit_crit_edge: ; preds = %sw.bb1.i46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dal_graphics_object_id_is_equal.exit

sw.bb1.i46.i.for.inc.sink.split_crit_edge:        ; preds = %sw.bb1.i46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split

dal_graphics_object_id_is_valid.exit52.i:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %call18)
  %cmp7.i47.i = icmp ugt i32 %call18, 16777215
  %29 = and i32 %call18, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp11.i48.i = icmp ne i32 %29, 0
  %not.or.cond.i49.i = and i1 %cmp7.i47.i, %cmp11.i48.i
  br i1 %not.or.cond.i49.i, label %dal_graphics_object_id_is_valid.exit52.i.dal_graphics_object_id_is_equal.exit_crit_edge, label %dal_graphics_object_id_is_valid.exit52.i.for.inc.sink.split_crit_edge

dal_graphics_object_id_is_valid.exit52.i.for.inc.sink.split_crit_edge: ; preds = %dal_graphics_object_id_is_valid.exit52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split

dal_graphics_object_id_is_valid.exit52.i.dal_graphics_object_id_is_equal.exit_crit_edge: ; preds = %dal_graphics_object_id_is_valid.exit52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dal_graphics_object_id_is_equal.exit

dal_graphics_object_id_is_equal.exit:             ; preds = %dal_graphics_object_id_is_valid.exit52.i.dal_graphics_object_id_is_equal.exit_crit_edge, %sw.bb1.i46.i.dal_graphics_object_id_is_equal.exit_crit_edge
  %cmp13.unshifted.i = xor i32 %call18, %id.coerce.fca.0.extract
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %cmp13.unshifted.i)
  %30 = icmp ult i32 %cmp13.unshifted.i, 65536
  br i1 %30, label %dal_graphics_object_id_is_equal.exit.cleanup_crit_edge, label %dal_graphics_object_id_is_equal.exit.for.inc_crit_edge

dal_graphics_object_id_is_equal.exit.for.inc_crit_edge: ; preds = %dal_graphics_object_id_is_equal.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

dal_graphics_object_id_is_equal.exit.cleanup_crit_edge: ; preds = %dal_graphics_object_id_is_equal.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.sink.split:                               ; preds = %dal_graphics_object_id_is_valid.exit52.i.for.inc.sink.split_crit_edge, %sw.bb1.i46.i.for.inc.sink.split_crit_edge, %if.end.i.for.inc.sink.split_crit_edge, %dal_graphics_object_id_is_valid.exit.i.for.inc.sink.split_crit_edge, %sw.bb1.i.i.for.inc.sink.split_crit_edge, %for.body.for.inc.sink.split_crit_edge
  %.str.4.sink = phi ptr [ @.str.3, %dal_graphics_object_id_is_valid.exit.i.for.inc.sink.split_crit_edge ], [ @.str.3, %sw.bb1.i.i.for.inc.sink.split_crit_edge ], [ @.str.3, %for.body.for.inc.sink.split_crit_edge ], [ @.str.4, %dal_graphics_object_id_is_valid.exit52.i.for.inc.sink.split_crit_edge ], [ @.str.4, %sw.bb1.i46.i.for.inc.sink.split_crit_edge ], [ @.str.4, %if.end.i.for.inc.sink.split_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %.str.4.sink, ptr noundef nonnull @__func__.dal_graphics_object_id_is_equal) #6
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %dal_graphics_object_id_is_equal.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.047, 1
  %31 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %call, align 1
  %conv14 = zext i8 %32 to i32
  %cmp15 = icmp ult i32 %inc, %conv14
  br i1 %cmp15, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %dal_graphics_object_id_is_equal.exit.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %sw.bb7.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %sw.epilog.cleanup_crit_edge ], [ null, %for.cond.preheader.cleanup_crit_edge ], [ %arrayidx, %dal_graphics_object_id_is_equal.exit.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_ss_info_from_ss_info_table(ptr noundef %bp, i32 noundef %id, ptr noundef %ss_info) unnamed_addr #0 align 64 {
entry:
  %panel_info = alloca %struct.embedded_panel_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %master_data_tbl = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 3
  %0 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_data_tbl, align 4
  %PPLL_SS_Info = getelementptr inbounds %struct._ATOM_MASTER_DATA_TABLE, ptr %1, i32 0, i32 1, i32 18
  %2 = ptrtoint ptr %PPLL_SS_Info to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %PPLL_SS_Info, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  %tobool1.not = icmp eq ptr %ss_info, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %3 to i32
  %call = tail call ptr @bios_get_image(ptr noundef %bp, i32 noundef %conv, i32 noundef 4) #6
  %tobool1.not.i = icmp eq ptr %call, null
  br i1 %tobool1.not.i, label %get_atom_data_table_revision.exit.thread, label %get_atom_data_table_revision.exit

get_atom_data_table_revision.exit.thread:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master_data_tbl, align 4
  %PPLL_SS_Info8131 = getelementptr inbounds %struct._ATOM_MASTER_DATA_TABLE, ptr %5, i32 0, i32 1, i32 18
  %6 = ptrtoint ptr %PPLL_SS_Info8131 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %PPLL_SS_Info8131, align 1
  %conv9132 = zext i16 %7 to i32
  %call10133 = tail call ptr @bios_get_image(ptr noundef %bp, i32 noundef %conv9132, i32 noundef 132) #6
  br label %cleanup

get_atom_data_table_revision.exit:                ; preds = %if.end
  %ucTableFormatRevision.i = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %ucTableFormatRevision.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ucTableFormatRevision.i, align 1
  %10 = and i8 %9, 63
  %ucTableContentRevision.i = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call, i32 0, i32 2
  %11 = ptrtoint ptr %ucTableContentRevision.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ucTableContentRevision.i, align 1
  %13 = and i8 %12, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %phi.cmp = icmp ne i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %phi.cmp125 = icmp eq i8 %13, 0
  %phi.sel = select i1 %phi.cmp, i1 true, i1 %phi.cmp125
  %14 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master_data_tbl, align 4
  %PPLL_SS_Info8 = getelementptr inbounds %struct._ATOM_MASTER_DATA_TABLE, ptr %15, i32 0, i32 1, i32 18
  %16 = ptrtoint ptr %PPLL_SS_Info8 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %PPLL_SS_Info8, align 1
  %conv9 = zext i16 %17 to i32
  %call10 = tail call ptr @bios_get_image(ptr noundef %bp, i32 noundef %conv9, i32 noundef 132) #6
  br i1 %phi.sel, label %get_atom_data_table_revision.exit.cleanup_crit_edge, label %if.end16

get_atom_data_table_revision.exit.cleanup_crit_edge: ; preds = %get_atom_data_table_revision.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %get_atom_data_table_revision.exit
  %18 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %id, label %if.end16.cleanup_crit_edge [
    i32 7, label %if.end16.if.end27_crit_edge
    i32 6, label %sw.bb17
  ]

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb17:                                          ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %panel_info) #6
  %19 = call ptr @memset(ptr %panel_info, i32 255, i32 68)
  %call19 = call i32 @bios_parser_get_embedded_panel_info(ptr noundef %bp, ptr noundef nonnull %panel_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %sw.epilog, label %sw.epilog.thread121

sw.epilog.thread121:                              ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %panel_info) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb17
  %ss_id = getelementptr inbounds %struct.embedded_panel_info, ptr %panel_info, i32 0, i32 1
  %20 = ptrtoint ptr %ss_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ss_id, align 4
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %panel_info) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp24 = icmp eq i32 %21, 0
  br i1 %cmp24, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.if.end27_crit_edge

sw.epilog.if.end27_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %sw.epilog.if.end27_crit_edge, %if.end16.if.end27_crit_edge
  %id_local.1120 = phi i32 [ %21, %sw.epilog.if.end27_crit_edge ], [ 241, %if.end16.if.end27_crit_edge ]
  %22 = ptrtoint ptr %call10 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %call10, align 1
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  %conv28 = zext i16 %24 to i32
  %sub = add nsw i32 %conv28, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %cmp29127.not = icmp ult i32 %sub, 8
  br i1 %cmp29127.not, label %if.end27.cleanup_crit_edge, label %for.body.preheader

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %if.end27
  %div114 = lshr i32 %sub, 3
  %umax = call i32 @llvm.umax.i32(i32 %div114, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0128 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %ucSS_Id = getelementptr %struct._ATOM_SPREAD_SPECTRUM_INFO, ptr %call10, i32 0, i32 1, i32 %i.0128, i32 4
  %25 = ptrtoint ptr %ucSS_Id to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ucSS_Id, align 1
  %conv31 = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %id_local.1120, i32 %conv31)
  %cmp32.not = icmp eq i32 %id_local.1120, %conv31
  br i1 %cmp32.not, label %if.end35, label %for.inc

if.end35:                                         ; preds = %for.body
  %arrayidx.le = getelementptr %struct._ATOM_SPREAD_SPECTRUM_INFO, ptr %call10, i32 0, i32 1, i32 %i.0128
  %27 = call ptr @memset(ptr %ss_info, i32 0, i32 28)
  %ucSpreadSpectrumType = getelementptr %struct._ATOM_SPREAD_SPECTRUM_INFO, ptr %call10, i32 0, i32 1, i32 %i.0128, i32 1
  %28 = ptrtoint ptr %ucSpreadSpectrumType to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ucSpreadSpectrumType, align 1
  %30 = and i8 %29, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool39.not = icmp eq i8 %30, 0
  br i1 %tobool39.not, label %if.end35.if.end41_crit_edge, label %if.then40

if.end35.if.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %ss_info to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %ss_info, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %ss_info, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end35.if.end41_crit_edge
  %32 = ptrtoint ptr %ucSpreadSpectrumType to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ucSpreadSpectrumType, align 1
  %34 = and i8 %33, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool47.not = icmp eq i8 %34, 0
  br i1 %tobool47.not, label %if.end41.if.end53_crit_edge, label %if.then48

if.end41.if.end53_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then48:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %ss_info to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load50 = load i8, ptr %ss_info, align 4
  %bf.set52 = or i8 %bf.load50, -128
  store i8 %bf.set52, ptr %ss_info, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %if.end41.if.end53_crit_edge
  %36 = ptrtoint ptr %ss_info to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load55 = load i8, ptr %ss_info, align 4
  %bf.set57 = or i8 %bf.load55, 32
  store i8 %bf.set57, ptr %ss_info, align 4
  %37 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %arrayidx.le, align 1
  %39 = call i16 @llvm.bswap.i16(i16 %38)
  %conv60 = zext i16 %39 to i32
  %spread_spectrum_percentage = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 1
  %40 = ptrtoint ptr %spread_spectrum_percentage to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv60, ptr %spread_spectrum_percentage, align 4
  %ucSS_Step = getelementptr %struct._ATOM_SPREAD_SPECTRUM_INFO, ptr %call10, i32 0, i32 1, i32 %i.0128, i32 2
  %41 = ptrtoint ptr %ucSS_Step to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ucSS_Step, align 1
  %conv63 = zext i8 %42 to i32
  %43 = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv63, ptr %43, align 4
  %ucSS_Delay = getelementptr %struct._ATOM_SPREAD_SPECTRUM_INFO, ptr %call10, i32 0, i32 1, i32 %i.0128, i32 3
  %45 = ptrtoint ptr %ucSS_Delay to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ucSS_Delay, align 1
  %conv66 = zext i8 %46 to i32
  %delay = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 4, i32 0, i32 1
  %47 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv66, ptr %delay, align 4
  %ucRecommendedRef_Div = getelementptr %struct._ATOM_SPREAD_SPECTRUM_INFO, ptr %call10, i32 0, i32 1, i32 %i.0128, i32 5
  %48 = ptrtoint ptr %ucRecommendedRef_Div to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ucRecommendedRef_Div, align 1
  %conv69 = zext i8 %49 to i32
  %recommended_ref_div = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 4, i32 0, i32 2
  %50 = ptrtoint ptr %recommended_ref_div to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv69, ptr %recommended_ref_div, align 4
  %ucSS_Range = getelementptr %struct._ATOM_SPREAD_SPECTRUM_INFO, ptr %call10, i32 0, i32 1, i32 %i.0128, i32 6
  %51 = ptrtoint ptr %ucSS_Range to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ucSS_Range, align 1
  %conv72 = zext i8 %52 to i32
  %mul = mul nuw nsw i32 %conv72, 10000
  %spread_spectrum_range = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 3
  %53 = ptrtoint ptr %spread_spectrum_range to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %mul, ptr %spread_spectrum_range, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0128, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end53, %if.end27.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.epilog.thread121, %if.end16.cleanup_crit_edge, %get_atom_data_table_revision.exit.cleanup_crit_edge, %get_atom_data_table_revision.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %entry.cleanup_crit_edge ], [ 3, %get_atom_data_table_revision.exit.cleanup_crit_edge ], [ 3, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end53 ], [ 3, %sw.epilog.thread121 ], [ 3, %if.end16.cleanup_crit_edge ], [ 3, %if.end27.cleanup_crit_edge ], [ 3, %get_atom_data_table_revision.exit.thread ], [ 3, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_ss_info_v3_1(ptr noundef %bp, i32 noundef %id, i32 noundef %index, ptr noundef %ss_info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ss_info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %master_data_tbl = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 3
  %0 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_data_tbl, align 4
  %ASIC_InternalSS_Info = getelementptr inbounds %struct._ATOM_MASTER_DATA_TABLE, ptr %1, i32 0, i32 1, i32 26
  %2 = ptrtoint ptr %ASIC_InternalSS_Info to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %ASIC_InternalSS_Info, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool1.not = icmp eq i16 %3, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %conv = zext i16 %3 to i32
  %call = tail call ptr @bios_get_image(ptr noundef %bp, i32 noundef %conv, i32 noundef 16) #6
  %4 = ptrtoint ptr %call to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %call, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv7 = zext i16 %6 to i32
  %sub = add nsw i32 %conv7, -4
  %asSpreadSpectrum = getelementptr inbounds %struct._ATOM_ASIC_INTERNAL_SS_INFO_V3, ptr %call, i32 0, i32 1
  %7 = call ptr @memset(ptr %ss_info, i32 0, i32 28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub)
  %8 = icmp ult i32 %sub, 12
  br i1 %8, label %if.end3.cleanup_crit_edge, label %for.body.lr.ph

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end3
  %div = udiv i32 %sub, 12
  %9 = trunc i32 %id to i8
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %table_index.091 = phi i32 [ 0, %for.body.lr.ph ], [ %table_index.1, %for.inc.for.body_crit_edge ]
  %i.089 = phi i32 [ 0, %for.body.lr.ph ], [ %inc55, %for.inc.for.body_crit_edge ]
  %ucClockIndication = getelementptr %struct._ATOM_ASIC_SS_ASSIGNMENT_V3, ptr %asSpreadSpectrum, i32 %i.089, i32 3
  %10 = ptrtoint ptr %ucClockIndication to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ucClockIndication, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %9)
  %cmp13.not = icmp eq i8 %11, %9
  br i1 %cmp13.not, label %if.end16, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end16:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %table_index.091, i32 %index)
  %cmp17.not = icmp eq i32 %table_index.091, %index
  br i1 %cmp17.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i32 %table_index.091, 1
  br label %for.inc

if.end20:                                         ; preds = %if.end16
  %arrayidx9.le = getelementptr %struct._ATOM_ASIC_SS_ASSIGNMENT_V3, ptr %asSpreadSpectrum, i32 %i.089
  %ucSpreadSpectrumMode = getelementptr %struct._ATOM_ASIC_SS_ASSIGNMENT_V3, ptr %asSpreadSpectrum, i32 %i.089, i32 4
  %12 = ptrtoint ptr %ucSpreadSpectrumMode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ucSpreadSpectrumMode, align 1
  %14 = and i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool23.not = icmp eq i8 %14, 0
  br i1 %tobool23.not, label %if.end20.if.end25_crit_edge, label %if.then24

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %ss_info to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %ss_info, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %ss_info, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end20.if.end25_crit_edge
  %16 = ptrtoint ptr %ucSpreadSpectrumMode to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ucSpreadSpectrumMode, align 1
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool30.not = icmp eq i8 %18, 0
  br i1 %tobool30.not, label %if.end25.if.end36_crit_edge, label %if.then31

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %ss_info to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load33 = load i8, ptr %ss_info, align 4
  %bf.set35 = or i8 %bf.load33, -128
  store i8 %bf.set35, ptr %ss_info, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %if.end25.if.end36_crit_edge
  %spread_percentage_divider = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 2
  %20 = ptrtoint ptr %spread_percentage_divider to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 100, ptr %spread_percentage_divider, align 4
  %21 = ptrtoint ptr %ucSpreadSpectrumMode to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ucSpreadSpectrumMode, align 1
  %23 = and i8 %22, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool41.not = icmp eq i8 %23, 0
  %spec.store.select = select i1 %tobool41.not, i32 100, i32 1000
  %24 = ptrtoint ptr %spread_percentage_divider to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.store.select, ptr %spread_percentage_divider, align 4
  %25 = ptrtoint ptr %ss_info to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load46 = load i8, ptr %ss_info, align 4
  %bf.clear47 = and i8 %bf.load46, -33
  store i8 %bf.clear47, ptr %ss_info, align 4
  %26 = ptrtoint ptr %arrayidx9.le to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %arrayidx9.le, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %mul = mul i32 %28, 10
  %29 = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul, ptr %29, align 4
  %usSpreadSpectrumPercentage = getelementptr %struct._ATOM_ASIC_SS_ASSIGNMENT_V3, ptr %asSpreadSpectrum, i32 %i.089, i32 1
  %31 = ptrtoint ptr %usSpreadSpectrumPercentage to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %usSpreadSpectrumPercentage, align 1
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  %conv51 = zext i16 %33 to i32
  %spread_spectrum_percentage = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 1
  %34 = ptrtoint ptr %spread_spectrum_percentage to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv51, ptr %spread_spectrum_percentage, align 4
  %usSpreadRateIn10Hz = getelementptr %struct._ATOM_ASIC_SS_ASSIGNMENT_V3, ptr %asSpreadSpectrum, i32 %i.089, i32 2
  %35 = ptrtoint ptr %usSpreadRateIn10Hz to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %usSpreadRateIn10Hz, align 1
  %37 = tail call i16 @llvm.bswap.i16(i16 %36)
  %conv53 = zext i16 %37 to i32
  %mul54 = mul nuw nsw i32 %conv53, 10
  %spread_spectrum_range = getelementptr inbounds %struct.spread_spectrum_info, ptr %ss_info, i32 0, i32 3
  %38 = ptrtoint ptr %spread_spectrum_range to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %mul54, ptr %spread_spectrum_range, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.then19, %for.body.for.inc_crit_edge
  %table_index.1 = phi i32 [ %table_index.091, %for.body.for.inc_crit_edge ], [ %inc, %if.then19 ]
  %inc55 = add nuw nsw i32 %i.089, 1
  %exitcond.not = icmp eq i32 %inc55, %umax
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end36, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ 1, %entry.cleanup_crit_edge ], [ 3, %if.end.cleanup_crit_edge ], [ 4, %if.end3.cleanup_crit_edge ], [ 4, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_ss_entry_number_from_ss_info_tbl(ptr noundef %bp, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  %panel_info = alloca %struct.embedded_panel_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %master_data_tbl = getelementptr inbounds %struct.bios_parser, ptr %bp, i32 0, i32 3
  %0 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_data_tbl, align 4
  %PPLL_SS_Info = getelementptr inbounds %struct._ATOM_MASTER_DATA_TABLE, ptr %1, i32 0, i32 1, i32 18
  %2 = ptrtoint ptr %PPLL_SS_Info to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %PPLL_SS_Info, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %3 to i32
  %call = tail call ptr @bios_get_image(ptr noundef %bp, i32 noundef %conv, i32 noundef 4) #6
  %tobool1.not.i = icmp eq ptr %call, null
  br i1 %tobool1.not.i, label %get_atom_data_table_revision.exit.thread, label %get_atom_data_table_revision.exit

get_atom_data_table_revision.exit.thread:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master_data_tbl, align 4
  %PPLL_SS_Info767 = getelementptr inbounds %struct._ATOM_MASTER_DATA_TABLE, ptr %5, i32 0, i32 1, i32 18
  %6 = ptrtoint ptr %PPLL_SS_Info767 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %PPLL_SS_Info767, align 1
  %conv868 = zext i16 %7 to i32
  %call969 = tail call ptr @bios_get_image(ptr noundef %bp, i32 noundef %conv868, i32 noundef 132) #6
  br label %cleanup

get_atom_data_table_revision.exit:                ; preds = %if.end
  %ucTableFormatRevision.i = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %ucTableFormatRevision.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ucTableFormatRevision.i, align 1
  %10 = and i8 %9, 63
  %ucTableContentRevision.i = getelementptr inbounds %struct._ATOM_COMMON_TABLE_HEADER, ptr %call, i32 0, i32 2
  %11 = ptrtoint ptr %ucTableContentRevision.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ucTableContentRevision.i, align 1
  %13 = and i8 %12, 62
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %phi.cmp = icmp ne i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %phi.cmp62 = icmp eq i8 %13, 0
  %phi.sel = select i1 %phi.cmp, i1 true, i1 %phi.cmp62
  %14 = ptrtoint ptr %master_data_tbl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master_data_tbl, align 4
  %PPLL_SS_Info7 = getelementptr inbounds %struct._ATOM_MASTER_DATA_TABLE, ptr %15, i32 0, i32 1, i32 18
  %16 = ptrtoint ptr %PPLL_SS_Info7 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %PPLL_SS_Info7, align 1
  %conv8 = zext i16 %17 to i32
  %call9 = tail call ptr @bios_get_image(ptr noundef %bp, i32 noundef %conv8, i32 noundef 132) #6
  br i1 %phi.sel, label %get_atom_data_table_revision.exit.cleanup_crit_edge, label %if.end14

get_atom_data_table_revision.exit.cleanup_crit_edge: ; preds = %get_atom_data_table_revision.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %get_atom_data_table_revision.exit
  %18 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %id, label %if.end14.cleanup_crit_edge [
    i32 7, label %if.end14.if.end25_crit_edge
    i32 6, label %sw.bb15
  ]

if.end14.if.end25_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb15:                                          ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %panel_info) #6
  %19 = call ptr @memset(ptr %panel_info, i32 255, i32 68)
  %call17 = call i32 @bios_parser_get_embedded_panel_info(ptr noundef %bp, ptr noundef nonnull %panel_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %sw.epilog, label %sw.epilog.thread59

sw.epilog.thread59:                               ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %panel_info) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb15
  %ss_id = getelementptr inbounds %struct.embedded_panel_info, ptr %panel_info, i32 0, i32 1
  %20 = ptrtoint ptr %ss_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ss_id, align 4
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %panel_info) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp22 = icmp eq i32 %21, 0
  br i1 %cmp22, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.if.end25_crit_edge

sw.epilog.if.end25_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %sw.epilog.if.end25_crit_edge, %if.end14.if.end25_crit_edge
  %id_local.158 = phi i32 [ %21, %sw.epilog.if.end25_crit_edge ], [ 241, %if.end14.if.end25_crit_edge ]
  %22 = ptrtoint ptr %call9 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %call9, align 1
  %24 = call i16 @llvm.bswap.i16(i16 %23)
  %conv26 = zext i16 %24 to i32
  %sub = add nsw i32 %conv26, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %cmp2763.not = icmp ult i32 %sub, 8
  br i1 %cmp2763.not, label %if.end25.cleanup_crit_edge, label %for.body.preheader

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %if.end25
  %div52 = lshr i32 %sub, 3
  %umax = call i32 @llvm.umax.i32(i32 %div52, i32 1)
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.064 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %ucSS_Id = getelementptr %struct._ATOM_SPREAD_SPECTRUM_INFO, ptr %call9, i32 0, i32 1, i32 %i.064, i32 4
  %25 = ptrtoint ptr %ucSS_Id to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ucSS_Id, align 1
  %conv29 = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %id_local.158, i32 %conv29)
  %cmp30 = icmp eq i32 %id_local.158, %conv29
  br i1 %cmp30, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.epilog.thread59, %if.end14.cleanup_crit_edge, %get_atom_data_table_revision.exit.cleanup_crit_edge, %get_atom_data_table_revision.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %get_atom_data_table_revision.exit.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %sw.epilog.thread59 ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ], [ 0, %get_atom_data_table_revision.exit.thread ], [ 1, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bios_set_scratch_critical_state(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c", i32 110, i32 2}
!2 = !{ptr @__func__.bios_parser_create, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @vbios_funcs, !4, !"vbios_funcs", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c", i32 2779, i32 36}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c", i32 173, i32 3}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c", i32 178, i32 3}
!9 = !{ptr @__func__.bios_parser_get_src_obj, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c", i32 203, i32 3}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c", i32 1931, i32 3}
!13 = !{ptr @__func__.dal_graphics_object_id_is_equal, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c", i32 1937, i32 3}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c", i32 2001, i32 3}
!18 = distinct !{null, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c", i32 872, i32 3}
!20 = !{ptr @__func__.bios_parser_get_device_tag, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c", i32 345, i32 3}
!22 = !{ptr @__func__.device_type_from_device_id, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c", i32 2078, i32 3}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c", i32 1508, i32 3}
!26 = !{ptr @__func__.bios_parser_destroy, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c", i32 125, i32 3}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c", i32 2749, i32 3}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c", i32 2705, i32 3}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/bios_parser.c", i32 2573, i32 3}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"device_type_from_device_id: %agg.result"}
!45 = distinct !{!45, !"device_type_from_device_id"}
