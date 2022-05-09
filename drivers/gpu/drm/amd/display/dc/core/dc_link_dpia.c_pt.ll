; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/core/dc_link_dpia.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dpia.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
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
%struct.link_training_settings = type { %struct.dc_link_settings, [4 x %struct.dc_lane_settings], ptr, ptr, ptr, i8, i16, i16, i16, i32, i32, i8, i32, i8, i8, [4 x %struct.dc_lane_settings], [4 x %union.dpcd_training_lane] }
%union.dpcd_training_lane = type { %struct.anon.14 }
%struct.anon.14 = type { i8 }
%union.dpcd_training_pattern = type { %struct.anon.70 }
%struct.anon.70 = type { i8 }
%struct.set_config_cmd_payload = type { i8, i8 }
%union.lane_status = type { %struct.anon.64 }
%struct.anon.64 = type { i8 }
%union.lane_align_status_updated = type { %struct.anon.65 }
%struct.anon.65 = type { i8 }
%union.lane_adjust = type { %struct.anon.66 }
%struct.anon.66 = type { i8 }

@dpia_configure_link.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"amdgpu\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dpia_configure_link\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dpia.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[HW_LINK_TRAINING]:%s\0A DPIA(%d) configuring\0A - LTTPR mode(%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@dpia_training_cr_non_transparent.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dpia_training_cr_non_transparent\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"[HW_LINK_TRAINING]:%s\0A DPIA(%d) clock recovery\0A -hop(%d)\0A - result(%d)\0A - retries(%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@convert_trng_ptn_to_trng_stg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dpcd_set_lt_pattern.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dpcd_set_lt_pattern\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"[HW_LINK_TRAINING]:%s\0A LTTPR Repeater ID: %d\0A 0x%X pattern = %x\0A\00", [63 x i8] zeroinitializer }, align 32
@dpcd_set_lt_pattern.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[HW_LINK_TRAINING]:%s\0A 0x%X pattern = %x\0A\00", [54 x i8] zeroinitializer }, align 32
@dpia_training_cr_transparent.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.5, i8 0, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dpia_training_cr_transparent\00", [35 x i8] zeroinitializer }, align 32
@dpia_training_eq_non_transparent.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 -82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dpia_training_eq_non_transparent\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"[HW_LINK_TRAINING]:%s\0A DPIA(%d) equalization\0A - hop(%d)\0A - result(%d)\0A - retries(%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@dpia_training_eq_transparent.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.11, i8 0, i8 -61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dpia_training_eq_transparent\00", [35 x i8] zeroinitializer }, align 32
@dpia_training_end.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 -34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dpia_training_end\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"[HW_LINK_TRAINING]:%s\0A DPIA(%d) end\0A - hop(%d)\0A - result(%d)\0A - LTTPR mode(%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@dpia_training_abort.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 -29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dpia_training_abort\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"[HW_LINK_TRAINING]:%s\0A DPIA(%d) aborting\0A - LTTPR mode(%d)\0A - HPD(%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 89, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 398, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 226, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 232, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 502, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 691, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 776, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 883, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [64 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dpia.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 905, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpcd_get_tunneling_device_data(ptr noundef %link) local_unnamed_addr #0 align 64 {
entry:
  %dpcd_dp_tun_data = alloca [3 x i8], align 1
  %dpcd_topology_data = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %dpcd_dp_tun_data) #4
  %0 = call ptr @memset(ptr %dpcd_dp_tun_data, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %dpcd_topology_data) #4
  %1 = call ptr @memset(ptr %dpcd_topology_data, i32 0, i32 5)
  %call = call i32 @core_link_read_dpcd(ptr noundef %link, i32 noundef 917517, ptr noundef nonnull %dpcd_dp_tun_data, i32 noundef 3) #4
  %call2 = call i32 @core_link_read_dpcd(ptr noundef %link, i32 noundef 917531, ptr noundef nonnull %dpcd_topology_data, i32 noundef 5) #4
  %2 = ptrtoint ptr %dpcd_dp_tun_data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dpcd_dp_tun_data, align 1
  %usb4_dp_tun_info = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43, i32 27
  %4 = ptrtoint ptr %usb4_dp_tun_info to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %usb4_dp_tun_info, align 4
  %arrayidx3 = getelementptr inbounds [3 x i8], ptr %dpcd_dp_tun_data, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3, align 1
  %dpia_info = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43, i32 27, i32 1
  %7 = ptrtoint ptr %dpia_info to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %dpia_info, align 1
  %arrayidx6 = getelementptr inbounds [3 x i8], ptr %dpcd_dp_tun_data, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6, align 1
  %usb4_driver_id = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43, i32 27, i32 2
  %10 = ptrtoint ptr %usb4_driver_id to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %usb4_driver_id, align 2
  %uglygep = getelementptr i8, ptr %link, i32 463
  %11 = call ptr @memcpy(ptr %uglygep, ptr %dpcd_topology_data, i32 5)
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %dpcd_topology_data) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %dpcd_dp_tun_data) #4
  ret i32 %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_link_read_dpcd(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dc_link_dpia_perform_link_training(ptr noundef %link, ptr noundef %link_res, ptr noundef %link_setting, i1 noundef zeroext %skip_video_pattern) local_unnamed_addr #0 align 64 {
entry:
  %lt_settings = alloca %struct.link_training_settings, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %lt_settings) #4
  %0 = call ptr @memset(ptr %lt_settings, i32 255, i32 156)
  %call = call fastcc i32 @dpia_configure_link(ptr noundef %link, ptr noundef %link_res, ptr noundef %link_setting, ptr noundef nonnull %lt_settings)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %lttpr_mode = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 13
  %1 = ptrtoint ptr %lttpr_mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lttpr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp1 = icmp eq i32 %2, 2
  br i1 %cmp1, label %if.end4, label %if.end.for.body.preheader_crit_edge

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

if.end4:                                          ; preds = %if.end
  %phy_repeater_cnt = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43, i32 25, i32 4
  %3 = ptrtoint ptr %phy_repeater_cnt to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %phy_repeater_cnt, align 1
  %call3 = call zeroext i8 @dp_convert_to_count(i8 noundef zeroext %4) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call3)
  %cmp574 = icmp sgt i8 %call3, -1
  br i1 %cmp574, label %if.end4.for.body.preheader_crit_edge, label %if.end4.if.then27_crit_edge

if.end4.if.then27_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then27

if.end4.for.body.preheader_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end4.for.body.preheader_crit_edge, %if.end.for.body.preheader_crit_edge
  %repeater_cnt.080 = phi i8 [ %call3, %if.end4.for.body.preheader_crit_edge ], [ 0, %if.end.for.body.preheader_crit_edge ]
  %5 = zext i8 %repeater_cnt.080 to i32
  br label %for.body

for.cond:                                         ; preds = %if.end18
  %indvars.iv.next = add nsw i32 %indvars.iv, -1
  %cmp5 = icmp sgt i32 %indvars.iv, 0
  br i1 %cmp5, label %for.cond.for.body_crit_edge, label %for.cond.if.then27_crit_edge

for.cond.if.then27_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then27

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %indvars.iv = phi i32 [ %5, %for.body.preheader ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %6 = ptrtoint ptr %lttpr_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lttpr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp eq i32 %7, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = call fastcc i32 @dpia_training_cr_non_transparent(ptr noundef %link, ptr noundef nonnull %lt_settings, i32 noundef %indvars.iv) #4
  br label %dpia_training_cr_phase.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i = call fastcc i32 @dpia_training_cr_transparent(ptr noundef %link, ptr noundef nonnull %lt_settings) #4
  br label %dpia_training_cr_phase.exit

dpia_training_cr_phase.exit:                      ; preds = %if.else.i, %if.then.i
  %result.0.i = phi i32 [ %call.i, %if.then.i ], [ %call1.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.i)
  %cmp9.not = icmp eq i32 %result.0.i, 0
  br i1 %cmp9.not, label %if.end12, label %dpia_training_cr_phase.exit.for.end_crit_edge

dpia_training_cr_phase.exit.for.end_crit_edge:    ; preds = %dpia_training_cr_phase.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end12:                                         ; preds = %dpia_training_cr_phase.exit
  %8 = ptrtoint ptr %lttpr_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lttpr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i65 = icmp eq i32 %9, 2
  br i1 %cmp.i65, label %if.then.i67, label %if.else.i69

if.then.i67:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %call.i66 = call fastcc i32 @dpia_training_eq_non_transparent(ptr noundef %link, ptr noundef nonnull %lt_settings, i32 noundef %indvars.iv) #4
  br label %dpia_training_eq_phase.exit

if.else.i69:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i68 = call fastcc i32 @dpia_training_eq_transparent(ptr noundef %link, ptr noundef nonnull %lt_settings) #4
  br label %dpia_training_eq_phase.exit

dpia_training_eq_phase.exit:                      ; preds = %if.else.i69, %if.then.i67
  %result.0.i70 = phi i32 [ %call.i66, %if.then.i67 ], [ %call1.i68, %if.else.i69 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.i70)
  %cmp15.not = icmp eq i32 %result.0.i70, 0
  br i1 %cmp15.not, label %if.end18, label %dpia_training_eq_phase.exit.for.end_crit_edge

dpia_training_eq_phase.exit.for.end_crit_edge:    ; preds = %dpia_training_eq_phase.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end18:                                         ; preds = %dpia_training_eq_phase.exit
  %call20 = call fastcc i32 @dpia_training_end(ptr noundef %link, i32 noundef %indvars.iv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %for.cond, label %if.end18.for.end_crit_edge

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %if.end18.for.end_crit_edge, %dpia_training_eq_phase.exit.for.end_crit_edge, %dpia_training_cr_phase.exit.for.end_crit_edge
  %result.1 = phi i32 [ %result.0.i, %dpia_training_cr_phase.exit.for.end_crit_edge ], [ %result.0.i70, %dpia_training_eq_phase.exit.for.end_crit_edge ], [ %call20, %if.end18.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %result.1)
  %cond = icmp eq i32 %result.1, 8
  br i1 %cond, label %if.then31, label %if.else33

if.then27:                                        ; preds = %for.cond.if.then27_crit_edge, %if.end4.if.then27_crit_edge
  call void @msleep(i32 noundef 5) #4
  %call28 = call i32 @dp_check_link_loss_status(ptr noundef %link, ptr noundef nonnull %lt_settings) #4
  br label %cleanup

if.then31:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  call fastcc void @dpia_training_abort(ptr noundef %link, i32 noundef %indvars.iv)
  br label %cleanup

if.else33:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %call35 = call fastcc i32 @dpia_training_end(ptr noundef %link, i32 noundef %indvars.iv)
  br label %cleanup

cleanup:                                          ; preds = %if.else33, %if.then31, %if.then27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call28, %if.then27 ], [ 8, %if.then31 ], [ %result.1, %if.else33 ]
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %lt_settings) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpia_configure_link(ptr noundef %link, ptr noundef %link_res, ptr noundef %link_setting, ptr noundef %lt_settings) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpia_configure_link.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpia_configure_link, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !48

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %link_id = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 39
  %0 = ptrtoint ptr %link_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %link_id, align 4
  %bf.lshr = lshr i32 %bf.load, 20
  %bf.clear = and i32 %bf.lshr, 15
  %sub = add nsw i32 %bf.clear, -1
  %lttpr_mode = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 13
  %1 = ptrtoint ptr %lttpr_mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lttpr_mode, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpia_configure_link.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %sub, i32 noundef %2) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @dp_decide_training_settings(ptr noundef %link, ptr noundef %link_setting, ptr noundef %lt_settings) #4
  %call3 = tail call i32 @dpcd_configure_channel_coding(ptr noundef %link, ptr noundef %lt_settings) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 1
  br i1 %cmp.not, label %do.end.if.end6_crit_edge, label %land.lhs.true

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

land.lhs.true:                                    ; preds = %do.end
  %is_hpd_pending = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 17
  %3 = ptrtoint ptr %is_hpd_pending to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_hpd_pending, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end6_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %do.end.if.end6_crit_edge
  %call7 = tail call i32 @dpcd_configure_lttpr_mode(ptr noundef %link, ptr noundef %lt_settings) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 1
  br i1 %cmp8.not, label %if.end6.if.end13_crit_edge, label %land.lhs.true9

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

land.lhs.true9:                                   ; preds = %if.end6
  %is_hpd_pending10 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 17
  %5 = ptrtoint ptr %is_hpd_pending10 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_hpd_pending10, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool11.not = icmp eq i8 %6, 0
  br i1 %tobool11.not, label %land.lhs.true9.if.end13_crit_edge, label %land.lhs.true9.cleanup_crit_edge

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true9.if.end13_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true9.if.end13_crit_edge, %if.end6.if.end13_crit_edge
  %call14 = tail call i32 @dpcd_set_link_settings(ptr noundef %link, ptr noundef %lt_settings) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 1
  br i1 %cmp15.not, label %if.end13.if.end20_crit_edge, label %land.lhs.true16

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

land.lhs.true16:                                  ; preds = %if.end13
  %is_hpd_pending17 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 17
  %7 = ptrtoint ptr %is_hpd_pending17 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_hpd_pending17, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool18.not = icmp eq i8 %8, 0
  br i1 %tobool18.not, label %land.lhs.true16.if.end20_crit_edge, label %land.lhs.true16.cleanup_crit_edge

land.lhs.true16.cleanup_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true16.if.end20_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true16.if.end20_crit_edge, %if.end13.if.end20_crit_edge
  %fec_enable21 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 24, i32 11
  %9 = ptrtoint ptr %fec_enable21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fec_enable21, align 4
  %tobool22.not = icmp eq ptr %10, null
  br i1 %tobool22.not, label %if.end20.if.end28_crit_edge, label %if.then23

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool26 = icmp ne i8 %12, 0
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.end20.if.end28_crit_edge
  %fec_enable.0.off0 = phi i1 [ %tobool26, %if.then23 ], [ true, %if.end20.if.end28_crit_edge ]
  %call30 = tail call i32 @dp_set_fec_ready(ptr noundef %link, ptr noundef %link_res, i1 noundef zeroext %fec_enable.0.off0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call30)
  %cmp31.not = icmp eq i32 %call30, 1
  br i1 %cmp31.not, label %if.end28.if.end36_crit_edge, label %land.lhs.true32

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

land.lhs.true32:                                  ; preds = %if.end28
  %is_hpd_pending33 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 17
  %13 = ptrtoint ptr %is_hpd_pending33 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_hpd_pending33, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool34.not = icmp eq i8 %14, 0
  br i1 %tobool34.not, label %land.lhs.true32.if.end36_crit_edge, label %land.lhs.true32.cleanup_crit_edge

land.lhs.true32.cleanup_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true32.if.end36_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.end36:                                         ; preds = %land.lhs.true32.if.end36_crit_edge, %if.end28.if.end36_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %land.lhs.true32.cleanup_crit_edge, %land.lhs.true16.cleanup_crit_edge, %land.lhs.true9.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ 8, %land.lhs.true.cleanup_crit_edge ], [ 8, %land.lhs.true9.cleanup_crit_edge ], [ 8, %land.lhs.true16.cleanup_crit_edge ], [ 8, %land.lhs.true32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dp_convert_to_count(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpia_training_end(ptr noundef %link, i32 noundef %hop) unnamed_addr #0 align 64 {
entry:
  %dpcd_pattern.i77 = alloca %union.dpcd_training_pattern, align 1
  %payload.i61 = alloca %struct.set_config_cmd_payload, align 1
  %set_config_result.i62 = alloca i32, align 4
  %dpcd_pattern.i = alloca %union.dpcd_training_pattern, align 1
  %payload.i = alloca %struct.set_config_cmd_payload, align 1
  %set_config_result.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lttpr_mode = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 13
  %0 = ptrtoint ptr %lttpr_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lttpr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else25

if.then:                                          ; preds = %entry
  %phy_repeater_cnt = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43, i32 25, i32 4
  %2 = ptrtoint ptr %phy_repeater_cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %phy_repeater_cnt, align 1
  %call = tail call zeroext i8 @dp_convert_to_count(i8 noundef zeroext %3) #4
  %conv = zext i8 %call to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %hop)
  %cmp1 = icmp eq i32 %conv, %hop
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload.i) #4
  %4 = getelementptr inbounds %struct.set_config_cmd_payload, ptr %payload.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set_config_result.i) #4
  %5 = ptrtoint ptr %set_config_result.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %set_config_result.i, align 4
  %6 = ptrtoint ptr %payload.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 24, ptr %payload.i, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %4, align 1
  %ddc.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 33
  %8 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ddc.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then3.core_link_send_set_config.exit_crit_edge

if.then3.core_link_send_set_config.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %core_link_send_set_config.exit

land.lhs.true.i:                                  ; preds = %if.then3
  %aux_access_disabled.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 11
  %12 = ptrtoint ptr %aux_access_disabled.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %aux_access_disabled.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not.i = icmp eq i8 %13, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.core_link_send_set_config.exit_crit_edge

land.lhs.true.i.core_link_send_set_config.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %core_link_send_set_config.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %ctx.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %14 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx.i, align 8
  %call.i = call i32 @dm_helpers_dmub_set_config_sync(ptr noundef %15, ptr noundef %link, ptr noundef nonnull %payload.i, ptr noundef nonnull %set_config_result.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -1
  br i1 %cmp.i, label %core_link_send_set_config.exit.thread, label %land.lhs.true4.i.core_link_send_set_config.exit_crit_edge

land.lhs.true4.i.core_link_send_set_config.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %core_link_send_set_config.exit

core_link_send_set_config.exit.thread:            ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set_config_result.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i) #4
  br label %do.body

core_link_send_set_config.exit:                   ; preds = %land.lhs.true4.i.core_link_send_set_config.exit_crit_edge, %land.lhs.true.i.core_link_send_set_config.exit_crit_edge, %if.then3.core_link_send_set_config.exit_crit_edge
  %16 = ptrtoint ptr %set_config_result.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %set_config_result.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp5.i = icmp eq i32 %17, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set_config_result.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i) #4
  br i1 %cmp5.i, label %core_link_send_set_config.exit.if.end13_crit_edge, label %core_link_send_set_config.exit.do.body_crit_edge

core_link_send_set_config.exit.do.body_crit_edge: ; preds = %core_link_send_set_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

core_link_send_set_config.exit.if.end13_crit_edge: ; preds = %core_link_send_set_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dpcd_pattern.i) #4
  %18 = ptrtoint ptr %dpcd_pattern.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %dpcd_pattern.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hop)
  %cmp.not.i = icmp eq i32 %hop, 0
  %19 = mul i32 %hop, 80
  %add.i = add i32 %19, 982976
  %dpcd_tps_offset.0.i = select i1 %cmp.not.i, i32 258, i32 %add.i
  %call.i60 = call i32 @core_link_write_dpcd(ptr noundef %link, i32 noundef %dpcd_tps_offset.0.i, ptr noundef nonnull %dpcd_pattern.i, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpcd_pattern.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i60)
  %cmp9.not = icmp eq i32 %call.i60, 1
  %spec.select56 = select i1 %cmp9.not, i32 0, i32 8
  %phi.bo = xor i1 %cmp9.not, true
  br label %if.end13

if.end13:                                         ; preds = %if.else, %core_link_send_set_config.exit.if.end13_crit_edge
  %cmp16.not.in = phi i1 [ %phi.bo, %if.else ], [ false, %core_link_send_set_config.exit.if.end13_crit_edge ]
  %result.0 = phi i32 [ %spec.select56, %if.else ], [ 0, %core_link_send_set_config.exit.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hop)
  %cmp14 = icmp ne i32 %hop, 0
  %brmerge = select i1 %cmp14, i1 true, i1 %cmp16.not.in
  %result.0.mux = select i1 %cmp14, i32 %result.0, i32 8
  br i1 %brmerge, label %if.end13.do.body_crit_edge, label %if.then18

if.end13.do.body_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then18:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload.i61) #4
  %20 = getelementptr inbounds %struct.set_config_cmd_payload, ptr %payload.i61, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set_config_result.i62) #4
  %21 = ptrtoint ptr %set_config_result.i62 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %set_config_result.i62, align 4
  %22 = ptrtoint ptr %payload.i61 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 24, ptr %payload.i61, align 1
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %20, align 1
  %ddc.i63 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 33
  %24 = ptrtoint ptr %ddc.i63 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ddc.i63, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool.not.i64 = icmp eq ptr %27, null
  br i1 %tobool.not.i64, label %land.lhs.true.i67, label %if.then18.if.end.i74_crit_edge

if.then18.if.end.i74_crit_edge:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i74

land.lhs.true.i67:                                ; preds = %if.then18
  %aux_access_disabled.i65 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 11
  %28 = ptrtoint ptr %aux_access_disabled.i65 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %aux_access_disabled.i65, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool3.not.i66 = icmp eq i8 %29, 0
  br i1 %tobool3.not.i66, label %land.lhs.true4.i71, label %land.lhs.true.i67.if.end.i74_crit_edge

land.lhs.true.i67.if.end.i74_crit_edge:           ; preds = %land.lhs.true.i67
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i74

land.lhs.true4.i71:                               ; preds = %land.lhs.true.i67
  %ctx.i68 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %30 = ptrtoint ptr %ctx.i68 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctx.i68, align 8
  %call.i69 = call i32 @dm_helpers_dmub_set_config_sync(ptr noundef %31, ptr noundef %link, ptr noundef nonnull %payload.i61, ptr noundef nonnull %set_config_result.i62) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i69)
  %cmp.i70 = icmp eq i32 %call.i69, -1
  br i1 %cmp.i70, label %land.lhs.true4.i71.core_link_send_set_config.exit76.thread_crit_edge, label %land.lhs.true4.i71.if.end.i74_crit_edge

land.lhs.true4.i71.if.end.i74_crit_edge:          ; preds = %land.lhs.true4.i71
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i74

land.lhs.true4.i71.core_link_send_set_config.exit76.thread_crit_edge: ; preds = %land.lhs.true4.i71
  call void @__sanitizer_cov_trace_pc() #6
  br label %core_link_send_set_config.exit76.thread

if.end.i74:                                       ; preds = %land.lhs.true4.i71.if.end.i74_crit_edge, %land.lhs.true.i67.if.end.i74_crit_edge, %if.then18.if.end.i74_crit_edge
  %32 = ptrtoint ptr %set_config_result.i62 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %set_config_result.i62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp5.i72 = icmp eq i32 %33, 1
  br i1 %cmp5.i72, label %34, label %if.end.i74.core_link_send_set_config.exit76.thread_crit_edge

if.end.i74.core_link_send_set_config.exit76.thread_crit_edge: ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #6
  br label %core_link_send_set_config.exit76.thread

core_link_send_set_config.exit76.thread:          ; preds = %if.end.i74.core_link_send_set_config.exit76.thread_crit_edge, %land.lhs.true4.i71.core_link_send_set_config.exit76.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set_config_result.i62) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i61) #4
  br label %do.body

34:                                               ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set_config_result.i62) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i61) #4
  br label %do.body

if.else25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dpcd_pattern.i77) #4
  %35 = ptrtoint ptr %dpcd_pattern.i77 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %dpcd_pattern.i77, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hop)
  %cmp.not.i78 = icmp eq i32 %hop, 0
  %36 = mul i32 %hop, 80
  %add.i79 = add i32 %36, 982976
  %dpcd_tps_offset.0.i80 = select i1 %cmp.not.i78, i32 258, i32 %add.i79
  %call.i81 = call i32 @core_link_write_dpcd(ptr noundef %link, i32 noundef %dpcd_tps_offset.0.i80, ptr noundef nonnull %dpcd_pattern.i77, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpcd_pattern.i77) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i81)
  %cmp27.not = icmp eq i32 %call.i81, 1
  %spec.select58 = select i1 %cmp27.not, i32 0, i32 8
  br label %do.body

do.body:                                          ; preds = %if.else25, %34, %core_link_send_set_config.exit76.thread, %if.end13.do.body_crit_edge, %core_link_send_set_config.exit.do.body_crit_edge, %core_link_send_set_config.exit.thread
  %result.1 = phi i32 [ %result.0.mux, %if.end13.do.body_crit_edge ], [ %spec.select58, %if.else25 ], [ %result.0, %34 ], [ 8, %core_link_send_set_config.exit76.thread ], [ 8, %core_link_send_set_config.exit.do.body_crit_edge ], [ 8, %core_link_send_set_config.exit.thread ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpia_training_end.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpia_training_end, %if.then35)) #4
          to label %do.end [label %if.then35], !srcloc !48

if.then35:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %link_id = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 39
  %37 = ptrtoint ptr %link_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %bf.load = load i32, ptr %link_id, align 4
  %bf.lshr = lshr i32 %bf.load, 20
  %bf.clear = and i32 %bf.lshr, 15
  %sub = add nsw i32 %bf.clear, -1
  %38 = ptrtoint ptr %lttpr_mode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lttpr_mode, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpia_training_end.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, i32 noundef %sub, i32 noundef %hop, i32 noundef %result.1, i32 noundef %39) #4
  br label %do.end

do.end:                                           ; preds = %if.then35, %do.body
  ret i32 %result.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_check_link_loss_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dpia_training_abort(ptr noundef %link, i32 noundef %hop) unnamed_addr #0 align 64 {
entry:
  %payload.i = alloca %struct.set_config_cmd_payload, align 1
  %set_config_result.i = alloca i32, align 4
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %data, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpia_training_abort.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpia_training_abort, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !48

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %link_id = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 39
  %1 = ptrtoint ptr %link_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load = load i32, ptr %link_id, align 4
  %bf.lshr = lshr i32 %bf.load, 20
  %bf.clear = and i32 %bf.lshr, 15
  %sub = add nsw i32 %bf.clear, -1
  %lttpr_mode = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 13
  %2 = ptrtoint ptr %lttpr_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lttpr_mode, align 4
  %is_hpd_pending = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 17
  %4 = ptrtoint ptr %is_hpd_pending to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_hpd_pending, align 1, !range !49
  %6 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpia_training_abort.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef %sub, i32 noundef %3, i32 noundef %6) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %is_hpd_pending4 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 17
  %7 = ptrtoint ptr %is_hpd_pending4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_hpd_pending4, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hop)
  %cmp.not = icmp eq i32 %hop, 0
  %9 = mul i32 %hop, 80
  %add = add i32 %9, 982976
  %dpcd_tps_offset.0 = select i1 %cmp.not, i32 258, i32 %add
  %call12 = call i32 @core_link_write_dpcd(ptr noundef %link, i32 noundef %dpcd_tps_offset.0, ptr noundef nonnull %data, i32 noundef 1) #4
  %call13 = call i32 @core_link_write_dpcd(ptr noundef %link, i32 noundef 256, ptr noundef nonnull %data, i32 noundef 1) #4
  %call14 = call i32 @core_link_write_dpcd(ptr noundef %link, i32 noundef 257, ptr noundef nonnull %data, i32 noundef 1) #4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload.i) #4
  %12 = getelementptr inbounds %struct.set_config_cmd_payload, ptr %payload.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set_config_result.i) #4
  %13 = ptrtoint ptr %set_config_result.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %set_config_result.i, align 4
  %14 = ptrtoint ptr %payload.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %payload.i, align 1
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %11, ptr %12, align 1
  %ddc.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 33
  %16 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ddc.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end7.core_link_send_set_config.exit_crit_edge

if.end7.core_link_send_set_config.exit_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %core_link_send_set_config.exit

land.lhs.true.i:                                  ; preds = %if.end7
  %aux_access_disabled.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 11
  %20 = ptrtoint ptr %aux_access_disabled.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %aux_access_disabled.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool3.not.i = icmp eq i8 %21, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.core_link_send_set_config.exit_crit_edge

land.lhs.true.i.core_link_send_set_config.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %core_link_send_set_config.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %ctx.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %22 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx.i, align 8
  %call.i = call i32 @dm_helpers_dmub_set_config_sync(ptr noundef %23, ptr noundef %link, ptr noundef nonnull %payload.i, ptr noundef nonnull %set_config_result.i) #4
  br label %core_link_send_set_config.exit

core_link_send_set_config.exit:                   ; preds = %land.lhs.true4.i, %land.lhs.true.i.core_link_send_set_config.exit_crit_edge, %if.end7.core_link_send_set_config.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set_config_result.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i) #4
  br label %cleanup

cleanup:                                          ; preds = %core_link_send_set_config.exit, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_decide_training_settings(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpcd_configure_channel_coding(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpcd_configure_lttpr_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpcd_set_link_settings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_set_fec_ready(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpia_training_cr_non_transparent(ptr noundef %link, ptr noundef %lt_settings, i32 noundef %hop) unnamed_addr #0 align 64 {
entry:
  %payload.i21 = alloca %struct.set_config_cmd_payload, align 1
  %set_config_result.i22 = alloca i32, align 4
  %payload.i4 = alloca %struct.set_config_cmd_payload, align 1
  %set_config_result.i5 = alloca i32, align 4
  %payload.i = alloca %struct.set_config_cmd_payload, align 1
  %set_config_result.i = alloca i32, align 4
  %dpcd_lane_status = alloca [4 x %union.lane_status], align 4
  %dpcd_lane_status_updated = alloca %union.lane_align_status_updated, align 1
  %dpcd_lane_adjust = alloca [4 x %union.lane_adjust], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lt_settings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lt_settings, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dpcd_lane_status) #4
  %2 = ptrtoint ptr %dpcd_lane_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %dpcd_lane_status, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dpcd_lane_status_updated) #4
  %3 = ptrtoint ptr %dpcd_lane_status_updated to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %dpcd_lane_status_updated, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dpcd_lane_adjust) #4
  %4 = ptrtoint ptr %dpcd_lane_adjust to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dpcd_lane_adjust, align 4
  %phy_repeater_cnt = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43, i32 25, i32 4
  %5 = ptrtoint ptr %phy_repeater_cnt to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %phy_repeater_cnt, align 1
  %call = tail call zeroext i8 @dp_convert_to_count(i8 noundef zeroext %6) #4
  %conv = zext i8 %call to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %hop)
  %cmp3 = icmp eq i32 %conv, %hop
  %pattern_for_cr = getelementptr inbounds %struct.link_training_settings, ptr %lt_settings, i32 0, i32 9
  %7 = getelementptr inbounds %struct.set_config_cmd_payload, ptr %payload.i4, i32 0, i32 1
  %ddc.i6 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 33
  %aux_access_disabled.i8 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 11
  %ctx.i11 = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %sub = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %hop)
  %cmp29 = icmp eq i32 %sub, %hop
  %lane_settings.i = getelementptr inbounds %struct.link_training_settings, ptr %lt_settings, i32 0, i32 1
  %PRE_EMPHASIS.i = getelementptr inbounds %struct.link_training_settings, ptr %lt_settings, i32 0, i32 1, i32 0, i32 1
  %8 = getelementptr inbounds %struct.set_config_cmd_payload, ptr %payload.i21, i32 0, i32 1
  %dpcd_lane_settings = getelementptr inbounds %struct.link_training_settings, ptr %lt_settings, i32 0, i32 16
  br label %while.body

while.body:                                       ; preds = %if.end80.while.body_crit_edge, %entry
  %retry_count.051 = phi i32 [ 0, %entry ], [ %inc85, %if.end80.while.body_crit_edge ]
  %retries_cr.050 = phi i32 [ 0, %entry ], [ %retries_cr.1, %if.end80.while.body_crit_edge ]
  br i1 %cmp3, label %if.then, label %if.end10

if.then:                                          ; preds = %while.body
  %lttpr_mode.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 13
  %9 = ptrtoint ptr %lttpr_mode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lttpr_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.i = icmp eq i32 %10, 2
  %bf.shl.i = select i1 %cmp.i, i8 -128, i8 0
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload.i) #4
  %11 = getelementptr inbounds %struct.set_config_cmd_payload, ptr %payload.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set_config_result.i) #4
  %12 = ptrtoint ptr %set_config_result.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %set_config_result.i, align 4
  %13 = ptrtoint ptr %payload.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %payload.i, align 1
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %bf.shl.i, ptr %11, align 1
  %15 = ptrtoint ptr %ddc.i6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ddc.i6, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then
  %19 = ptrtoint ptr %aux_access_disabled.i8 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %aux_access_disabled.i8, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool3.not.i = icmp eq i8 %20, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %21 = ptrtoint ptr %ctx.i11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx.i11, align 8
  %call.i = call i32 @dm_helpers_dmub_set_config_sync(ptr noundef %22, ptr noundef %link, ptr noundef nonnull %payload.i, ptr noundef nonnull %set_config_result.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i2 = icmp eq i32 %call.i, -1
  br i1 %cmp.i2, label %land.lhs.true4.i.core_link_send_set_config.exit.thread_crit_edge, label %land.lhs.true4.i.if.end.i_crit_edge

land.lhs.true4.i.if.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.lhs.true4.i.core_link_send_set_config.exit.thread_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %core_link_send_set_config.exit.thread

if.end.i:                                         ; preds = %land.lhs.true4.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %23 = ptrtoint ptr %set_config_result.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %set_config_result.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp5.i = icmp eq i32 %24, 1
  br i1 %cmp5.i, label %25, label %if.end.i.core_link_send_set_config.exit.thread_crit_edge

if.end.i.core_link_send_set_config.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %core_link_send_set_config.exit.thread

core_link_send_set_config.exit.thread:            ; preds = %if.end.i.core_link_send_set_config.exit.thread_crit_edge, %land.lhs.true4.i.core_link_send_set_config.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set_config_result.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i) #4
  br label %while.end

25:                                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set_config_result.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i) #4
  br label %while.end

if.end10:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry_count.051)
  %cmp11 = icmp eq i32 %retry_count.051, 0
  br i1 %cmp11, label %if.then13, label %if.end10.if.end27_crit_edge

if.end10.if.end27_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then13:                                        ; preds = %if.end10
  %26 = ptrtoint ptr %pattern_for_cr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pattern_for_cr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %28 = icmp ult i32 %27, 4
  br i1 %28, label %switch.lookup, label %land.end.i

land.end.i:                                       ; preds = %if.then13
  %.b44.i = load i1, ptr @convert_trng_ptn_to_trng_stg.__already_done, align 1
  br i1 %.b44.i, label %land.end.i.if.then38.i_crit_edge, label %if.then.i, !prof !50

land.end.i.if.then38.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then38.i

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @convert_trng_ptn_to_trng_stg.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 198, i32 noundef 9, ptr noundef null) #4
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then.i, %land.end.i.if.then38.i_crit_edge
  call void @kgdb_breakpoint() #4
  br label %convert_trng_ptn_to_trng_stg.exit

switch.lookup:                                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  %switch.shiftamt = shl i32 %27, 3
  %switch.downshift = lshr i32 117637633, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  br label %convert_trng_ptn_to_trng_stg.exit

convert_trng_ptn_to_trng_stg.exit:                ; preds = %switch.lookup, %if.then38.i
  %ts.0.i = phi i8 [ 0, %if.then38.i ], [ %switch.masked, %switch.lookup ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload.i4) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set_config_result.i5) #4
  %29 = ptrtoint ptr %set_config_result.i5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %set_config_result.i5, align 4
  %30 = ptrtoint ptr %payload.i4 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 24, ptr %payload.i4, align 1
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %ts.0.i, ptr %7, align 1
  %32 = ptrtoint ptr %ddc.i6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ddc.i6, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %tobool.not.i7 = icmp eq ptr %35, null
  br i1 %tobool.not.i7, label %land.lhs.true.i10, label %convert_trng_ptn_to_trng_stg.exit.if.end.i17_crit_edge

convert_trng_ptn_to_trng_stg.exit.if.end.i17_crit_edge: ; preds = %convert_trng_ptn_to_trng_stg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i17

land.lhs.true.i10:                                ; preds = %convert_trng_ptn_to_trng_stg.exit
  %36 = ptrtoint ptr %aux_access_disabled.i8 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %aux_access_disabled.i8, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool3.not.i9 = icmp eq i8 %37, 0
  br i1 %tobool3.not.i9, label %land.lhs.true4.i14, label %land.lhs.true.i10.if.end.i17_crit_edge

land.lhs.true.i10.if.end.i17_crit_edge:           ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i17

land.lhs.true4.i14:                               ; preds = %land.lhs.true.i10
  %38 = ptrtoint ptr %ctx.i11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctx.i11, align 8
  %call.i12 = call i32 @dm_helpers_dmub_set_config_sync(ptr noundef %39, ptr noundef %link, ptr noundef nonnull %payload.i4, ptr noundef nonnull %set_config_result.i5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i12)
  %cmp.i13 = icmp eq i32 %call.i12, -1
  br i1 %cmp.i13, label %land.lhs.true4.i14.core_link_send_set_config.exit19.thread_crit_edge, label %land.lhs.true4.i14.if.end.i17_crit_edge

land.lhs.true4.i14.if.end.i17_crit_edge:          ; preds = %land.lhs.true4.i14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i17

land.lhs.true4.i14.core_link_send_set_config.exit19.thread_crit_edge: ; preds = %land.lhs.true4.i14
  call void @__sanitizer_cov_trace_pc() #6
  br label %core_link_send_set_config.exit19.thread

if.end.i17:                                       ; preds = %land.lhs.true4.i14.if.end.i17_crit_edge, %land.lhs.true.i10.if.end.i17_crit_edge, %convert_trng_ptn_to_trng_stg.exit.if.end.i17_crit_edge
  %40 = ptrtoint ptr %set_config_result.i5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %set_config_result.i5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp5.i15 = icmp eq i32 %41, 1
  br i1 %cmp5.i15, label %if.end20, label %if.end.i17.core_link_send_set_config.exit19.thread_crit_edge

if.end.i17.core_link_send_set_config.exit19.thread_crit_edge: ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #6
  br label %core_link_send_set_config.exit19.thread

core_link_send_set_config.exit19.thread:          ; preds = %if.end.i17.core_link_send_set_config.exit19.thread_crit_edge, %land.lhs.true4.i14.core_link_send_set_config.exit19.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set_config_result.i5) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i4) #4
  br label %while.end

if.end20:                                         ; preds = %if.end.i17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set_config_result.i5) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i4) #4
  %42 = ptrtoint ptr %pattern_for_cr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pattern_for_cr, align 4
  %call22 = call fastcc i32 @dpcd_set_lt_pattern(ptr noundef %link, i32 noundef %43, i32 noundef %hop)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 1
  br i1 %cmp23.not, label %if.end20.if.end27_crit_edge, label %if.end20.while.end_crit_edge

if.end20.while.end_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.end27:                                         ; preds = %if.end20.if.end27_crit_edge, %if.end10.if.end27_crit_edge
  br i1 %cmp29, label %if.then31, label %if.end27.if.end38_crit_edge

if.end27.if.end38_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.then31:                                        ; preds = %if.end27
  %44 = ptrtoint ptr %lane_settings.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lane_settings.i, align 4
  %conv2.i = trunc i32 %45 to i8
  %bf.shl5.i = shl i8 %conv2.i, 6
  %46 = ptrtoint ptr %PRE_EMPHASIS.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %PRE_EMPHASIS.i, align 4
  %conv10.i = trunc i32 %47 to i8
  %bf.value12.i = shl i8 %conv10.i, 3
  %bf.shl13.i = and i8 %bf.value12.i, 24
  %bf.set15.i = or i8 %bf.shl13.i, %bf.shl5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %45)
  %cmp19.i = icmp eq i32 %45, 3
  %bf.shl25.i = select i1 %cmp19.i, i8 32, i8 0
  %bf.set27.i = or i8 %bf.set15.i, %bf.shl25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %47)
  %cmp31.i = icmp eq i32 %47, 3
  %bf.shl37.i = select i1 %cmp31.i, i8 4, i8 0
  %bf.set39.i = or i8 %bf.set27.i, %bf.shl37.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload.i21) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set_config_result.i22) #4
  %48 = ptrtoint ptr %set_config_result.i22 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %set_config_result.i22, align 4
  %49 = ptrtoint ptr %payload.i21 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 25, ptr %payload.i21, align 1
  %50 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %bf.set39.i, ptr %8, align 1
  %51 = ptrtoint ptr %ddc.i6 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ddc.i6, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %tobool.not.i24 = icmp eq ptr %54, null
  br i1 %tobool.not.i24, label %land.lhs.true.i27, label %if.then31.if.end.i34_crit_edge

if.then31.if.end.i34_crit_edge:                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i34

land.lhs.true.i27:                                ; preds = %if.then31
  %55 = ptrtoint ptr %aux_access_disabled.i8 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %aux_access_disabled.i8, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool3.not.i26 = icmp eq i8 %56, 0
  br i1 %tobool3.not.i26, label %land.lhs.true4.i31, label %land.lhs.true.i27.if.end.i34_crit_edge

land.lhs.true.i27.if.end.i34_crit_edge:           ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i34

land.lhs.true4.i31:                               ; preds = %land.lhs.true.i27
  %57 = ptrtoint ptr %ctx.i11 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ctx.i11, align 8
  %call.i29 = call i32 @dm_helpers_dmub_set_config_sync(ptr noundef %58, ptr noundef %link, ptr noundef nonnull %payload.i21, ptr noundef nonnull %set_config_result.i22) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i29)
  %cmp.i30 = icmp eq i32 %call.i29, -1
  br i1 %cmp.i30, label %land.lhs.true4.i31.core_link_send_set_config.exit36.thread_crit_edge, label %land.lhs.true4.i31.if.end.i34_crit_edge

land.lhs.true4.i31.if.end.i34_crit_edge:          ; preds = %land.lhs.true4.i31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i34

land.lhs.true4.i31.core_link_send_set_config.exit36.thread_crit_edge: ; preds = %land.lhs.true4.i31
  call void @__sanitizer_cov_trace_pc() #6
  br label %core_link_send_set_config.exit36.thread

if.end.i34:                                       ; preds = %land.lhs.true4.i31.if.end.i34_crit_edge, %land.lhs.true.i27.if.end.i34_crit_edge, %if.then31.if.end.i34_crit_edge
  %59 = ptrtoint ptr %set_config_result.i22 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %set_config_result.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp5.i32 = icmp eq i32 %60, 1
  br i1 %cmp5.i32, label %core_link_send_set_config.exit36, label %if.end.i34.core_link_send_set_config.exit36.thread_crit_edge

if.end.i34.core_link_send_set_config.exit36.thread_crit_edge: ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #6
  br label %core_link_send_set_config.exit36.thread

core_link_send_set_config.exit36.thread:          ; preds = %if.end.i34.core_link_send_set_config.exit36.thread_crit_edge, %land.lhs.true4.i31.core_link_send_set_config.exit36.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set_config_result.i22) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i21) #4
  br label %while.end

core_link_send_set_config.exit36:                 ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set_config_result.i22) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i21) #4
  br label %if.end38

if.end38:                                         ; preds = %core_link_send_set_config.exit36, %if.end27.if.end38_crit_edge
  %call39 = call i32 @dpcd_set_lane_settings(ptr noundef %link, ptr noundef %lt_settings, i32 noundef %hop) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39)
  %cmp40.not = icmp eq i32 %call39, 1
  br i1 %cmp40.not, label %if.end43, label %if.end38.while.end_crit_edge

if.end38.while.end_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end43:                                         ; preds = %if.end38
  call void @dp_wait_for_training_aux_rd_interval(ptr noundef %link, i32 noundef 100) #4
  %call45 = call i32 @dp_get_lane_status_and_lane_adjust(ptr noundef %link, ptr noundef %lt_settings, ptr noundef nonnull %dpcd_lane_status, ptr noundef nonnull %dpcd_lane_status_updated, ptr noundef nonnull %dpcd_lane_adjust, i32 noundef %hop) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call45)
  %cmp46.not = icmp eq i32 %call45, 1
  br i1 %cmp46.not, label %if.end49, label %if.end43.while.end_crit_edge

if.end43.while.end_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end49:                                         ; preds = %if.end43
  %call51 = call zeroext i1 @dp_is_cr_done(i32 noundef %1, ptr noundef nonnull %dpcd_lane_status) #4
  br i1 %call51, label %if.end49.while.end_crit_edge, label %if.end53

if.end49.while.end_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end53:                                         ; preds = %if.end49
  %call55 = call i32 @dp_get_cr_failure(i32 noundef %1, ptr noundef nonnull %dpcd_lane_status) #4
  %call56 = call zeroext i1 @dp_is_max_vs_reached(ptr noundef %lt_settings) #4
  br i1 %call56, label %if.end53.while.end_crit_edge, label %if.end58

if.end53.while.end_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end58:                                         ; preds = %if.end53
  %61 = ptrtoint ptr %dpcd_lane_settings to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load = load i8, ptr %dpcd_lane_settings, align 4
  %62 = ptrtoint ptr %dpcd_lane_adjust to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load61 = load i8, ptr %dpcd_lane_adjust, align 4
  %cmp64.unshifted = xor i8 %bf.load61, %bf.load
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %cmp64.unshifted)
  %cmp64 = icmp ult i8 %cmp64.unshifted, 64
  br i1 %cmp64, label %land.lhs.true, label %if.end58.if.end80_crit_edge

if.end58.if.end80_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end80

land.lhs.true:                                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  %bf.lshr69 = lshr i8 %bf.load, 3
  %bf.lshr73 = lshr i8 %bf.load61, 4
  %63 = xor i8 %bf.lshr73, %bf.lshr69
  %64 = and i8 %63, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp76 = icmp eq i8 %64, 0
  %inc = add nuw nsw i32 %retries_cr.050, 1
  %spec.select1 = select i1 %cmp76, i32 %inc, i32 0
  br label %if.end80

if.end80:                                         ; preds = %land.lhs.true, %if.end58.if.end80_crit_edge
  %retries_cr.1 = phi i32 [ 0, %if.end58.if.end80_crit_edge ], [ %spec.select1, %land.lhs.true ]
  call void @dp_decide_lane_settings(ptr noundef %lt_settings, ptr noundef nonnull %dpcd_lane_adjust, ptr noundef %lane_settings.i, ptr noundef %dpcd_lane_settings) #4
  %inc85 = add nuw nsw i32 %retry_count.051, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %retries_cr.1)
  %cmp = icmp ult i32 %retries_cr.1, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %retry_count.051)
  %cmp2 = icmp ult i32 %retry_count.051, 99
  %or.cond = select i1 %cmp, i1 %cmp2, i1 false
  br i1 %or.cond, label %if.end80.while.body_crit_edge, label %if.end80.while.end_crit_edge

if.end80.while.end_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end80.while.body_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %if.end80.while.end_crit_edge, %if.end53.while.end_crit_edge, %if.end49.while.end_crit_edge, %if.end43.while.end_crit_edge, %if.end38.while.end_crit_edge, %core_link_send_set_config.exit36.thread, %if.end20.while.end_crit_edge, %core_link_send_set_config.exit19.thread, %25, %core_link_send_set_config.exit.thread
  %retry_count.049 = phi i32 [ 0, %25 ], [ 0, %core_link_send_set_config.exit.thread ], [ 0, %core_link_send_set_config.exit19.thread ], [ %retry_count.051, %core_link_send_set_config.exit36.thread ], [ %retry_count.051, %if.end53.while.end_crit_edge ], [ %inc85, %if.end80.while.end_crit_edge ], [ 0, %if.end20.while.end_crit_edge ], [ %retry_count.051, %if.end38.while.end_crit_edge ], [ %retry_count.051, %if.end43.while.end_crit_edge ], [ %retry_count.051, %if.end49.while.end_crit_edge ]
  %result.1 = phi i32 [ 0, %25 ], [ 8, %core_link_send_set_config.exit.thread ], [ 8, %core_link_send_set_config.exit19.thread ], [ 8, %core_link_send_set_config.exit36.thread ], [ %call55, %if.end53.while.end_crit_edge ], [ %call55, %if.end80.while.end_crit_edge ], [ 8, %if.end20.while.end_crit_edge ], [ 8, %if.end38.while.end_crit_edge ], [ 8, %if.end43.while.end_crit_edge ], [ 0, %if.end49.while.end_crit_edge ]
  %is_hpd_pending = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 17
  %65 = ptrtoint ptr %is_hpd_pending to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %is_hpd_pending, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not = icmp eq i8 %66, 0
  %spec.select = select i1 %tobool.not, i32 %result.1, i32 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpia_training_cr_non_transparent.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpia_training_cr_non_transparent, %if.then92)) #4
          to label %do.end [label %if.then92], !srcloc !48

if.then92:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %link_id = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 39
  %67 = ptrtoint ptr %link_id to i32
  call void @__asan_load4_noabort(i32 %67)
  %bf.load93 = load i32, ptr %link_id, align 4
  %bf.lshr94 = lshr i32 %bf.load93, 20
  %bf.clear95 = and i32 %bf.lshr94, 15
  %sub96 = add nsw i32 %bf.clear95, -1
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpia_training_cr_non_transparent.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef %sub96, i32 noundef %hop, i32 noundef %spec.select, i32 noundef %retry_count.049) #4
  br label %do.end

do.end:                                           ; preds = %if.then92, %while.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dpcd_lane_adjust) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpcd_lane_status_updated) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dpcd_lane_status) #4
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpia_training_cr_transparent(ptr noundef %link, ptr noundef %lt_settings) unnamed_addr #0 align 64 {
entry:
  %dpcd_pattern.i = alloca %union.dpcd_training_pattern, align 1
  %dpcd_lane_status = alloca [4 x %union.lane_status], align 4
  %dpcd_lane_status_updated = alloca %union.lane_align_status_updated, align 1
  %dpcd_lane_adjust = alloca [4 x %union.lane_adjust], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cr_pattern_time = getelementptr inbounds %struct.link_training_settings, ptr %lt_settings, i32 0, i32 6
  %0 = ptrtoint ptr %cr_pattern_time to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cr_pattern_time, align 2
  %conv = zext i16 %1 to i32
  %2 = ptrtoint ptr %lt_settings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lt_settings, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dpcd_lane_status) #4
  %4 = ptrtoint ptr %dpcd_lane_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dpcd_lane_status, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dpcd_lane_status_updated) #4
  %5 = ptrtoint ptr %dpcd_lane_status_updated to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %dpcd_lane_status_updated, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dpcd_lane_adjust) #4
  %6 = ptrtoint ptr %dpcd_lane_adjust to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dpcd_lane_adjust, align 4
  %pattern_for_cr = getelementptr inbounds %struct.link_training_settings, ptr %lt_settings, i32 0, i32 9
  %dpcd_lane_settings = getelementptr inbounds %struct.link_training_settings, ptr %lt_settings, i32 0, i32 16
  %hw_lane_settings = getelementptr inbounds %struct.link_training_settings, ptr %lt_settings, i32 0, i32 15
  br label %while.body

while.body:                                       ; preds = %if.end46.while.body_crit_edge, %entry
  %retry_count.04 = phi i32 [ 0, %entry ], [ %inc51, %if.end46.while.body_crit_edge ]
  %retries_cr.03 = phi i32 [ 0, %entry ], [ %retries_cr.1, %if.end46.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry_count.04)
  %cmp5 = icmp eq i32 %retry_count.04, 0
  br i1 %cmp5, label %if.then, label %while.body.if.end10_crit_edge

while.body.if.end10_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then:                                          ; preds = %while.body
  %7 = ptrtoint ptr %pattern_for_cr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pattern_for_cr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dpcd_pattern.i) #4
  %call.i = call i32 @dc_dp_training_pattern_to_dpcd_training_pattern(ptr noundef %link, i32 noundef %8) #4
  %conv.i = trunc i32 %call.i to i8
  %bf.shl.i = shl i8 %conv.i, 4
  %call1.i = call zeroext i8 @dc_dp_initialize_scrambling_data_symbols(ptr noundef %link, i32 noundef %8) #4
  %bf.value3.i = shl i8 %call1.i, 2
  %bf.shl4.i = and i8 %bf.value3.i, 4
  %bf.set6.i = or i8 %bf.shl4.i, %bf.shl.i
  %9 = ptrtoint ptr %dpcd_pattern.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %bf.set6.i, ptr %dpcd_pattern.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpcd_set_lt_pattern.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpia_training_cr_transparent, %if.then29.i)) #4
          to label %dpcd_set_lt_pattern.exit [label %if.then29.i], !srcloc !48

if.then29.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %dpcd_pattern.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load30.i = load i8, ptr %dpcd_pattern.i, align 1
  %bf.lshr31.i = lshr i8 %bf.load30.i, 4
  %conv32.i = zext i8 %bf.lshr31.i to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpcd_set_lt_pattern.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef 258, i32 noundef %conv32.i) #4
  br label %dpcd_set_lt_pattern.exit

dpcd_set_lt_pattern.exit:                         ; preds = %if.then29.i, %if.then
  %call37.i = call i32 @core_link_write_dpcd(ptr noundef %link, i32 noundef 258, ptr noundef nonnull %dpcd_pattern.i, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpcd_pattern.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call37.i)
  %cmp7.not = icmp eq i32 %call37.i, 1
  br i1 %cmp7.not, label %dpcd_set_lt_pattern.exit.if.end10_crit_edge, label %dpcd_set_lt_pattern.exit.while.end_crit_edge

dpcd_set_lt_pattern.exit.while.end_crit_edge:     ; preds = %dpcd_set_lt_pattern.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

dpcd_set_lt_pattern.exit.if.end10_crit_edge:      ; preds = %dpcd_set_lt_pattern.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.end10:                                         ; preds = %dpcd_set_lt_pattern.exit.if.end10_crit_edge, %while.body.if.end10_crit_edge
  call void @dp_wait_for_training_aux_rd_interval(ptr noundef %link, i32 noundef %conv) #4
  %call12 = call i32 @dp_get_lane_status_and_lane_adjust(ptr noundef %link, ptr noundef %lt_settings, ptr noundef nonnull %dpcd_lane_status, ptr noundef nonnull %dpcd_lane_status_updated, ptr noundef nonnull %dpcd_lane_adjust, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 1
  br i1 %cmp13.not, label %if.end16, label %if.end10.while.end_crit_edge

if.end10.while.end_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end16:                                         ; preds = %if.end10
  %call18 = call zeroext i1 @dp_is_cr_done(i32 noundef %3, ptr noundef nonnull %dpcd_lane_status) #4
  br i1 %call18, label %if.end16.while.end_crit_edge, label %if.end20

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end20:                                         ; preds = %if.end16
  %call22 = call i32 @dp_get_cr_failure(i32 noundef %3, ptr noundef nonnull %dpcd_lane_status) #4
  %call23 = call zeroext i1 @dp_is_max_vs_reached(ptr noundef %lt_settings) #4
  br i1 %call23, label %if.end20.while.end_crit_edge, label %if.end25

if.end20.while.end_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end25:                                         ; preds = %if.end20
  %11 = ptrtoint ptr %dpcd_lane_settings to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %dpcd_lane_settings, align 4
  %12 = ptrtoint ptr %dpcd_lane_adjust to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load28 = load i8, ptr %dpcd_lane_adjust, align 4
  %cmp31.unshifted = xor i8 %bf.load28, %bf.load
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %cmp31.unshifted)
  %cmp31 = icmp ult i8 %cmp31.unshifted, 64
  br i1 %cmp31, label %land.lhs.true, label %if.end25.if.end46_crit_edge

if.end25.if.end46_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %bf.lshr36 = lshr i8 %bf.load, 3
  %bf.lshr40 = lshr i8 %bf.load28, 4
  %13 = xor i8 %bf.lshr40, %bf.lshr36
  %14 = and i8 %13, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp43 = icmp eq i8 %14, 0
  %inc = add nuw nsw i32 %retries_cr.03, 1
  %spec.select1 = select i1 %cmp43, i32 %inc, i32 0
  br label %if.end46

if.end46:                                         ; preds = %land.lhs.true, %if.end25.if.end46_crit_edge
  %retries_cr.1 = phi i32 [ 0, %if.end25.if.end46_crit_edge ], [ %spec.select1, %land.lhs.true ]
  call void @dp_decide_lane_settings(ptr noundef %lt_settings, ptr noundef nonnull %dpcd_lane_adjust, ptr noundef %hw_lane_settings, ptr noundef %dpcd_lane_settings) #4
  %inc51 = add nuw nsw i32 %retry_count.04, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %retries_cr.1)
  %cmp = icmp ult i32 %retries_cr.1, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %retry_count.04)
  %cmp3 = icmp ult i32 %retry_count.04, 99
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.end46.while.body_crit_edge, label %if.end46.while.end_crit_edge

if.end46.while.end_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end46.while.body_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %if.end46.while.end_crit_edge, %if.end20.while.end_crit_edge, %if.end16.while.end_crit_edge, %if.end10.while.end_crit_edge, %dpcd_set_lt_pattern.exit.while.end_crit_edge
  %retry_count.0.lcssa = phi i32 [ %retry_count.04, %if.end16.while.end_crit_edge ], [ %retry_count.04, %if.end10.while.end_crit_edge ], [ 0, %dpcd_set_lt_pattern.exit.while.end_crit_edge ], [ %inc51, %if.end46.while.end_crit_edge ], [ %retry_count.04, %if.end20.while.end_crit_edge ]
  %result.1 = phi i32 [ 0, %if.end16.while.end_crit_edge ], [ 8, %if.end10.while.end_crit_edge ], [ 8, %dpcd_set_lt_pattern.exit.while.end_crit_edge ], [ %call22, %if.end46.while.end_crit_edge ], [ %call22, %if.end20.while.end_crit_edge ]
  %is_hpd_pending = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 17
  %15 = ptrtoint ptr %is_hpd_pending to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_hpd_pending, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  %spec.select = select i1 %tobool.not, i32 %result.1, i32 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpia_training_cr_transparent.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpia_training_cr_transparent, %if.then58)) #4
          to label %do.end [label %if.then58], !srcloc !48

if.then58:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %link_id = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 39
  %17 = ptrtoint ptr %link_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %bf.load59 = load i32, ptr %link_id, align 4
  %bf.lshr60 = lshr i32 %bf.load59, 20
  %bf.clear61 = and i32 %bf.lshr60, 15
  %sub = add nsw i32 %bf.clear61, -1
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpia_training_cr_transparent.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.9, i32 noundef %sub, i32 noundef 0, i32 noundef %spec.select, i32 noundef %retry_count.0.lcssa) #4
  br label %do.end

do.end:                                           ; preds = %if.then58, %while.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dpcd_lane_adjust) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpcd_lane_status_updated) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dpcd_lane_status) #4
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpcd_set_lt_pattern(ptr noundef %link, i32 noundef %pattern, i32 noundef %hop) unnamed_addr #0 align 64 {
entry:
  %dpcd_pattern = alloca %union.dpcd_training_pattern, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dpcd_pattern) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hop)
  %cmp.not = icmp eq i32 %hop, 0
  %0 = mul i32 %hop, 80
  %add = add i32 %0, 982976
  %dpcd_tps_offset.0 = select i1 %cmp.not, i32 258, i32 %add
  %call = tail call i32 @dc_dp_training_pattern_to_dpcd_training_pattern(ptr noundef %link, i32 noundef %pattern) #4
  %conv = trunc i32 %call to i8
  %bf.shl = shl i8 %conv, 4
  %call1 = tail call zeroext i8 @dc_dp_initialize_scrambling_data_symbols(ptr noundef %link, i32 noundef %pattern) #4
  %bf.value3 = shl i8 %call1, 2
  %bf.shl4 = and i8 %bf.value3, 4
  %bf.set6 = or i8 %bf.shl, %bf.shl4
  %1 = ptrtoint ptr %dpcd_pattern to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %bf.set6, ptr %dpcd_pattern, align 1
  br i1 %cmp.not, label %do.body17, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpcd_set_lt_pattern.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpcd_set_lt_pattern, %if.then13)) #4
          to label %if.end36 [label %if.then13], !srcloc !48

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %dpcd_pattern to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load14 = load i8, ptr %dpcd_pattern, align 1
  %bf.lshr = lshr i8 %bf.load14, 4
  %conv15 = zext i8 %bf.lshr to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpcd_set_lt_pattern.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef %hop, i32 noundef %dpcd_tps_offset.0, i32 noundef %conv15) #4
  br label %if.end36

do.body17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpcd_set_lt_pattern.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpcd_set_lt_pattern, %if.then29)) #4
          to label %if.end36 [label %if.then29], !srcloc !48

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %dpcd_pattern to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load30 = load i8, ptr %dpcd_pattern, align 1
  %bf.lshr31 = lshr i8 %bf.load30, 4
  %conv32 = zext i8 %bf.lshr31 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpcd_set_lt_pattern.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef %dpcd_tps_offset.0, i32 noundef %conv32) #4
  br label %if.end36

if.end36:                                         ; preds = %if.then29, %do.body17, %if.then13, %do.body
  %call37 = call i32 @core_link_write_dpcd(ptr noundef %link, i32 noundef %dpcd_tps_offset.0, ptr noundef nonnull %dpcd_pattern, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpcd_pattern) #4
  ret i32 %call37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpcd_set_lane_settings(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_wait_for_training_aux_rd_interval(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_get_lane_status_and_lane_adjust(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dp_is_cr_done(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_get_cr_failure(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dp_is_max_vs_reached(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dp_decide_lane_settings(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_helpers_dmub_set_config_sync(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dc_dp_training_pattern_to_dpcd_training_pattern(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dc_dp_initialize_scrambling_data_symbols(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core_link_write_dpcd(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpia_training_eq_non_transparent(ptr noundef %link, ptr noundef %lt_settings, i32 noundef %hop) unnamed_addr #0 align 64 {
entry:
  %payload.i3 = alloca %struct.set_config_cmd_payload, align 1
  %set_config_result.i4 = alloca i32, align 4
  %payload.i = alloca %struct.set_config_cmd_payload, align 1
  %set_config_result.i = alloca i32, align 4
  %dpcd_lane_status_updated = alloca %union.lane_align_status_updated, align 1
  %dpcd_lane_status = alloca [4 x %union.lane_status], align 4
  %dpcd_lane_adjust = alloca [4 x %union.lane_adjust], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lt_settings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lt_settings, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dpcd_lane_status_updated) #4
  %2 = ptrtoint ptr %dpcd_lane_status_updated to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %dpcd_lane_status_updated, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dpcd_lane_status) #4
  %3 = ptrtoint ptr %dpcd_lane_status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %dpcd_lane_status, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dpcd_lane_adjust) #4
  %4 = ptrtoint ptr %dpcd_lane_adjust to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dpcd_lane_adjust, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hop)
  %cmp = icmp eq i32 %hop, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %pattern_for_eq = getelementptr inbounds %struct.link_training_settings, ptr %lt_settings, i32 0, i32 10
  %5 = ptrtoint ptr %pattern_for_eq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pattern_for_eq, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tr_pattern.0 = phi i32 [ %6, %if.then ], [ 3, %entry.if.end_crit_edge ]
  %phy_repeater_cnt = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 43, i32 25, i32 4
  %7 = ptrtoint ptr %phy_repeater_cnt to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %phy_repeater_cnt, align 1
  %call = tail call zeroext i8 @dp_convert_to_count(i8 noundef zeroext %8) #4
  %conv = zext i8 %call to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %hop)
  %cmp3 = icmp eq i32 %conv, %hop
  %9 = getelementptr inbounds %struct.set_config_cmd_payload, ptr %payload.i, i32 0, i32 1
  %ddc.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 33
  %aux_access_disabled.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 11
  %ctx.i = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 36
  %sub = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %hop)
  %cmp24 = icmp eq i32 %sub, %hop
  %lane_settings.i = getelementptr inbounds %struct.link_training_settings, ptr %lt_settings, i32 0, i32 1
  %PRE_EMPHASIS.i = getelementptr inbounds %struct.link_training_settings, ptr %lt_settings, i32 0, i32 1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.set_config_cmd_payload, ptr %payload.i3, i32 0, i32 1
  %sub.i = add i32 %hop, -1
  %arrayidx.i = getelementptr %struct.dc_link, ptr %link, i32 0, i32 43, i32 25, i32 6, i32 %sub.i
  %eq_pattern_time.i = getelementptr inbounds %struct.link_training_settings, ptr %lt_settings, i32 0, i32 7
  %cur_link_settings = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 21
  %hw_lane_settings = getelementptr inbounds %struct.link_training_settings, ptr %lt_settings, i32 0, i32 15
  %dpcd_lane_settings = getelementptr inbounds %struct.link_training_settings, ptr %lt_settings, i32 0, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %tr_pattern.0)
  %11 = icmp ult i32 %tr_pattern.0, 4
  %switch.shiftamt = shl i32 %tr_pattern.0, 3
  %switch.downshift = lshr i32 117637633, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  br label %for.body

for.body:                                         ; preds = %if.end72.for.body_crit_edge, %if.end
  %coerce.dive68.coerce.sroa.0.035 = phi i32 [ undef, %if.end ], [ %coerce.dive68.coerce.sroa.0.1, %if.end72.for.body_crit_edge ]
  %retries_eq.033 = phi i32 [ 0, %if.end ], [ %inc, %if.end72.for.body_crit_edge ]
  %wait_time_microsec.032 = phi i32 [ -1, %if.end ], [ %wait_time_microsec.1, %if.end72.for.body_crit_edge ]
  br i1 %cmp3, label %for.body.for.end_crit_edge, label %if.end6

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end6:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries_eq.033)
  %cmp7 = icmp eq i32 %retries_eq.033, 0
  br i1 %cmp7, label %if.then9, label %if.end6.if.end22_crit_edge

if.end6.if.end22_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then9:                                         ; preds = %if.end6
  br i1 %11, label %if.then9.convert_trng_ptn_to_trng_stg.exit_crit_edge, label %land.end.i

if.then9.convert_trng_ptn_to_trng_stg.exit_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %convert_trng_ptn_to_trng_stg.exit

land.end.i:                                       ; preds = %if.then9
  %.b44.i = load i1, ptr @convert_trng_ptn_to_trng_stg.__already_done, align 1
  br i1 %.b44.i, label %land.end.i.if.then38.i_crit_edge, label %if.then.i, !prof !50

land.end.i.if.then38.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then38.i

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @convert_trng_ptn_to_trng_stg.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 198, i32 noundef 9, ptr noundef null) #4
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then.i, %land.end.i.if.then38.i_crit_edge
  call void @kgdb_breakpoint() #4
  br label %convert_trng_ptn_to_trng_stg.exit

convert_trng_ptn_to_trng_stg.exit:                ; preds = %if.then38.i, %if.then9.convert_trng_ptn_to_trng_stg.exit_crit_edge
  %ts.0.i = phi i8 [ 0, %if.then38.i ], [ %switch.masked, %if.then9.convert_trng_ptn_to_trng_stg.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set_config_result.i) #4
  %12 = ptrtoint ptr %set_config_result.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %set_config_result.i, align 4
  %13 = ptrtoint ptr %payload.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 24, ptr %payload.i, align 1
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %ts.0.i, ptr %9, align 1
  %15 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ddc.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %convert_trng_ptn_to_trng_stg.exit.if.end.i_crit_edge

convert_trng_ptn_to_trng_stg.exit.if.end.i_crit_edge: ; preds = %convert_trng_ptn_to_trng_stg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %convert_trng_ptn_to_trng_stg.exit
  %19 = ptrtoint ptr %aux_access_disabled.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %aux_access_disabled.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool3.not.i = icmp eq i8 %20, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %21 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx.i, align 8
  %call.i = call i32 @dm_helpers_dmub_set_config_sync(ptr noundef %22, ptr noundef %link, ptr noundef nonnull %payload.i, ptr noundef nonnull %set_config_result.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -1
  br i1 %cmp.i, label %land.lhs.true4.i.core_link_send_set_config.exit.thread_crit_edge, label %land.lhs.true4.i.if.end.i_crit_edge

land.lhs.true4.i.if.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.lhs.true4.i.core_link_send_set_config.exit.thread_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %core_link_send_set_config.exit.thread

if.end.i:                                         ; preds = %land.lhs.true4.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %convert_trng_ptn_to_trng_stg.exit.if.end.i_crit_edge
  %23 = ptrtoint ptr %set_config_result.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %set_config_result.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp5.i = icmp eq i32 %24, 1
  br i1 %cmp5.i, label %if.end16, label %if.end.i.core_link_send_set_config.exit.thread_crit_edge

if.end.i.core_link_send_set_config.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %core_link_send_set_config.exit.thread

core_link_send_set_config.exit.thread:            ; preds = %if.end.i.core_link_send_set_config.exit.thread_crit_edge, %land.lhs.true4.i.core_link_send_set_config.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set_config_result.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i) #4
  br label %for.end

if.end16:                                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set_config_result.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i) #4
  %call17 = call fastcc i32 @dpcd_set_lt_pattern(ptr noundef %link, i32 noundef %tr_pattern.0, i32 noundef %hop)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, 1
  br i1 %cmp18.not, label %if.end16.if.end22_crit_edge, label %if.end16.for.end_crit_edge

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.end22:                                         ; preds = %if.end16.if.end22_crit_edge, %if.end6.if.end22_crit_edge
  br i1 %cmp24, label %if.then26, label %if.end22.if.end33_crit_edge

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then26:                                        ; preds = %if.end22
  %25 = ptrtoint ptr %lane_settings.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lane_settings.i, align 4
  %conv2.i = trunc i32 %26 to i8
  %bf.shl5.i = shl i8 %conv2.i, 6
  %27 = ptrtoint ptr %PRE_EMPHASIS.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %PRE_EMPHASIS.i, align 4
  %conv10.i = trunc i32 %28 to i8
  %bf.value12.i = shl i8 %conv10.i, 3
  %bf.shl13.i = and i8 %bf.value12.i, 24
  %bf.set15.i = or i8 %bf.shl13.i, %bf.shl5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp19.i = icmp eq i32 %26, 3
  %bf.shl25.i = select i1 %cmp19.i, i8 32, i8 0
  %bf.set27.i = or i8 %bf.set15.i, %bf.shl25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp31.i = icmp eq i32 %28, 3
  %bf.shl37.i = select i1 %cmp31.i, i8 4, i8 0
  %bf.set39.i = or i8 %bf.set27.i, %bf.shl37.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %payload.i3) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set_config_result.i4) #4
  %29 = ptrtoint ptr %set_config_result.i4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %set_config_result.i4, align 4
  %30 = ptrtoint ptr %payload.i3 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 25, ptr %payload.i3, align 1
  %31 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %bf.set39.i, ptr %10, align 1
  %32 = ptrtoint ptr %ddc.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ddc.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %tobool.not.i6 = icmp eq ptr %35, null
  br i1 %tobool.not.i6, label %land.lhs.true.i9, label %if.then26.if.end.i16_crit_edge

if.then26.if.end.i16_crit_edge:                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i16

land.lhs.true.i9:                                 ; preds = %if.then26
  %36 = ptrtoint ptr %aux_access_disabled.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %aux_access_disabled.i, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool3.not.i8 = icmp eq i8 %37, 0
  br i1 %tobool3.not.i8, label %land.lhs.true4.i13, label %land.lhs.true.i9.if.end.i16_crit_edge

land.lhs.true.i9.if.end.i16_crit_edge:            ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i16

land.lhs.true4.i13:                               ; preds = %land.lhs.true.i9
  %38 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctx.i, align 8
  %call.i11 = call i32 @dm_helpers_dmub_set_config_sync(ptr noundef %39, ptr noundef %link, ptr noundef nonnull %payload.i3, ptr noundef nonnull %set_config_result.i4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i11)
  %cmp.i12 = icmp eq i32 %call.i11, -1
  br i1 %cmp.i12, label %land.lhs.true4.i13.core_link_send_set_config.exit18.thread_crit_edge, label %land.lhs.true4.i13.if.end.i16_crit_edge

land.lhs.true4.i13.if.end.i16_crit_edge:          ; preds = %land.lhs.true4.i13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i16

land.lhs.true4.i13.core_link_send_set_config.exit18.thread_crit_edge: ; preds = %land.lhs.true4.i13
  call void @__sanitizer_cov_trace_pc() #6
  br label %core_link_send_set_config.exit18.thread

if.end.i16:                                       ; preds = %land.lhs.true4.i13.if.end.i16_crit_edge, %land.lhs.true.i9.if.end.i16_crit_edge, %if.then26.if.end.i16_crit_edge
  %40 = ptrtoint ptr %set_config_result.i4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %set_config_result.i4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp5.i14 = icmp eq i32 %41, 1
  br i1 %cmp5.i14, label %core_link_send_set_config.exit18, label %if.end.i16.core_link_send_set_config.exit18.thread_crit_edge

if.end.i16.core_link_send_set_config.exit18.thread_crit_edge: ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #6
  br label %core_link_send_set_config.exit18.thread

core_link_send_set_config.exit18.thread:          ; preds = %if.end.i16.core_link_send_set_config.exit18.thread_crit_edge, %land.lhs.true4.i13.core_link_send_set_config.exit18.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set_config_result.i4) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i3) #4
  br label %for.end

core_link_send_set_config.exit18:                 ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set_config_result.i4) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %payload.i3) #4
  br label %if.end33

if.end33:                                         ; preds = %core_link_send_set_config.exit18, %if.end22.if.end33_crit_edge
  %call34 = call i32 @dpcd_set_lane_settings(ptr noundef %link, ptr noundef %lt_settings, i32 noundef %hop) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call34)
  %cmp35.not = icmp eq i32 %call34, 1
  br i1 %cmp35.not, label %if.end38, label %if.end33.for.end_crit_edge

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end38:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retries_eq.033)
  %cmp41 = icmp eq i32 %retries_eq.033, 1
  %or.cond = select i1 %cmp, i1 %cmp41, i1 false
  br i1 %or.cond, label %if.then43, label %if.else46

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  %42 = call i32 @llvm.umax.i32(i32 %wait_time_microsec.032, i32 16000)
  br label %if.end48

if.else46:                                        ; preds = %if.end38
  br i1 %cmp, label %if.then.i20, label %if.else.i

if.then.i20:                                      ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %eq_pattern_time.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %eq_pattern_time.i, align 4
  %conv.i = zext i16 %44 to i32
  br label %if.end48

if.else.i:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #6
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i, align 1
  %conv1.i = zext i8 %46 to i32
  %call.i21 = call i32 @dp_translate_training_aux_read_interval(i32 noundef %conv1.i) #4
  br label %if.end48

if.end48:                                         ; preds = %if.else.i, %if.then.i20, %if.then43
  %wait_time_microsec.1 = phi i32 [ %42, %if.then43 ], [ %conv.i, %if.then.i20 ], [ %call.i21, %if.else.i ]
  call void @dp_wait_for_training_aux_rd_interval(ptr noundef %link, i32 noundef %wait_time_microsec.1) #4
  %call50 = call i32 @dp_get_lane_status_and_lane_adjust(ptr noundef %link, ptr noundef %lt_settings, ptr noundef nonnull %dpcd_lane_status, ptr noundef nonnull %dpcd_lane_status_updated, ptr noundef nonnull %dpcd_lane_adjust, i32 noundef %hop) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call50)
  %cmp51.not = icmp eq i32 %call50, 1
  br i1 %cmp51.not, label %if.end54, label %if.end48.for.end_crit_edge

if.end48.for.end_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end54:                                         ; preds = %if.end48
  %call56 = call zeroext i1 @dp_is_cr_done(i32 noundef %1, ptr noundef nonnull %dpcd_lane_status) #4
  br i1 %call56, label %if.end58, label %if.end54.for.end_crit_edge

if.end54.for.end_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end58:                                         ; preds = %if.end54
  %call60 = call zeroext i1 @dp_is_ch_eq_done(i32 noundef %1, ptr noundef nonnull %dpcd_lane_status) #4
  br i1 %call60, label %land.lhs.true62, label %if.end58.if.end72_crit_edge

if.end58.if.end72_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end72

land.lhs.true62:                                  ; preds = %if.end58
  %47 = ptrtoint ptr %cur_link_settings to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cur_link_settings, align 8
  %call65 = call zeroext i1 @dp_is_symbol_locked(i32 noundef %48, ptr noundef nonnull %dpcd_lane_status) #4
  br i1 %call65, label %land.lhs.true67, label %land.lhs.true62.if.end72_crit_edge

land.lhs.true62.if.end72_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end72

land.lhs.true67:                                  ; preds = %land.lhs.true62
  %49 = ptrtoint ptr %dpcd_lane_status_updated to i32
  call void @__asan_load1_noabort(i32 %49)
  %coerce.dive68.coerce.sroa.0.0.copyload = load i8, ptr %dpcd_lane_status_updated, align 1
  %coerce.dive68.coerce.sroa.0.0.insert.ext = zext i8 %coerce.dive68.coerce.sroa.0.0.copyload to i32
  %coerce.dive68.coerce.sroa.0.0.insert.shift = shl nuw i32 %coerce.dive68.coerce.sroa.0.0.insert.ext, 24
  %coerce.dive68.coerce.sroa.0.0.insert.mask = and i32 %coerce.dive68.coerce.sroa.0.035, 16777215
  %coerce.dive68.coerce.sroa.0.0.insert.insert = or i32 %coerce.dive68.coerce.sroa.0.0.insert.shift, %coerce.dive68.coerce.sroa.0.0.insert.mask
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %coerce.dive68.coerce.sroa.0.0.insert.insert, 0
  %call69 = call zeroext i1 @dp_is_interlane_aligned([1 x i32] %.fca.0.insert) #4
  br i1 %call69, label %land.lhs.true67.for.end_crit_edge, label %land.lhs.true67.if.end72_crit_edge

land.lhs.true67.if.end72_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end72

land.lhs.true67.for.end_crit_edge:                ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end72:                                         ; preds = %land.lhs.true67.if.end72_crit_edge, %land.lhs.true62.if.end72_crit_edge, %if.end58.if.end72_crit_edge
  %coerce.dive68.coerce.sroa.0.1 = phi i32 [ %coerce.dive68.coerce.sroa.0.0.insert.insert, %land.lhs.true67.if.end72_crit_edge ], [ %coerce.dive68.coerce.sroa.0.035, %land.lhs.true62.if.end72_crit_edge ], [ %coerce.dive68.coerce.sroa.0.035, %if.end58.if.end72_crit_edge ]
  call void @dp_decide_lane_settings(ptr noundef %lt_settings, ptr noundef nonnull %dpcd_lane_adjust, ptr noundef %hw_lane_settings, ptr noundef %dpcd_lane_settings) #4
  %inc = add nuw nsw i32 %retries_eq.033, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %if.end72.for.end_crit_edge, label %if.end72.for.body_crit_edge

if.end72.for.body_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end72.for.end_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %if.end72.for.end_crit_edge, %land.lhs.true67.for.end_crit_edge, %if.end54.for.end_crit_edge, %if.end48.for.end_crit_edge, %if.end33.for.end_crit_edge, %core_link_send_set_config.exit18.thread, %if.end16.for.end_crit_edge, %core_link_send_set_config.exit.thread, %for.body.for.end_crit_edge
  %retries_eq.031 = phi i32 [ 0, %core_link_send_set_config.exit.thread ], [ %retries_eq.033, %core_link_send_set_config.exit18.thread ], [ 5, %if.end72.for.end_crit_edge ], [ 0, %for.body.for.end_crit_edge ], [ 0, %if.end16.for.end_crit_edge ], [ %retries_eq.033, %if.end33.for.end_crit_edge ], [ %retries_eq.033, %if.end48.for.end_crit_edge ], [ %retries_eq.033, %if.end54.for.end_crit_edge ], [ %retries_eq.033, %land.lhs.true67.for.end_crit_edge ]
  %result.0 = phi i32 [ 8, %core_link_send_set_config.exit.thread ], [ 8, %core_link_send_set_config.exit18.thread ], [ 5, %if.end72.for.end_crit_edge ], [ 0, %for.body.for.end_crit_edge ], [ 8, %if.end16.for.end_crit_edge ], [ 8, %if.end33.for.end_crit_edge ], [ 8, %if.end48.for.end_crit_edge ], [ 4, %if.end54.for.end_crit_edge ], [ 0, %land.lhs.true67.for.end_crit_edge ]
  %is_hpd_pending = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 17
  %50 = ptrtoint ptr %is_hpd_pending to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %is_hpd_pending, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not = icmp eq i8 %51, 0
  %spec.select = select i1 %tobool.not, i32 %result.0, i32 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpia_training_eq_non_transparent.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpia_training_eq_non_transparent, %if.then83)) #4
          to label %do.end [label %if.then83], !srcloc !48

if.then83:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %link_id = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 39
  %52 = ptrtoint ptr %link_id to i32
  call void @__asan_load4_noabort(i32 %52)
  %bf.load = load i32, ptr %link_id, align 4
  %bf.lshr = lshr i32 %bf.load, 20
  %bf.clear = and i32 %bf.lshr, 15
  %sub84 = add nsw i32 %bf.clear, -1
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpia_training_eq_non_transparent.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef %sub84, i32 noundef %hop, i32 noundef %spec.select, i32 noundef %retries_eq.031) #4
  br label %do.end

do.end:                                           ; preds = %if.then83, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dpcd_lane_adjust) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dpcd_lane_status) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpcd_lane_status_updated) #4
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpia_training_eq_transparent(ptr noundef %link, ptr noundef %lt_settings) unnamed_addr #0 align 64 {
entry:
  %dpcd_pattern.i = alloca %union.dpcd_training_pattern, align 1
  %dpcd_lane_status_updated = alloca %union.lane_align_status_updated, align 1
  %dpcd_lane_status = alloca [4 x %union.lane_status], align 4
  %dpcd_lane_adjust = alloca [4 x %union.lane_adjust], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pattern_for_eq = getelementptr inbounds %struct.link_training_settings, ptr %lt_settings, i32 0, i32 10
  %0 = ptrtoint ptr %pattern_for_eq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pattern_for_eq, align 4
  %2 = ptrtoint ptr %lt_settings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lt_settings, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dpcd_lane_status_updated) #4
  %4 = ptrtoint ptr %dpcd_lane_status_updated to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %dpcd_lane_status_updated, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dpcd_lane_status) #4
  %5 = ptrtoint ptr %dpcd_lane_status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %dpcd_lane_status, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dpcd_lane_adjust) #4
  %6 = ptrtoint ptr %dpcd_lane_adjust to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dpcd_lane_adjust, align 4
  %eq_pattern_time.i = getelementptr inbounds %struct.link_training_settings, ptr %lt_settings, i32 0, i32 7
  %7 = ptrtoint ptr %eq_pattern_time.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %eq_pattern_time.i, align 4
  %conv.i = zext i16 %8 to i32
  %cur_link_settings = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 21
  %hw_lane_settings = getelementptr inbounds %struct.link_training_settings, ptr %lt_settings, i32 0, i32 15
  %dpcd_lane_settings = getelementptr inbounds %struct.link_training_settings, ptr %lt_settings, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %if.end25.for.body_crit_edge, %entry
  %retries_eq.04 = phi i32 [ 0, %entry ], [ %inc, %if.end25.for.body_crit_edge ]
  %coerce.dive22.coerce.sroa.0.03 = phi i32 [ undef, %entry ], [ %coerce.dive22.coerce.sroa.0.1, %if.end25.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries_eq.04)
  %cmp2 = icmp eq i32 %retries_eq.04, 0
  br i1 %cmp2, label %if.then, label %for.body.if.end6_crit_edge

for.body.if.end6_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dpcd_pattern.i) #4
  %call.i = call i32 @dc_dp_training_pattern_to_dpcd_training_pattern(ptr noundef %link, i32 noundef %1) #4
  %conv.i1 = trunc i32 %call.i to i8
  %bf.shl.i = shl i8 %conv.i1, 4
  %call1.i = call zeroext i8 @dc_dp_initialize_scrambling_data_symbols(ptr noundef %link, i32 noundef %1) #4
  %bf.value3.i = shl i8 %call1.i, 2
  %bf.shl4.i = and i8 %bf.value3.i, 4
  %bf.set6.i = or i8 %bf.shl4.i, %bf.shl.i
  %9 = ptrtoint ptr %dpcd_pattern.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %bf.set6.i, ptr %dpcd_pattern.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpcd_set_lt_pattern.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpia_training_eq_transparent, %if.then29.i)) #4
          to label %dpcd_set_lt_pattern.exit [label %if.then29.i], !srcloc !48

if.then29.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %dpcd_pattern.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load30.i = load i8, ptr %dpcd_pattern.i, align 1
  %bf.lshr31.i = lshr i8 %bf.load30.i, 4
  %conv32.i = zext i8 %bf.lshr31.i to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpcd_set_lt_pattern.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef 258, i32 noundef %conv32.i) #4
  br label %dpcd_set_lt_pattern.exit

dpcd_set_lt_pattern.exit:                         ; preds = %if.then29.i, %if.then
  %call37.i = call i32 @core_link_write_dpcd(ptr noundef %link, i32 noundef 258, ptr noundef nonnull %dpcd_pattern.i, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpcd_pattern.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call37.i)
  %cmp4.not = icmp eq i32 %call37.i, 1
  br i1 %cmp4.not, label %dpcd_set_lt_pattern.exit.if.end6_crit_edge, label %dpcd_set_lt_pattern.exit.for.end_crit_edge

dpcd_set_lt_pattern.exit.for.end_crit_edge:       ; preds = %dpcd_set_lt_pattern.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

dpcd_set_lt_pattern.exit.if.end6_crit_edge:       ; preds = %dpcd_set_lt_pattern.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.end6:                                          ; preds = %dpcd_set_lt_pattern.exit.if.end6_crit_edge, %for.body.if.end6_crit_edge
  call void @dp_wait_for_training_aux_rd_interval(ptr noundef %link, i32 noundef %conv.i) #4
  %call8 = call i32 @dp_get_lane_status_and_lane_adjust(ptr noundef %link, ptr noundef %lt_settings, ptr noundef nonnull %dpcd_lane_status, ptr noundef nonnull %dpcd_lane_status_updated, ptr noundef nonnull %dpcd_lane_adjust, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 1
  br i1 %cmp9.not, label %if.end11, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end11:                                         ; preds = %if.end6
  %call13 = call zeroext i1 @dp_is_cr_done(i32 noundef %3, ptr noundef nonnull %dpcd_lane_status) #4
  br i1 %call13, label %if.end15, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end15:                                         ; preds = %if.end11
  %call17 = call zeroext i1 @dp_is_ch_eq_done(i32 noundef %3, ptr noundef nonnull %dpcd_lane_status) #4
  br i1 %call17, label %land.lhs.true, label %if.end15.if.end25_crit_edge

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end15
  %11 = ptrtoint ptr %cur_link_settings to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cur_link_settings, align 8
  %call20 = call zeroext i1 @dp_is_symbol_locked(i32 noundef %12, ptr noundef nonnull %dpcd_lane_status) #4
  br i1 %call20, label %land.lhs.true21, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

land.lhs.true21:                                  ; preds = %land.lhs.true
  %13 = ptrtoint ptr %dpcd_lane_status_updated to i32
  call void @__asan_load1_noabort(i32 %13)
  %coerce.dive22.coerce.sroa.0.0.copyload = load i8, ptr %dpcd_lane_status_updated, align 1
  %coerce.dive22.coerce.sroa.0.0.insert.ext = zext i8 %coerce.dive22.coerce.sroa.0.0.copyload to i32
  %coerce.dive22.coerce.sroa.0.0.insert.shift = shl nuw i32 %coerce.dive22.coerce.sroa.0.0.insert.ext, 24
  %coerce.dive22.coerce.sroa.0.0.insert.mask = and i32 %coerce.dive22.coerce.sroa.0.03, 16777215
  %coerce.dive22.coerce.sroa.0.0.insert.insert = or i32 %coerce.dive22.coerce.sroa.0.0.insert.shift, %coerce.dive22.coerce.sroa.0.0.insert.mask
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %coerce.dive22.coerce.sroa.0.0.insert.insert, 0
  %call23 = call zeroext i1 @dp_is_interlane_aligned([1 x i32] %.fca.0.insert) #4
  br i1 %call23, label %land.lhs.true21.for.end_crit_edge, label %land.lhs.true21.if.end25_crit_edge

land.lhs.true21.if.end25_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

land.lhs.true21.for.end_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end25:                                         ; preds = %land.lhs.true21.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge, %if.end15.if.end25_crit_edge
  %coerce.dive22.coerce.sroa.0.1 = phi i32 [ %coerce.dive22.coerce.sroa.0.0.insert.insert, %land.lhs.true21.if.end25_crit_edge ], [ %coerce.dive22.coerce.sroa.0.03, %land.lhs.true.if.end25_crit_edge ], [ %coerce.dive22.coerce.sroa.0.03, %if.end15.if.end25_crit_edge ]
  call void @dp_decide_lane_settings(ptr noundef %lt_settings, ptr noundef nonnull %dpcd_lane_adjust, ptr noundef %hw_lane_settings, ptr noundef %dpcd_lane_settings) #4
  %inc = add nuw nsw i32 %retries_eq.04, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %if.end25.for.end_crit_edge, label %if.end25.for.body_crit_edge

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %if.end25.for.end_crit_edge, %land.lhs.true21.for.end_crit_edge, %if.end11.for.end_crit_edge, %if.end6.for.end_crit_edge, %dpcd_set_lt_pattern.exit.for.end_crit_edge
  %retries_eq.0.lcssa = phi i32 [ %retries_eq.04, %land.lhs.true21.for.end_crit_edge ], [ %retries_eq.04, %if.end11.for.end_crit_edge ], [ %retries_eq.04, %if.end6.for.end_crit_edge ], [ 0, %dpcd_set_lt_pattern.exit.for.end_crit_edge ], [ 5, %if.end25.for.end_crit_edge ]
  %result.0 = phi i32 [ 0, %land.lhs.true21.for.end_crit_edge ], [ 4, %if.end11.for.end_crit_edge ], [ 8, %if.end6.for.end_crit_edge ], [ 8, %dpcd_set_lt_pattern.exit.for.end_crit_edge ], [ 5, %if.end25.for.end_crit_edge ]
  %is_hpd_pending = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 17
  %14 = ptrtoint ptr %is_hpd_pending to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_hpd_pending, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  %spec.select = select i1 %tobool.not, i32 %result.0, i32 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpia_training_eq_transparent.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpia_training_eq_transparent, %if.then35)) #4
          to label %do.end [label %if.then35], !srcloc !48

if.then35:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %link_id = getelementptr inbounds %struct.dc_link, ptr %link, i32 0, i32 39
  %16 = ptrtoint ptr %link_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load = load i32, ptr %link_id, align 4
  %bf.lshr = lshr i32 %bf.load, 20
  %bf.clear = and i32 %bf.lshr, 15
  %sub = add nsw i32 %bf.clear, -1
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpia_training_eq_transparent.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %sub, i32 noundef 0, i32 noundef %spec.select, i32 noundef %retries_eq.0.lcssa) #4
  br label %do.end

do.end:                                           ; preds = %if.then35, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dpcd_lane_adjust) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dpcd_lane_status) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpcd_lane_status_updated) #4
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dp_is_ch_eq_done(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dp_is_symbol_locked(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dp_is_interlane_aligned([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dp_translate_training_aux_read_interval(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !17, !18, !20, !21, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !37, !38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dpia.c", i32 89, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @dpia_configure_link.__UNIQUE_ID_ddebug302, !1, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dpia.c", i32 398, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @dpia_training_cr_non_transparent.__UNIQUE_ID_ddebug305, !7, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dpia.c", i32 171, i32 3}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dpia.c", i32 198, i32 3}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dpia.c", i32 226, i32 3}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @dpcd_set_lt_pattern.__UNIQUE_ID_ddebug303, !15, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dpia.c", i32 232, i32 3}
!20 = !{ptr @dpcd_set_lt_pattern.__UNIQUE_ID_ddebug304, !19, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dpia.c", i32 502, i32 2}
!23 = !{ptr @dpia_training_cr_transparent.__UNIQUE_ID_ddebug306, !22, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dpia.c", i32 691, i32 2}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @dpia_training_eq_non_transparent.__UNIQUE_ID_ddebug309, !25, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dpia.c", i32 776, i32 2}
!30 = !{ptr @dpia_training_eq_transparent.__UNIQUE_ID_ddebug310, !29, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dpia.c", i32 883, i32 2}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @dpia_training_end.__UNIQUE_ID_ddebug311, !32, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc_link_dpia.c", i32 905, i32 2}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @dpia_training_abort.__UNIQUE_ID_ddebug312, !36, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 2148824721, i64 2148824726, i64 2148824739, i64 2148824783, i64 2148824817, i64 2148824838}
!49 = !{i8 0, i8 2}
!50 = !{!"branch_weights", i32 2000, i32 1}
